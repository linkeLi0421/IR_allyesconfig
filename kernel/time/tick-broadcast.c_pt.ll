; ModuleID = '/llk/IR_all_yes/kernel/time/tick-broadcast.c_pt.bc'
source_filename = "../kernel/time/tick-broadcast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tick_broadcast_control\22, \22a\22\09"
module asm "\09.weak\09__crc_tick_broadcast_control\09\09\09\09"
module asm "\09.long\09__crc_tick_broadcast_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tick_broadcast_control:\09\09\09\09\09"
module asm "\09.asciz \09\22tick_broadcast_control\22\09\09\09\09\09"
module asm "__kstrtabns_tick_broadcast_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tick_device = type { ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@tick_broadcast_device = internal global { %struct.tick_device, [24 x i8] } zeroinitializer, align 32
@tick_broadcast_mask = internal global ptr null, section ".data..read_mostly", align 4
@tick_broadcast_lock = internal global %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, section ".data..cacheline_aligned", align 128
@tick_broadcast_on = internal global ptr null, section ".data..read_mostly", align 4
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tick_broadcast_forced = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_tick_broadcast_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_tick_broadcast_control = external dso_local constant [0 x i8], align 1
@__ksymtab_tick_broadcast_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tick_broadcast_control to i32), ptr @__kstrtab_tick_broadcast_control, ptr @__kstrtabns_tick_broadcast_control }, section "___ksymtab_gpl+tick_broadcast_control", align 4
@tick_broadcast_oneshot_mask = internal global ptr null, section ".data..read_mostly", align 4
@tick_broadcast_force_mask = internal global ptr null, section ".data..read_mostly", align 4
@tmpmask = internal global ptr null, section ".data..read_mostly", align 4
@tick_broadcast_pending_mask = internal global ptr null, section ".data..read_mostly", align 4
@__pcpu_unique_tick_oneshot_wakeup_device = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@tick_oneshot_wakeup_device = weak dso_local global ptr null, section ".data..percpu", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tick_broadcast_lock\00", [44 x i8] zeroinitializer }, align 32
@tick_device_setup_broadcast_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s depends on broadcast, but no broadcast function available\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tick_device_setup_broadcast_func\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kernel/time/tick-broadcast.c\00", [35 x i8] zeroinitializer }, align 32
@tick_device_setup_broadcast_func._entry_ptr = internal global ptr @tick_device_setup_broadcast_func._entry, section ".printk_index", align 4
@err_broadcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\012Failed to broadcast timer tick. Some CPUs may be unresponsive.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"err_broadcast\00", [18 x i8] zeroinitializer }, align 32
@err_broadcast._entry_ptr = internal global ptr @err_broadcast._entry, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@___tick_broadcast_oneshot_control.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_handle_oneshot_broadcast.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies_lock = external dso_local global %struct.raw_spinlock, align 4
@tick_next_period = external dso_local local_unnamed_addr global i64, align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"tick_broadcast_device\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 27, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"tick_broadcast_forced\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 33, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 236, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private constant [32 x i8] c"../kernel/time/tick-broadcast.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 228, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 108, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_tick_broadcast_control, ptr @err_broadcast._entry, ptr @err_broadcast._entry_ptr, ptr @tick_device_setup_broadcast_func._entry, ptr @tick_device_setup_broadcast_func._entry_ptr, ptr @tick_broadcast_device, ptr @tick_broadcast_forced, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_broadcast_device to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_broadcast_forced to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_device_setup_broadcast_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @err_broadcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @tick_get_broadcast_device() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @tick_broadcast_device
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tick_get_broadcast_mask() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tick_broadcast_mask, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tick_get_wakeup_device(i32 noundef %cpu) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %2 = inttoptr i32 %add.i to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_install_broadcast_device(ptr noundef %dev, i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tick_broadcast_device, align 4
  %call = tail call fastcc zeroext i1 @tick_set_oneshot_wakeup_device(ptr noundef %dev, i32 noundef %cpu)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %features.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %features.i, align 4
  %3 = and i32 %2, 88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %5 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %and9.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or.cond22.i = select i1 %cmp.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond22.i, label %if.end.i.cleanup_crit_edge, label %if.end12.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  %tobool13.not.i = icmp eq ptr %0, null
  br i1 %tobool13.not.i, label %if.end12.i.if.end3_crit_edge, label %tick_check_broadcast_device.exit

if.end12.i.if.end3_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

tick_check_broadcast_device.exit:                 ; preds = %if.end12.i
  %rating.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 22
  %6 = ptrtoint ptr %rating.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rating.i, align 8
  %rating14.i = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 22
  %8 = ptrtoint ptr %rating14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rating14.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp15.i = icmp sgt i32 %7, %9
  br i1 %cmp15.i, label %tick_check_broadcast_device.exit.if.end3_crit_edge, label %tick_check_broadcast_device.exit.cleanup_crit_edge

tick_check_broadcast_device.exit.cleanup_crit_edge: ; preds = %tick_check_broadcast_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tick_check_broadcast_device.exit.if.end3_crit_edge: ; preds = %tick_check_broadcast_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end3:                                          ; preds = %tick_check_broadcast_device.exit.if.end3_crit_edge, %if.end12.i.if.end3_crit_edge
  %owner = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 27
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner, align 128
  %call4 = tail call zeroext i1 @try_module_get(ptr noundef %11) #9
  br i1 %call4, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  tail call void @clockevents_exchange_device(ptr noundef %0, ptr noundef %dev) #9
  br i1 %tobool13.not.i, label %if.end6.if.end8_crit_edge, label %if.then7

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @clockevents_handle_noop, ptr %0, align 128
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end6.if.end8_crit_edge
  store ptr %dev, ptr @tick_broadcast_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %14 = load ptr, ptr @tick_broadcast_mask, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %14, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %13)
  %cmp4.i.i = icmp eq i32 %call.i.i, %13
  %tobool.not.i.old = icmp eq ptr %dev, null
  %or.cond35 = or i1 %tobool.not.i.old, %cmp4.i.i
  br i1 %or.cond35, label %if.end8.if.end11_crit_edge, label %if.then.i

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tick_setup_periodic(ptr noundef nonnull %dev, i32 noundef 1) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.end8.if.end11_crit_edge
  %15 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %features.i, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %17 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i29.not = icmp eq i32 %17, 1
  br i1 %cmp.i29.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #9
  store i32 1, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %18 = load ptr, ptr @tick_broadcast_device, align 4
  %tobool.not.i30 = icmp eq ptr %18, null
  br i1 %tobool.not.i30, label %if.then17.tick_broadcast_switch_to_oneshot.exit_crit_edge, label %if.then.i31

if.then17.tick_broadcast_switch_to_oneshot.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_switch_to_oneshot.exit

if.then.i31:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tick_broadcast_setup_oneshot(ptr noundef nonnull %18) #9
  br label %tick_broadcast_switch_to_oneshot.exit

tick_broadcast_switch_to_oneshot.exit:            ; preds = %if.then.i31, %if.then17.tick_broadcast_switch_to_oneshot.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %call.i) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tick_clock_notify() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %tick_broadcast_switch_to_oneshot.exit, %if.end11.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %tick_check_broadcast_device.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tick_set_oneshot_wakeup_device(ptr noundef %newdev, i32 noundef %cpu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %2 = inttoptr i32 %add.i to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %newdev, null
  br i1 %tobool.not, label %entry.set_device_crit_edge, label %if.end

entry.set_device_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_device

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.clock_event_device, ptr %newdev, i32 0, i32 9
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %features, align 4
  %7 = and i32 %6, 90
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %7)
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %newdev, i32 0, i32 25
  %9 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpumask, align 4
  %rem.i = and i32 %cpu, 31
  %add.i43 = add nuw nsw i32 %rem.i, 1
  %arrayidx.i44 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i43
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i44, i32 %idx.neg.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i = tail call i32 @__bitmap_equal(ptr noundef %10, ptr noundef %add.ptr.i, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.i.not = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.i.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %tobool20.not = icmp eq ptr %4, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %land.lhs.true

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end19
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %newdev, i32 0, i32 22
  %12 = ptrtoint ptr %rating to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rating, align 8
  %rating21 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 22
  %14 = ptrtoint ptr %rating21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rating21, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp sgt i32 %13, %15
  br i1 %cmp.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  %owner = getelementptr inbounds %struct.clock_event_device, ptr %newdev, i32 0, i32 27
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner, align 128
  %call24 = tail call zeroext i1 @try_module_get(ptr noundef %17) #9
  br i1 %call24, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %newdev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tick_oneshot_wakeup_handler, ptr %newdev, align 128
  br label %set_device

set_device:                                       ; preds = %if.end26, %entry.set_device_crit_edge
  tail call void @clockevents_exchange_device(ptr noundef %4, ptr noundef %newdev) #9
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add = add i32 %20, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %21 = inttoptr i32 %add to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %newdev, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_device, %if.end23.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %set_device ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end15.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end23.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_exchange_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_handle_noop(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tick_broadcast_oneshot_active() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_broadcast_switch_to_oneshot() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #9
  store i32 1, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %0 = load ptr, ptr @tick_broadcast_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %if.then

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tick_broadcast_setup_oneshot(ptr noundef nonnull %0)
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %call) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_clock_notify() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tick_is_broadcast_device(ptr noundef readnone %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @tick_broadcast_device, align 4
  %cmp = icmp eq ptr %0, %dev
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %1 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tick_broadcast_update_freq(ptr noundef %dev, i32 noundef %freq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %tick_is_broadcast_device.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

tick_is_broadcast_device.exit:                    ; preds = %entry
  %0 = load ptr, ptr @tick_broadcast_device, align 4
  %cmp.i.not = icmp eq ptr %0, %dev
  br i1 %cmp.i.not, label %if.then, label %tick_is_broadcast_device.exit.if.end_crit_edge

tick_is_broadcast_device.exit.if.end_crit_edge:   ; preds = %tick_is_broadcast_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %tick_is_broadcast_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #9
  %call1 = tail call i32 @__clockevents_update_freq(ptr noundef nonnull %dev, i32 noundef %freq) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tick_broadcast_lock) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %tick_is_broadcast_device.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ -19, %tick_is_broadcast_device.exit.if.end_crit_edge ], [ -19, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clockevents_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tick_device_uses_broadcast(ptr nocapture noundef %dev, i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tick_broadcast_device, align 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #9
  %features.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %features.i, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tick_handle_periodic, ptr %dev, align 128
  %broadcast.i = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %broadcast.i, align 16
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.tick_device_setup_broadcast_func.exit_crit_edge

if.then.tick_device_setup_broadcast_func.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_device_setup_broadcast_func.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tick_broadcast, ptr %broadcast.i, align 16
  br label %tick_device_setup_broadcast_func.exit

tick_device_setup_broadcast_func.exit:            ; preds = %if.then.i, %if.then.tick_device_setup_broadcast_func.exit_crit_edge
  %8 = load ptr, ptr @tick_broadcast_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %9, %cpu
  br i1 %cmp.not.i.i.i, label %tick_device_setup_broadcast_func.exit.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

tick_device_setup_broadcast_func.exit.cpumask_set_cpu.exit_crit_edge: ; preds = %tick_device_setup_broadcast_func.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %tick_device_setup_broadcast_func.exit
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %tick_device_setup_broadcast_func.exit.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %8) #9
  %10 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %cpumask_set_cpu.exit
  %tobool.not.i51 = icmp eq ptr %0, null
  br i1 %tobool.not.i51, label %if.then4.do.body29_crit_edge, label %if.then.i52

if.then4.do.body29_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.then.i52:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tick_setup_periodic(ptr noundef nonnull %0, i32 noundef 1) #9
  br label %do.body29

if.else:                                          ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tick_broadcast_setup_oneshot(ptr noundef %0)
  br label %do.body29

if.else5:                                         ; preds = %entry
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  %11 = load ptr, ptr @tick_broadcast_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cpu)
  %cmp.not.i.i.i53 = icmp ugt i32 %12, %cpu
  br i1 %cmp.not.i.i.i53, label %if.then7.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i55

if.then7.cpumask_clear_cpu.exit_crit_edge:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i55:                                 ; preds = %if.then7
  %.b37.i.i.i54 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i54, label %land.rhs.i.i.i55.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i56, !prof !54

land.rhs.i.i.i55.cpumask_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

if.then.i.i.i56:                                  ; preds = %land.rhs.i.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i56, %land.rhs.i.i.i55.cpumask_clear_cpu.exit_crit_edge, %if.then7.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %11) #9
  br label %if.end9

