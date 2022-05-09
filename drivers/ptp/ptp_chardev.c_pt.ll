; ModuleID = '/llk/IR_all_yes/drivers/ptp/ptp_chardev.c_pt.bc'
source_filename = "../drivers/ptp/ptp_chardev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ptp_clock_request = type { i32, %union.anon.70 }
%union.anon.70 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.71, %struct.ptp_clock_time, i32, i32, %union.anon.72 }
%union.anon.71 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.72 = type { %struct.ptp_clock_time }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_sys_offset_precise = type { %struct.ptp_clock_time, %struct.ptp_clock_time, %struct.ptp_clock_time, [4 x i32] }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_clock_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.ptp_sys_offset_extended = type { i32, [3 x i32], [25 x [3 x %struct.ptp_clock_time]] }
%struct.ptp_sys_offset = type { i32, [3 x i32], [51 x %struct.ptp_clock_time] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@ptp_set_pinfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013driver cannot use function %u on pin %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ptp_set_pinfunc\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ptp/ptp_chardev.c\00", [38 x i8] zeroinitializer }, align 32
@ptp_set_pinfunc._entry_ptr = internal global ptr @ptp_set_pinfunc._entry, section ".printk_index", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [20 x i64] [i64 18, i64 32, i64 1074019588, i64 1074019597, i64 1074806018, i64 1074806027, i64 1077427459, i64 1077427468, i64 1080048903, i64 1080048912, i64 1128283397, i64 1128283406, i64 2152742145, i64 2152742154, i64 3225435400, i64 3225435409, i64 3227532550, i64 3227532559, i64 3300932873, i64 3300932882]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1074806018, i64 1074806027]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1077427459, i64 1077427468]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 3227532550, i64 3227532559]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1080048903, i64 1080048912]
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private constant [29 x i8] c"../drivers/ptp/ptp_chardev.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 87, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 174, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @ptp_set_pinfunc._entry, ptr @ptp_set_pinfunc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_set_pinfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptp_set_pinfunc(ptr nocapture noundef readonly %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  %rq.i80 = alloca %struct.ptp_clock_request, align 8
  %rq.i = alloca %struct.ptp_clock_request, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ptp_clock, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 8
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_config, align 4
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp97.not = icmp eq i32 %5, 0
  br i1 %cmp97.not, label %entry.if.end15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %func4 = getelementptr %struct.ptp_pin_desc, ptr %3, i32 %i.098, i32 2
  %6 = ptrtoint ptr %func4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %func4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %func)
  %cmp5 = icmp eq i32 %7, %func
  br i1 %cmp5, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %chan8 = getelementptr %struct.ptp_pin_desc, ptr %3, i32 %i.098, i32 3
  %8 = ptrtoint ptr %chan8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %chan)
  %cmp9 = icmp eq i32 %9, %chan
  br i1 %cmp9, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.end:                                          ; preds = %land.lhs.true
  %arrayidx3.le = getelementptr %struct.ptp_pin_desc, ptr %3, i32 %i.098
  %tobool.not = icmp eq ptr %arrayidx3.le, null
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %i.098, i32 %pin)
  %cmp13 = icmp eq i32 %i.098, %pin
  %or.cond = select i1 %tobool.not.not, i1 %cmp13, i1 false
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %for.end.if.end15_crit_edge, %for.inc.if.end15_crit_edge, %entry.if.end15_crit_edge
  %tobool.not95 = phi i1 [ %tobool.not, %for.end.if.end15_crit_edge ], [ true, %entry.if.end15_crit_edge ], [ true, %for.inc.if.end15_crit_edge ]
  %pin1.094 = phi ptr [ %arrayidx3.le, %for.end.if.end15_crit_edge ], [ null, %entry.if.end15_crit_edge ], [ null, %for.inc.if.end15_crit_edge ]
  %10 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %func, label %if.end15.cleanup_crit_edge [
    i32 0, label %if.end15.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb23
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_ext_ts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %chan)
  %cmp16.not = icmp ugt i32 %12, %chan
  br i1 %cmp16.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end15
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %n_per_out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_per_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %chan)
  %cmp20.not = icmp ugt i32 %14, %chan
  br i1 %cmp20.not, label %sw.bb19.sw.epilog_crit_edge, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan)
  %cmp24.not = icmp eq i32 %chan, 0
  br i1 %cmp24.not, label %sw.bb23.sw.epilog_crit_edge, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23.sw.epilog_crit_edge, %sw.bb19.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end15.sw.epilog_crit_edge
  %verify = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %verify to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %verify, align 4
  %call = tail call i32 %16(ptr noundef %1, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool27.not = icmp eq i32 %call, 0
  br i1 %tobool27.not, label %if.end30, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %func, i32 noundef %chan) #11
  br label %cleanup

if.end30:                                         ; preds = %sw.epilog
  br i1 %tobool.not95, label %if.end30.if.end36_crit_edge, label %if.then32

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rq.i) #8
  %17 = call ptr @memset(ptr %rq.i, i32 0, i32 64)
  %18 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %func, label %if.then32.ptp_disable_pinfunc.exit_crit_edge [
    i32 2, label %sw.bb1.i
    i32 1, label %sw.bb.i
  ]

if.then32.ptp_disable_pinfunc.exit_crit_edge:     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptp_disable_pinfunc.exit

sw.bb.i:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %19 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq.i, i32 0, i32 1
  br label %cleanup.sink.split.i

sw.bb1.i:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %rq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %rq.i, align 8
  %index3.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq.i, i32 0, i32 1, i32 0, i32 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb1.i, %sw.bb.i
  %.sink.i = phi ptr [ %19, %sw.bb.i ], [ %index3.i, %sw.bb1.i ]
  %21 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %chan, ptr %.sink.i, align 8
  %enable.i = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable.i, align 4
  %call.i = call i32 %23(ptr noundef %1, ptr noundef nonnull %rq.i, i32 noundef 0) #8
  br label %ptp_disable_pinfunc.exit

ptp_disable_pinfunc.exit:                         ; preds = %cleanup.sink.split.i, %if.then32.ptp_disable_pinfunc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rq.i) #8
  %func34 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pin1.094, i32 0, i32 2
  %24 = ptrtoint ptr %func34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %func34, align 4
  %chan35 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pin1.094, i32 0, i32 3
  %25 = ptrtoint ptr %chan35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %chan35, align 4
  br label %if.end36

if.end36:                                         ; preds = %ptp_disable_pinfunc.exit, %if.end30.if.end36_crit_edge
  %func37 = getelementptr %struct.ptp_pin_desc, ptr %3, i32 %pin, i32 2
  %26 = ptrtoint ptr %func37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %func37, align 4
  %chan38 = getelementptr %struct.ptp_pin_desc, ptr %3, i32 %pin, i32 3
  %28 = ptrtoint ptr %chan38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chan38, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rq.i80) #8
  %30 = call ptr @memset(ptr %rq.i80, i32 0, i32 64)
  %31 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %27, label %if.end36.ptp_disable_pinfunc.exit88_crit_edge [
    i32 2, label %sw.bb1.i83
    i32 1, label %sw.bb.i81
  ]

if.end36.ptp_disable_pinfunc.exit88_crit_edge:    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptp_disable_pinfunc.exit88

sw.bb.i81:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %32 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq.i80, i32 0, i32 1
  br label %cleanup.sink.split.i87

sw.bb1.i83:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %rq.i80 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %rq.i80, align 8
  %index3.i82 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq.i80, i32 0, i32 1, i32 0, i32 2
  br label %cleanup.sink.split.i87

cleanup.sink.split.i87:                           ; preds = %sw.bb1.i83, %sw.bb.i81
  %.sink.i84 = phi ptr [ %32, %sw.bb.i81 ], [ %index3.i82, %sw.bb1.i83 ]
  %34 = ptrtoint ptr %.sink.i84 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %.sink.i84, align 8
  %enable.i85 = getelementptr inbounds %struct.ptp_clock_info, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %enable.i85 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enable.i85, align 4
  %call.i86 = call i32 %36(ptr noundef %1, ptr noundef nonnull %rq.i80, i32 noundef 0) #8
  br label %ptp_disable_pinfunc.exit88

ptp_disable_pinfunc.exit88:                       ; preds = %cleanup.sink.split.i87, %if.end36.ptp_disable_pinfunc.exit88_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rq.i80) #8
  %37 = ptrtoint ptr %func37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %func, ptr %func37, align 4
  %38 = ptrtoint ptr %chan38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %chan, ptr %chan38, align 4
  br label %cleanup