if.else8:                                         ; preds = %if.else5
  %broadcast.i57 = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 16
  %13 = ptrtoint ptr %broadcast.i57 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %broadcast.i57, align 16
  %tobool.not.i58 = icmp eq ptr %14, null
  br i1 %tobool.not.i58, label %if.then.i59, label %if.else8.if.end9_crit_edge

if.else8.if.end9_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i59:                                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %broadcast.i57 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tick_broadcast, ptr %broadcast.i57, align 16
  br label %if.end9

if.end9:                                          ; preds = %if.then.i59, %if.else8.if.end9_crit_edge, %cpumask_clear_cpu.exit
  %16 = load ptr, ptr @tick_broadcast_on, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %cpu)
  %cmp.not.i.i.i61 = icmp ugt i32 %17, %cpu
  br i1 %cmp.not.i.i.i61, label %if.end9.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i63

if.end9.cpumask_test_cpu.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i63:                                 ; preds = %if.end9
  %.b37.i.i.i62 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i62, label %land.rhs.i.i.i63.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i64, !prof !54

land.rhs.i.i.i63.cpumask_test_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

if.then.i.i.i64:                                  ; preds = %land.rhs.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i64, %land.rhs.i.i.i63.cpumask_test_cpu.exit_crit_edge, %if.end9.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr %16, i32 %div3.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %20 = shl nuw i32 1, %and.i.i
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not = icmp eq i32 %21, 0
  br i1 %tobool11.not, label %if.then12, label %cpumask_test_cpu.exit.if.end13_crit_edge

cpumask_test_cpu.exit.if.end13_crit_edge:         ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %cpumask_test_cpu.exit
  %22 = load ptr, ptr @tick_broadcast_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %cpu)
  %cmp.not.i.i.i65 = icmp ugt i32 %23, %cpu
  br i1 %cmp.not.i.i.i65, label %if.then12.cpumask_clear_cpu.exit69_crit_edge, label %land.rhs.i.i.i67

if.then12.cpumask_clear_cpu.exit69_crit_edge:     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit69

land.rhs.i.i.i67:                                 ; preds = %if.then12
  %.b37.i.i.i66 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i66, label %land.rhs.i.i.i67.cpumask_clear_cpu.exit69_crit_edge, label %if.then.i.i.i68, !prof !54

land.rhs.i.i.i67.cpumask_clear_cpu.exit69_crit_edge: ; preds = %land.rhs.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit69

if.then.i.i.i68:                                  ; preds = %land.rhs.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit69

cpumask_clear_cpu.exit69:                         ; preds = %if.then.i.i.i68, %land.rhs.i.i.i67.cpumask_clear_cpu.exit69_crit_edge, %if.then12.cpumask_clear_cpu.exit69_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %22) #9
  br label %if.end13

if.end13:                                         ; preds = %cpumask_clear_cpu.exit69, %cpumask_test_cpu.exit.if.end13_crit_edge
  %24 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.end13.do.body29_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %if.end.i.i
  ]

if.end13.do.body29_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

sw.bb:                                            ; preds = %if.end13
  %26 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %27, %cpu
  br i1 %cmp.not.i.i.i.i, label %sw.bb.cpumask_clear_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

sw.bb.cpumask_clear_cpu.exit.i_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %sw.bb
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !54

land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, %sw.bb.cpumask_clear_cpu.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %26) #9
  %28 = load ptr, ptr @tick_broadcast_pending_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %cpu)
  %cmp.not.i.i.i2.i = icmp ugt i32 %29, %cpu
  br i1 %cmp.not.i.i.i2.i, label %cpumask_clear_cpu.exit.i.tick_broadcast_clear_oneshot.exit_crit_edge, label %land.rhs.i.i.i4.i

cpumask_clear_cpu.exit.i.tick_broadcast_clear_oneshot.exit_crit_edge: ; preds = %cpumask_clear_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_clear_oneshot.exit

land.rhs.i.i.i4.i:                                ; preds = %cpumask_clear_cpu.exit.i
  %.b37.i.i.i3.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i3.i, label %land.rhs.i.i.i4.i.tick_broadcast_clear_oneshot.exit_crit_edge, label %if.then.i.i.i5.i, !prof !54

land.rhs.i.i.i4.i.tick_broadcast_clear_oneshot.exit_crit_edge: ; preds = %land.rhs.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_clear_oneshot.exit

if.then.i.i.i5.i:                                 ; preds = %land.rhs.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %tick_broadcast_clear_oneshot.exit

tick_broadcast_clear_oneshot.exit:                ; preds = %if.then.i.i.i5.i, %land.rhs.i.i.i4.i.tick_broadcast_clear_oneshot.exit_crit_edge, %cpumask_clear_cpu.exit.i.tick_broadcast_clear_oneshot.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %28) #9
  br label %do.body29

if.end.i.i:                                       ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %31 = load ptr, ptr @tick_broadcast_mask, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %31, i32 noundef %30) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %30)
  %cmp4.i.i = icmp ne i32 %call.i.i, %30
  %tobool17.not = icmp eq ptr %0, null
  %or.cond = select i1 %cmp4.i.i, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.end.i.i.if.end19_crit_edge, label %if.then18

if.end.i.i.if.end19_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clockevents_shutdown(ptr noundef nonnull %0) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end.i.i.if.end19_crit_edge
  br i1 %tobool17.not, label %if.end19.do.body29_crit_edge, label %land.lhs.true21

if.end19.do.body29_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

land.lhs.true21:                                  ; preds = %if.end19
  %features22 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %32 = ptrtoint ptr %features22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %features22, align 4
  %and23 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true21.do.body29_crit_edge

land.lhs.true21.do.body29_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.then25:                                        ; preds = %land.lhs.true21
  %34 = load ptr, ptr @tick_broadcast_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %cpu)
  %cmp.not.i.i.i72 = icmp ugt i32 %35, %cpu
  br i1 %cmp.not.i.i.i72, label %if.then25.cpumask_test_cpu.exit81_crit_edge, label %land.rhs.i.i.i74

if.then25.cpumask_test_cpu.exit81_crit_edge:      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit81

land.rhs.i.i.i74:                                 ; preds = %if.then25
  %.b37.i.i.i73 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i73, label %land.rhs.i.i.i74.cpumask_test_cpu.exit81_crit_edge, label %if.then.i.i.i75, !prof !54

land.rhs.i.i.i74.cpumask_test_cpu.exit81_crit_edge: ; preds = %land.rhs.i.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit81

if.then.i.i.i75:                                  ; preds = %land.rhs.i.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_cpu.exit81

cpumask_test_cpu.exit81:                          ; preds = %if.then.i.i.i75, %land.rhs.i.i.i74.cpumask_test_cpu.exit81_crit_edge, %if.then25.cpumask_test_cpu.exit81_crit_edge
  %arrayidx.i.i77 = getelementptr i32, ptr %34, i32 %div3.i.i
  %36 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i.i77, align 4
  %shr.i.i79 = lshr i32 %37, %and.i.i
  %and1.i.i80 = and i32 %shr.i.i79, 1
  br label %do.body29

do.body29:                                        ; preds = %cpumask_test_cpu.exit81, %land.lhs.true21.do.body29_crit_edge, %if.end19.do.body29_crit_edge, %tick_broadcast_clear_oneshot.exit, %if.end13.do.body29_crit_edge, %if.else, %if.then.i52, %if.then4.do.body29_crit_edge
  %ret.0 = phi i32 [ 0, %if.end13.do.body29_crit_edge ], [ 0, %land.lhs.true21.do.body29_crit_edge ], [ %and1.i.i80, %cpumask_test_cpu.exit81 ], [ 0, %if.end19.do.body29_crit_edge ], [ 0, %tick_broadcast_clear_oneshot.exit ], [ 1, %if.else ], [ 1, %if.then4.do.body29_crit_edge ], [ 1, %if.then.i52 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %call) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_handle_periodic(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tick_broadcast_setup_oneshot(ptr noundef %bc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %tobool.not = icmp eq ptr %bc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc, align 128
  %cmp.not = icmp eq ptr %5, @tick_handle_oneshot_broadcast
  br i1 %cmp.not, label %if.else10, label %if.then2

if.then2:                                         ; preds = %if.end
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %bc, i32 0, i32 8
  %6 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  %8 = ptrtoint ptr %bc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tick_handle_oneshot_broadcast, ptr %bc, align 128
  %9 = load ptr, ptr @tmpmask, align 4
  %10 = load ptr, ptr @tick_broadcast_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %11, 31
  %12 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %12, 536870908
  %13 = call ptr @memcpy(ptr %9, ptr %10, i32 %mul.i.i)
  %14 = load ptr, ptr @tmpmask, align 4
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %15, %3
  br i1 %cmp.not.i.i.i, label %if.then2.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then2.cpumask_clear_cpu.exit_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then2
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %if.then2.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %14) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = load ptr, ptr @tmpmask, align 4
  %18 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  tail call void @__bitmap_or(ptr noundef %18, ptr noundef %18, ptr noundef %17, i32 noundef %16) #9
  br i1 %cmp.i, label %cpumask_empty.exit, label %cpumask_clear_cpu.exit.if.else_crit_edge

cpumask_clear_cpu.exit.if.else_crit_edge:         ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

cpumask_empty.exit:                               ; preds = %cpumask_clear_cpu.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = load ptr, ptr @tmpmask, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %20, i32 noundef %19) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %19)
  %cmp4.i.i = icmp eq i32 %call.i.i, %19
  br i1 %cmp4.i.i, label %cpumask_empty.exit.if.else_crit_edge, label %if.then7

cpumask_empty.exit.if.else_crit_edge:             ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then7:                                         ; preds = %cpumask_empty.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @jiffies_lock) #9
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @tick_next_period to i32))
  %21 = load i64, ptr @tick_next_period, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jiffies_lock) #9
  tail call void @clockevents_switch_state(ptr noundef nonnull %bc, i32 noundef 3) #9
  %22 = load ptr, ptr @tmpmask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %22) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %23)
  %cmp7.i = icmp ult i32 %call6.i, %23
  br i1 %cmp7.i, label %if.then7.do.body.i_crit_edge, label %if.then7.tick_broadcast_init_next_event.exit_crit_edge

if.then7.tick_broadcast_init_next_event.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_init_next_event.exit

if.then7.do.body.i_crit_edge:                     ; preds = %if.then7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then7.do.body.i_crit_edge
  %call8.i = phi i32 [ %call.i, %if.end.i.do.body.i_crit_edge ], [ %call6.i, %if.then7.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %25, ptrtoint (ptr @tick_cpu_device to i32)
  %26 = inttoptr i32 %add.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %next_event.i = getelementptr inbounds %struct.clock_event_device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %next_event.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %21, ptr %next_event.i, align 16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %call.i = tail call i32 @cpumask_next(i32 noundef %call8.i, ptr noundef %22) #12
  %cmp.i23 = icmp ult i32 %call.i, %23
  br i1 %cmp.i23, label %if.end.i.do.body.i_crit_edge, label %if.end.i.tick_broadcast_init_next_event.exit_crit_edge

if.end.i.tick_broadcast_init_next_event.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_init_next_event.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

tick_broadcast_init_next_event.exit:              ; preds = %if.end.i.tick_broadcast_init_next_event.exit_crit_edge, %if.then7.tick_broadcast_init_next_event.exit_crit_edge
  tail call fastcc void @tick_broadcast_set_event(ptr noundef nonnull %bc, i32 noundef %3, i64 noundef %21)
  br label %cleanup

if.else:                                          ; preds = %cpumask_empty.exit.if.else_crit_edge, %cpumask_clear_cpu.exit.if.else_crit_edge
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %bc, i32 0, i32 3
  %30 = ptrtoint ptr %next_event to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 9223372036854775807, ptr %next_event, align 16
  br label %cleanup

if.else10:                                        ; preds = %if.end
  %31 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %32, %3
  br i1 %cmp.not.i.i.i.i, label %if.else10.cpumask_clear_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.else10.cpumask_clear_cpu.exit.i_crit_edge:     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.else10
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !54

land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, %if.else10.cpumask_clear_cpu.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %31) #9
  %33 = load ptr, ptr @tick_broadcast_pending_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %3)
  %cmp.not.i.i.i2.i = icmp ugt i32 %34, %3
  br i1 %cmp.not.i.i.i2.i, label %cpumask_clear_cpu.exit.i.tick_broadcast_clear_oneshot.exit_crit_edge, label %land.rhs.i.i.i4.i

cpumask_clear_cpu.exit.i.tick_broadcast_clear_oneshot.exit_crit_edge: ; preds = %cpumask_clear_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_clear_oneshot.exit

land.rhs.i.i.i4.i:                                ; preds = %cpumask_clear_cpu.exit.i
  %.b37.i.i.i3.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i3.i, label %land.rhs.i.i.i4.i.tick_broadcast_clear_oneshot.exit_crit_edge, label %if.then.i.i.i5.i, !prof !54

land.rhs.i.i.i4.i.tick_broadcast_clear_oneshot.exit_crit_edge: ; preds = %land.rhs.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_clear_oneshot.exit

if.then.i.i.i5.i:                                 ; preds = %land.rhs.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %tick_broadcast_clear_oneshot.exit

tick_broadcast_clear_oneshot.exit:                ; preds = %if.then.i.i.i5.i, %land.rhs.i.i.i4.i.tick_broadcast_clear_oneshot.exit_crit_edge, %cpumask_clear_cpu.exit.i.tick_broadcast_clear_oneshot.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %33) #9
  br label %cleanup

cleanup:                                          ; preds = %tick_broadcast_clear_oneshot.exit, %if.else, %tick_broadcast_init_next_event.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tick_receive_broadcast() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 128
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %10(ptr noundef nonnull %8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_broadcast_control(i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu7 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu7, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.do.body60_crit_edge, label %lor.lhs.false

entry.do.body60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

lor.lhs.false:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features, align 4
  %11 = and i32 %10, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %if.end12, label %lor.lhs.false.do.body60_crit_edge

lor.lhs.false.do.body60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

if.end12:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr @tick_broadcast_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = load ptr, ptr @tick_broadcast_mask, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %15, i32 noundef %14) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %14)
  %cmp4.i.i = icmp eq i32 %call.i.i, %14
  %16 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %mode, label %if.end12.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end12.sw.bb17_crit_edge
    i32 0, label %sw.bb31
  ]

if.end12.sw.bb17_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tick_broadcast_forced, align 4
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb, %if.end12.sw.bb17_crit_edge
  %17 = load ptr, ptr @tick_broadcast_on, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %18, %3
  br i1 %cmp.not.i.i.i, label %sw.bb17.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

sw.bb17.cpumask_set_cpu.exit_crit_edge:           ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %sw.bb17
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %sw.bb17.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %3, ptr noundef %17) #9
  %19 = load ptr, ptr @tick_broadcast_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %3)
  %cmp.not.i.i.i83 = icmp ugt i32 %20, %3
  br i1 %cmp.not.i.i.i83, label %cpumask_set_cpu.exit.cpumask_test_and_set_cpu.exit_crit_edge, label %land.rhs.i.i.i85

cpumask_set_cpu.exit.cpumask_test_and_set_cpu.exit_crit_edge: ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_set_cpu.exit

land.rhs.i.i.i85:                                 ; preds = %cpumask_set_cpu.exit
  %.b37.i.i.i84 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i84, label %land.rhs.i.i.i85.cpumask_test_and_set_cpu.exit_crit_edge, label %if.then.i.i.i86, !prof !54

land.rhs.i.i.i85.cpumask_test_and_set_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_set_cpu.exit

if.then.i.i.i86:                                  ; preds = %land.rhs.i.i.i85
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_and_set_cpu.exit

cpumask_test_and_set_cpu.exit:                    ; preds = %if.then.i.i.i86, %land.rhs.i.i.i85.cpumask_test_and_set_cpu.exit_crit_edge, %cpumask_set_cpu.exit.cpumask_test_and_set_cpu.exit_crit_edge
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef %3, ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool19.not = icmp ne i32 %call1.i, 0
  %tobool21.not = icmp eq ptr %13, null
  %or.cond = select i1 %tobool19.not, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %cpumask_test_and_set_cpu.exit.sw.epilog_crit_edge, label %land.lhs.true

cpumask_test_and_set_cpu.exit.sw.epilog_crit_edge: ; preds = %cpumask_test_and_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %cpumask_test_and_set_cpu.exit
  %features22 = getelementptr inbounds %struct.clock_event_device, ptr %13, i32 0, i32 9
  %21 = ptrtoint ptr %features22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features22, align 4
  %and23 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %land.lhs.true.cpumask_empty.exit106_crit_edge

land.lhs.true.cpumask_empty.exit106_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_empty.exit106

land.lhs.true25:                                  ; preds = %land.lhs.true
  %23 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp26 = icmp eq i32 %23, 0
  br i1 %cmp26, label %if.then28, label %land.lhs.true25.cpumask_empty.exit106_crit_edge

land.lhs.true25.cpumask_empty.exit106_crit_edge:  ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_empty.exit106

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clockevents_shutdown(ptr noundef nonnull %8) #9
  br label %cpumask_empty.exit106

sw.bb31:                                          ; preds = %if.end12
  %.b = load i1, ptr @tick_broadcast_forced, align 4
  br i1 %.b, label %sw.bb31.sw.epilog_crit_edge, label %if.end34

sw.bb31.sw.epilog_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end34:                                         ; preds = %sw.bb31
  %24 = load ptr, ptr @tick_broadcast_on, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %3)
  %cmp.not.i.i.i87 = icmp ugt i32 %25, %3
  br i1 %cmp.not.i.i.i87, label %if.end34.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i89

if.end34.cpumask_clear_cpu.exit_crit_edge:        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i89:                                 ; preds = %if.end34
  %.b37.i.i.i88 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i88, label %land.rhs.i.i.i89.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i90, !prof !54

land.rhs.i.i.i89.cpumask_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

if.then.i.i.i90:                                  ; preds = %land.rhs.i.i.i89
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i90, %land.rhs.i.i.i89.cpumask_clear_cpu.exit_crit_edge, %if.end34.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %24) #9
  %26 = load ptr, ptr @tick_broadcast_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %3)
  %cmp.not.i.i.i91 = icmp ugt i32 %27, %3
  br i1 %cmp.not.i.i.i91, label %cpumask_clear_cpu.exit.cpumask_test_and_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i93

cpumask_clear_cpu.exit.cpumask_test_and_clear_cpu.exit_crit_edge: ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_clear_cpu.exit

land.rhs.i.i.i93:                                 ; preds = %cpumask_clear_cpu.exit
  %.b37.i.i.i92 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i92, label %land.rhs.i.i.i93.cpumask_test_and_clear_cpu.exit_crit_edge, label %if.then.i.i.i94, !prof !54