cleanup:                                          ; preds = %ptp_disable_pinfunc.exit88, %do.end, %sw.bb23.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %ptp_disable_pinfunc.exit88 ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ptp_open(ptr nocapture noundef readnone %pc, i32 noundef %fmode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptp_ioctl(ptr noundef %pc, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %precise_offset = alloca %struct.ptp_sys_offset_precise, align 8
  %xtstamp = alloca %struct.system_device_crosststamp, align 8
  %sts = alloca %struct.ptp_system_timestamp, align 8
  %req = alloca %struct.ptp_clock_request, align 8
  %caps = alloca %struct.ptp_clock_caps, align 4
  %pd = alloca %struct.ptp_pin_desc, align 4
  %ts = alloca %struct.timespec64, align 8
  %tmp205 = alloca %struct.timespec64, align 8
  %tmp210 = alloca %struct.timespec64, align 8
  %tmp217 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %precise_offset) #8
  %0 = call ptr @memset(ptr %precise_offset, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xtstamp) #8
  %1 = getelementptr inbounds %struct.system_device_crosststamp, ptr %xtstamp, i32 0, i32 1
  %2 = getelementptr inbounds %struct.system_device_crosststamp, ptr %xtstamp, i32 0, i32 2
  %info = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 2
  %3 = call ptr @memset(ptr %xtstamp, i32 255, i32 24)
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sts) #8
  %6 = call ptr @memset(ptr %sts, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %7 = call ptr @memset(ptr %req, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %caps) #8
  %8 = call ptr @memset(ptr %caps, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pd) #8
  %9 = call ptr @memset(ptr %pd, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #8
  %10 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %cmd, label %entry.out_crit_edge [
    i32 -2142225151, label %entry.sw.bb_crit_edge
    i32 -2142225142, label %entry.sw.bb_crit_edge840
    i32 1074806018, label %entry.sw.bb17_crit_edge
    i32 1074806027, label %entry.sw.bb17_crit_edge841
    i32 1077427459, label %entry.sw.bb69_crit_edge
    i32 1077427468, label %entry.sw.bb69_crit_edge842
    i32 1074019588, label %entry.sw.bb177_crit_edge
    i32 1074019597, label %entry.sw.bb177_crit_edge843
    i32 -1069531896, label %entry.sw.bb192_crit_edge
    i32 -1069531887, label %entry.sw.bb192_crit_edge844
    i32 -994034423, label %entry.sw.bb228_crit_edge
    i32 -994034414, label %entry.sw.bb228_crit_edge845
    i32 1128283397, label %entry.sw.bb300_crit_edge
    i32 1128283406, label %entry.sw.bb300_crit_edge846
    i32 -1067434746, label %entry.sw.bb349_crit_edge
    i32 -1067434737, label %entry.sw.bb349_crit_edge847
    i32 1080048903, label %entry.sw.bb419_crit_edge
    i32 1080048912, label %entry.sw.bb419_crit_edge848
  ]

entry.sw.bb419_crit_edge848:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb419

entry.sw.bb419_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb419

entry.sw.bb349_crit_edge847:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb349

entry.sw.bb349_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb349

entry.sw.bb300_crit_edge846:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb300

entry.sw.bb300_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb300

entry.sw.bb228_crit_edge845:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb228

entry.sw.bb228_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb228

entry.sw.bb192_crit_edge844:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb192

entry.sw.bb192_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb192

entry.sw.bb177_crit_edge843:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

entry.sw.bb177_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

entry.sw.bb69_crit_edge842:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb69

entry.sw.bb69_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb69

entry.sw.bb17_crit_edge841:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

entry.sw.bb_crit_edge840:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge840
  %12 = getelementptr inbounds i8, ptr %caps, i32 32
  %13 = call ptr @memset(ptr %12, i32 0, i32 48)
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %max_adj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_adj, align 4
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %caps, align 4
  %n_alarm = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %n_alarm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_alarm, align 4
  %n_alarm4 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 1
  %19 = ptrtoint ptr %n_alarm4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %n_alarm4, align 4
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_ext_ts, align 4
  %n_ext_ts6 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 2
  %22 = ptrtoint ptr %n_ext_ts6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %n_ext_ts6, align 4
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %n_per_out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_per_out, align 4
  %n_per_out8 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 3
  %25 = ptrtoint ptr %n_per_out8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %n_per_out8, align 4
  %pps = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pps, align 4
  %pps10 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 4
  %28 = ptrtoint ptr %pps10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %pps10, align 4
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_pins, align 4
  %n_pins12 = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 5
  %31 = ptrtoint ptr %n_pins12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %n_pins12, align 4
  %getcrosststamp = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 15
  %32 = ptrtoint ptr %getcrosststamp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %getcrosststamp, align 4
  %cmp = icmp ne ptr %33, null
  %conv = zext i1 %cmp to i32
  %cross_timestamping = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 6
  %34 = ptrtoint ptr %cross_timestamping to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %cross_timestamping, align 4
  %adjphase = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 11
  %35 = ptrtoint ptr %adjphase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adjphase, align 4
  %cmp15 = icmp ne ptr %36, null
  %conv16 = zext i1 %cmp15 to i32
  %adjust_phase = getelementptr inbounds %struct.ptp_clock_caps, ptr %caps, i32 0, i32 7
  %37 = ptrtoint ptr %adjust_phase to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv16, ptr %adjust_phase, align 4
  %38 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %sw.bb.out_crit_edge, label %if.end.i.i

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i:                                       ; preds = %sw.bb
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 80, i32 -1226833920) #12, !srcloc !23
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_crit_edge

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %caps, i32 noundef 80) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %38, ptr noundef nonnull %caps, i32 noundef 80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %out

sw.bb17:                                          ; preds = %entry.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge841
  %40 = call ptr @memset(ptr %req, i32 0, i32 64)
  %41 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  %42 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #8
  %call.i.i653 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i653, label %sw.bb17.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb17.if.then11.i.i_crit_edge:                  ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb17
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %42, i32 16, i32 -1226833920) #12, !srcloc !24
  %asmresult.i.i654 = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i654)
  %cmp.i6.i655 = icmp eq i32 %asmresult.i.i654, 0
  br i1 %cmp.i6.i655, label %if.end.i.i657, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !25

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i657:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i656 = call zeroext i1 @__kasan_check_write(ptr noundef %41, i32 noundef 16) #8
  %44 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !26
  %and.i.i.i.i = and i32 %46, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %41, ptr noundef %42, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end21, label %if.end.i.i657.if.then11.i.i_crit_edge, !prof !25

if.end.i.i657.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i657
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i657.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb17.if.then11.i.i_crit_edge
  %res.0.i.i785 = phi i32 [ %call1.i.i.i, %if.end.i.i657.if.then11.i.i_crit_edge ], [ 16, %sw.bb17.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i785
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %sub.i.i
  %47 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i785)
  br label %out

if.end21:                                         ; preds = %if.end.i.i657
  %48 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %cmd, label %if.end21.if.end53_crit_edge [
    i32 1074806027, label %if.then24
    i32 1074806018, label %if.then45
  ]

if.end21.if.end53_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then24:                                        ; preds = %if.end21
  %flags = getelementptr inbounds %struct.ptp_extts_request, ptr %41, i32 0, i32 1
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %or = or i32 %50, 8
  store i32 %or, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %tobool26.not = icmp ult i32 %50, 16
  br i1 %tobool26.not, label %lor.lhs.false, label %if.then24.out_crit_edge

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.then24
  %rsv = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %rsv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rsv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool27.not = icmp eq i32 %52, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool31.not = icmp ne i32 %54, 0
  %55 = and i32 %50, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %56 = icmp eq i32 %55, 1
  %or.cond = select i1 %tobool31.not, i1 true, i1 %56
  br i1 %or.cond, label %lor.lhs.false28.out_crit_edge, label %lor.lhs.false28.if.end53_crit_edge

lor.lhs.false28.if.end53_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

lor.lhs.false28.out_crit_edge:                    ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then45:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %flags46 = getelementptr inbounds %struct.ptp_extts_request, ptr %41, i32 0, i32 1
  %57 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags46, align 4
  %and47 = and i32 %58, 7
  store i32 %and47, ptr %flags46, align 4
  %rsv48 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %rsv48 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rsv48, align 8
  %arrayidx51 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %lor.lhs.false28.if.end53_crit_edge, %if.end21.if.end53_crit_edge
  %61 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %41, align 8
  %n_ext_ts54 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 4
  %63 = ptrtoint ptr %n_ext_ts54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n_ext_ts54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp55.not = icmp ult i32 %62, %64
  br i1 %cmp55.not, label %if.end58, label %if.end53.out_crit_edge

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end58:                                         ; preds = %if.end53
  %65 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %req, align 8
  %flags59 = getelementptr inbounds %struct.ptp_extts_request, ptr %41, i32 0, i32 1
  %66 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags59, align 4
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 9
  %call62 = call i32 @mutex_lock_interruptible_nested(ptr noundef %pincfg_mux, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end58.cleanup489_crit_edge

if.end58.cleanup489_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup489

if.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %and60 = and i32 %67, 1
  %enable66 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 17
  %68 = ptrtoint ptr %enable66 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %enable66, align 4
  %call67 = call i32 %69(ptr noundef %5, ptr noundef nonnull %req, i32 noundef %and60) #8
  call void @mutex_unlock(ptr noundef %pincfg_mux) #8
  br label %out

sw.bb69:                                          ; preds = %entry.sw.bb69_crit_edge, %entry.sw.bb69_crit_edge842
  %70 = call ptr @memset(ptr %req, i32 0, i32 64)
  %71 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  %72 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #8
  %call.i.i663 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i663, label %sw.bb69.if.then11.i.i679_crit_edge, label %land.lhs.true.i.i666

sw.bb69.if.then11.i.i679_crit_edge:               ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i679

land.lhs.true.i.i666:                             ; preds = %sw.bb69
  %73 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %72, i32 56, i32 -1226833920) #12, !srcloc !24
  %asmresult.i.i664 = extractvalue { i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i664)
  %cmp.i6.i665 = icmp eq i32 %asmresult.i.i664, 0
  br i1 %cmp.i6.i665, label %if.end.i.i676, label %land.lhs.true.i.i666.if.then11.i.i679_crit_edge, !prof !25

land.lhs.true.i.i666.if.then11.i.i679_crit_edge:  ; preds = %land.lhs.true.i.i666
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i679

if.end.i.i676:                                    ; preds = %land.lhs.true.i.i666
  %call.i.i.i667 = call zeroext i1 @__kasan_check_write(ptr noundef %71, i32 noundef 56) #8
  %74 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i.i668 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i.i668 to ptr
  %cpu_domain.i.i.i.i.i669 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 4
  %76 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i669) #5, !srcloc !26
  %and.i.i.i.i670 = and i32 %76, -13
  %or.i.i.i.i671 = or i32 %and.i.i.i.i670, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i671) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  %call1.i.i.i672 = call i32 @arm_copy_from_user(ptr noundef %71, ptr noundef %72, i32 noundef 56) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i672)
  %tobool4.not.i.i675 = icmp eq i32 %call1.i.i.i672, 0
  br i1 %tobool4.not.i.i675, label %if.end73, label %if.end.i.i676.if.then11.i.i679_crit_edge, !prof !25

if.end.i.i676.if.then11.i.i679_crit_edge:         ; preds = %if.end.i.i676
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i679

if.then11.i.i679:                                 ; preds = %if.end.i.i676.if.then11.i.i679_crit_edge, %land.lhs.true.i.i666.if.then11.i.i679_crit_edge, %sw.bb69.if.then11.i.i679_crit_edge
  %res.0.i.i674790 = phi i32 [ %call1.i.i.i672, %if.end.i.i676.if.then11.i.i679_crit_edge ], [ 56, %sw.bb69.if.then11.i.i679_crit_edge ], [ 56, %land.lhs.true.i.i666.if.then11.i.i679_crit_edge ]
  %sub.i.i677 = sub i32 56, %res.0.i.i674790
  %add.ptr.i.i678 = getelementptr i8, ptr %71, i32 %sub.i.i677
  %77 = call ptr @memset(ptr %add.ptr.i.i678, i32 0, i32 %res.0.i.i674790)
  br label %out

if.end73:                                         ; preds = %if.end.i.i676
  %78 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cmd, label %if.end73.if.end155_crit_edge [
    i32 1077427468, label %if.then76
    i32 1077427459, label %if.then147
  ]

if.end73.if.end155_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then76:                                        ; preds = %if.end73
  %flags77 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 3
  %79 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %80)
  %tobool79.not = icmp ult i32 %80, 8
  br i1 %tobool79.not, label %if.end81, label %if.then76.out_crit_edge

if.then76.out_crit_edge:                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end81:                                         ; preds = %if.then76
  %and83 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %81 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 4
  br i1 %tobool84.not, label %land.lhs.true85, label %if.then102

land.lhs.true85:                                  ; preds = %if.end81
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool87.not = icmp eq i32 %83, 0
  br i1 %tobool87.not, label %lor.lhs.false88, label %land.lhs.true85.out_crit_edge

land.lhs.true85.out_crit_edge:                    ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false88:                                  ; preds = %land.lhs.true85
  %arrayidx89 = getelementptr inbounds [4 x i32], ptr %81, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool90.not = icmp eq i32 %85, 0
  br i1 %tobool90.not, label %lor.lhs.false91, label %lor.lhs.false88.out_crit_edge

lor.lhs.false88.out_crit_edge:                    ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %arrayidx92 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 4, i32 0, i32 1
  %86 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx92, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool93.not = icmp eq i32 %87, 0
  br i1 %tobool93.not, label %lor.lhs.false94, label %lor.lhs.false91.out_crit_edge

lor.lhs.false91.out_crit_edge:                    ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false94:                                  ; preds = %lor.lhs.false91
  %arrayidx95 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 4, i32 0, i32 2
  %88 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool96.not = icmp eq i32 %89, 0
  br i1 %tobool96.not, label %lor.lhs.false94.if.end119_crit_edge, label %lor.lhs.false94.out_crit_edge

lor.lhs.false94.out_crit_edge:                    ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false94.if.end119_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then102:                                       ; preds = %if.end81
  %90 = ptrtoint ptr %81 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %81, align 8
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1
  %92 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %period, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %91, i64 %93)
  %cmp104 = icmp sgt i64 %91, %93
  br i1 %cmp104, label %if.then102.out_crit_edge, label %lor.lhs.false106

if.then102.out_crit_edge:                         ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false106:                                 ; preds = %if.then102
  call void @__sanitizer_cov_trace_cmp8(i64 %91, i64 %93)
  %cmp110 = icmp eq i64 %91, %93
  br i1 %cmp110, label %land.lhs.true112, label %lor.lhs.false106.if.end119_crit_edge

lor.lhs.false106.if.end119_crit_edge:             ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true112:                                 ; preds = %lor.lhs.false106
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 4, i32 0, i32 1
  %94 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nsec, align 8
  %nsec114 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %nsec114 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nsec114, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp115 = icmp ugt i32 %95, %97
  br i1 %cmp115, label %land.lhs.true112.out_crit_edge, label %land.lhs.true112.if.end119_crit_edge

land.lhs.true112.if.end119_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true112.out_crit_edge:                   ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end119:                                        ; preds = %land.lhs.true112.if.end119_crit_edge, %lor.lhs.false106.if.end119_crit_edge, %lor.lhs.false94.if.end119_crit_edge
  %and121 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end119.if.end155_crit_edge, label %if.then123

if.end119.if.end155_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then123:                                       ; preds = %if.end119
  %98 = ptrtoint ptr %71 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %71, align 8
  %period125 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1
  %100 = ptrtoint ptr %period125 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %period125, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %101)
  %cmp127 = icmp sgt i64 %99, %101
  br i1 %cmp127, label %if.then123.out_crit_edge, label %lor.lhs.false129

if.then123.out_crit_edge:                         ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false129:                                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %101)
  %cmp133 = icmp eq i64 %99, %101
  br i1 %cmp133, label %land.lhs.true135, label %lor.lhs.false129.if.end155_crit_edge

lor.lhs.false129.if.end155_crit_edge:             ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

land.lhs.true135:                                 ; preds = %lor.lhs.false129
  %nsec136 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %102 = ptrtoint ptr %nsec136 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nsec136, align 8
  %nsec138 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %nsec138 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %nsec138, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp139.not = icmp ult i32 %103, %105
  br i1 %cmp139.not, label %land.lhs.true135.if.end155_crit_edge, label %land.lhs.true135.out_crit_edge

land.lhs.true135.out_crit_edge:                   ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true135.if.end155_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then147:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %flags148 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 3
  %106 = call ptr @memset(ptr %flags148, i32 0, i32 20)
  br label %if.end155

if.end155:                                        ; preds = %if.then147, %land.lhs.true135.if.end155_crit_edge, %lor.lhs.false129.if.end155_crit_edge, %if.end119.if.end155_crit_edge, %if.end73.if.end155_crit_edge
  %index156 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 2
  %107 = ptrtoint ptr %index156 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %index156, align 8
  %n_per_out157 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 5
  %109 = ptrtoint ptr %n_per_out157 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n_per_out157, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp158.not = icmp ult i32 %108, %110
  br i1 %cmp158.not, label %if.end161, label %if.end155.out_crit_edge

if.end155.out_crit_edge:                          ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end161:                                        ; preds = %if.end155
  %111 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %req, align 8
  %period163 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1
  %112 = ptrtoint ptr %period163 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %period163, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %tobool165.not = icmp eq i64 %113, 0
  br i1 %tobool165.not, label %lor.rhs, label %if.end161.lor.end_crit_edge

if.end161.lor.end_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %nsec167 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %nsec167 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nsec167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool168 = icmp ne i32 %115, 0
  %phi.cast = zext i1 %tobool168 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end161.lor.end_crit_edge
  %116 = phi i32 [ 1, %if.end161.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %pincfg_mux169 = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 9
  %call170 = call i32 @mutex_lock_interruptible_nested(ptr noundef %pincfg_mux169, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end173, label %lor.end.cleanup489_crit_edge

lor.end.cleanup489_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup489

if.end173:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  %enable174 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 17
  %117 = ptrtoint ptr %enable174 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %enable174, align 4
  %call175 = call i32 %118(ptr noundef %5, ptr noundef nonnull %req, i32 noundef %116) #8
  call void @mutex_unlock(ptr noundef %pincfg_mux169) #8
  br label %out

sw.bb177:                                         ; preds = %entry.sw.bb177_crit_edge, %entry.sw.bb177_crit_edge843
  %119 = call ptr @memset(ptr %req, i32 0, i32 64)
  %call178 = tail call zeroext i1 @capable(i32 noundef 25) #8
  br i1 %call178, label %if.end180, label %sw.bb177.cleanup489_crit_edge

sw.bb177.cleanup489_crit_edge:                    ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup489

if.end180:                                        ; preds = %sw.bb177
  %120 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2, ptr %req, align 8
  %pincfg_mux184 = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 9
  %call185 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %pincfg_mux184, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %if.end180.cleanup489_crit_edge

if.end180.cleanup489_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup489

if.end188:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool182.not = icmp ne i32 %arg, 0
  %cond183 = zext i1 %tobool182.not to i32
  %enable189 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 17
  %121 = ptrtoint ptr %enable189 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %enable189, align 4
  %call190 = call i32 %122(ptr noundef %5, ptr noundef nonnull %req, i32 noundef %cond183) #8
  call void @mutex_unlock(ptr noundef %pincfg_mux184) #8
  br label %out

sw.bb192:                                         ; preds = %entry.sw.bb192_crit_edge, %entry.sw.bb192_crit_edge844
  %getcrosststamp194 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 15
  %123 = ptrtoint ptr %getcrosststamp194 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %getcrosststamp194, align 4
  %tobool195.not = icmp eq ptr %124, null
  br i1 %tobool195.not, label %sw.bb192.out_crit_edge, label %if.end197

sw.bb192.out_crit_edge:                           ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end197:                                        ; preds = %sw.bb192
  %call201 = call i32 %124(ptr noundef %5, ptr noundef nonnull %xtstamp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end204, label %if.end197.out_crit_edge

if.end197.out_crit_edge:                          ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end204:                                        ; preds = %if.end197
  %125 = getelementptr inbounds i8, ptr %precise_offset, i32 8
  %126 = call ptr @memset(ptr %125, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp205) #8
  %127 = ptrtoint ptr %xtstamp to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %xtstamp, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp205, i64 noundef %128) #8
  %129 = call ptr @memcpy(ptr %ts, ptr %tmp205, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp205) #8
  %130 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %ts, align 8
  %132 = ptrtoint ptr %precise_offset to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %precise_offset, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %133 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tv_nsec, align 8
  %nsec209 = getelementptr inbounds %struct.ptp_clock_time, ptr %precise_offset, i32 0, i32 1
  %135 = ptrtoint ptr %nsec209 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %nsec209, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp210) #8
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %1, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp210, i64 noundef %137) #8
  %138 = call ptr @memcpy(ptr %ts, ptr %tmp210, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp210) #8
  %139 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %ts, align 8
  %sys_realtime212 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 1
  %141 = ptrtoint ptr %sys_realtime212 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %sys_realtime212, align 8
  %142 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tv_nsec, align 8
  %nsec216 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 1, i32 1
  %144 = ptrtoint ptr %nsec216 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %nsec216, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp217) #8
  %145 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %2, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp217, i64 noundef %146) #8
  %147 = call ptr @memcpy(ptr %ts, ptr %tmp217, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp217) #8
  %148 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %ts, align 8
  %sys_monoraw219 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 2
  %150 = ptrtoint ptr %sys_monoraw219 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %149, ptr %sys_monoraw219, align 8
  %151 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tv_nsec, align 8
  %nsec223 = getelementptr inbounds %struct.ptp_sys_offset_precise, ptr %precise_offset, i32 0, i32 2, i32 1
  %153 = ptrtoint ptr %nsec223 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %nsec223, align 8
  %154 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #8
  %call.i.i686 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i686, label %if.end204.out_crit_edge, label %if.end.i.i689