land.rhs.i.i.i93.cpumask_test_and_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_clear_cpu.exit

if.then.i.i.i94:                                  ; preds = %land.rhs.i.i.i93
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_and_clear_cpu.exit

cpumask_test_and_clear_cpu.exit:                  ; preds = %if.then.i.i.i94, %land.rhs.i.i.i93.cpumask_test_and_clear_cpu.exit_crit_edge, %cpumask_clear_cpu.exit.cpumask_test_and_clear_cpu.exit_crit_edge
  %call1.i95 = tail call i32 @_test_and_clear_bit(i32 noundef %3, ptr noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool36.not = icmp eq i32 %call1.i95, 0
  br i1 %tobool36.not, label %cpumask_test_and_clear_cpu.exit.sw.epilog_crit_edge, label %if.then37

cpumask_test_and_clear_cpu.exit.sw.epilog_crit_edge: ; preds = %cpumask_test_and_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then37:                                        ; preds = %cpumask_test_and_clear_cpu.exit
  %28 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp38 = icmp eq i32 %28, 0
  br i1 %cmp38, label %if.then40, label %if.then37.sw.epilog_crit_edge

if.then37.sw.epilog_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tick_setup_periodic(ptr noundef nonnull %8, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then40, %if.then37.sw.epilog_crit_edge, %cpumask_test_and_clear_cpu.exit.sw.epilog_crit_edge, %sw.bb31.sw.epilog_crit_edge, %cpumask_test_and_set_cpu.exit.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge
  %tobool43.not = icmp eq ptr %13, null
  br i1 %tobool43.not, label %sw.epilog.do.body60_crit_edge, label %sw.epilog.cpumask_empty.exit106_crit_edge

sw.epilog.cpumask_empty.exit106_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_empty.exit106

sw.epilog.do.body60_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

cpumask_empty.exit106:                            ; preds = %sw.epilog.cpumask_empty.exit106_crit_edge, %if.then28, %land.lhs.true25.cpumask_empty.exit106_crit_edge, %land.lhs.true.cpumask_empty.exit106_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = load ptr, ptr @tick_broadcast_mask, align 4
  %call.i.i102 = tail call i32 @_find_first_bit_be(ptr noundef %30, i32 noundef %29) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i102, i32 %29)
  %cmp4.i.i103 = icmp eq i32 %call.i.i102, %29
  br i1 %cmp4.i.i103, label %if.then46, label %if.else

if.then46:                                        ; preds = %cpumask_empty.exit106
  br i1 %cmp4.i.i, label %if.then46.do.body60_crit_edge, label %if.then48

if.then46.do.body60_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

if.then48:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clockevents_shutdown(ptr noundef nonnull %13) #9
  br label %do.body60

if.else:                                          ; preds = %cpumask_empty.exit106
  br i1 %cmp4.i.i, label %if.then51, label %if.else.do.body60_crit_edge

if.else.do.body60_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

if.then51:                                        ; preds = %if.else
  %31 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp52 = icmp eq i32 %31, 0
  br i1 %cmp52, label %tick_broadcast_start_periodic.exit, label %if.else55

tick_broadcast_start_periodic.exit:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tick_setup_periodic(ptr noundef nonnull %13, i32 noundef 1) #9
  br label %do.body60

if.else55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tick_broadcast_setup_oneshot(ptr noundef nonnull %13)
  br label %do.body60

do.body60:                                        ; preds = %if.else55, %tick_broadcast_start_periodic.exit, %if.else.do.body60_crit_edge, %if.then48, %if.then46.do.body60_crit_edge, %sw.epilog.do.body60_crit_edge, %lor.lhs.false.do.body60_crit_edge, %entry.do.body60_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %call) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_setup_periodic(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tick_set_periodic_handler(ptr nocapture noundef writeonly %dev, i32 noundef %broadcast) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %broadcast)
  %tobool.not = icmp eq i32 %broadcast, 0
  %tick_handle_periodic.tick_handle_periodic_broadcast = select i1 %tobool.not, ptr @tick_handle_periodic, ptr @tick_handle_periodic_broadcast
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tick_handle_periodic.tick_handle_periodic_broadcast, ptr %dev, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tick_handle_periodic_broadcast(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add to ptr
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #9
  %7 = load ptr, ptr @tick_broadcast_device, align 4
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then, label %if.end.i.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tick_broadcast_lock) #9
  br label %cleanup

if.end.i.i.i:                                     ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = load ptr, ptr @tick_broadcast_mask, align 4
  %12 = load ptr, ptr @tmpmask, align 4
  %call.i.i.i = tail call i32 @__bitmap_and(ptr noundef %12, ptr noundef nonnull @__cpu_online_mask, ptr noundef %11, i32 noundef %10) #9
  %13 = load ptr, ptr @tmpmask, align 4
  %call1.i = tail call fastcc zeroext i1 @tick_do_broadcast(ptr noundef %13) #9
  %state_use_accessors.i16 = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %state_use_accessors.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state_use_accessors.i16, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i17 = icmp eq i32 %15, 3
  br i1 %cmp.i17, label %if.then5, label %if.end.i.i.i.if.end8_crit_edge

if.end.i.i.i.if.end8_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %next_event to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %next_event, align 16
  %add6 = add i64 %17, 10000000
  %call7 = tail call i32 @clockevents_program_event(ptr noundef %dev, i64 noundef %add6, i1 noundef zeroext true) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.i.i.i.if.end8_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tick_broadcast_lock) #9
  br i1 %call1.i, label %if.then9, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 128
  tail call void %21(ptr noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end8.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_broadcast_offline(i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #9
  %0 = load ptr, ptr @tick_broadcast_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %1, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_clear_cpu.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %entry.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %0) #9
  %2 = load ptr, ptr @tick_broadcast_on, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cpu)
  %cmp.not.i.i.i3 = icmp ugt i32 %3, %cpu
  br i1 %cmp.not.i.i.i3, label %cpumask_clear_cpu.exit.cpumask_clear_cpu.exit7_crit_edge, label %land.rhs.i.i.i5

cpumask_clear_cpu.exit.cpumask_clear_cpu.exit7_crit_edge: ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit7

land.rhs.i.i.i5:                                  ; preds = %cpumask_clear_cpu.exit
  %.b37.i.i.i4 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i4, label %land.rhs.i.i.i5.cpumask_clear_cpu.exit7_crit_edge, label %if.then.i.i.i6, !prof !54

land.rhs.i.i.i5.cpumask_clear_cpu.exit7_crit_edge: ; preds = %land.rhs.i.i.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit7

if.then.i.i.i6:                                   ; preds = %land.rhs.i.i.i5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit7

cpumask_clear_cpu.exit7:                          ; preds = %if.then.i.i.i6, %land.rhs.i.i.i5.cpumask_clear_cpu.exit7_crit_edge, %cpumask_clear_cpu.exit.cpumask_clear_cpu.exit7_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %2) #9
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %6 = inttoptr i32 %add.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %cpumask_clear_cpu.exit7.if.end.i_crit_edge, label %if.then.i

cpumask_clear_cpu.exit7.if.end.i_crit_edge:       ; preds = %cpumask_clear_cpu.exit7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %cpumask_clear_cpu.exit7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clockevents_exchange_device(ptr noundef nonnull %8, ptr noundef null) #9
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i6.i = add i32 %10, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %11 = inttoptr i32 %add.i6.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %11, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cpumask_clear_cpu.exit7.if.end.i_crit_edge
  %13 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %14, %cpu
  br i1 %cmp.not.i.i.i.i, label %if.end.i.cpumask_clear_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.end.i.cpumask_clear_cpu.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !54

land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, %if.end.i.cpumask_clear_cpu.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %13) #9
  %15 = load ptr, ptr @tick_broadcast_pending_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cpu)
  %cmp.not.i.i.i7.i = icmp ugt i32 %16, %cpu
  br i1 %cmp.not.i.i.i7.i, label %cpumask_clear_cpu.exit.i.cpumask_clear_cpu.exit11.i_crit_edge, label %land.rhs.i.i.i9.i

cpumask_clear_cpu.exit.i.cpumask_clear_cpu.exit11.i_crit_edge: ; preds = %cpumask_clear_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit11.i

land.rhs.i.i.i9.i:                                ; preds = %cpumask_clear_cpu.exit.i
  %.b37.i.i.i8.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i8.i, label %land.rhs.i.i.i9.i.cpumask_clear_cpu.exit11.i_crit_edge, label %if.then.i.i.i10.i, !prof !54

land.rhs.i.i.i9.i.cpumask_clear_cpu.exit11.i_crit_edge: ; preds = %land.rhs.i.i.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit11.i

if.then.i.i.i10.i:                                ; preds = %land.rhs.i.i.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit11.i

cpumask_clear_cpu.exit11.i:                       ; preds = %if.then.i.i.i10.i, %land.rhs.i.i.i9.i.cpumask_clear_cpu.exit11.i_crit_edge, %cpumask_clear_cpu.exit.i.cpumask_clear_cpu.exit11.i_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %15) #9
  %17 = load ptr, ptr @tick_broadcast_force_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %cpu)
  %cmp.not.i.i.i12.i = icmp ugt i32 %18, %cpu
  br i1 %cmp.not.i.i.i12.i, label %cpumask_clear_cpu.exit11.i.tick_broadcast_oneshot_offline.exit_crit_edge, label %land.rhs.i.i.i14.i

cpumask_clear_cpu.exit11.i.tick_broadcast_oneshot_offline.exit_crit_edge: ; preds = %cpumask_clear_cpu.exit11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_oneshot_offline.exit

land.rhs.i.i.i14.i:                               ; preds = %cpumask_clear_cpu.exit11.i
  %.b37.i.i.i13.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i13.i, label %land.rhs.i.i.i14.i.tick_broadcast_oneshot_offline.exit_crit_edge, label %if.then.i.i.i15.i, !prof !54

land.rhs.i.i.i14.i.tick_broadcast_oneshot_offline.exit_crit_edge: ; preds = %land.rhs.i.i.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_oneshot_offline.exit

if.then.i.i.i15.i:                                ; preds = %land.rhs.i.i.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %tick_broadcast_oneshot_offline.exit