if.end204.out_crit_edge:                          ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i689:                                    ; preds = %if.end204
  %155 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %154, i32 64, i32 -1226833920) #12, !srcloc !23
  %asmresult.i.i687 = extractvalue { i32, i32 } %155, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i687)
  %cmp.i6.i688 = icmp eq i32 %asmresult.i.i687, 0
  br i1 %cmp.i6.i688, label %copy_to_user.exit694, label %if.end.i.i689.out_crit_edge

if.end.i.i689.out_crit_edge:                      ; preds = %if.end.i.i689
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

copy_to_user.exit694:                             ; preds = %if.end.i.i689
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i690 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %precise_offset, i32 noundef 64) #8
  %call.i12.i.i691 = call i32 @arm_copy_to_user(ptr noundef %154, ptr noundef nonnull %precise_offset, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i691)
  %tobool225.not = icmp eq i32 %call.i12.i.i691, 0
  %spec.select814 = select i1 %tobool225.not, i32 0, i32 -14
  br label %out

sw.bb228:                                         ; preds = %entry.sw.bb228_crit_edge, %entry.sw.bb228_crit_edge845
  %gettimex64 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 14
  %156 = ptrtoint ptr %gettimex64 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %gettimex64, align 4
  %tobool230.not = icmp eq ptr %157, null
  br i1 %tobool230.not, label %sw.bb228.out_crit_edge, label %if.end232

sw.bb228.out_crit_edge:                           ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end232:                                        ; preds = %sw.bb228
  %158 = inttoptr i32 %arg to ptr
  %call233 = tail call ptr @memdup_user(ptr noundef %158, i32 noundef 1216) #8
  %cmp.i = icmp ugt ptr %call233, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then235, label %if.end237

if.then235:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %call233 to i32
  br label %out

if.end237:                                        ; preds = %if.end232
  %160 = ptrtoint ptr %call233 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %call233, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %161)
  %cmp238 = icmp ugt i32 %161, 25
  br i1 %cmp238, label %if.end237.out_crit_edge, label %lor.lhs.false240

if.end237.out_crit_edge:                          ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false240:                                 ; preds = %if.end237
  %rsv241 = getelementptr inbounds %struct.ptp_sys_offset_extended, ptr %call233, i32 0, i32 1
  %162 = ptrtoint ptr %rsv241 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rsv241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool243.not = icmp eq i32 %163, 0
  br i1 %tobool243.not, label %lor.lhs.false244, label %lor.lhs.false240.out_crit_edge

lor.lhs.false240.out_crit_edge:                   ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false244:                                 ; preds = %lor.lhs.false240
  %arrayidx246 = getelementptr %struct.ptp_sys_offset_extended, ptr %call233, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool247.not = icmp eq i32 %165, 0
  br i1 %tobool247.not, label %lor.lhs.false248, label %lor.lhs.false244.out_crit_edge

lor.lhs.false244.out_crit_edge:                   ; preds = %lor.lhs.false244
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false248:                                 ; preds = %lor.lhs.false244
  %arrayidx250 = getelementptr %struct.ptp_sys_offset_extended, ptr %call233, i32 0, i32 1, i32 2
  %166 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool251.not = icmp eq i32 %167, 0
  br i1 %tobool251.not, label %for.cond.preheader, label %lor.lhs.false248.out_crit_edge

lor.lhs.false248.out_crit_edge:                   ; preds = %lor.lhs.false248
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %lor.lhs.false248
  %168 = ptrtoint ptr %call233 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %call233, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp255824.not = icmp eq i32 %169, 0
  br i1 %cmp255824.not, label %for.cond.preheader.if.end8.i.i698_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end8.i.i698_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i698

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tv_nsec270 = getelementptr inbounds %struct.timespec64, ptr %sts, i32 0, i32 1
  %tv_nsec280 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %post_ts = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  %tv_nsec291 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end263.for.body_crit_edge, %for.body.lr.ph
  %i.0825 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end263.for.body_crit_edge ]
  %170 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %info, align 8
  %gettimex64258 = getelementptr inbounds %struct.ptp_clock_info, ptr %171, i32 0, i32 14
  %172 = ptrtoint ptr %gettimex64258 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %gettimex64258, align 4
  %call260 = call i32 %173(ptr noundef %171, ptr noundef nonnull %ts, ptr noundef nonnull %sts) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %if.end263, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end263:                                        ; preds = %for.body
  %174 = ptrtoint ptr %sts to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %sts, align 8
  %arrayidx266 = getelementptr %struct.ptp_sys_offset_extended, ptr %call233, i32 0, i32 2, i32 %i.0825
  %176 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %arrayidx266, align 8
  %177 = ptrtoint ptr %tv_nsec270 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %tv_nsec270, align 8
  %nsec274 = getelementptr inbounds %struct.ptp_clock_time, ptr %arrayidx266, i32 0, i32 1
  %179 = ptrtoint ptr %nsec274 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %nsec274, align 8
  %180 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %ts, align 8
  %arrayidx278 = getelementptr %struct.ptp_sys_offset_extended, ptr %call233, i32 0, i32 2, i32 %i.0825, i32 1
  %182 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %181, ptr %arrayidx278, align 8
  %183 = ptrtoint ptr %tv_nsec280 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tv_nsec280, align 8
  %nsec284 = getelementptr %struct.ptp_sys_offset_extended, ptr %call233, i32 0, i32 2, i32 %i.0825, i32 1, i32 1
  %185 = ptrtoint ptr %nsec284 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %nsec284, align 8
  %186 = ptrtoint ptr %post_ts to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %post_ts, align 8
  %arrayidx288 = getelementptr %struct.ptp_sys_offset_extended, ptr %call233, i32 0, i32 2, i32 %i.0825, i32 2
  %188 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %187, ptr %arrayidx288, align 8
  %189 = ptrtoint ptr %tv_nsec291 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %tv_nsec291, align 8
  %nsec295 = getelementptr %struct.ptp_sys_offset_extended, ptr %call233, i32 0, i32 2, i32 %i.0825, i32 2, i32 1
  %191 = ptrtoint ptr %nsec295 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %nsec295, align 8
  %inc = add nuw i32 %i.0825, 1
  %192 = ptrtoint ptr %call233 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %call233, align 8
  %cmp255 = icmp ult i32 %inc, %193
  br i1 %cmp255, label %if.end263.for.body_crit_edge, label %if.end263.if.end8.i.i698_crit_edge

if.end263.if.end8.i.i698_crit_edge:               ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i698

if.end263.for.body_crit_edge:                     ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end8.i.i698:                                   ; preds = %if.end263.if.end8.i.i698_crit_edge, %for.cond.preheader.if.end8.i.i698_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #8
  %call.i.i699 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i699, label %if.end8.i.i698.out_crit_edge, label %if.end.i.i702

if.end8.i.i698.out_crit_edge:                     ; preds = %if.end8.i.i698
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i702:                                    ; preds = %if.end8.i.i698
  %194 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %158, i32 1216, i32 -1226833920) #12, !srcloc !23
  %asmresult.i.i700 = extractvalue { i32, i32 } %194, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i700)
  %cmp.i6.i701 = icmp eq i32 %asmresult.i.i700, 0
  br i1 %cmp.i6.i701, label %copy_to_user.exit707, label %if.end.i.i702.out_crit_edge

if.end.i.i702.out_crit_edge:                      ; preds = %if.end.i.i702
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

copy_to_user.exit707:                             ; preds = %if.end.i.i702
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i703 = call zeroext i1 @__kasan_check_read(ptr noundef %call233, i32 noundef 1216) #8
  %call.i12.i.i704 = call i32 @arm_copy_to_user(ptr noundef %158, ptr noundef %call233, i32 noundef 1216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i704)
  %tobool297.not = icmp eq i32 %call.i12.i.i704, 0
  %spec.select815 = select i1 %tobool297.not, i32 0, i32 -14
  br label %out

sw.bb300:                                         ; preds = %entry.sw.bb300_crit_edge, %entry.sw.bb300_crit_edge846
  %195 = inttoptr i32 %arg to ptr
  %call301 = tail call ptr @memdup_user(ptr noundef %195, i32 noundef 832) #8
  %cmp.i780 = icmp ugt ptr %call301, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i780, label %if.then303, label %if.end305

if.then303:                                       ; preds = %sw.bb300
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %call301 to i32
  br label %out

if.end305:                                        ; preds = %sw.bb300
  %197 = ptrtoint ptr %call301 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %call301, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %198)
  %cmp307 = icmp ugt i32 %198, 25
  br i1 %cmp307, label %if.end305.out_crit_edge, label %if.end310

if.end305.out_crit_edge:                          ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end310:                                        ; preds = %if.end305
  %ts311 = getelementptr inbounds %struct.ptp_sys_offset, ptr %call301, i32 0, i32 2
  %199 = ptrtoint ptr %call301 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %call301, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp315821.not = icmp eq i32 %200, 0
  br i1 %cmp315821.not, label %if.end310.for.end340_crit_edge, label %for.body317.lr.ph

if.end310.for.end340_crit_edge:                   ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end340

for.body317.lr.ph:                                ; preds = %if.end310
  %tv_nsec320 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %gettimex64322 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 14
  %gettime64 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 13
  br label %for.body317

for.body317:                                      ; preds = %if.end332.for.body317_crit_edge, %for.body317.lr.ph
  %pct.0823 = phi ptr [ %ts311, %for.body317.lr.ph ], [ %incdec.ptr337, %if.end332.for.body317_crit_edge ]
  %i.1822 = phi i32 [ 0, %for.body317.lr.ph ], [ %inc339, %if.end332.for.body317_crit_edge ]
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts) #8
  %201 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %ts, align 8
  %203 = ptrtoint ptr %pct.0823 to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %202, ptr %pct.0823, align 8
  %204 = ptrtoint ptr %tv_nsec320 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %tv_nsec320, align 8
  %nsec321 = getelementptr inbounds %struct.ptp_clock_time, ptr %pct.0823, i32 0, i32 1
  %206 = ptrtoint ptr %nsec321 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %nsec321, align 8
  %incdec.ptr = getelementptr %struct.ptp_clock_time, ptr %pct.0823, i32 1
  %207 = ptrtoint ptr %gettimex64322 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %gettimex64322, align 4
  %tobool323.not = icmp eq ptr %208, null
  br i1 %tobool323.not, label %if.else327, label %if.then324

if.then324:                                       ; preds = %for.body317
  call void @__sanitizer_cov_trace_pc() #10
  %call326 = call i32 %208(ptr noundef %5, ptr noundef nonnull %ts, ptr noundef null) #8
  br label %if.end329

if.else327:                                       ; preds = %for.body317
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %gettime64 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %gettime64, align 4
  %call328 = call i32 %210(ptr noundef %5, ptr noundef nonnull %ts) #8
  br label %if.end329

if.end329:                                        ; preds = %if.else327, %if.then324
  %err.3 = phi i32 [ %call326, %if.then324 ], [ %call328, %if.else327 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool330.not = icmp eq i32 %err.3, 0
  br i1 %tobool330.not, label %if.end332, label %if.end329.out_crit_edge

if.end329.out_crit_edge:                          ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end332:                                        ; preds = %if.end329
  %211 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %ts, align 8
  %213 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %212, ptr %incdec.ptr, align 8
  %214 = ptrtoint ptr %tv_nsec320 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %tv_nsec320, align 8
  %nsec336 = getelementptr %struct.ptp_clock_time, ptr %pct.0823, i32 1, i32 1
  %216 = ptrtoint ptr %nsec336 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %nsec336, align 8
  %incdec.ptr337 = getelementptr %struct.ptp_clock_time, ptr %pct.0823, i32 2
  %inc339 = add nuw i32 %i.1822, 1
  %217 = ptrtoint ptr %call301 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %call301, align 8
  %cmp315 = icmp ult i32 %inc339, %218
  br i1 %cmp315, label %if.end332.for.body317_crit_edge, label %if.end332.for.end340_crit_edge

if.end332.for.end340_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end340

if.end332.for.body317_crit_edge:                  ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body317

for.end340:                                       ; preds = %if.end332.for.end340_crit_edge, %if.end310.for.end340_crit_edge
  %pct.0.lcssa = phi ptr [ %ts311, %if.end310.for.end340_crit_edge ], [ %incdec.ptr337, %if.end332.for.end340_crit_edge ]
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts) #8
  %219 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %ts, align 8
  %221 = ptrtoint ptr %pct.0.lcssa to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %220, ptr %pct.0.lcssa, align 8
  %tv_nsec343 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %222 = ptrtoint ptr %tv_nsec343 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %tv_nsec343, align 8
  %nsec344 = getelementptr inbounds %struct.ptp_clock_time, ptr %pct.0.lcssa, i32 0, i32 1
  %224 = ptrtoint ptr %nsec344 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %nsec344, align 8
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #8
  %call.i.i712 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i712, label %for.end340.out_crit_edge, label %if.end.i.i715

for.end340.out_crit_edge:                         ; preds = %for.end340
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i715:                                    ; preds = %for.end340
  %225 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %195, i32 832, i32 -1226833920) #12, !srcloc !23
  %asmresult.i.i713 = extractvalue { i32, i32 } %225, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i713)
  %cmp.i6.i714 = icmp eq i32 %asmresult.i.i713, 0
  br i1 %cmp.i6.i714, label %copy_to_user.exit720, label %if.end.i.i715.out_crit_edge

if.end.i.i715.out_crit_edge:                      ; preds = %if.end.i.i715
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

copy_to_user.exit720:                             ; preds = %if.end.i.i715
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i716 = call zeroext i1 @__kasan_check_read(ptr noundef %call301, i32 noundef 832) #8
  %call.i12.i.i717 = call i32 @arm_copy_to_user(ptr noundef %195, ptr noundef %call301, i32 noundef 832) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i717)
  %tobool346.not = icmp eq i32 %call.i12.i.i717, 0
  %spec.select816 = select i1 %tobool346.not, i32 0, i32 -14
  br label %out

sw.bb349:                                         ; preds = %entry.sw.bb349_crit_edge, %entry.sw.bb349_crit_edge847
  %226 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #8
  %call.i.i725 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i725, label %sw.bb349.if.then11.i.i741_crit_edge, label %land.lhs.true.i.i728

sw.bb349.if.then11.i.i741_crit_edge:              ; preds = %sw.bb349
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i741

land.lhs.true.i.i728:                             ; preds = %sw.bb349
  %227 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %226, i32 96, i32 -1226833920) #12
  %asmresult.i.i726 = extractvalue { i32, i32 } %227, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i726)
  %cmp.i6.i727 = icmp eq i32 %asmresult.i.i726, 0
  br i1 %cmp.i6.i727, label %if.end.i.i738, label %land.lhs.true.i.i728.if.then11.i.i741_crit_edge, !prof !25

land.lhs.true.i.i728.if.then11.i.i741_crit_edge:  ; preds = %land.lhs.true.i.i728
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i741

if.end.i.i738:                                    ; preds = %land.lhs.true.i.i728
  %call.i.i.i729 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pd, i32 noundef 96) #8
  %228 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i.i730 = and i32 %228, -16384
  %229 = inttoptr i32 %and.i.i.i.i.i.i730 to ptr
  %cpu_domain.i.i.i.i.i731 = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 4
  %230 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i731) #5, !srcloc !26
  %and.i.i.i.i732 = and i32 %230, -13
  %or.i.i.i.i733 = or i32 %and.i.i.i.i732, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i733) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  %call1.i.i.i734 = call i32 @arm_copy_from_user(ptr noundef nonnull %pd, ptr noundef %226, i32 noundef 96) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %230) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i734)
  %tobool4.not.i.i737 = icmp eq i32 %call1.i.i.i734, 0
  br i1 %tobool4.not.i.i737, label %if.end353, label %if.end.i.i738.if.then11.i.i741_crit_edge, !prof !25

if.end.i.i738.if.then11.i.i741_crit_edge:         ; preds = %if.end.i.i738
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i741

if.then11.i.i741:                                 ; preds = %if.end.i.i738.if.then11.i.i741_crit_edge, %land.lhs.true.i.i728.if.then11.i.i741_crit_edge, %sw.bb349.if.then11.i.i741_crit_edge
  %res.0.i.i736804 = phi i32 [ %call1.i.i.i734, %if.end.i.i738.if.then11.i.i741_crit_edge ], [ 96, %sw.bb349.if.then11.i.i741_crit_edge ], [ 96, %land.lhs.true.i.i728.if.then11.i.i741_crit_edge ]
  %sub.i.i739 = sub i32 96, %res.0.i.i736804
  %add.ptr.i.i740 = getelementptr i8, ptr %pd, i32 %sub.i.i739
  %231 = call ptr @memset(ptr %add.ptr.i.i740, i32 0, i32 %res.0.i.i736804)
  br label %out

if.end353:                                        ; preds = %if.end.i.i738
  %rsv354 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4
  %232 = ptrtoint ptr %rsv354 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %rsv354, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool356.not = icmp eq i32 %233, 0
  br i1 %tobool356.not, label %lor.lhs.false357, label %if.end353.land.lhs.true373_crit_edge

if.end353.land.lhs.true373_crit_edge:             ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true373

lor.lhs.false357:                                 ; preds = %if.end353
  %arrayidx359 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, i32 1
  %234 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx359, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool360.not = icmp eq i32 %235, 0
  br i1 %tobool360.not, label %lor.lhs.false361, label %lor.lhs.false357.land.lhs.true373_crit_edge

lor.lhs.false357.land.lhs.true373_crit_edge:      ; preds = %lor.lhs.false357
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true373

lor.lhs.false361:                                 ; preds = %lor.lhs.false357
  %arrayidx363 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, i32 2
  %236 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool364.not = icmp eq i32 %237, 0
  br i1 %tobool364.not, label %lor.lhs.false365, label %lor.lhs.false361.land.lhs.true373_crit_edge

lor.lhs.false361.land.lhs.true373_crit_edge:      ; preds = %lor.lhs.false361
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true373

lor.lhs.false365:                                 ; preds = %lor.lhs.false361
  %arrayidx367 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, i32 3
  %238 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx367, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool368.not = icmp eq i32 %239, 0
  br i1 %tobool368.not, label %lor.lhs.false369, label %lor.lhs.false365.land.lhs.true373_crit_edge

lor.lhs.false365.land.lhs.true373_crit_edge:      ; preds = %lor.lhs.false365
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true373

lor.lhs.false369:                                 ; preds = %lor.lhs.false365
  %arrayidx371 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, i32 4
  %240 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx371, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool372.not = icmp ne i32 %241, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1067434737, i32 %cmd)
  %cmp374 = icmp eq i32 %cmd, -1067434737
  %or.cond646 = and i1 %cmp374, %tobool372.not
  br i1 %or.cond646, label %lor.lhs.false369.out_crit_edge, label %if.else377