tick_broadcast_oneshot_offline.exit:              ; preds = %if.then.i.i.i15.i, %land.rhs.i.i.i14.i.tick_broadcast_oneshot_offline.exit_crit_edge, %cpumask_clear_cpu.exit11.i.tick_broadcast_oneshot_offline.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %17) #9
  %19 = load ptr, ptr @tick_broadcast_device, align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp ne i32 %20, 0
  %tobool.not.i8 = icmp eq ptr %19, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i8
  br i1 %or.cond.i, label %tick_broadcast_oneshot_offline.exit.tick_shutdown_broadcast.exit_crit_edge, label %cpumask_empty.exit.i

tick_broadcast_oneshot_offline.exit.tick_shutdown_broadcast.exit_crit_edge: ; preds = %tick_broadcast_oneshot_offline.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_shutdown_broadcast.exit

cpumask_empty.exit.i:                             ; preds = %tick_broadcast_oneshot_offline.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = load ptr, ptr @tick_broadcast_mask, align 4
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %22, i32 noundef %21) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %21)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i, %21
  br i1 %cmp4.i.i.i, label %if.then1.i, label %cpumask_empty.exit.i.tick_shutdown_broadcast.exit_crit_edge

cpumask_empty.exit.i.tick_shutdown_broadcast.exit_crit_edge: ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_shutdown_broadcast.exit

if.then1.i:                                       ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clockevents_shutdown(ptr noundef nonnull %19) #9
  br label %tick_shutdown_broadcast.exit

tick_shutdown_broadcast.exit:                     ; preds = %if.then1.i, %cpumask_empty.exit.i.tick_shutdown_broadcast.exit_crit_edge, %tick_broadcast_oneshot_offline.exit.tick_shutdown_broadcast.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tick_broadcast_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_suspend_broadcast() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #9
  %0 = load ptr, ptr @tick_broadcast_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %if.then

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clockevents_shutdown(ptr noundef nonnull %0) #9
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %call) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tick_resume_check_broadcast() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %5 = load ptr, ptr @tick_broadcast_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i.i.i = icmp ugt i32 %6, %4
  br i1 %cmp.not.i.i.i, label %if.else.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.else.cpumask_test_cpu.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.else
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %if.else.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %4, 5
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %4, 31
  %9 = shl nuw i32 1, %and.i.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  br label %return

return:                                           ; preds = %cpumask_test_cpu.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool, %cpumask_test_cpu.exit ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_resume_broadcast() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #9
  %0 = load ptr, ptr @tick_broadcast_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %if.then

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @clockevents_tick_resume(ptr noundef nonnull %0) #9
  %1 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %if.then.do.body9_crit_edge [
    i32 0, label %cpumask_empty.exit
    i32 1, label %cpumask_empty.exit30
  ]

if.then.do.body9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

cpumask_empty.exit:                               ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = load ptr, ptr @tick_broadcast_mask, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %4, i32 noundef %3) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %3)
  %cmp4.i.i = icmp eq i32 %call.i.i, %3
  br i1 %cmp4.i.i, label %cpumask_empty.exit.do.body9_crit_edge, label %tick_broadcast_start_periodic.exit

cpumask_empty.exit.do.body9_crit_edge:            ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

tick_broadcast_start_periodic.exit:               ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tick_setup_periodic(ptr noundef nonnull %0, i32 noundef 1) #9
  br label %do.body9

cpumask_empty.exit30:                             ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = load ptr, ptr @tick_broadcast_mask, align 4
  %call.i.i26 = tail call i32 @_find_first_bit_be(ptr noundef %6, i32 noundef %5) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i26, i32 %5)
  %cmp4.i.i27 = icmp eq i32 %call.i.i26, %5
  br i1 %cmp4.i.i27, label %cpumask_empty.exit30.do.body9_crit_edge, label %if.then6

cpumask_empty.exit30.do.body9_crit_edge:          ; preds = %cpumask_empty.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

if.then6:                                         ; preds = %cpumask_empty.exit30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clockevents_switch_state(ptr noundef nonnull %0, i32 noundef 3) #9
  br label %do.body9

do.body9:                                         ; preds = %if.then6, %cpumask_empty.exit30.do.body9_crit_edge, %tick_broadcast_start_periodic.exit, %cpumask_empty.exit.do.body9_crit_edge, %if.then.do.body9_crit_edge, %entry.do.body9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %call) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_tick_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tick_get_broadcast_oneshot_mask() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tick_check_broadcast_expired() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %4 = load ptr, ptr @tick_broadcast_force_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %5, %3
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %4, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %shr.i.i = lshr i32 %7, %and.i.i
  %and1.i.i = and i32 %shr.i.i, 1
  ret i32 %and1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_check_oneshot_broadcast_this_cpu() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %4 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %5, %3
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %4, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %8 = shl nuw i32 1, %and.i.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.if.end6_crit_edge, label %if.then

cpumask_test_cpu.exit.if.end6_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %cpumask_test_cpu.exit
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, ptrtoint (ptr @tick_cpu_device to i32)
  %14 = inttoptr i32 %add to ptr
  %mode = getelementptr inbounds %struct.tick_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  tail call void @clockevents_switch_state(ptr noundef %18, i32 noundef 3) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %cpumask_test_cpu.exit.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_switch_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tick_broadcast_oneshot_control(i32 noundef %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %mode.i = getelementptr inbounds %struct.tick_device, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.i.i = add i32 %5, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %11 = inttoptr i32 %add.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end2.i:                                        ; preds = %if.end.i
  %14 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %state, label %if.end2.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb4.i
  ]

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clockevents_switch_state(ptr noundef %8, i32 noundef 4) #9
  tail call void @clockevents_switch_state(ptr noundef nonnull %13, i32 noundef 3) #9
  %next_event.i = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %next_event.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %next_event.i, align 16
  %call3.i = tail call i32 @clockevents_program_event(ptr noundef nonnull %13, i64 noundef %16, i1 noundef zeroext true) #9
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.end2.i
  %state_use_accessors.i.i = getelementptr inbounds %struct.clock_event_device, ptr %13, i32 0, i32 8
  %17 = ptrtoint ptr %state_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state_use_accessors.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp6.not.i = icmp eq i32 %18, 3
  br i1 %cmp6.not.i, label %sw.bb4.i.cleanup_crit_edge, label %sw.bb4.i.if.end_crit_edge

sw.bb4.i.if.end_crit_edge:                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb4.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %19 = load ptr, ptr @tick_broadcast_device, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #9
  %22 = load ptr, ptr @tick_broadcast_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp.i = icmp eq i32 %state, 1
  br i1 %cmp.i, label %if.then.i, label %if.else64.i

if.then.i:                                        ; preds = %if.then7
  %features.i.i = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i14_crit_edge, label %if.end.i.i

if.then.i.if.end.i14_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i14

if.end.i.i:                                       ; preds = %if.then.i
  %next_event.i.i = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %next_event.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %next_event.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %26)
  %cmp.i.i = icmp eq i64 %26, 9223372036854775807
  br i1 %cmp.i.i, label %if.end.i.i.if.end.i14_crit_edge, label %if.end2.i.i

if.end.i.i.if.end.i14_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i14

if.end2.i.i:                                      ; preds = %if.end.i.i
  %bound_on.i.i = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 24
  %27 = ptrtoint ptr %bound_on.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bound_on.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %3)
  %cmp3.i.i = icmp eq i32 %28, %3
  br i1 %cmp3.i.i, label %if.end2.i.i.___tick_broadcast_oneshot_control.exit_crit_edge, label %if.end2.i.i.if.end.i14_crit_edge

if.end2.i.i.if.end.i14_crit_edge:                 ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i14

if.end2.i.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.end.i14:                                       ; preds = %if.end2.i.i.if.end.i14_crit_edge, %if.end.i.i.if.end.i14_crit_edge, %if.then.i.if.end.i14_crit_edge
  %29 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.i = icmp eq i32 %29, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select.i = select i1 %tobool.not.i.i, i32 0, i32 -16
  br label %___tick_broadcast_oneshot_control.exit

if.end7.i:                                        ; preds = %if.end.i14
  %30 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %31, %3
  br i1 %cmp.not.i.i.i.i, label %if.end7.i.cpumask_test_and_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.end7.i.cpumask_test_and_set_cpu.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.end7.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_and_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !54

land.rhs.i.i.i.i.cpumask_test_and_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_and_set_cpu.exit.i

cpumask_test_and_set_cpu.exit.i:                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_and_set_cpu.exit.i_crit_edge, %if.end7.i.cpumask_test_and_set_cpu.exit.i_crit_edge
  %call1.i.i = tail call i32 @_test_and_set_bit(i32 noundef %3, ptr noundef %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool9.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %cpumask_test_and_set_cpu.exit.i.___tick_broadcast_oneshot_control.exit_crit_edge

cpumask_test_and_set_cpu.exit.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %cpumask_test_and_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.then10.i:                                      ; preds = %cpumask_test_and_set_cpu.exit.i
  %32 = load ptr, ptr @tick_broadcast_pending_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %33 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %3)
  %cmp.not.i.i.i111.i = icmp ugt i32 %33, %3
  br i1 %cmp.not.i.i.i111.i, label %if.then10.i.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i113.i

if.then10.i.cpumask_test_cpu.exit.i_crit_edge:    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i113.i:                              ; preds = %if.then10.i
  %.b37.i.i.i112.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i112.i, label %land.rhs.i.i.i113.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i114.i, !prof !54

land.rhs.i.i.i113.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i114.i:                               ; preds = %land.rhs.i.i.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i114.i, %land.rhs.i.i.i113.i.cpumask_test_cpu.exit.i_crit_edge, %if.then10.i.cpumask_test_cpu.exit.i_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %32, i32 %div3.i.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %3, 31
  %36 = shl nuw i32 1, %and.i.i.i
  %37 = and i32 %35, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool12.not.i = icmp eq i32 %37, 0
  br i1 %tobool12.not.i, label %cpumask_test_cpu.exit.i.if.end42.i_crit_edge, label %land.rhs.i

cpumask_test_cpu.exit.i.if.end42.i_crit_edge:     ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %cpumask_test_cpu.exit.i
  %.b110.i = load i1, ptr @___tick_broadcast_oneshot_control.__already_done, align 1
  br i1 %.b110.i, label %land.rhs.i.if.end42.i_crit_edge, label %if.then20.i, !prof !54

land.rhs.i.if.end42.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then20.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @___tick_broadcast_oneshot_control.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 826, i32 noundef 9, ptr noundef null) #9
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then20.i, %land.rhs.i.if.end42.i_crit_edge, %cpumask_test_cpu.exit.i.if.end42.i_crit_edge
  %38 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %features.i.i, align 4
  %and.i116.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116.i)
  %tobool.not.i117.i = icmp eq i32 %and.i116.i, 0
  br i1 %tobool.not.i117.i, label %if.end42.i.if.end7.i.i_crit_edge, label %if.end.i.i.i