lor.lhs.false369.out_crit_edge:                   ; preds = %lor.lhs.false369
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true373:                                 ; preds = %lor.lhs.false365.land.lhs.true373_crit_edge, %lor.lhs.false361.land.lhs.true373_crit_edge, %lor.lhs.false357.land.lhs.true373_crit_edge, %if.end353.land.lhs.true373_crit_edge
  %242 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %cmd, label %land.lhs.true373.if.end392_crit_edge [
    i32 -1067434737, label %land.lhs.true373.out_crit_edge
    i32 -1067434746, label %land.lhs.true373.if.then380_crit_edge
  ]

land.lhs.true373.if.then380_crit_edge:            ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then380

land.lhs.true373.out_crit_edge:                   ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true373.if.end392_crit_edge:             ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end392

if.else377:                                       ; preds = %lor.lhs.false369
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1067434746, i32 %cmd)
  %cmp378 = icmp eq i32 %cmd, -1067434746
  br i1 %cmp378, label %if.else377.if.then380_crit_edge, label %if.else377.if.end392_crit_edge

if.else377.if.end392_crit_edge:                   ; preds = %if.else377
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end392

if.else377.if.then380_crit_edge:                  ; preds = %if.else377
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then380

if.then380:                                       ; preds = %if.else377.if.then380_crit_edge, %land.lhs.true373.if.then380_crit_edge
  %243 = call ptr @memset(ptr %rsv354, i32 0, i32 20)
  br label %if.end392

if.end392:                                        ; preds = %if.then380, %if.else377.if.end392_crit_edge, %land.lhs.true373.if.end392_crit_edge
  %index393 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 1
  %244 = ptrtoint ptr %index393 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %index393, align 4
  %n_pins394 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 6
  %246 = ptrtoint ptr %n_pins394 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %n_pins394, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %245, i32 %247)
  %cmp395.not = icmp ult i32 %245, %247
  br i1 %cmp395.not, label %if.end398, label %if.end392.out_crit_edge

if.end392.out_crit_edge:                          ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end398:                                        ; preds = %if.end392
  %248 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %245, i32 %247) #8, !srcloc !29
  %pincfg_mux406 = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 9
  %call407 = call i32 @mutex_lock_interruptible_nested(ptr noundef %pincfg_mux406, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call407)
  %tobool408.not = icmp eq i32 %call407, 0
  br i1 %tobool408.not, label %if.end8.i.i747, label %if.end398.cleanup489_crit_edge

if.end398.cleanup489_crit_edge:                   ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup489

if.end8.i.i747:                                   ; preds = %if.end398
  %and405 = and i32 %248, %245
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 8
  %249 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pin_config, align 4
  %arrayidx411 = getelementptr %struct.ptp_pin_desc, ptr %250, i32 %and405
  %251 = call ptr @memcpy(ptr %pd, ptr %arrayidx411, i32 96)
  call void @mutex_unlock(ptr noundef %pincfg_mux406) #8
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #8
  %call.i.i748 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i748, label %if.end8.i.i747.out_crit_edge, label %copy_to_user.exit756

if.end8.i.i747.out_crit_edge:                     ; preds = %if.end8.i.i747
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

copy_to_user.exit756:                             ; preds = %if.end8.i.i747
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i752 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pd, i32 noundef 96) #8
  %call.i12.i.i753 = call i32 @arm_copy_to_user(ptr noundef %226, ptr noundef nonnull %pd, i32 noundef 96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i753)
  %tobool416.not = icmp eq i32 %call.i12.i.i753, 0
  %spec.select817 = select i1 %tobool416.not, i32 0, i32 -14
  br label %out

sw.bb419:                                         ; preds = %entry.sw.bb419_crit_edge, %entry.sw.bb419_crit_edge848
  %252 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #8
  %call.i.i761 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i761, label %sw.bb419.if.then11.i.i777_crit_edge, label %land.lhs.true.i.i764

sw.bb419.if.then11.i.i777_crit_edge:              ; preds = %sw.bb419
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i777

land.lhs.true.i.i764:                             ; preds = %sw.bb419
  %253 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %252, i32 96, i32 -1226833920) #12, !srcloc !24
  %asmresult.i.i762 = extractvalue { i32, i32 } %253, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i762)
  %cmp.i6.i763 = icmp eq i32 %asmresult.i.i762, 0
  br i1 %cmp.i6.i763, label %if.end.i.i774, label %land.lhs.true.i.i764.if.then11.i.i777_crit_edge, !prof !25

land.lhs.true.i.i764.if.then11.i.i777_crit_edge:  ; preds = %land.lhs.true.i.i764
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i777

if.end.i.i774:                                    ; preds = %land.lhs.true.i.i764
  %call.i.i.i765 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pd, i32 noundef 96) #8
  %254 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i.i766 = and i32 %254, -16384
  %255 = inttoptr i32 %and.i.i.i.i.i.i766 to ptr
  %cpu_domain.i.i.i.i.i767 = getelementptr inbounds %struct.thread_info, ptr %255, i32 0, i32 4
  %256 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i767) #5, !srcloc !26
  %and.i.i.i.i768 = and i32 %256, -13
  %or.i.i.i.i769 = or i32 %and.i.i.i.i768, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i769) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  %call1.i.i.i770 = call i32 @arm_copy_from_user(ptr noundef nonnull %pd, ptr noundef %252, i32 noundef 96) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %256) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i770)
  %tobool4.not.i.i773 = icmp eq i32 %call1.i.i.i770, 0
  br i1 %tobool4.not.i.i773, label %if.end423, label %if.end.i.i774.if.then11.i.i777_crit_edge, !prof !25

if.end.i.i774.if.then11.i.i777_crit_edge:         ; preds = %if.end.i.i774
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i777

if.then11.i.i777:                                 ; preds = %if.end.i.i774.if.then11.i.i777_crit_edge, %land.lhs.true.i.i764.if.then11.i.i777_crit_edge, %sw.bb419.if.then11.i.i777_crit_edge
  %res.0.i.i772811 = phi i32 [ %call1.i.i.i770, %if.end.i.i774.if.then11.i.i777_crit_edge ], [ 96, %sw.bb419.if.then11.i.i777_crit_edge ], [ 96, %land.lhs.true.i.i764.if.then11.i.i777_crit_edge ]
  %sub.i.i775 = sub i32 96, %res.0.i.i772811
  %add.ptr.i.i776 = getelementptr i8, ptr %pd, i32 %sub.i.i775
  %257 = call ptr @memset(ptr %add.ptr.i.i776, i32 0, i32 %res.0.i.i772811)
  br label %out

if.end423:                                        ; preds = %if.end.i.i774
  %rsv424 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4
  %258 = ptrtoint ptr %rsv424 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %rsv424, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool426.not = icmp eq i32 %259, 0
  br i1 %tobool426.not, label %lor.lhs.false427, label %if.end423.land.lhs.true443_crit_edge

if.end423.land.lhs.true443_crit_edge:             ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true443

lor.lhs.false427:                                 ; preds = %if.end423
  %arrayidx429 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, i32 1
  %260 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx429, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool430.not = icmp eq i32 %261, 0
  br i1 %tobool430.not, label %lor.lhs.false431, label %lor.lhs.false427.land.lhs.true443_crit_edge

lor.lhs.false427.land.lhs.true443_crit_edge:      ; preds = %lor.lhs.false427
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true443

lor.lhs.false431:                                 ; preds = %lor.lhs.false427
  %arrayidx433 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, i32 2
  %262 = ptrtoint ptr %arrayidx433 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool434.not = icmp eq i32 %263, 0
  br i1 %tobool434.not, label %lor.lhs.false435, label %lor.lhs.false431.land.lhs.true443_crit_edge

lor.lhs.false431.land.lhs.true443_crit_edge:      ; preds = %lor.lhs.false431
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true443

lor.lhs.false435:                                 ; preds = %lor.lhs.false431
  %arrayidx437 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, i32 3
  %264 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx437, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool438.not = icmp eq i32 %265, 0
  br i1 %tobool438.not, label %lor.lhs.false439, label %lor.lhs.false435.land.lhs.true443_crit_edge

lor.lhs.false435.land.lhs.true443_crit_edge:      ; preds = %lor.lhs.false435
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true443

lor.lhs.false439:                                 ; preds = %lor.lhs.false435
  %arrayidx441 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 4, i32 4
  %266 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx441, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool442.not = icmp ne i32 %267, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080048912, i32 %cmd)
  %cmp444 = icmp eq i32 %cmd, 1080048912
  %or.cond647 = and i1 %cmp444, %tobool442.not
  br i1 %or.cond647, label %lor.lhs.false439.out_crit_edge, label %if.else447

lor.lhs.false439.out_crit_edge:                   ; preds = %lor.lhs.false439
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true443:                                 ; preds = %lor.lhs.false435.land.lhs.true443_crit_edge, %lor.lhs.false431.land.lhs.true443_crit_edge, %lor.lhs.false427.land.lhs.true443_crit_edge, %if.end423.land.lhs.true443_crit_edge
  %268 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %cmd, label %land.lhs.true443.if.end462_crit_edge [
    i32 1080048912, label %land.lhs.true443.out_crit_edge
    i32 1080048903, label %land.lhs.true443.if.then450_crit_edge
  ]

land.lhs.true443.if.then450_crit_edge:            ; preds = %land.lhs.true443
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then450

land.lhs.true443.out_crit_edge:                   ; preds = %land.lhs.true443
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true443.if.end462_crit_edge:             ; preds = %land.lhs.true443
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end462

if.else447:                                       ; preds = %lor.lhs.false439
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080048903, i32 %cmd)
  %cmp448 = icmp eq i32 %cmd, 1080048903
  br i1 %cmp448, label %if.else447.if.then450_crit_edge, label %if.else447.if.end462_crit_edge

if.else447.if.end462_crit_edge:                   ; preds = %if.else447
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end462

if.else447.if.then450_crit_edge:                  ; preds = %if.else447
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then450

if.then450:                                       ; preds = %if.else447.if.then450_crit_edge, %land.lhs.true443.if.then450_crit_edge
  %269 = call ptr @memset(ptr %rsv424, i32 0, i32 20)
  br label %if.end462

if.end462:                                        ; preds = %if.then450, %if.else447.if.end462_crit_edge, %land.lhs.true443.if.end462_crit_edge
  %index463 = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 1
  %270 = ptrtoint ptr %index463 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %index463, align 4
  %n_pins464 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 6
  %272 = ptrtoint ptr %n_pins464 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %n_pins464, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %271, i32 %273)
  %cmp465.not = icmp ult i32 %271, %273
  br i1 %cmp465.not, label %if.end468, label %if.end462.out_crit_edge

if.end462.out_crit_edge:                          ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end468:                                        ; preds = %if.end462
  %274 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %271, i32 %273) #8, !srcloc !29
  %pincfg_mux482 = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 9
  %call483 = call i32 @mutex_lock_interruptible_nested(ptr noundef %pincfg_mux482, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call483)
  %tobool484.not = icmp eq i32 %call483, 0
  br i1 %tobool484.not, label %if.end486, label %if.end468.cleanup489_crit_edge

if.end468.cleanup489_crit_edge:                   ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup489

if.end486:                                        ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #10
  %and481 = and i32 %274, %271
  %func = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 2
  %275 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %func, align 4
  %chan = getelementptr inbounds %struct.ptp_pin_desc, ptr %pd, i32 0, i32 3
  %277 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %chan, align 4
  %call487 = call i32 @ptp_set_pinfunc(ptr noundef %pc, i32 noundef %and481, i32 noundef %276, i32 noundef %278)
  call void @mutex_unlock(ptr noundef %pincfg_mux482) #8
  br label %out

out:                                              ; preds = %if.end486, %if.end462.out_crit_edge, %land.lhs.true443.out_crit_edge, %lor.lhs.false439.out_crit_edge, %if.then11.i.i777, %copy_to_user.exit756, %if.end8.i.i747.out_crit_edge, %if.end392.out_crit_edge, %land.lhs.true373.out_crit_edge, %lor.lhs.false369.out_crit_edge, %if.then11.i.i741, %copy_to_user.exit720, %if.end.i.i715.out_crit_edge, %for.end340.out_crit_edge, %if.end329.out_crit_edge, %if.end305.out_crit_edge, %if.then303, %copy_to_user.exit707, %if.end.i.i702.out_crit_edge, %if.end8.i.i698.out_crit_edge, %for.body.out_crit_edge, %lor.lhs.false248.out_crit_edge, %lor.lhs.false244.out_crit_edge, %lor.lhs.false240.out_crit_edge, %if.end237.out_crit_edge, %if.then235, %sw.bb228.out_crit_edge, %copy_to_user.exit694, %if.end.i.i689.out_crit_edge, %if.end204.out_crit_edge, %if.end197.out_crit_edge, %sw.bb192.out_crit_edge, %if.end188, %if.end173, %if.end155.out_crit_edge, %land.lhs.true135.out_crit_edge, %if.then123.out_crit_edge, %land.lhs.true112.out_crit_edge, %if.then102.out_crit_edge, %lor.lhs.false94.out_crit_edge, %lor.lhs.false91.out_crit_edge, %lor.lhs.false88.out_crit_edge, %land.lhs.true85.out_crit_edge, %if.then76.out_crit_edge, %if.then11.i.i679, %if.end65, %if.end53.out_crit_edge, %lor.lhs.false28.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then24.out_crit_edge, %if.then11.i.i, %copy_to_user.exit, %if.end.i.i.out_crit_edge, %sw.bb.out_crit_edge, %entry.out_crit_edge
  %err.4 = phi i32 [ %call487, %if.end486 ], [ %196, %if.then303 ], [ %159, %if.then235 ], [ %call201, %if.end197.out_crit_edge ], [ %call190, %if.end188 ], [ %call175, %if.end173 ], [ %call67, %if.end65 ], [ -22, %lor.lhs.false28.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.then24.out_crit_edge ], [ -22, %if.end53.out_crit_edge ], [ -22, %if.end155.out_crit_edge ], [ -95, %sw.bb192.out_crit_edge ], [ -95, %sw.bb228.out_crit_edge ], [ -22, %lor.lhs.false248.out_crit_edge ], [ -22, %lor.lhs.false244.out_crit_edge ], [ -22, %lor.lhs.false240.out_crit_edge ], [ -22, %if.end237.out_crit_edge ], [ -22, %if.end305.out_crit_edge ], [ -22, %lor.lhs.false369.out_crit_edge ], [ -22, %land.lhs.true373.out_crit_edge ], [ -22, %if.end392.out_crit_edge ], [ -22, %lor.lhs.false439.out_crit_edge ], [ -22, %land.lhs.true443.out_crit_edge ], [ -22, %if.end462.out_crit_edge ], [ -25, %entry.out_crit_edge ], [ -14, %sw.bb.out_crit_edge ], [ -14, %if.end.i.i.out_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i679 ], [ -34, %if.then123.out_crit_edge ], [ -34, %land.lhs.true135.out_crit_edge ], [ -34, %if.then102.out_crit_edge ], [ -34, %land.lhs.true112.out_crit_edge ], [ -22, %land.lhs.true85.out_crit_edge ], [ -22, %lor.lhs.false88.out_crit_edge ], [ -22, %lor.lhs.false91.out_crit_edge ], [ -22, %lor.lhs.false94.out_crit_edge ], [ -22, %if.then76.out_crit_edge ], [ -14, %if.end204.out_crit_edge ], [ -14, %if.end.i.i689.out_crit_edge ], [ -14, %if.end8.i.i698.out_crit_edge ], [ -14, %if.end.i.i702.out_crit_edge ], [ -14, %for.end340.out_crit_edge ], [ -14, %if.end.i.i715.out_crit_edge ], [ -14, %if.then11.i.i741 ], [ -14, %if.end8.i.i747.out_crit_edge ], [ -14, %if.then11.i.i777 ], [ %spec.select, %copy_to_user.exit ], [ %spec.select814, %copy_to_user.exit694 ], [ %spec.select815, %copy_to_user.exit707 ], [ %spec.select816, %copy_to_user.exit720 ], [ %spec.select817, %copy_to_user.exit756 ], [ %call260, %for.body.out_crit_edge ], [ %err.3, %if.end329.out_crit_edge ]
  %sysoff.0 = phi ptr [ null, %if.end486 ], [ null, %if.then303 ], [ null, %if.then235 ], [ null, %if.end197.out_crit_edge ], [ null, %if.end188 ], [ null, %if.end173 ], [ null, %if.end65 ], [ null, %lor.lhs.false28.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ null, %if.then24.out_crit_edge ], [ null, %if.end53.out_crit_edge ], [ null, %if.end155.out_crit_edge ], [ null, %sw.bb192.out_crit_edge ], [ null, %sw.bb228.out_crit_edge ], [ null, %lor.lhs.false248.out_crit_edge ], [ null, %lor.lhs.false244.out_crit_edge ], [ null, %lor.lhs.false240.out_crit_edge ], [ null, %if.end237.out_crit_edge ], [ %call301, %if.end305.out_crit_edge ], [ null, %lor.lhs.false369.out_crit_edge ], [ null, %land.lhs.true373.out_crit_edge ], [ null, %if.end392.out_crit_edge ], [ null, %lor.lhs.false439.out_crit_edge ], [ null, %land.lhs.true443.out_crit_edge ], [ null, %if.end462.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %sw.bb.out_crit_edge ], [ null, %if.end.i.i.out_crit_edge ], [ null, %if.then11.i.i ], [ null, %if.then11.i.i679 ], [ null, %if.then123.out_crit_edge ], [ null, %land.lhs.true135.out_crit_edge ], [ null, %if.then102.out_crit_edge ], [ null, %land.lhs.true112.out_crit_edge ], [ null, %land.lhs.true85.out_crit_edge ], [ null, %lor.lhs.false88.out_crit_edge ], [ null, %lor.lhs.false91.out_crit_edge ], [ null, %lor.lhs.false94.out_crit_edge ], [ null, %if.then76.out_crit_edge ], [ null, %if.end204.out_crit_edge ], [ null, %if.end.i.i689.out_crit_edge ], [ null, %if.end8.i.i698.out_crit_edge ], [ null, %if.end.i.i702.out_crit_edge ], [ %call301, %for.end340.out_crit_edge ], [ %call301, %if.end.i.i715.out_crit_edge ], [ null, %if.then11.i.i741 ], [ null, %if.end8.i.i747.out_crit_edge ], [ null, %if.then11.i.i777 ], [ null, %copy_to_user.exit ], [ null, %copy_to_user.exit694 ], [ null, %copy_to_user.exit707 ], [ %call301, %copy_to_user.exit720 ], [ null, %copy_to_user.exit756 ], [ null, %for.body.out_crit_edge ], [ %call301, %if.end329.out_crit_edge ]
  %extoff.0 = phi ptr [ null, %if.end486 ], [ null, %if.then303 ], [ null, %if.then235 ], [ null, %if.end197.out_crit_edge ], [ null, %if.end188 ], [ null, %if.end173 ], [ null, %if.end65 ], [ null, %lor.lhs.false28.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ null, %if.then24.out_crit_edge ], [ null, %if.end53.out_crit_edge ], [ null, %if.end155.out_crit_edge ], [ null, %sw.bb192.out_crit_edge ], [ null, %sw.bb228.out_crit_edge ], [ %call233, %lor.lhs.false248.out_crit_edge ], [ %call233, %lor.lhs.false244.out_crit_edge ], [ %call233, %lor.lhs.false240.out_crit_edge ], [ %call233, %if.end237.out_crit_edge ], [ null, %if.end305.out_crit_edge ], [ null, %lor.lhs.false369.out_crit_edge ], [ null, %land.lhs.true373.out_crit_edge ], [ null, %if.end392.out_crit_edge ], [ null, %lor.lhs.false439.out_crit_edge ], [ null, %land.lhs.true443.out_crit_edge ], [ null, %if.end462.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %sw.bb.out_crit_edge ], [ null, %if.end.i.i.out_crit_edge ], [ null, %if.then11.i.i ], [ null, %if.then11.i.i679 ], [ null, %if.then123.out_crit_edge ], [ null, %land.lhs.true135.out_crit_edge ], [ null, %if.then102.out_crit_edge ], [ null, %land.lhs.true112.out_crit_edge ], [ null, %land.lhs.true85.out_crit_edge ], [ null, %lor.lhs.false88.out_crit_edge ], [ null, %lor.lhs.false91.out_crit_edge ], [ null, %lor.lhs.false94.out_crit_edge ], [ null, %if.then76.out_crit_edge ], [ null, %if.end204.out_crit_edge ], [ null, %if.end.i.i689.out_crit_edge ], [ %call233, %if.end8.i.i698.out_crit_edge ], [ %call233, %if.end.i.i702.out_crit_edge ], [ null, %for.end340.out_crit_edge ], [ null, %if.end.i.i715.out_crit_edge ], [ null, %if.then11.i.i741 ], [ null, %if.end8.i.i747.out_crit_edge ], [ null, %if.then11.i.i777 ], [ null, %copy_to_user.exit ], [ null, %copy_to_user.exit694 ], [ %call233, %copy_to_user.exit707 ], [ null, %copy_to_user.exit720 ], [ null, %copy_to_user.exit756 ], [ %call233, %for.body.out_crit_edge ], [ null, %if.end329.out_crit_edge ]
  call void @kfree(ptr noundef %extoff.0) #8
  call void @kfree(ptr noundef %sysoff.0) #8
  br label %cleanup489