if.end42.i.if.end7.i.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.end.i.i.i:                                     ; preds = %if.end42.i
  %next_event.i.i.i = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 3
  %40 = ptrtoint ptr %next_event.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %next_event.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %41)
  %cmp.i.i.i = icmp eq i64 %41, 9223372036854775807
  br i1 %cmp.i.i.i, label %if.end.i.i.i.if.end.i121.i_crit_edge, label %if.end2.i.i.i

if.end.i.i.i.if.end.i121.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i121.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i118.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i118.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i, align 4
  %bound_on.i.i.i = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 24
  %46 = ptrtoint ptr %bound_on.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bound_on.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp3.i.i.i = icmp eq i32 %47, %45
  br i1 %cmp3.i.i.i, label %if.end2.i.i.i.broadcast_shutdown_local.exit.i_crit_edge, label %if.end2.i.i.i.if.end.i121.i_crit_edge

if.end2.i.i.i.if.end.i121.i_crit_edge:            ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i121.i

if.end2.i.i.i.broadcast_shutdown_local.exit.i_crit_edge: ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %broadcast_shutdown_local.exit.i

if.end.i121.i:                                    ; preds = %if.end2.i.i.i.if.end.i121.i_crit_edge, %if.end.i.i.i.if.end.i121.i_crit_edge
  %next_event.i119.i = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 3
  %48 = ptrtoint ptr %next_event.i119.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %next_event.i119.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %41)
  %cmp.i120.i = icmp slt i64 %49, %41
  br i1 %cmp.i120.i, label %if.end.i121.i.broadcast_shutdown_local.exit.i_crit_edge, label %if.end.i121.i.if.end7.i.i_crit_edge

if.end.i121.i.if.end7.i.i_crit_edge:              ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.end.i121.i.broadcast_shutdown_local.exit.i_crit_edge: ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %broadcast_shutdown_local.exit.i

if.end7.i.i:                                      ; preds = %if.end.i121.i.if.end7.i.i_crit_edge, %if.end42.i.if.end7.i.i_crit_edge
  tail call void @clockevents_switch_state(ptr noundef %21, i32 noundef 1) #9
  br label %broadcast_shutdown_local.exit.i

broadcast_shutdown_local.exit.i:                  ; preds = %if.end7.i.i, %if.end.i121.i.broadcast_shutdown_local.exit.i_crit_edge, %if.end2.i.i.i.broadcast_shutdown_local.exit.i_crit_edge
  %50 = load ptr, ptr @tick_broadcast_force_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %3)
  %cmp.not.i.i.i122.i = icmp ugt i32 %51, %3
  br i1 %cmp.not.i.i.i122.i, label %broadcast_shutdown_local.exit.i.cpumask_test_cpu.exit131.i_crit_edge, label %land.rhs.i.i.i124.i

broadcast_shutdown_local.exit.i.cpumask_test_cpu.exit131.i_crit_edge: ; preds = %broadcast_shutdown_local.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit131.i

land.rhs.i.i.i124.i:                              ; preds = %broadcast_shutdown_local.exit.i
  %.b37.i.i.i123.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i123.i, label %land.rhs.i.i.i124.i.cpumask_test_cpu.exit131.i_crit_edge, label %if.then.i.i.i125.i, !prof !54

land.rhs.i.i.i124.i.cpumask_test_cpu.exit131.i_crit_edge: ; preds = %land.rhs.i.i.i124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit131.i

if.then.i.i.i125.i:                               ; preds = %land.rhs.i.i.i124.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_cpu.exit131.i

cpumask_test_cpu.exit131.i:                       ; preds = %if.then.i.i.i125.i, %land.rhs.i.i.i124.i.cpumask_test_cpu.exit131.i_crit_edge, %broadcast_shutdown_local.exit.i.cpumask_test_cpu.exit131.i_crit_edge
  %arrayidx.i.i127.i = getelementptr i32, ptr %50, i32 %div3.i.i.i
  %52 = ptrtoint ptr %arrayidx.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx.i.i127.i, align 4
  %54 = and i32 %53, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool51.not.i = icmp eq i32 %54, 0
  br i1 %tobool51.not.i, label %if.else.i, label %cpumask_test_cpu.exit131.i.___tick_broadcast_oneshot_control.exit_crit_edge

cpumask_test_cpu.exit131.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %cpumask_test_cpu.exit131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.else.i:                                        ; preds = %cpumask_test_cpu.exit131.i
  %next_event.i15 = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 3
  %55 = ptrtoint ptr %next_event.i15 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %next_event.i15, align 16
  %next_event53.i = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 3
  %57 = ptrtoint ptr %next_event53.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %next_event53.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %58)
  %cmp54.i = icmp slt i64 %56, %58
  br i1 %cmp54.i, label %if.then55.i, label %if.else.i.___tick_broadcast_oneshot_control.exit_crit_edge

if.else.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.then55.i:                                      ; preds = %if.else.i
  tail call fastcc void @tick_broadcast_set_event(ptr noundef %22, i32 noundef %3, i64 noundef %56) #9
  %59 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %features.i.i, align 4
  %and.i133.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i133.i)
  %tobool.not.i134.i = icmp eq i32 %and.i133.i, 0
  br i1 %tobool.not.i134.i, label %if.then55.i.___tick_broadcast_oneshot_control.exit_crit_edge, label %if.end.i137.i

if.then55.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.end.i137.i:                                    ; preds = %if.then55.i
  %61 = ptrtoint ptr %next_event53.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %next_event53.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %62)
  %cmp.i136.i = icmp eq i64 %62, 9223372036854775807
  br i1 %cmp.i136.i, label %if.end.i137.i.___tick_broadcast_oneshot_control.exit_crit_edge, label %if.end2.i141.i

if.end.i137.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.end2.i141.i:                                   ; preds = %if.end.i137.i
  %bound_on.i138.i = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 24
  %63 = ptrtoint ptr %bound_on.i138.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bound_on.i138.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %3)
  %cmp3.i139.i = icmp eq i32 %64, %3
  br i1 %cmp3.i139.i, label %if.then59.i, label %if.end2.i141.i.___tick_broadcast_oneshot_control.exit_crit_edge

if.end2.i141.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %if.end2.i141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.then59.i:                                      ; preds = %if.end2.i141.i
  %65 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %66 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %66, %3
  br i1 %cmp.not.i.i.i, label %if.then59.i.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then59.i.cpumask_clear_cpu.exit_crit_edge:     ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then59.i
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %if.then59.i.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %65) #9
  br label %___tick_broadcast_oneshot_control.exit

if.else64.i:                                      ; preds = %if.then7
  %67 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %68 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %3)
  %cmp.not.i.i.i144.i = icmp ugt i32 %68, %3
  br i1 %cmp.not.i.i.i144.i, label %if.else64.i.cpumask_test_and_clear_cpu.exit.i_crit_edge, label %land.rhs.i.i.i146.i

if.else64.i.cpumask_test_and_clear_cpu.exit.i_crit_edge: ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_clear_cpu.exit.i

land.rhs.i.i.i146.i:                              ; preds = %if.else64.i
  %.b37.i.i.i145.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i145.i, label %land.rhs.i.i.i146.i.cpumask_test_and_clear_cpu.exit.i_crit_edge, label %if.then.i.i.i147.i, !prof !54

land.rhs.i.i.i146.i.cpumask_test_and_clear_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_clear_cpu.exit.i

if.then.i.i.i147.i:                               ; preds = %land.rhs.i.i.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_and_clear_cpu.exit.i

cpumask_test_and_clear_cpu.exit.i:                ; preds = %if.then.i.i.i147.i, %land.rhs.i.i.i146.i.cpumask_test_and_clear_cpu.exit.i_crit_edge, %if.else64.i.cpumask_test_and_clear_cpu.exit.i_crit_edge
  %call1.i148.i = tail call i32 @_test_and_clear_bit(i32 noundef %3, ptr noundef %67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i148.i)
  %tobool66.not.i = icmp eq i32 %call1.i148.i, 0
  br i1 %tobool66.not.i, label %cpumask_test_and_clear_cpu.exit.i.___tick_broadcast_oneshot_control.exit_crit_edge, label %if.then67.i

cpumask_test_and_clear_cpu.exit.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %cpumask_test_and_clear_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.then67.i:                                      ; preds = %cpumask_test_and_clear_cpu.exit.i
  tail call void @clockevents_switch_state(ptr noundef %21, i32 noundef 3) #9
  %69 = load ptr, ptr @tick_broadcast_pending_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %70 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %3)
  %cmp.not.i.i.i149.i = icmp ugt i32 %70, %3
  br i1 %cmp.not.i.i.i149.i, label %if.then67.i.cpumask_test_and_clear_cpu.exit154.i_crit_edge, label %land.rhs.i.i.i151.i

if.then67.i.cpumask_test_and_clear_cpu.exit154.i_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_clear_cpu.exit154.i

land.rhs.i.i.i151.i:                              ; preds = %if.then67.i
  %.b37.i.i.i150.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i150.i, label %land.rhs.i.i.i151.i.cpumask_test_and_clear_cpu.exit154.i_crit_edge, label %if.then.i.i.i152.i, !prof !54

land.rhs.i.i.i151.i.cpumask_test_and_clear_cpu.exit154.i_crit_edge: ; preds = %land.rhs.i.i.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_and_clear_cpu.exit154.i

if.then.i.i.i152.i:                               ; preds = %land.rhs.i.i.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_and_clear_cpu.exit154.i

cpumask_test_and_clear_cpu.exit154.i:             ; preds = %if.then.i.i.i152.i, %land.rhs.i.i.i151.i.cpumask_test_and_clear_cpu.exit154.i_crit_edge, %if.then67.i.cpumask_test_and_clear_cpu.exit154.i_crit_edge
  %call1.i153.i = tail call i32 @_test_and_clear_bit(i32 noundef %3, ptr noundef %69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153.i)
  %tobool69.not.i = icmp eq i32 %call1.i153.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %cpumask_test_and_clear_cpu.exit154.i.___tick_broadcast_oneshot_control.exit_crit_edge