cleanup489:                                       ; preds = %out, %if.end468.cleanup489_crit_edge, %if.end398.cleanup489_crit_edge, %if.end180.cleanup489_crit_edge, %sw.bb177.cleanup489_crit_edge, %lor.end.cleanup489_crit_edge, %if.end58.cleanup489_crit_edge
  %retval.0 = phi i32 [ %err.4, %out ], [ -512, %if.end58.cleanup489_crit_edge ], [ -512, %lor.end.cleanup489_crit_edge ], [ -1, %sw.bb177.cleanup489_crit_edge ], [ -512, %if.end180.cleanup489_crit_edge ], [ -512, %if.end398.cleanup489_crit_edge ], [ -512, %if.end468.cleanup489_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pd) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %caps) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sts) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xtstamp) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %precise_offset) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptp_poll(ptr noundef %pc, ptr noundef %fp, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tsev_wq = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %tobool3.not.i = icmp eq ptr %tsev_wq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1(ptr noundef %fp, ptr noundef nonnull %tsev_wq, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %tail.i = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i, align 8
  %sub.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %add.i = add i32 %sub.i, 128
  %cond.i = select i1 %cmp.i, i32 %add.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not = icmp ne i32 %cond.i, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptp_read(ptr noundef %pc, i32 noundef %rdflags, ptr noundef %buf, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tsevq = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 7
  %rem = and i32 %cnt, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup73_crit_edge

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.umin.i32(i32 %cnt, i32 960)
  %div112 = lshr i32 %0, 5
  %tsevq_mux = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 8
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %tsevq_mux, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup73_crit_edge

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

if.end5:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 465) #8
  %defunct = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 11
  %1 = ptrtoint ptr %defunct to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %defunct, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end5.if.then35_crit_edge

if.end5.if.then35_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end5
  %tail.i = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %head.i, align 8
  %sub.i = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %add.i = add i32 %sub.i, 128
  %cond.i = select i1 %cmp.i, i32 %add.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool11.not = icmp eq i32 %cond.i, 0
  br i1 %tobool11.not, label %if.then12, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then12:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %tsev_wq = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 10
  %call14140 = call i32 @prepare_to_wait_event(ptr noundef %tsev_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %8 = ptrtoint ptr %defunct to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %defunct, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not141 = icmp eq i32 %9, 0
  br i1 %tobool16.not141, label %if.then12.lor.lhs.false17_crit_edge, label %if.then12.if.end27.thread135_crit_edge

if.then12.if.end27.thread135_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.thread135

if.then12.lor.lhs.false17_crit_edge:              ; preds = %if.then12
  br label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %cleanup.lor.lhs.false17_crit_edge, %if.then12.lor.lhs.false17_crit_edge
  %call14142 = phi i32 [ %call14, %cleanup.lor.lhs.false17_crit_edge ], [ %call14140, %if.then12.lor.lhs.false17_crit_edge ]
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail.i, align 4
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head.i, align 8
  %sub.i116 = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i116)
  %cmp.i117 = icmp slt i32 %sub.i116, 0
  %add.i118 = add i32 %sub.i116, 128
  %cond.i119 = select i1 %cmp.i117, i32 %add.i118, i32 %sub.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i119)
  %tobool19.not = icmp eq i32 %cond.i119, 0
  br i1 %tobool19.not, label %if.end21, label %lor.lhs.false17.if.end27.thread135_crit_edge

lor.lhs.false17.if.end27.thread135_crit_edge:     ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.thread135

if.end21:                                         ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14142)
  %tobool22.not = icmp eq i32 %call14142, 0
  br i1 %tobool22.not, label %cleanup, label %if.then30

cleanup:                                          ; preds = %if.end21
  call void @schedule() #8
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %tsev_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %14 = ptrtoint ptr %defunct to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %defunct, align 4
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %cleanup.lor.lhs.false17_crit_edge, label %cleanup.if.end27.thread135_crit_edge

cleanup.if.end27.thread135_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.thread135

cleanup.lor.lhs.false17_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false17

if.end27.thread135:                               ; preds = %cleanup.if.end27.thread135_crit_edge, %lor.lhs.false17.if.end27.thread135_crit_edge, %if.then12.if.end27.thread135_crit_edge
  call void @finish_wait(ptr noundef %tsev_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end32

if.then30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @mutex_unlock(ptr noundef %tsevq_mux) #8
  br label %cleanup73

if.end32:                                         ; preds = %if.end27.thread135, %lor.lhs.false.if.end32_crit_edge
  %16 = ptrtoint ptr %defunct to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %defunct, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool34.not = icmp eq i32 %.pr, 0
  br i1 %tobool34.not, label %if.end37, label %if.end32.if.then35_crit_edge

if.end32.if.then35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %if.end32.if.then35_crit_edge, %if.end5.if.then35_crit_edge
  call void @mutex_unlock(ptr noundef %tsevq_mux) #8
  br label %cleanup73

if.end37:                                         ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 960) #13
  %tobool39.not = icmp eq ptr %call7.i, null
  br i1 %tobool39.not, label %if.then40, label %do.body44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %tsevq_mux) #8
  br label %cleanup73

do.body44:                                        ; preds = %if.end37
  %lock = getelementptr inbounds %struct.ptp_clock, ptr %pc, i32 0, i32 7, i32 3
  %call48 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail.i, align 4
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head.i, align 8
  %sub.i122 = sub i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i122)
  %cmp.i123 = icmp slt i32 %sub.i122, 0
  %add.i124 = add i32 %sub.i122, 128
  %cond.i125 = select i1 %cmp.i123, i32 %add.i124, i32 %sub.i122
  %22 = call i32 @llvm.umin.i32(i32 %div112, i32 %cond.i125)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp59144.not = icmp eq i32 %22, 0
  br i1 %cmp59144.not, label %do.body44.if.end8.i.i_crit_edge, label %do.body44.for.body_crit_edge

do.body44.for.body_crit_edge:                     ; preds = %do.body44
  br label %for.body

do.body44.if.end8.i.i_crit_edge:                  ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body44.for.body_crit_edge
  %i.0145 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body44.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ptp_extts_event, ptr %call7.i, i32 %i.0145
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %head.i, align 8
  %arrayidx62 = getelementptr [128 x %struct.ptp_extts_event], ptr %tsevq, i32 0, i32 %24
  %25 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx62, i32 32)
  %add = add i32 %24, 1
  %rem64 = srem i32 %add, 128
  store i32 %rem64, ptr %head.i, align 8
  %inc = add nuw nsw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc, %22
  br i1 %exitcond.not, label %for.body.if.end8.i.i_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end8.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.body.if.end8.i.i_crit_edge, %do.body44.if.end8.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call48) #8
  %mul = shl nuw nsw i32 %22, 5
  call void @mutex_unlock(ptr noundef %tsevq_mux) #8
  call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %mul, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end8.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end8.i.i.copy_to_user.exit_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end8.i.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %mul, i32 -1226833920) #12, !srcloc !23
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %mul) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call7.i, i32 noundef %mul) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end8.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.end8.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool70.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select113 = select i1 %tobool70.not, i32 %mul, i32 -14
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup73

cleanup73:                                        ; preds = %copy_to_user.exit, %if.then40, %if.then35, %if.then30, %if.end.cleanup73_crit_edge, %entry.cleanup73_crit_edge
  %retval.0 = phi i32 [ -512, %if.then30 ], [ -19, %if.then35 ], [ %spec.select113, %copy_to_user.exit ], [ -12, %if.then40 ], [ -22, %entry.cleanup73_crit_edge ], [ -512, %if.end.cleanup73_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ptp/ptp_chardev.c", i32 87, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ptp_set_pinfunc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ptp_set_pinfunc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!8 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2152659468, i64 2152659493}
!24 = !{i64 2152658787, i64 2152658812}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 5154342}
!27 = !{i64 5154539}
!28 = !{i64 2152639772}
!29 = !{i64 610635, i64 610652}