cpumask_test_and_clear_cpu.exit154.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %cpumask_test_and_clear_cpu.exit154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.end71.i:                                       ; preds = %cpumask_test_and_clear_cpu.exit154.i
  %next_event72.i = getelementptr inbounds %struct.clock_event_device, ptr %21, i32 0, i32 3
  %71 = ptrtoint ptr %next_event72.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %next_event72.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %72)
  %cmp73.i = icmp eq i64 %72, 9223372036854775807
  br i1 %cmp73.i, label %if.end71.i.___tick_broadcast_oneshot_control.exit_crit_edge, label %if.end75.i

if.end71.i.___tick_broadcast_oneshot_control.exit_crit_edge: ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %___tick_broadcast_oneshot_control.exit

if.end75.i:                                       ; preds = %if.end71.i
  %call76.i = tail call i64 @ktime_get() #9
  %73 = ptrtoint ptr %next_event72.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %next_event72.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %call76.i)
  %cmp78.not.i = icmp sgt i64 %74, %call76.i
  br i1 %cmp78.not.i, label %if.end80.i, label %if.then79.i

if.then79.i:                                      ; preds = %if.end75.i
  %75 = load ptr, ptr @tick_broadcast_force_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %76 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %3)
  %cmp.not.i.i.i155.i = icmp ugt i32 %76, %3
  br i1 %cmp.not.i.i.i155.i, label %if.then79.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i157.i

if.then79.i.cpumask_set_cpu.exit.i_crit_edge:     ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i157.i:                              ; preds = %if.then79.i
  %.b37.i.i.i156.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i156.i, label %land.rhs.i.i.i157.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i158.i, !prof !54

land.rhs.i.i.i157.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i158.i:                               ; preds = %land.rhs.i.i.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i158.i, %land.rhs.i.i.i157.i.cpumask_set_cpu.exit.i_crit_edge, %if.then79.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %3, ptr noundef %75) #9
  br label %___tick_broadcast_oneshot_control.exit

if.end80.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  %call82.i = tail call i32 @tick_program_event(i64 noundef %74, i32 noundef 1) #9
  br label %___tick_broadcast_oneshot_control.exit

___tick_broadcast_oneshot_control.exit:           ; preds = %if.end80.i, %cpumask_set_cpu.exit.i, %if.end71.i.___tick_broadcast_oneshot_control.exit_crit_edge, %cpumask_test_and_clear_cpu.exit154.i.___tick_broadcast_oneshot_control.exit_crit_edge, %cpumask_test_and_clear_cpu.exit.i.___tick_broadcast_oneshot_control.exit_crit_edge, %cpumask_clear_cpu.exit, %if.end2.i141.i.___tick_broadcast_oneshot_control.exit_crit_edge, %if.end.i137.i.___tick_broadcast_oneshot_control.exit_crit_edge, %if.then55.i.___tick_broadcast_oneshot_control.exit_crit_edge, %if.else.i.___tick_broadcast_oneshot_control.exit_crit_edge, %cpumask_test_cpu.exit131.i.___tick_broadcast_oneshot_control.exit_crit_edge, %cpumask_test_and_set_cpu.exit.i.___tick_broadcast_oneshot_control.exit_crit_edge, %if.then3.i, %if.end2.i.i.___tick_broadcast_oneshot_control.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %cpumask_test_and_set_cpu.exit.i.___tick_broadcast_oneshot_control.exit_crit_edge ], [ -16, %cpumask_clear_cpu.exit ], [ 0, %if.else.i.___tick_broadcast_oneshot_control.exit_crit_edge ], [ 0, %cpumask_test_and_clear_cpu.exit154.i.___tick_broadcast_oneshot_control.exit_crit_edge ], [ 0, %if.end71.i.___tick_broadcast_oneshot_control.exit_crit_edge ], [ 0, %cpumask_set_cpu.exit.i ], [ 0, %if.end80.i ], [ 0, %cpumask_test_and_clear_cpu.exit.i.___tick_broadcast_oneshot_control.exit_crit_edge ], [ %spec.select.i, %if.then3.i ], [ -16, %cpumask_test_cpu.exit131.i.___tick_broadcast_oneshot_control.exit_crit_edge ], [ -16, %if.end2.i.i.___tick_broadcast_oneshot_control.exit_crit_edge ], [ 0, %if.end2.i141.i.___tick_broadcast_oneshot_control.exit_crit_edge ], [ 0, %if.then55.i.___tick_broadcast_oneshot_control.exit_crit_edge ], [ 0, %if.end.i137.i.___tick_broadcast_oneshot_control.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tick_broadcast_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %___tick_broadcast_oneshot_control.exit, %if.end.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb.i, %if.end2.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %___tick_broadcast_oneshot_control.exit ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end2.i.cleanup_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hotplug_cpu__broadcast_tick_pull(i32 noundef %deadcpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #9
  %0 = load ptr, ptr @tick_broadcast_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %land.lhs.true

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

land.lhs.true:                                    ; preds = %entry
  %features.i = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %features.i, align 4
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.do.body4_crit_edge, label %if.end.i

land.lhs.true.do.body4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

if.end.i:                                         ; preds = %land.lhs.true
  %next_event.i = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %next_event.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %next_event.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %4)
  %cmp.i = icmp eq i64 %4, 9223372036854775807
  br i1 %cmp.i, label %if.end.i.do.body4_crit_edge, label %if.end2.i

if.end.i.do.body4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

if.end2.i:                                        ; preds = %if.end.i
  %bound_on.i = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 24
  %5 = ptrtoint ptr %bound_on.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bound_on.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %deadcpu)
  %cmp3.i = icmp eq i32 %6, %deadcpu
  br i1 %cmp3.i, label %if.then, label %if.end2.i.do.body4_crit_edge

if.end2.i.do.body4_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

if.then:                                          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %next_event.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %next_event.i, align 16
  %call3 = tail call i32 @clockevents_program_event(ptr noundef nonnull %0, i64 noundef %8, i1 noundef zeroext true) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %if.end2.i.do.body4_crit_edge, %if.end.i.do.body4_crit_edge, %land.lhs.true.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %call) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_program_event(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tick_broadcast_oneshot_available() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tick_broadcast_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %features, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %phi.cmp = icmp ne i32 %and, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  ret i1 %cond
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_broadcast_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @tick_broadcast_mask, i32 noundef 2048) #9
  %call1 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @tick_broadcast_on, i32 noundef 2048) #9
  %call2 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @tmpmask, i32 noundef 2048) #9
  %call3 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @tick_broadcast_oneshot_mask, i32 noundef 2048) #9
  %call4 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @tick_broadcast_pending_mask, i32 noundef 2048) #9
  %call5 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @tick_broadcast_force_mask, i32 noundef 2048) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tick_oneshot_wakeup_handler(ptr nocapture noundef readnone %wd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.tick_receive_broadcast.exit_crit_edge, label %if.end.i

entry.tick_receive_broadcast.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_receive_broadcast.exit

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 128
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.tick_receive_broadcast.exit_crit_edge, label %if.end4.i

if.end.i.tick_receive_broadcast.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_receive_broadcast.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %10(ptr noundef nonnull %8) #9
  br label %tick_receive_broadcast.exit

tick_receive_broadcast.exit:                      ; preds = %if.end4.i, %if.end.i.tick_receive_broadcast.exit_crit_edge, %entry.tick_receive_broadcast.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tick_do_broadcast(ptr noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %mask, i32 %div3.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.cpumask_empty.exit_crit_edge, label %if.then

cpumask_test_cpu.exit.cpumask_empty.exit_crit_edge: ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_empty.exit

if.then:                                          ; preds = %cpumask_test_cpu.exit
  %9 = load ptr, ptr @tick_broadcast_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp.not.i.i.i15 = icmp ugt i32 %10, %3
  br i1 %cmp.not.i.i.i15, label %if.then.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i17

if.then.cpumask_clear_cpu.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i17:                                 ; preds = %if.then
  %.b37.i.i.i16 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i16, label %land.rhs.i.i.i17.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i18, !prof !54

land.rhs.i.i.i17.cpumask_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

if.then.i.i.i18:                                  ; preds = %land.rhs.i.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i18, %land.rhs.i.i.i17.cpumask_clear_cpu.exit_crit_edge, %if.then.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %mask) #9
  %features = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %features, align 4
  %and = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br label %cpumask_empty.exit

cpumask_empty.exit:                               ; preds = %cpumask_clear_cpu.exit, %cpumask_test_cpu.exit.cpumask_empty.exit_crit_edge
  %local.0.off0 = phi i1 [ %tobool3.not, %cpumask_clear_cpu.exit ], [ false, %cpumask_test_cpu.exit.cpumask_empty.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %mask, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %13)
  %cmp4.i.i = icmp eq i32 %call.i.i, %13
  br i1 %cmp4.i.i, label %cpumask_empty.exit.if.end8_crit_edge, label %do.body

cpumask_empty.exit.if.end8_crit_edge:             ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body:                                          ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %mask, i32 noundef %14) #9
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, ptrtoint (ptr @tick_cpu_device to i32)
  %17 = inttoptr i32 %add to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %broadcast = getelementptr inbounds %struct.clock_event_device, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %broadcast, align 16
  tail call void %21(ptr noundef %mask) #9
  br label %if.end8

if.end8:                                          ; preds = %do.body, %cpumask_empty.exit.if.end8_crit_edge
  ret i1 %local.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tick_broadcast_set_event(ptr noundef %bc, i32 noundef %cpu, i64 noundef %expires) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %bc, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clockevents_switch_state(ptr noundef %bc, i32 noundef 3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @clockevents_program_event(ptr noundef %bc, i64 noundef %expires, i1 noundef zeroext true) #9
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %features.i = getelementptr inbounds %struct.clock_event_device, ptr %bc, i32 0, i32 9
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.tick_broadcast_set_affinity.exit_crit_edge, label %if.end.i

if.end.tick_broadcast_set_affinity.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_set_affinity.exit

if.end.i:                                         ; preds = %if.end
  %cpumask1.i = getelementptr inbounds %struct.clock_event_device, ptr %bc, i32 0, i32 25
  %4 = ptrtoint ptr %cpumask1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpumask1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i.i = tail call i32 @__bitmap_equal(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool.i.not.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end3.i, label %if.end.i.tick_broadcast_set_affinity.exit_crit_edge

if.end.i.tick_broadcast_set_affinity.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tick_broadcast_set_affinity.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %cpumask1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %cpumask1.i, align 4
  %irq.i = getelementptr inbounds %struct.clock_event_device, ptr %bc, i32 0, i32 23
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  %call6.i = tail call i32 @irq_set_affinity(i32 noundef %9, ptr noundef %add.ptr.i) #9
  br label %tick_broadcast_set_affinity.exit

tick_broadcast_set_affinity.exit:                 ; preds = %if.end3.i, %if.end.i.tick_broadcast_set_affinity.exit_crit_edge, %if.end.tick_broadcast_set_affinity.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_program_event(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tick_handle_oneshot_broadcast(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #9
  %next_event1 = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %next_event1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 9223372036854775807, ptr %next_event1, align 16
  %1 = load ptr, ptr @tmpmask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %2, 31
  %3 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %3, 536870908
  %4 = call ptr @memset(ptr %1, i32 0, i32 %mul.i.i)
  %call = tail call i64 @ktime_get() #9
  %5 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  %call2121 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %5) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2121, i32 %6)
  %cmp122 = icmp ult i32 %call2121, %6
  br i1 %cmp122, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %entry.do.body_crit_edge
  %call2125 = phi i32 [ %call2, %if.end12.do.body_crit_edge ], [ %call2121, %entry.do.body_crit_edge ]
  %next_event.0124 = phi i64 [ %next_event.1, %if.end12.do.body_crit_edge ], [ 9223372036854775807, %entry.do.body_crit_edge ]
  %next_cpu.0123 = phi i32 [ %next_cpu.1, %if.end12.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2125
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, ptrtoint (ptr @tick_cpu_device to i32)
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %next_event4 = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %next_event4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %next_event4, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %call)
  %cmp5.not = icmp sgt i64 %13, %call
  br i1 %cmp5.not, label %if.else, label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %do.body
  %14 = load ptr, ptr @tmpmask, align 4
  tail call void @_set_bit(i32 noundef %call2125, ptr noundef %14) #9
  %15 = load ptr, ptr @tick_broadcast_pending_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call2125)
  %cmp.not.i.i.i100 = icmp ugt i32 %16, %call2125
  br i1 %cmp.not.i.i.i100, label %cpumask_set_cpu.exit.cpumask_set_cpu.exit104_crit_edge, label %land.rhs.i.i.i102

cpumask_set_cpu.exit.cpumask_set_cpu.exit104_crit_edge: ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit104

land.rhs.i.i.i102:                                ; preds = %cpumask_set_cpu.exit
  %.b37.i.i.i101 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i101, label %land.rhs.i.i.i102.cpumask_set_cpu.exit104_crit_edge, label %if.then.i.i.i103, !prof !54

land.rhs.i.i.i102.cpumask_set_cpu.exit104_crit_edge: ; preds = %land.rhs.i.i.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit104

if.then.i.i.i103:                                 ; preds = %land.rhs.i.i.i102
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit104

cpumask_set_cpu.exit104:                          ; preds = %if.then.i.i.i103, %land.rhs.i.i.i102.cpumask_set_cpu.exit104_crit_edge, %cpumask_set_cpu.exit.cpumask_set_cpu.exit104_crit_edge
  tail call void @_set_bit(i32 noundef %call2125, ptr noundef %15) #9
  br label %if.end12

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %next_event.0124)
  %cmp8 = icmp slt i64 %13, %next_event.0124
  %spec.select = select i1 %cmp8, i32 %call2125, i32 %next_cpu.0123
  %17 = tail call i64 @llvm.smin.i64(i64 %13, i64 %next_event.0124)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %cpumask_set_cpu.exit104
  %next_cpu.1 = phi i32 [ %next_cpu.0123, %cpumask_set_cpu.exit104 ], [ %spec.select, %if.else ]
  %next_event.1 = phi i64 [ %next_event.0124, %cpumask_set_cpu.exit104 ], [ %17, %if.else ]
  %18 = load ptr, ptr @tick_broadcast_oneshot_mask, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call2125, ptr noundef %18) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %19
  br i1 %cmp, label %if.end12.do.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %entry.for.end_crit_edge
  %next_cpu.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %next_cpu.1, %if.end12.for.end_crit_edge ]
  %next_event.0.lcssa = phi i64 [ 9223372036854775807, %entry.for.end_crit_edge ], [ %next_event.1, %if.end12.for.end_crit_edge ]
  %.lcssa = phi i32 [ %6, %entry.for.end_crit_edge ], [ %19, %if.end12.for.end_crit_edge ]
  %20 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %cpu14 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu14, align 4
  %24 = load ptr, ptr @tick_broadcast_pending_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %23)
  %cmp.not.i.i.i105 = icmp ugt i32 %.lcssa, %23
  br i1 %cmp.not.i.i.i105, label %for.end.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i107

for.end.cpumask_clear_cpu.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i107:                                ; preds = %for.end
  %.b37.i.i.i106 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i106, label %land.rhs.i.i.i107.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i108, !prof !54

land.rhs.i.i.i107.cpumask_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit

if.then.i.i.i108:                                 ; preds = %land.rhs.i.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i108, %land.rhs.i.i.i107.cpumask_clear_cpu.exit_crit_edge, %for.end.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %23, ptr noundef %24) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %26 = load ptr, ptr @tick_broadcast_force_mask, align 4
  %27 = load ptr, ptr @tmpmask, align 4
  tail call void @__bitmap_or(ptr noundef %27, ptr noundef %27, ptr noundef %26, i32 noundef %25) #9
  %28 = load ptr, ptr @tick_broadcast_force_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i109 = add i32 %29, 31
  %30 = lshr i32 %sub.i.i109, 3
  %mul.i.i110 = and i32 %30, 536870908
  %31 = call ptr @memset(ptr %28, i32 0, i32 %mul.i.i110)
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = load ptr, ptr @tmpmask, align 4
  %call.i.i = tail call i32 @__bitmap_subset(ptr noundef %33, ptr noundef nonnull @__cpu_online_mask, i32 noundef %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.rhs, label %cpumask_clear_cpu.exit.if.end61_crit_edge

cpumask_clear_cpu.exit.if.end61_crit_edge:        ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.rhs:                                         ; preds = %cpumask_clear_cpu.exit
  %.b97 = load i1, ptr @tick_handle_oneshot_broadcast.__already_done, align 1
  br i1 %.b97, label %land.rhs.if.end.i.i_crit_edge, label %if.then24, !prof !54

land.rhs.if.end.i.i_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tick_handle_oneshot_broadcast.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 736, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then24, %land.rhs.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %35 = load ptr, ptr @tmpmask, align 4
  %call.i.i120 = tail call i32 @__bitmap_and(ptr noundef %35, ptr noundef %35, ptr noundef nonnull @__cpu_online_mask, i32 noundef %34) #9
  br label %if.end61

if.end61:                                         ; preds = %if.end.i.i, %cpumask_clear_cpu.exit.if.end61_crit_edge
  %36 = load ptr, ptr @tmpmask, align 4
  %call62 = tail call fastcc zeroext i1 @tick_do_broadcast(ptr noundef %36)
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %next_event.0.lcssa)
  %cmp64.not = icmp eq i64 %next_event.0.lcssa, 9223372036854775807
  br i1 %cmp64.not, label %if.end61.if.end66_crit_edge, label %if.then65

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tick_broadcast_set_event(ptr noundef %dev, i32 noundef %next_cpu.0.lcssa, i64 noundef %next_event.0.lcssa)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end61.if.end66_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tick_broadcast_lock) #9
  br i1 %call62, label %do.body69, label %if.end66.if.end82_crit_edge

if.end66.if.end82_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.body69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %cpu14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu14, align 4
  %arrayidx78 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx78, align 4
  %add79 = add i32 %40, ptrtoint (ptr @tick_cpu_device to i32)
  %41 = inttoptr i32 %add79 to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 128
  tail call void %45(ptr noundef %43) #9
  br label %if.end82

if.end82:                                         ; preds = %do.body69, %if.end66.if.end82_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !42}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__ksymtab_tick_broadcast_control, !1, !"__ksymtab_tick_broadcast_control", i1 false, i1 false}
!1 = !{!"../kernel/time/tick-broadcast.c", i32 509, i32 1}
!2 = !{ptr @tick_broadcast_device, !3, !"tick_broadcast_device", i1 false, i1 false}
!3 = !{!"../kernel/time/tick-broadcast.c", i32 27, i32 27}
!4 = !{ptr @tick_broadcast_mask, !5, !"tick_broadcast_mask", i1 false, i1 false}
!5 = !{!"../kernel/time/tick-broadcast.c", i32 28, i32 22}
!6 = !{ptr @tick_broadcast_on, !7, !"tick_broadcast_on", i1 false, i1 false}
!7 = !{!"../kernel/time/tick-broadcast.c", i32 29, i32 22}
!8 = !{ptr @tmpmask, !9, !"tmpmask", i1 false, i1 false}
!9 = !{!"../kernel/time/tick-broadcast.c", i32 30, i32 22}
!10 = distinct !{null, !11, !"tick_broadcast_forced", i1 false, i1 false}
!11 = !{!"../kernel/time/tick-broadcast.c", i32 31, i32 12}
!12 = !{ptr @__pcpu_unique_tick_oneshot_wakeup_device, !13, !"__pcpu_unique_tick_oneshot_wakeup_device", i1 false, i1 false}
!13 = !{!"../kernel/time/tick-broadcast.c", i32 36, i32 8}
!14 = !{ptr @tick_oneshot_wakeup_device, !13, !"tick_oneshot_wakeup_device", i1 false, i1 false}
!15 = !{ptr @tick_broadcast_oneshot_mask, !16, !"tick_broadcast_oneshot_mask", i1 false, i1 false}
!16 = !{!"../kernel/time/tick-broadcast.c", i32 606, i32 22}
!17 = !{ptr @tick_broadcast_pending_mask, !18, !"tick_broadcast_pending_mask", i1 false, i1 false}
!18 = !{!"../kernel/time/tick-broadcast.c", i32 607, i32 22}
!19 = !{ptr @tick_broadcast_force_mask, !20, !"tick_broadcast_force_mask", i1 false, i1 false}
!20 = !{!"../kernel/time/tick-broadcast.c", i32 608, i32 22}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/time/tick-broadcast.c", i32 33, i32 35}
!23 = !{ptr @tick_broadcast_lock, !22, !"tick_broadcast_lock", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../kernel/time/tick-broadcast.c", i32 236, i32 3}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tick_device_setup_broadcast_func._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @tick_device_setup_broadcast_func._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../kernel/time/tick-broadcast.c", i32 228, i32 2}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @err_broadcast._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @err_broadcast._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!39 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../kernel/time/tick-broadcast.c", i32 826, i32 4}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../kernel/time/tick-broadcast.c", i32 736, i32 6}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
