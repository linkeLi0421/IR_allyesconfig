; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/iforce/iforce-ff.c_pt.bc'
source_filename = "../drivers/input/joystick/iforce/iforce-ff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.iforce = type { ptr, ptr, ptr, %struct.spinlock, %struct.circ_buf, [256 x i8], [1 x i32], %struct.wait_queue_head, %struct.resource, [32 x %struct.iforce_core_effect], %struct.mutex }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iforce_core_effect = type { %struct.resource, %struct.resource, [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.iforce_device = type { i16, i16, ptr, ptr, ptr, ptr }
%struct.ff_condition_effect = type { i16, i16, i16, i16, i16, i16 }

@need_period_modifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 263, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad effect type in %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"need_period_modifier\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/joystick/iforce/iforce-ff.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@need_period_modifier._entry_ptr = internal global ptr @need_period_modifier._entry, section ".printk_index", align 4
@need_envelope_modifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"need_envelope_modifier\00", [41 x i8] zeroinitializer }, align 32
@need_envelope_modifier._entry_ptr = internal global ptr @need_envelope_modifier._entry, section ".printk_index", align 4
@need_magnitude_modifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"need_magnitude_modifier\00", [40 x i8] zeroinitializer }, align 32
@need_magnitude_modifier._entry_ptr = internal global ptr @need_magnitude_modifier._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"magnitude\00", [22 x i8] zeroinitializer }, align 32
@need_condition_modifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"need_condition_modifier\00", [40 x i8] zeroinitializer }, align 32
@need_condition_modifier._entry_ptr = internal global ptr @need_condition_modifier._entry, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"condition\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 81, i64 82]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 81, i64 82]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 83, i64 85]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 262, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 247, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 214, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 40, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 189, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [45 x i8] c"../drivers/input/joystick/iforce/iforce-ff.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 162, i32 29 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @need_condition_modifier._entry, ptr @need_condition_modifier._entry_ptr, ptr @need_envelope_modifier._entry, ptr @need_envelope_modifier._entry_ptr, ptr @need_magnitude_modifier._entry, ptr @need_magnitude_modifier._entry_ptr, ptr @need_period_modifier._entry, ptr @need_period_modifier._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @need_period_modifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @need_envelope_modifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @need_magnitude_modifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @need_condition_modifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iforce_upload_periodic(ptr noundef %iforce, ptr noundef readonly %effect, ptr noundef readonly %old) local_unnamed_addr #0 align 64 {
entry:
  %data.i119 = alloca [14 x i8], align 1
  %data.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 2
  %conv = sext i16 %1 to i32
  %core_effects = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 9
  %arrayidx = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %conv
  %mod2_chunk5 = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %conv, i32 1
  %tobool = icmp ne ptr %old, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.i

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 81, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 81
  br i1 %cmp.not.i, label %if.end.i, label %need_period_modifier.exit.thread126

need_period_modifier.exit.thread126:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iforce, align 4
  %dev2.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %lor.lhs.false17

if.end.i:                                         ; preds = %lor.lhs.false
  %period.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %period.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %period.i, align 2
  %period5.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %period5.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %period5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp7.not.i = icmp eq i16 %7, %9
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.thread_crit_edge

if.end.i.if.then.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %magnitude.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %10 = ptrtoint ptr %magnitude.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %magnitude.i, align 4
  %magnitude12.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %12 = ptrtoint ptr %magnitude12.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %magnitude12.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp14.not.i = icmp eq i16 %11, %13
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false.i.if.then.thread_crit_edge

lor.lhs.false.i.if.then.thread_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.thread

lor.lhs.false16.i:                                ; preds = %lor.lhs.false.i
  %offset.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %offset.i, align 2
  %offset20.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %16 = ptrtoint ptr %offset20.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %offset20.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp22.not.i = icmp eq i16 %15, %17
  br i1 %cmp22.not.i, label %need_period_modifier.exit, label %lor.lhs.false16.i.if.then.thread_crit_edge

lor.lhs.false16.i.if.then.thread_crit_edge:       ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.thread

need_period_modifier.exit:                        ; preds = %lor.lhs.false16.i
  %phase.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %18 = ptrtoint ptr %phase.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phase.i, align 4
  %phase27.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %20 = ptrtoint ptr %phase27.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phase27.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp29.i.not = icmp eq i16 %19, %21
  br i1 %cmp29.i.not, label %need_period_modifier.exit.lor.lhs.false17_crit_edge, label %need_period_modifier.exit.if.then.thread_crit_edge

need_period_modifier.exit.if.then.thread_crit_edge: ; preds = %need_period_modifier.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.thread

need_period_modifier.exit.lor.lhs.false17_crit_edge: ; preds = %need_period_modifier.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false17

if.then.thread:                                   ; preds = %need_period_modifier.exit.if.then.thread_crit_edge, %lor.lhs.false16.i.if.then.thread_crit_edge, %lor.lhs.false.i.if.then.thread_crit_edge, %if.end.i.if.then.thread_crit_edge
  %magnitude130 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %22 = ptrtoint ptr %magnitude130 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %magnitude130, align 4
  %offset131 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %24 = ptrtoint ptr %offset131 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %offset131, align 2
  %26 = ptrtoint ptr %period5.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %period5.i, align 2
  %phase133 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %28 = ptrtoint ptr %phase133 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %phase133, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data.i) #4
  %30 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 1
  %31 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 2
  %32 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 3
  %33 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 4
  %34 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 5
  %35 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 6
  %extract = lshr i16 %29, 8
  %extract.t = trunc i16 %extract to i8
  %extract.t147 = trunc i16 %27 to i8
  %extract150 = lshr i16 %27, 8
  %extract.t151 = trunc i16 %extract150 to i8
  br label %if.end15

if.then.i:                                        ; preds = %entry
  %magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %36 = ptrtoint ptr %magnitude to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %magnitude, align 4
  %offset = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %offset, align 2
  %period = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %40 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %period, align 2
  %phase = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %42 = ptrtoint ptr %phase to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %phase, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data.i) #4
  %44 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 1
  %45 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 2
  %46 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 3
  %47 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 4
  %48 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 5
  %49 = getelementptr inbounds [7 x i8], ptr %data.i, i32 0, i32 6
  %mem_mutex.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mem_mutex.i, i32 noundef 0) #4
  %device_memory.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8
  %50 = ptrtoint ptr %device_memory.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %device_memory.i, align 4
  %end.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i, align 4
  %call.i = tail call i32 @allocate_resource(ptr noundef %device_memory.i, ptr noundef %arrayidx, i32 noundef 12, i32 noundef %51, i32 noundef %53, i32 noundef 2, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  tail call void @mutex_unlock(ptr noundef %mem_mutex.i) #4
  %extract145 = lshr i16 %43, 8
  %extract.t146 = trunc i16 %extract145 to i8
  %extract.t148 = trunc i16 %41 to i8
  %extract152 = lshr i16 %41, 8
  %extract.t153 = trunc i16 %extract152 to i8
  br i1 %tobool3.not.i, label %if.then.i.if.end15_crit_edge, label %make_period_modifier.exit

if.then.i.if.end15_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

make_period_modifier.exit:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data.i) #4
  br label %cleanup

if.end15:                                         ; preds = %if.then.i.if.end15_crit_edge, %if.then.thread
  %54 = phi ptr [ %35, %if.then.thread ], [ %49, %if.then.i.if.end15_crit_edge ]
  %55 = phi ptr [ %34, %if.then.thread ], [ %48, %if.then.i.if.end15_crit_edge ]
  %56 = phi ptr [ %33, %if.then.thread ], [ %47, %if.then.i.if.end15_crit_edge ]
  %57 = phi ptr [ %32, %if.then.thread ], [ %46, %if.then.i.if.end15_crit_edge ]
  %58 = phi ptr [ %31, %if.then.thread ], [ %45, %if.then.i.if.end15_crit_edge ]
  %59 = phi ptr [ %30, %if.then.thread ], [ %44, %if.then.i.if.end15_crit_edge ]
  %.off8 = phi i8 [ %extract.t, %if.then.thread ], [ %extract.t146, %if.then.i.if.end15_crit_edge ]
  %.off0 = phi i8 [ %extract.t147, %if.then.thread ], [ %extract.t148, %if.then.i.if.end15_crit_edge ]
  %.off8149 = phi i8 [ %extract.t151, %if.then.thread ], [ %extract.t153, %if.then.i.if.end15_crit_edge ]
  %60 = phi i16 [ %25, %if.then.thread ], [ %39, %if.then.i.if.end15_crit_edge ]
  %61 = phi i16 [ %23, %if.then.thread ], [ %37, %if.then.i.if.end15_crit_edge ]
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx, align 4
  %conv.i = trunc i32 %63 to i8
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i, ptr %data.i, align 1
  %shr.i = lshr i32 %63, 8
  %conv10.i = trunc i32 %shr.i to i8
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv10.i, ptr %59, align 1
  %conv1259.i = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp.i = icmp slt i16 %61, 0
  %add.i = add nuw nsw i32 %conv1259.i, 255
  %cond.i = select i1 %cmp.i, i32 %add.i, i32 %conv1259.i
  %66 = lshr i32 %cond.i, 8
  %conv17.i = trunc i32 %66 to i8
  %67 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv17.i, ptr %58, align 1
  %conv1960.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp20.i = icmp slt i16 %60, 0
  %add24.i = add nuw nsw i32 %conv1960.i, 255
  %cond28.i = select i1 %cmp20.i, i32 %add24.i, i32 %conv1960.i
  %68 = lshr i32 %cond28.i, 8
  %conv30.i = trunc i32 %68 to i8
  %69 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv30.i, ptr %57, align 1
  %70 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %.off8, ptr %56, align 1
  %71 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %.off0, ptr %55, align 1
  %72 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.off8149, ptr %54, align 1
  %call44.i = call i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext 1031, ptr noundef nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data.i) #4
  %flags = getelementptr %struct.iforce_core_effect, ptr %core_effects, i32 %conv, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #4
  br i1 %tobool, label %if.end15.lor.lhs.false17_crit_edge, label %if.end15.if.then20_crit_edge

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

if.end15.lor.lhs.false17_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end15.lor.lhs.false17_crit_edge, %need_period_modifier.exit.lor.lhs.false17_crit_edge, %need_period_modifier.exit.thread126
  %tobool58.not140 = phi i1 [ true, %if.end15.lor.lhs.false17_crit_edge ], [ false, %need_period_modifier.exit.thread126 ], [ false, %need_period_modifier.exit.lor.lhs.false17_crit_edge ]
  %73 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %effect, align 4
  %75 = zext i16 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i16 %74, label %do.end.i114 [
    i16 82, label %sw.bb.i
    i16 81, label %sw.bb36.i
  ]

sw.bb.i:                                          ; preds = %lor.lhs.false17
  %envelope.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %76 = ptrtoint ptr %envelope.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %envelope.i, align 2
  %envelope3.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %78 = ptrtoint ptr %envelope3.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %envelope3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %77, i16 %79)
  %cmp.not.i110 = icmp eq i16 %77, %79
  br i1 %cmp.not.i110, label %lor.lhs.false.i112, label %sw.bb.i.if.then20_crit_edge

sw.bb.i.if.then20_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false.i112:                               ; preds = %sw.bb.i
  %attack_level.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %80 = ptrtoint ptr %attack_level.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %attack_level.i, align 2
  %attack_level12.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %82 = ptrtoint ptr %attack_level12.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %attack_level12.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %83)
  %cmp14.not.i111 = icmp eq i16 %81, %83
  br i1 %cmp14.not.i111, label %lor.lhs.false16.i113, label %lor.lhs.false.i112.if.then20_crit_edge

lor.lhs.false.i112.if.then20_crit_edge:           ; preds = %lor.lhs.false.i112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false16.i113:                             ; preds = %lor.lhs.false.i112
  %fade_length.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %84 = ptrtoint ptr %fade_length.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %fade_length.i, align 2
  %fade_length22.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %86 = ptrtoint ptr %fade_length22.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %fade_length22.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %85, i16 %87)
  %cmp24.not.i = icmp eq i16 %85, %87
  br i1 %cmp24.not.i, label %lor.lhs.false26.i, label %lor.lhs.false16.i113.if.then20_crit_edge

lor.lhs.false16.i113.if.then20_crit_edge:         ; preds = %lor.lhs.false16.i113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false26.i:                                ; preds = %lor.lhs.false16.i113
  %fade_level.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %88 = ptrtoint ptr %fade_level.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %fade_level.i, align 2
  %fade_level32.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %90 = ptrtoint ptr %fade_level32.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %fade_level32.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %89, i16 %91)
  %cmp34.not.i = icmp eq i16 %89, %91
  br i1 %cmp34.not.i, label %lor.lhs.false26.i.if.end36_crit_edge, label %lor.lhs.false26.i.if.then20_crit_edge

lor.lhs.false26.i.if.then20_crit_edge:            ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false26.i.if.end36_crit_edge:             ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

sw.bb36.i:                                        ; preds = %lor.lhs.false17
  %envelope38.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5
  %92 = ptrtoint ptr %envelope38.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %envelope38.i, align 2
  %envelope42.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %94 = ptrtoint ptr %envelope42.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %envelope42.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %95)
  %cmp45.not.i = icmp eq i16 %93, %95
  br i1 %cmp45.not.i, label %lor.lhs.false47.i, label %sw.bb36.i.if.then20_crit_edge

sw.bb36.i.if.then20_crit_edge:                    ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false47.i:                                ; preds = %sw.bb36.i
  %attack_level50.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 1
  %96 = ptrtoint ptr %attack_level50.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %attack_level50.i, align 2
  %attack_level54.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %98 = ptrtoint ptr %attack_level54.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %attack_level54.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %97, i16 %99)
  %cmp56.not.i = icmp eq i16 %97, %99
  br i1 %cmp56.not.i, label %lor.lhs.false58.i, label %lor.lhs.false47.i.if.then20_crit_edge

lor.lhs.false47.i.if.then20_crit_edge:            ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false58.i:                                ; preds = %lor.lhs.false47.i
  %fade_length61.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 2
  %100 = ptrtoint ptr %fade_length61.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %fade_length61.i, align 2
  %fade_length65.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %102 = ptrtoint ptr %fade_length65.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %fade_length65.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %101, i16 %103)
  %cmp67.not.i = icmp eq i16 %101, %103
  br i1 %cmp67.not.i, label %lor.lhs.false69.i, label %lor.lhs.false58.i.if.then20_crit_edge

lor.lhs.false58.i.if.then20_crit_edge:            ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false69.i:                                ; preds = %lor.lhs.false58.i
  %fade_level72.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 3
  %104 = ptrtoint ptr %fade_level72.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %fade_level72.i, align 2
  %fade_level76.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %106 = ptrtoint ptr %fade_level76.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %fade_level76.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %105, i16 %107)
  %cmp78.not.i = icmp eq i16 %105, %107
  br i1 %cmp78.not.i, label %lor.lhs.false69.i.if.end36_crit_edge, label %lor.lhs.false69.i.if.then20_crit_edge

lor.lhs.false69.i.if.then20_crit_edge:            ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false69.i.if.end36_crit_edge:             ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.end.i114:                                      ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #6
  %108 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %iforce, align 4
  %dev82.i = getelementptr inbounds %struct.input_dev, ptr %109, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev82.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #7
  br label %if.end36

if.then20:                                        ; preds = %lor.lhs.false69.i.if.then20_crit_edge, %lor.lhs.false58.i.if.then20_crit_edge, %lor.lhs.false47.i.if.then20_crit_edge, %sw.bb36.i.if.then20_crit_edge, %lor.lhs.false26.i.if.then20_crit_edge, %lor.lhs.false16.i113.if.then20_crit_edge, %lor.lhs.false.i112.if.then20_crit_edge, %sw.bb.i.if.then20_crit_edge, %if.end15.if.then20_crit_edge
  %tobool58.not138 = phi i1 [ true, %if.end15.if.then20_crit_edge ], [ %tobool58.not140, %lor.lhs.false26.i.if.then20_crit_edge ], [ %tobool58.not140, %lor.lhs.false16.i113.if.then20_crit_edge ], [ %tobool58.not140, %lor.lhs.false.i112.if.then20_crit_edge ], [ %tobool58.not140, %sw.bb.i.if.then20_crit_edge ], [ %tobool58.not140, %lor.lhs.false69.i.if.then20_crit_edge ], [ %tobool58.not140, %lor.lhs.false58.i.if.then20_crit_edge ], [ %tobool58.not140, %lor.lhs.false47.i.if.then20_crit_edge ], [ %tobool58.not140, %sw.bb36.i.if.then20_crit_edge ]
  %conv22 = zext i1 %tobool to i32
  %envelope = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %110 = ptrtoint ptr %envelope to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %envelope, align 2
  %attack_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %112 = ptrtoint ptr %attack_level to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %attack_level, align 2
  %fade_length = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %114 = ptrtoint ptr %fade_length to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %fade_length, align 2
  %fade_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %116 = ptrtoint ptr %fade_level to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %fade_level, align 2
  %call30 = call fastcc i32 @make_envelope_modifier(ptr noundef %iforce, ptr noundef %mod2_chunk5, i32 noundef %conv22, i16 noundef zeroext %111, i16 noundef signext %113, i16 noundef zeroext %115, i16 noundef signext %117)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  %flags34 = getelementptr %struct.iforce_core_effect, ptr %core_effects, i32 %conv, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags34) #4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %do.end.i114, %lor.lhs.false69.i.if.end36_crit_edge, %lor.lhs.false26.i.if.end36_crit_edge
  %tobool58.not139 = phi i1 [ %tobool58.not138, %if.end33 ], [ %tobool58.not140, %lor.lhs.false26.i.if.end36_crit_edge ], [ %tobool58.not140, %lor.lhs.false69.i.if.end36_crit_edge ], [ %tobool58.not140, %do.end.i114 ]
  %param2_err.0 = phi i32 [ 0, %if.end33 ], [ 1, %lor.lhs.false26.i.if.end36_crit_edge ], [ 1, %lor.lhs.false69.i.if.end36_crit_edge ], [ 1, %do.end.i114 ]
  %u37 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %118 = ptrtoint ptr %u37 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %u37, align 4
  %switch.tableidx = add i16 %119, -89
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %switch.tableidx)
  %120 = icmp ult i16 %switch.tableidx, 4
  %switch.idx.cast = trunc i16 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 33
  %wave_code.0 = select i1 %120, i8 %switch.offset, i8 32
  br i1 %tobool, label %lor.lhs.false44, label %if.end36.if.then47_crit_edge

if.end36.if.then47_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

lor.lhs.false44:                                  ; preds = %if.end36
  %direction.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %121 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %direction.i, align 4
  %direction1.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %123 = ptrtoint ptr %direction1.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %direction1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %122, i16 %124)
  %cmp.not.i116 = icmp eq i16 %122, %124
  br i1 %cmp.not.i116, label %lor.lhs.false.i117, label %lor.lhs.false44.if.then47_crit_edge

lor.lhs.false44.if.then47_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

lor.lhs.false.i117:                               ; preds = %lor.lhs.false44
  %trigger.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %125 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %trigger.i, align 2
  %trigger5.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %127 = ptrtoint ptr %trigger5.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %trigger5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %126, i16 %128)
  %cmp8.not.i = icmp eq i16 %126, %128
  br i1 %cmp8.not.i, label %lor.lhs.false10.i, label %lor.lhs.false.i117.if.then47_crit_edge

lor.lhs.false.i117.if.then47_crit_edge:           ; preds = %lor.lhs.false.i117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i117
  %interval.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %129 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %interval.i, align 2
  %interval14.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %131 = ptrtoint ptr %interval14.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %interval14.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %130, i16 %132)
  %cmp16.not.i = icmp eq i16 %130, %132
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %lor.lhs.false10.i.if.then47_crit_edge

lor.lhs.false10.i.if.then47_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

lor.lhs.false18.i:                                ; preds = %lor.lhs.false10.i
  %replay.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %133 = ptrtoint ptr %replay.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %replay.i, align 2
  %replay20.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %135 = ptrtoint ptr %replay20.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %replay20.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %134, i16 %136)
  %cmp23.not.i = icmp eq i16 %134, %136
  br i1 %cmp23.not.i, label %need_core.exit, label %lor.lhs.false18.i.if.then47_crit_edge

lor.lhs.false18.i.if.then47_crit_edge:            ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

need_core.exit:                                   ; preds = %lor.lhs.false18.i
  %delay.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %137 = ptrtoint ptr %delay.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %delay.i, align 2
  %delay29.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %139 = ptrtoint ptr %delay29.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %delay29.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %138, i16 %140)
  %cmp31.not.i.not = icmp eq i16 %138, %140
  br i1 %cmp31.not.i.not, label %need_core.exit.cond.false_crit_edge, label %need_core.exit.if.then47_crit_edge

need_core.exit.if.then47_crit_edge:               ; preds = %need_core.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

need_core.exit.cond.false_crit_edge:              ; preds = %need_core.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

if.then47:                                        ; preds = %need_core.exit.if.then47_crit_edge, %lor.lhs.false18.i.if.then47_crit_edge, %lor.lhs.false10.i.if.then47_crit_edge, %lor.lhs.false.i117.if.then47_crit_edge, %lor.lhs.false44.if.then47_crit_edge, %if.end36.if.then47_crit_edge
  %141 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %id, align 2
  %143 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx, align 4
  %145 = ptrtoint ptr %mod2_chunk5 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mod2_chunk5, align 4
  %replay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %147 = ptrtoint ptr %replay to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %replay, align 2
  %delay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %149 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %delay, align 2
  %trigger = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %151 = ptrtoint ptr %trigger to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %trigger, align 2
  %interval = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %153 = ptrtoint ptr %interval to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %interval, align 2
  %direction = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %155 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %direction, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data.i119) #4
  %157 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 1
  %158 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 2
  %159 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 3
  %160 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 4
  %161 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 5
  %162 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 6
  %163 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 7
  %164 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 8
  %165 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 9
  %166 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 10
  %167 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 11
  %168 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 12
  %169 = getelementptr inbounds [14 x i8], ptr %data.i119, i32 0, i32 13
  %conv.i120 = zext i16 %142 to i32
  %conv1.i = trunc i16 %142 to i8
  %170 = ptrtoint ptr %data.i119 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv1.i, ptr %data.i119, align 1
  %171 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %wave_code.0, ptr %157, align 1
  %type.i.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 1
  %172 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %type.i.i, align 4
  %btn.i.i = getelementptr inbounds %struct.iforce_device, ptr %173, i32 0, i32 3
  %174 = ptrtoint ptr %btn.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %btn.i.i, align 4
  %arrayidx15.i.i = getelementptr i16, ptr %175, i32 1
  %176 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx15.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %177)
  %cmp16.i.i = icmp sgt i16 %177, -1
  br i1 %cmp16.i.i, label %if.then47.for.body.i.i_crit_edge, label %if.then47.find_button.exit.i_crit_edge

if.then47.find_button.exit.i_crit_edge:           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_button.exit.i

if.then47.for.body.i.i_crit_edge:                 ; preds = %if.then47
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then47.for.body.i.i_crit_edge
  %178 = phi i16 [ %181, %for.inc.i.i.for.body.i.i_crit_edge ], [ %177, %if.then47.for.body.i.i_crit_edge ]
  %i.017.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.then47.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %178, i16 %152)
  %cmp7.i.i = icmp eq i16 %178, %152
  br i1 %cmp7.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %179 = trunc i32 %i.017.i.i to i8
  %conv9.i.i = add i8 %179, 1
  %phi.bo = or i8 %conv9.i.i, 32
  br label %find_button.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.017.i.i, 1
  %arrayidx.i.i = getelementptr i16, ptr %175, i32 %inc.i.i
  %180 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx.i.i, align 2
  %cmp.i.i = icmp sgt i16 %181, -1
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.find_button.exit.i_crit_edge

for.inc.i.i.find_button.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_button.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

find_button.exit.i:                               ; preds = %for.inc.i.i.find_button.exit.i_crit_edge, %if.then.i.i, %if.then47.find_button.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %phi.bo, %if.then.i.i ], [ 32, %if.then47.find_button.exit.i_crit_edge ], [ 32, %for.inc.i.i.find_button.exit.i_crit_edge ]
  %182 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %retval.0.i.i, ptr %158, align 1
  %conv12.i = trunc i16 %148 to i8
  %183 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv12.i, ptr %159, align 1
  %184 = lshr i16 %148, 8
  %conv15.i = trunc i16 %184 to i8
  %185 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv15.i, ptr %160, align 1
  %186 = lshr i16 %156, 8
  %conv19.i = trunc i16 %186 to i8
  %187 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv19.i, ptr %161, align 1
  %conv23.i = trunc i16 %154 to i8
  %188 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv23.i, ptr %162, align 1
  %189 = lshr i16 %154, 8
  %conv27.i = trunc i16 %189 to i8
  %190 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv27.i, ptr %163, align 1
  %conv31.i = trunc i32 %144 to i8
  %191 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %conv31.i, ptr %164, align 1
  %192 = lshr i32 %144, 8
  %conv35.i = trunc i32 %192 to i8
  %193 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv35.i, ptr %165, align 1
  %conv39.i = trunc i32 %146 to i8
  %194 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv39.i, ptr %166, align 1
  %195 = lshr i32 %146, 8
  %conv43.i = trunc i32 %195 to i8
  %196 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv43.i, ptr %167, align 1
  %conv47.i = trunc i16 %150 to i8
  %197 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv47.i, ptr %168, align 1
  %198 = lshr i16 %150, 8
  %conv51.i = trunc i16 %198 to i8
  %199 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv51.i, ptr %169, align 1
  %call53.i = call i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext 270, ptr noundef nonnull %data.i119) #4
  %flags.i = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %conv.i120, i32 2
  %200 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %flags.i, align 4
  %202 = and i32 %201, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool.not.i121 = icmp eq i32 %202, 0
  br i1 %tobool.not.i121, label %find_button.exit.i.make_core.exit_crit_edge, label %if.then.i122

find_button.exit.i.make_core.exit_crit_edge:      ; preds = %find_button.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %make_core.exit

if.then.i122:                                     ; preds = %find_button.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call57.i = call i32 @iforce_control_playback(ptr noundef %iforce, i16 noundef zeroext %142, i32 noundef 1) #4
  br label %make_core.exit

make_core.exit:                                   ; preds = %if.then.i122, %find_button.exit.i.make_core.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data.i119) #4
  br label %cond.false

cond.false:                                       ; preds = %make_core.exit, %need_core.exit.cond.false_crit_edge
  %spec.select = select i1 %tobool58.not139, i32 0, i32 %param2_err.0
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.then20.cleanup_crit_edge, %make_period_modifier.exit
  %retval.0 = phi i32 [ %spec.select, %cond.false ], [ -28, %make_period_modifier.exit ], [ %call30, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @make_envelope_modifier(ptr noundef %iforce, ptr noundef %mod_chunk, i32 noundef %no_alloc, i16 noundef zeroext %attack_duration, i16 noundef signext %initial_level, i16 noundef zeroext %fade_duration, i16 noundef signext %final_level) unnamed_addr #0 align 64 {
entry:
  %data = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #4
  %0 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_alloc)
  %tobool.not = icmp eq i32 %no_alloc, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %mem_mutex = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mem_mutex, i32 noundef 0) #4
  %device_memory = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8
  %7 = ptrtoint ptr %device_memory to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_memory, align 4
  %end = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end, align 4
  %call = tail call i32 @allocate_resource(ptr noundef %device_memory, ptr noundef %mod_chunk, i32 noundef 14, i32 noundef %8, i32 noundef %10, i32 noundef 2, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  tail call void @mutex_unlock(ptr noundef %mem_mutex) #4
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %11 = ptrtoint ptr %mod_chunk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mod_chunk, align 4
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %data, align 1
  %shr = lshr i32 %12, 8
  %conv10 = trunc i32 %shr to i8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10, ptr %0, align 1
  %conv14 = trunc i16 %attack_duration to i8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14, ptr %1, align 1
  %16 = lshr i16 %attack_duration, 8
  %conv18 = trunc i16 %16 to i8
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv18, ptr %2, align 1
  %18 = lshr i16 %initial_level, 8
  %conv22 = trunc i16 %18 to i8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv22, ptr %3, align 1
  %conv26 = trunc i16 %fade_duration to i8
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv26, ptr %4, align 1
  %21 = lshr i16 %fade_duration, 8
  %conv30 = trunc i16 %21 to i8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv30, ptr %5, align 1
  %23 = lshr i16 %final_level, 8
  %conv34 = trunc i16 %23 to i8
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv34, ptr %6, align 1
  %call36 = call i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext 520, ptr noundef nonnull %data) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -28, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iforce_upload_constant(ptr noundef %iforce, ptr noundef readonly %effect, ptr noundef readonly %old) local_unnamed_addr #0 align 64 {
entry:
  %data.i102 = alloca [14 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 2
  %conv = sext i16 %1 to i32
  %core_effects = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 9
  %arrayidx = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %conv
  %mod2_chunk5 = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %conv, i32 1
  %tobool = icmp ne ptr %old, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.i

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 82, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 82
  br i1 %cmp.not.i, label %need_magnitude_modifier.exit, label %need_magnitude_modifier.exit.thread

need_magnitude_modifier.exit.thread:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iforce, align 4
  %dev2.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #7
  br label %lor.lhs.false14

need_magnitude_modifier.exit:                     ; preds = %lor.lhs.false
  %u.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %u.i, align 4
  %u4.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %8 = ptrtoint ptr %u4.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %u4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp7.i.not = icmp eq i16 %7, %9
  br i1 %cmp7.i.not, label %need_magnitude_modifier.exit.lor.lhs.false14_crit_edge, label %if.then

need_magnitude_modifier.exit.lor.lhs.false14_crit_edge: ; preds = %need_magnitude_modifier.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false14

if.then:                                          ; preds = %need_magnitude_modifier.exit
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %u4.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %u4.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #4
  %12 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  br label %if.end12

if.then.i:                                        ; preds = %entry
  %u110 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %14 = ptrtoint ptr %u110 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %u110, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #4
  %16 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %17 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %mem_mutex.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mem_mutex.i, i32 noundef 0) #4
  %device_memory.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8
  %18 = ptrtoint ptr %device_memory.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device_memory.i, align 4
  %end.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %call.i = tail call i32 @allocate_resource(ptr noundef %device_memory.i, ptr noundef %arrayidx, i32 noundef 2, i32 noundef %19, i32 noundef %21, i32 noundef 2, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  tail call void @mutex_unlock(ptr noundef %mem_mutex.i) #4
  br i1 %tobool3.not.i, label %if.then.i.if.end12_crit_edge, label %make_magnitude_modifier.exit

if.then.i.if.end12_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

make_magnitude_modifier.exit:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #4
  br label %cleanup

if.end12:                                         ; preds = %if.then.i.if.end12_crit_edge, %if.then
  %22 = phi ptr [ %17, %if.then.i.if.end12_crit_edge ], [ %13, %if.then ]
  %23 = phi ptr [ %16, %if.then.i.if.end12_crit_edge ], [ %12, %if.then ]
  %24 = phi i16 [ %15, %if.then.i.if.end12_crit_edge ], [ %11, %if.then ]
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %conv.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %data.i, align 1
  %shr.i = lshr i32 %26, 8
  %conv10.i = trunc i32 %shr.i to i8
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv10.i, ptr %23, align 1
  %conv1232.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i = icmp slt i16 %24, 0
  %add.i = add nuw nsw i32 %conv1232.i, 255
  %cond.i = select i1 %cmp.i, i32 %add.i, i32 %conv1232.i
  %29 = lshr i32 %cond.i, 8
  %conv17.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv17.i, ptr %22, align 1
  %call19.i = call i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext 771, ptr noundef nonnull %data.i) #4
  call void @iforce_dump_packet(ptr noundef %iforce, ptr noundef nonnull @.str.7, i16 noundef zeroext 771, ptr noundef nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #4
  %flags = getelementptr %struct.iforce_core_effect, ptr %core_effects, i32 %conv, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #4
  br i1 %tobool, label %if.end12.lor.lhs.false14_crit_edge, label %if.end12.if.then17_crit_edge

if.end12.if.then17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

if.end12.lor.lhs.false14_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end12.lor.lhs.false14_crit_edge, %need_magnitude_modifier.exit.lor.lhs.false14_crit_edge, %need_magnitude_modifier.exit.thread
  %tobool49.not117 = phi i1 [ true, %if.end12.lor.lhs.false14_crit_edge ], [ false, %need_magnitude_modifier.exit.thread ], [ false, %need_magnitude_modifier.exit.lor.lhs.false14_crit_edge ]
  %31 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %effect, align 4
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %32, label %do.end.i97 [
    i16 82, label %sw.bb.i
    i16 81, label %sw.bb36.i
  ]

sw.bb.i:                                          ; preds = %lor.lhs.false14
  %envelope.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %envelope.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %envelope.i, align 2
  %envelope3.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %36 = ptrtoint ptr %envelope3.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %envelope3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp.not.i96 = icmp eq i16 %35, %37
  br i1 %cmp.not.i96, label %lor.lhs.false.i, label %sw.bb.i.if.then17_crit_edge

sw.bb.i.if.then17_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %attack_level.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %38 = ptrtoint ptr %attack_level.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %attack_level.i, align 2
  %attack_level12.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %40 = ptrtoint ptr %attack_level12.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %attack_level12.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp14.not.i = icmp eq i16 %39, %41
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false.i.if.then17_crit_edge

lor.lhs.false.i.if.then17_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false16.i:                                ; preds = %lor.lhs.false.i
  %fade_length.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %42 = ptrtoint ptr %fade_length.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %fade_length.i, align 2
  %fade_length22.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %44 = ptrtoint ptr %fade_length22.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %fade_length22.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp24.not.i = icmp eq i16 %43, %45
  br i1 %cmp24.not.i, label %lor.lhs.false26.i, label %lor.lhs.false16.i.if.then17_crit_edge

lor.lhs.false16.i.if.then17_crit_edge:            ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false26.i:                                ; preds = %lor.lhs.false16.i
  %fade_level.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %46 = ptrtoint ptr %fade_level.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %fade_level.i, align 2
  %fade_level32.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %48 = ptrtoint ptr %fade_level32.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %fade_level32.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp34.not.i = icmp eq i16 %47, %49
  br i1 %cmp34.not.i, label %lor.lhs.false26.i.lor.lhs.false35_crit_edge, label %lor.lhs.false26.i.if.then17_crit_edge

lor.lhs.false26.i.if.then17_crit_edge:            ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false26.i.lor.lhs.false35_crit_edge:      ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false35

sw.bb36.i:                                        ; preds = %lor.lhs.false14
  %envelope38.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5
  %50 = ptrtoint ptr %envelope38.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %envelope38.i, align 2
  %envelope42.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %52 = ptrtoint ptr %envelope42.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %envelope42.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp45.not.i = icmp eq i16 %51, %53
  br i1 %cmp45.not.i, label %lor.lhs.false47.i, label %sw.bb36.i.if.then17_crit_edge

sw.bb36.i.if.then17_crit_edge:                    ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false47.i:                                ; preds = %sw.bb36.i
  %attack_level50.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %attack_level50.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %attack_level50.i, align 2
  %attack_level54.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %attack_level54.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %attack_level54.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %57)
  %cmp56.not.i = icmp eq i16 %55, %57
  br i1 %cmp56.not.i, label %lor.lhs.false58.i, label %lor.lhs.false47.i.if.then17_crit_edge

lor.lhs.false47.i.if.then17_crit_edge:            ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false58.i:                                ; preds = %lor.lhs.false47.i
  %fade_length61.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 2
  %58 = ptrtoint ptr %fade_length61.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %fade_length61.i, align 2
  %fade_length65.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %fade_length65.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %fade_length65.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %cmp67.not.i = icmp eq i16 %59, %61
  br i1 %cmp67.not.i, label %lor.lhs.false69.i, label %lor.lhs.false58.i.if.then17_crit_edge

lor.lhs.false58.i.if.then17_crit_edge:            ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false69.i:                                ; preds = %lor.lhs.false58.i
  %fade_level72.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 3
  %62 = ptrtoint ptr %fade_level72.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %fade_level72.i, align 2
  %fade_level76.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %64 = ptrtoint ptr %fade_level76.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %fade_level76.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp78.not.i = icmp eq i16 %63, %65
  br i1 %cmp78.not.i, label %lor.lhs.false69.i.lor.lhs.false35_crit_edge, label %lor.lhs.false69.i.if.then17_crit_edge

lor.lhs.false69.i.if.then17_crit_edge:            ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false69.i.lor.lhs.false35_crit_edge:      ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false35

do.end.i97:                                       ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iforce, align 4
  %dev82.i = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev82.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #7
  br label %lor.lhs.false35

if.then17:                                        ; preds = %lor.lhs.false69.i.if.then17_crit_edge, %lor.lhs.false58.i.if.then17_crit_edge, %lor.lhs.false47.i.if.then17_crit_edge, %sw.bb36.i.if.then17_crit_edge, %lor.lhs.false26.i.if.then17_crit_edge, %lor.lhs.false16.i.if.then17_crit_edge, %lor.lhs.false.i.if.then17_crit_edge, %sw.bb.i.if.then17_crit_edge, %if.end12.if.then17_crit_edge
  %tobool49.not115 = phi i1 [ true, %if.end12.if.then17_crit_edge ], [ %tobool49.not117, %lor.lhs.false26.i.if.then17_crit_edge ], [ %tobool49.not117, %lor.lhs.false16.i.if.then17_crit_edge ], [ %tobool49.not117, %lor.lhs.false.i.if.then17_crit_edge ], [ %tobool49.not117, %sw.bb.i.if.then17_crit_edge ], [ %tobool49.not117, %lor.lhs.false69.i.if.then17_crit_edge ], [ %tobool49.not117, %lor.lhs.false58.i.if.then17_crit_edge ], [ %tobool49.not117, %lor.lhs.false47.i.if.then17_crit_edge ], [ %tobool49.not117, %sw.bb36.i.if.then17_crit_edge ]
  %conv19 = zext i1 %tobool to i32
  %envelope = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %68 = ptrtoint ptr %envelope to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %envelope, align 2
  %attack_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %70 = ptrtoint ptr %attack_level to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %attack_level, align 2
  %fade_length = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %72 = ptrtoint ptr %fade_length to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %fade_length, align 2
  %fade_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %74 = ptrtoint ptr %fade_level to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %fade_level, align 2
  %call27 = call fastcc i32 @make_envelope_modifier(ptr noundef %iforce, ptr noundef %mod2_chunk5, i32 noundef %conv19, i16 noundef zeroext %69, i16 noundef signext %71, i16 noundef zeroext %73, i16 noundef signext %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end33, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.then17
  %flags31 = getelementptr %struct.iforce_core_effect, ptr %core_effects, i32 %conv, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags31) #4
  br i1 %tobool, label %if.end33.lor.lhs.false35_crit_edge, label %if.end33.if.then38_crit_edge

if.end33.if.then38_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.end33.lor.lhs.false35_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end33.lor.lhs.false35_crit_edge, %do.end.i97, %lor.lhs.false69.i.lor.lhs.false35_crit_edge, %lor.lhs.false26.i.lor.lhs.false35_crit_edge
  %param2_err.0127 = phi i32 [ 0, %if.end33.lor.lhs.false35_crit_edge ], [ 1, %do.end.i97 ], [ 1, %lor.lhs.false69.i.lor.lhs.false35_crit_edge ], [ 1, %lor.lhs.false26.i.lor.lhs.false35_crit_edge ]
  %tobool49.not116124 = phi i1 [ %tobool49.not115, %if.end33.lor.lhs.false35_crit_edge ], [ %tobool49.not117, %do.end.i97 ], [ %tobool49.not117, %lor.lhs.false69.i.lor.lhs.false35_crit_edge ], [ %tobool49.not117, %lor.lhs.false26.i.lor.lhs.false35_crit_edge ]
  %direction.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %76 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %direction.i, align 4
  %direction1.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %78 = ptrtoint ptr %direction1.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %direction1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %77, i16 %79)
  %cmp.not.i99 = icmp eq i16 %77, %79
  br i1 %cmp.not.i99, label %lor.lhs.false.i100, label %lor.lhs.false35.if.then38_crit_edge

lor.lhs.false35.if.then38_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

lor.lhs.false.i100:                               ; preds = %lor.lhs.false35
  %trigger.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %80 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %trigger.i, align 2
  %trigger5.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %82 = ptrtoint ptr %trigger5.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %trigger5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %83)
  %cmp8.not.i = icmp eq i16 %81, %83
  br i1 %cmp8.not.i, label %lor.lhs.false10.i, label %lor.lhs.false.i100.if.then38_crit_edge

lor.lhs.false.i100.if.then38_crit_edge:           ; preds = %lor.lhs.false.i100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i100
  %interval.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %interval.i, align 2
  %interval14.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %interval14.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %interval14.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %85, i16 %87)
  %cmp16.not.i = icmp eq i16 %85, %87
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %lor.lhs.false10.i.if.then38_crit_edge

lor.lhs.false10.i.if.then38_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

lor.lhs.false18.i:                                ; preds = %lor.lhs.false10.i
  %replay.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %88 = ptrtoint ptr %replay.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %replay.i, align 2
  %replay20.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %90 = ptrtoint ptr %replay20.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %replay20.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %89, i16 %91)
  %cmp23.not.i = icmp eq i16 %89, %91
  br i1 %cmp23.not.i, label %need_core.exit, label %lor.lhs.false18.i.if.then38_crit_edge

lor.lhs.false18.i.if.then38_crit_edge:            ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

need_core.exit:                                   ; preds = %lor.lhs.false18.i
  %delay.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %delay.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %delay.i, align 2
  %delay29.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %94 = ptrtoint ptr %delay29.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %delay29.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %95)
  %cmp31.not.i.not = icmp eq i16 %93, %95
  br i1 %cmp31.not.i.not, label %need_core.exit.cond.false_crit_edge, label %need_core.exit.if.then38_crit_edge

need_core.exit.if.then38_crit_edge:               ; preds = %need_core.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

need_core.exit.cond.false_crit_edge:              ; preds = %need_core.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

if.then38:                                        ; preds = %need_core.exit.if.then38_crit_edge, %lor.lhs.false18.i.if.then38_crit_edge, %lor.lhs.false10.i.if.then38_crit_edge, %lor.lhs.false.i100.if.then38_crit_edge, %lor.lhs.false35.if.then38_crit_edge, %if.end33.if.then38_crit_edge
  %param2_err.0126 = phi i32 [ %param2_err.0127, %need_core.exit.if.then38_crit_edge ], [ 0, %if.end33.if.then38_crit_edge ], [ %param2_err.0127, %lor.lhs.false18.i.if.then38_crit_edge ], [ %param2_err.0127, %lor.lhs.false10.i.if.then38_crit_edge ], [ %param2_err.0127, %lor.lhs.false.i100.if.then38_crit_edge ], [ %param2_err.0127, %lor.lhs.false35.if.then38_crit_edge ]
  %tobool49.not116123 = phi i1 [ %tobool49.not116124, %need_core.exit.if.then38_crit_edge ], [ %tobool49.not115, %if.end33.if.then38_crit_edge ], [ %tobool49.not116124, %lor.lhs.false18.i.if.then38_crit_edge ], [ %tobool49.not116124, %lor.lhs.false10.i.if.then38_crit_edge ], [ %tobool49.not116124, %lor.lhs.false.i100.if.then38_crit_edge ], [ %tobool49.not116124, %lor.lhs.false35.if.then38_crit_edge ]
  %96 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %id, align 2
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx, align 4
  %100 = ptrtoint ptr %mod2_chunk5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mod2_chunk5, align 4
  %replay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %102 = ptrtoint ptr %replay to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %replay, align 2
  %delay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %delay, align 2
  %trigger = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %106 = ptrtoint ptr %trigger to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %trigger, align 2
  %interval = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %interval to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %interval, align 2
  %direction = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %110 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %direction, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data.i102) #4
  %112 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 1
  %113 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 2
  %114 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 3
  %115 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 4
  %116 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 5
  %117 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 6
  %118 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 7
  %119 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 8
  %120 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 9
  %121 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 10
  %122 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 11
  %123 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 12
  %124 = getelementptr inbounds [14 x i8], ptr %data.i102, i32 0, i32 13
  %conv.i103 = zext i16 %97 to i32
  %conv1.i = trunc i16 %97 to i8
  %125 = ptrtoint ptr %data.i102 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv1.i, ptr %data.i102, align 1
  %126 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %112, align 1
  %type.i.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 1
  %127 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %type.i.i, align 4
  %btn.i.i = getelementptr inbounds %struct.iforce_device, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %btn.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %btn.i.i, align 4
  %arrayidx15.i.i = getelementptr i16, ptr %130, i32 1
  %131 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx15.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %132)
  %cmp16.i.i = icmp sgt i16 %132, -1
  br i1 %cmp16.i.i, label %if.then38.for.body.i.i_crit_edge, label %if.then38.find_button.exit.i_crit_edge

if.then38.find_button.exit.i_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_button.exit.i

if.then38.for.body.i.i_crit_edge:                 ; preds = %if.then38
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then38.for.body.i.i_crit_edge
  %133 = phi i16 [ %136, %for.inc.i.i.for.body.i.i_crit_edge ], [ %132, %if.then38.for.body.i.i_crit_edge ]
  %i.017.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.then38.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %133, i16 %107)
  %cmp7.i.i = icmp eq i16 %133, %107
  br i1 %cmp7.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %134 = trunc i32 %i.017.i.i to i8
  %conv9.i.i = add i8 %134, 1
  %phi.bo = or i8 %conv9.i.i, 32
  br label %find_button.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.017.i.i, 1
  %arrayidx.i.i = getelementptr i16, ptr %130, i32 %inc.i.i
  %135 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx.i.i, align 2
  %cmp.i.i = icmp sgt i16 %136, -1
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.find_button.exit.i_crit_edge

for.inc.i.i.find_button.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_button.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

find_button.exit.i:                               ; preds = %for.inc.i.i.find_button.exit.i_crit_edge, %if.then.i.i, %if.then38.find_button.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %phi.bo, %if.then.i.i ], [ 32, %if.then38.find_button.exit.i_crit_edge ], [ 32, %for.inc.i.i.find_button.exit.i_crit_edge ]
  %137 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %retval.0.i.i, ptr %113, align 1
  %conv12.i = trunc i16 %103 to i8
  %138 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv12.i, ptr %114, align 1
  %139 = lshr i16 %103, 8
  %conv15.i = trunc i16 %139 to i8
  %140 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv15.i, ptr %115, align 1
  %141 = lshr i16 %111, 8
  %conv19.i = trunc i16 %141 to i8
  %142 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv19.i, ptr %116, align 1
  %conv23.i = trunc i16 %109 to i8
  %143 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv23.i, ptr %117, align 1
  %144 = lshr i16 %109, 8
  %conv27.i = trunc i16 %144 to i8
  %145 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv27.i, ptr %118, align 1
  %conv31.i = trunc i32 %99 to i8
  %146 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv31.i, ptr %119, align 1
  %147 = lshr i32 %99, 8
  %conv35.i = trunc i32 %147 to i8
  %148 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv35.i, ptr %120, align 1
  %conv39.i = trunc i32 %101 to i8
  %149 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv39.i, ptr %121, align 1
  %150 = lshr i32 %101, 8
  %conv43.i = trunc i32 %150 to i8
  %151 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv43.i, ptr %122, align 1
  %conv47.i = trunc i16 %105 to i8
  %152 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv47.i, ptr %123, align 1
  %153 = lshr i16 %105, 8
  %conv51.i = trunc i16 %153 to i8
  %154 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv51.i, ptr %124, align 1
  %call53.i = call i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext 270, ptr noundef nonnull %data.i102) #4
  %flags.i = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %conv.i103, i32 2
  %155 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %flags.i, align 4
  %157 = and i32 %156, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.i104 = icmp eq i32 %157, 0
  br i1 %tobool.not.i104, label %find_button.exit.i.make_core.exit_crit_edge, label %if.then.i105

find_button.exit.i.make_core.exit_crit_edge:      ; preds = %find_button.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %make_core.exit

if.then.i105:                                     ; preds = %find_button.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call57.i = call i32 @iforce_control_playback(ptr noundef %iforce, i16 noundef zeroext %97, i32 noundef 1) #4
  br label %make_core.exit

make_core.exit:                                   ; preds = %if.then.i105, %find_button.exit.i.make_core.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data.i102) #4
  br label %cond.false

cond.false:                                       ; preds = %make_core.exit, %need_core.exit.cond.false_crit_edge
  %param2_err.0125 = phi i32 [ %param2_err.0127, %need_core.exit.cond.false_crit_edge ], [ %param2_err.0126, %make_core.exit ]
  %tobool49.not116122 = phi i1 [ %tobool49.not116124, %need_core.exit.cond.false_crit_edge ], [ %tobool49.not116123, %make_core.exit ]
  %spec.select = select i1 %tobool49.not116122, i32 0, i32 %param2_err.0125
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.then17.cleanup_crit_edge, %make_magnitude_modifier.exit
  %retval.0 = phi i32 [ %spec.select, %cond.false ], [ -28, %make_magnitude_modifier.exit ], [ %call27, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iforce_upload_condition(ptr noundef %iforce, ptr noundef readonly %effect, ptr noundef readonly %old) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 2
  %conv = sext i16 %1 to i32
  %core_effects = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 9
  %add.ptr = getelementptr %struct.iforce_core_effect, ptr %core_effects, i32 %conv
  %mod2_chunk2 = getelementptr %struct.iforce_core_effect, ptr %core_effects, i32 %conv, i32 1
  %2 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %effect, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 83, label %entry.sw.epilog_crit_edge
    i16 85, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %entry.sw.epilog_crit_edge
  %type.0 = phi i8 [ 65, %sw.bb5 ], [ 64, %entry.sw.epilog_crit_edge ]
  %tobool = icmp ne ptr %old, null
  br i1 %tobool, label %lor.lhs.false, label %sw.epilog.if.then_crit_edge

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog
  %.off.i = add nsw i16 %3, -83
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %for.cond.preheader.i, label %need_condition_modifier.exit.thread

for.cond.preheader.i:                             ; preds = %lor.lhs.false
  %u.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5
  %u10.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %5 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %u.i, align 4
  %7 = ptrtoint ptr %u10.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %u10.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp14.not.i = icmp eq i16 %6, %8
  br i1 %cmp14.not.i, label %lor.lhs.false.i, label %for.cond.preheader.i.lor.end.i_crit_edge

for.cond.preheader.i.lor.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end.i

need_condition_modifier.exit.thread:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iforce, align 4
  %dev6.i = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #7
  br label %lor.lhs.false50

lor.lhs.false.i:                                  ; preds = %for.cond.preheader.i
  %left_saturation.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %left_saturation.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %left_saturation.i, align 2
  %left_saturation21.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %left_saturation21.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %left_saturation21.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp23.not.i = icmp eq i16 %12, %14
  br i1 %cmp23.not.i, label %lor.lhs.false25.i, label %lor.lhs.false.i.lor.end.i_crit_edge

lor.lhs.false.i.lor.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false.i
  %right_coeff.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %15 = ptrtoint ptr %right_coeff.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %right_coeff.i, align 4
  %right_coeff31.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %17 = ptrtoint ptr %right_coeff31.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %right_coeff31.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp33.not.i = icmp eq i16 %16, %18
  br i1 %cmp33.not.i, label %lor.lhs.false35.i, label %lor.lhs.false25.i.lor.end.i_crit_edge

lor.lhs.false25.i.lor.end.i_crit_edge:            ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end.i

lor.lhs.false35.i:                                ; preds = %lor.lhs.false25.i
  %left_coeff.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %19 = ptrtoint ptr %left_coeff.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %left_coeff.i, align 2
  %left_coeff41.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %21 = ptrtoint ptr %left_coeff41.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %left_coeff41.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp43.not.i = icmp eq i16 %20, %22
  br i1 %cmp43.not.i, label %lor.lhs.false45.i, label %lor.lhs.false35.i.lor.end.i_crit_edge

lor.lhs.false35.i.lor.end.i_crit_edge:            ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end.i

lor.lhs.false45.i:                                ; preds = %lor.lhs.false35.i
  %deadband.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %23 = ptrtoint ptr %deadband.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %deadband.i, align 4
  %deadband51.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %25 = ptrtoint ptr %deadband51.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %deadband51.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp53.not.i = icmp eq i16 %24, %26
  br i1 %cmp53.not.i, label %lor.rhs.i, label %lor.lhs.false45.i.lor.end.i_crit_edge

lor.lhs.false45.i.lor.end.i_crit_edge:            ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #6
  %center.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5
  %27 = ptrtoint ptr %center.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %center.i, align 2
  %center60.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %29 = ptrtoint ptr %center60.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %center60.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp62.i = icmp ne i16 %28, %30
  %phi.cast.i = zext i1 %cmp62.i to i32
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false45.i.lor.end.i_crit_edge, %lor.lhs.false35.i.lor.end.i_crit_edge, %lor.lhs.false25.i.lor.end.i_crit_edge, %lor.lhs.false.i.lor.end.i_crit_edge, %for.cond.preheader.i.lor.end.i_crit_edge
  %31 = phi i32 [ 1, %lor.lhs.false45.i.lor.end.i_crit_edge ], [ 1, %lor.lhs.false35.i.lor.end.i_crit_edge ], [ 1, %lor.lhs.false25.i.lor.end.i_crit_edge ], [ 1, %lor.lhs.false.i.lor.end.i_crit_edge ], [ 1, %for.cond.preheader.i.lor.end.i_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  %arrayidx.1.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.1.i, align 4
  %arrayidx11.1.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx11.1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp14.not.1.i = icmp eq i16 %33, %35
  br i1 %cmp14.not.1.i, label %lor.lhs.false.1.i, label %lor.end.i.need_condition_modifier.exit_crit_edge

lor.end.i.need_condition_modifier.exit_crit_edge: ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %need_condition_modifier.exit

lor.lhs.false.1.i:                                ; preds = %lor.end.i
  %left_saturation.1.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %left_saturation.1.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %left_saturation.1.i, align 2
  %left_saturation21.1.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %left_saturation21.1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %left_saturation21.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %39)
  %cmp23.not.1.i = icmp eq i16 %37, %39
  br i1 %cmp23.not.1.i, label %lor.lhs.false25.1.i, label %lor.lhs.false.1.i.need_condition_modifier.exit_crit_edge

lor.lhs.false.1.i.need_condition_modifier.exit_crit_edge: ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %need_condition_modifier.exit

lor.lhs.false25.1.i:                              ; preds = %lor.lhs.false.1.i
  %right_coeff.1.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %right_coeff.1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %right_coeff.1.i, align 4
  %right_coeff31.1.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %42 = ptrtoint ptr %right_coeff31.1.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %right_coeff31.1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp33.not.1.i = icmp eq i16 %41, %43
  br i1 %cmp33.not.1.i, label %lor.lhs.false35.1.i, label %lor.lhs.false25.1.i.need_condition_modifier.exit_crit_edge

lor.lhs.false25.1.i.need_condition_modifier.exit_crit_edge: ; preds = %lor.lhs.false25.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %need_condition_modifier.exit

lor.lhs.false35.1.i:                              ; preds = %lor.lhs.false25.1.i
  %left_coeff.1.i = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %left_coeff.1.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %left_coeff.1.i, align 2
  %left_coeff41.1.i = getelementptr [2 x %struct.ff_condition_effect], ptr %u10.i, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %left_coeff41.1.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %left_coeff41.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp43.not.1.i = icmp eq i16 %45, %47
  br i1 %cmp43.not.1.i, label %lor.lhs.false45.1.i, label %lor.lhs.false35.1.i.need_condition_modifier.exit_crit_edge

lor.lhs.false35.1.i.need_condition_modifier.exit_crit_edge: ; preds = %lor.lhs.false35.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %need_condition_modifier.exit

lor.lhs.false45.1.i:                              ; preds = %lor.lhs.false35.1.i
  %deadband.1.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 6
  %48 = ptrtoint ptr %deadband.1.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %deadband.1.i, align 4
  %deadband51.1.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 6
  %50 = ptrtoint ptr %deadband51.1.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %deadband51.1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %51)
  %cmp53.not.1.i = icmp eq i16 %49, %51
  br i1 %cmp53.not.1.i, label %lor.rhs.1.i, label %lor.lhs.false45.1.i.need_condition_modifier.exit_crit_edge

lor.lhs.false45.1.i.need_condition_modifier.exit_crit_edge: ; preds = %lor.lhs.false45.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %need_condition_modifier.exit

lor.rhs.1.i:                                      ; preds = %lor.lhs.false45.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %center.1.i = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i, i32 0, i32 1, i32 5
  %52 = ptrtoint ptr %center.1.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %center.1.i, align 2
  %center60.1.i = getelementptr [2 x %struct.ff_condition_effect], ptr %u10.i, i32 0, i32 1, i32 5
  %54 = ptrtoint ptr %center60.1.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %center60.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp62.1.i = icmp ne i16 %53, %55
  %phi.cast94.i = zext i1 %cmp62.1.i to i32
  br label %need_condition_modifier.exit

need_condition_modifier.exit:                     ; preds = %lor.rhs.1.i, %lor.lhs.false45.1.i.need_condition_modifier.exit_crit_edge, %lor.lhs.false35.1.i.need_condition_modifier.exit_crit_edge, %lor.lhs.false25.1.i.need_condition_modifier.exit_crit_edge, %lor.lhs.false.1.i.need_condition_modifier.exit_crit_edge, %lor.end.i.need_condition_modifier.exit_crit_edge
  %56 = phi i32 [ 1, %lor.lhs.false45.1.i.need_condition_modifier.exit_crit_edge ], [ 1, %lor.lhs.false35.1.i.need_condition_modifier.exit_crit_edge ], [ 1, %lor.lhs.false25.1.i.need_condition_modifier.exit_crit_edge ], [ 1, %lor.lhs.false.1.i.need_condition_modifier.exit_crit_edge ], [ 1, %lor.end.i.need_condition_modifier.exit_crit_edge ], [ %phi.cast94.i, %lor.rhs.1.i ]
  %or.1.i = or i32 %56, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.1.i)
  %tobool6.not = icmp eq i32 %or.1.i, 0
  br i1 %tobool6.not, label %need_condition_modifier.exit.lor.lhs.false50_crit_edge, label %need_condition_modifier.exit.if.then_crit_edge

need_condition_modifier.exit.if.then_crit_edge:   ; preds = %need_condition_modifier.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

need_condition_modifier.exit.lor.lhs.false50_crit_edge: ; preds = %need_condition_modifier.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false50

if.then:                                          ; preds = %need_condition_modifier.exit.if.then_crit_edge, %sw.epilog.if.then_crit_edge
  %conv7 = zext i1 %tobool to i32
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %57 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %u, align 4
  %left_saturation = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %59 = ptrtoint ptr %left_saturation to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %left_saturation, align 2
  %right_coeff = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %61 = ptrtoint ptr %right_coeff to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %right_coeff, align 4
  %left_coeff = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %63 = ptrtoint ptr %left_coeff to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %left_coeff, align 2
  %deadband = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %65 = ptrtoint ptr %deadband to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %deadband, align 4
  %center = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %67 = ptrtoint ptr %center to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %center, align 2
  %call18 = tail call fastcc i32 @make_condition_modifier(ptr noundef %iforce, ptr noundef %add.ptr, i32 noundef %conv7, i16 noundef zeroext %58, i16 noundef zeroext %60, i16 noundef signext %62, i16 noundef signext %64, i16 noundef zeroext %66, i16 noundef signext %68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %flags = getelementptr %struct.iforce_core_effect, ptr %core_effects, i32 %conv, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #4
  %arrayidx25 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx25, align 4
  %left_saturation29 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %left_saturation29 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %left_saturation29, align 2
  %right_coeff32 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %73 = ptrtoint ptr %right_coeff32 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %right_coeff32, align 4
  %left_coeff35 = getelementptr inbounds %struct.ff_condition_effect, ptr %arrayidx25, i32 0, i32 3
  %75 = ptrtoint ptr %left_coeff35 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %left_coeff35, align 2
  %deadband38 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 6
  %77 = ptrtoint ptr %deadband38 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %deadband38, align 4
  %center41 = getelementptr inbounds %struct.ff_condition_effect, ptr %arrayidx25, i32 0, i32 5
  %79 = ptrtoint ptr %center41 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %center41, align 2
  %call42 = tail call fastcc i32 @make_condition_modifier(ptr noundef %iforce, ptr noundef %mod2_chunk2, i32 noundef %conv7, i16 noundef zeroext %70, i16 noundef zeroext %72, i16 noundef signext %74, i16 noundef signext %76, i16 noundef zeroext %78, i16 noundef signext %80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48:                                         ; preds = %if.end
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #4
  br i1 %tobool, label %if.end48.lor.lhs.false50_crit_edge, label %if.end48.if.then53_crit_edge

if.end48.if.then53_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

if.end48.lor.lhs.false50_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end48.lor.lhs.false50_crit_edge, %need_condition_modifier.exit.lor.lhs.false50_crit_edge, %need_condition_modifier.exit.thread
  %param_err.0118 = phi i32 [ 0, %if.end48.lor.lhs.false50_crit_edge ], [ 1, %need_condition_modifier.exit.thread ], [ 1, %need_condition_modifier.exit.lor.lhs.false50_crit_edge ]
  %direction.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %81 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %direction.i, align 4
  %direction1.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %83 = ptrtoint ptr %direction1.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %direction1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %84)
  %cmp.not.i = icmp eq i16 %82, %84
  br i1 %cmp.not.i, label %lor.lhs.false.i110, label %lor.lhs.false50.if.then53_crit_edge

lor.lhs.false50.if.then53_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

lor.lhs.false.i110:                               ; preds = %lor.lhs.false50
  %trigger.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %85 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %trigger.i, align 2
  %trigger5.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %87 = ptrtoint ptr %trigger5.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %trigger5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %88)
  %cmp8.not.i = icmp eq i16 %86, %88
  br i1 %cmp8.not.i, label %lor.lhs.false10.i, label %lor.lhs.false.i110.if.then53_crit_edge

lor.lhs.false.i110.if.then53_crit_edge:           ; preds = %lor.lhs.false.i110
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i110
  %interval.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %interval.i, align 2
  %interval14.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %91 = ptrtoint ptr %interval14.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %interval14.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %92)
  %cmp16.not.i = icmp eq i16 %90, %92
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %lor.lhs.false10.i.if.then53_crit_edge

lor.lhs.false10.i.if.then53_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

lor.lhs.false18.i:                                ; preds = %lor.lhs.false10.i
  %replay.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %93 = ptrtoint ptr %replay.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %replay.i, align 2
  %replay20.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %95 = ptrtoint ptr %replay20.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %replay20.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %96)
  %cmp23.not.i111 = icmp eq i16 %94, %96
  br i1 %cmp23.not.i111, label %need_core.exit, label %lor.lhs.false18.i.if.then53_crit_edge

lor.lhs.false18.i.if.then53_crit_edge:            ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

need_core.exit:                                   ; preds = %lor.lhs.false18.i
  %delay.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %delay.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %delay.i, align 2
  %delay29.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %delay29.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %delay29.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp31.not.i.not = icmp eq i16 %98, %100
  br i1 %cmp31.not.i.not, label %need_core.exit.cleanup_crit_edge, label %need_core.exit.if.then53_crit_edge

need_core.exit.if.then53_crit_edge:               ; preds = %need_core.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53

need_core.exit.cleanup_crit_edge:                 ; preds = %need_core.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then53:                                        ; preds = %need_core.exit.if.then53_crit_edge, %lor.lhs.false18.i.if.then53_crit_edge, %lor.lhs.false10.i.if.then53_crit_edge, %lor.lhs.false.i110.if.then53_crit_edge, %lor.lhs.false50.if.then53_crit_edge, %if.end48.if.then53_crit_edge
  %param_err.0117 = phi i32 [ %param_err.0118, %need_core.exit.if.then53_crit_edge ], [ 0, %if.end48.if.then53_crit_edge ], [ %param_err.0118, %lor.lhs.false18.i.if.then53_crit_edge ], [ %param_err.0118, %lor.lhs.false10.i.if.then53_crit_edge ], [ %param_err.0118, %lor.lhs.false.i110.if.then53_crit_edge ], [ %param_err.0118, %lor.lhs.false50.if.then53_crit_edge ]
  %101 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %id, align 2
  %103 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr, align 4
  %105 = ptrtoint ptr %mod2_chunk2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mod2_chunk2, align 4
  %replay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %107 = ptrtoint ptr %replay to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %replay, align 2
  %delay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %109 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %delay, align 2
  %trigger = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %111 = ptrtoint ptr %trigger to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %trigger, align 2
  %interval = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %113 = ptrtoint ptr %interval to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %interval, align 2
  %direction = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %115 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %direction, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data.i) #4
  %117 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 1
  %118 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 2
  %119 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 3
  %120 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 4
  %121 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 5
  %122 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 6
  %123 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 7
  %124 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 8
  %125 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 9
  %126 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 10
  %127 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 11
  %128 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 12
  %129 = getelementptr inbounds [14 x i8], ptr %data.i, i32 0, i32 13
  %conv.i = zext i16 %102 to i32
  %conv1.i = trunc i16 %102 to i8
  %130 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv1.i, ptr %data.i, align 1
  %131 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %type.0, ptr %117, align 1
  %type.i.i = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 1
  %132 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %type.i.i, align 4
  %btn.i.i = getelementptr inbounds %struct.iforce_device, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %btn.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %btn.i.i, align 4
  %arrayidx15.i.i = getelementptr i16, ptr %135, i32 1
  %136 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx15.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %137)
  %cmp16.i.i = icmp sgt i16 %137, -1
  br i1 %cmp16.i.i, label %if.then53.for.body.i.i_crit_edge, label %if.then53.find_button.exit.i_crit_edge

if.then53.find_button.exit.i_crit_edge:           ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_button.exit.i

if.then53.for.body.i.i_crit_edge:                 ; preds = %if.then53
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then53.for.body.i.i_crit_edge
  %138 = phi i16 [ %141, %for.inc.i.i.for.body.i.i_crit_edge ], [ %137, %if.then53.for.body.i.i_crit_edge ]
  %i.017.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.then53.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %138, i16 %112)
  %cmp7.i.i = icmp eq i16 %138, %112
  br i1 %cmp7.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %139 = trunc i32 %i.017.i.i to i8
  %conv9.i.i = add i8 %139, 1
  %phi.bo = or i8 %conv9.i.i, -64
  br label %find_button.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.017.i.i, 1
  %arrayidx.i.i = getelementptr i16, ptr %135, i32 %inc.i.i
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx.i.i, align 2
  %cmp.i.i = icmp sgt i16 %141, -1
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.find_button.exit.i_crit_edge

for.inc.i.i.find_button.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_button.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

find_button.exit.i:                               ; preds = %for.inc.i.i.find_button.exit.i_crit_edge, %if.then.i.i, %if.then53.find_button.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %phi.bo, %if.then.i.i ], [ -64, %if.then53.find_button.exit.i_crit_edge ], [ -64, %for.inc.i.i.find_button.exit.i_crit_edge ]
  %142 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %retval.0.i.i, ptr %118, align 1
  %conv12.i = trunc i16 %108 to i8
  %143 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv12.i, ptr %119, align 1
  %144 = lshr i16 %108, 8
  %conv15.i = trunc i16 %144 to i8
  %145 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv15.i, ptr %120, align 1
  %146 = lshr i16 %116, 8
  %conv19.i = trunc i16 %146 to i8
  %147 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv19.i, ptr %121, align 1
  %conv23.i = trunc i16 %114 to i8
  %148 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv23.i, ptr %122, align 1
  %149 = lshr i16 %114, 8
  %conv27.i = trunc i16 %149 to i8
  %150 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv27.i, ptr %123, align 1
  %conv31.i = trunc i32 %104 to i8
  %151 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv31.i, ptr %124, align 1
  %152 = lshr i32 %104, 8
  %conv35.i = trunc i32 %152 to i8
  %153 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv35.i, ptr %125, align 1
  %conv39.i = trunc i32 %106 to i8
  %154 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv39.i, ptr %126, align 1
  %155 = lshr i32 %106, 8
  %conv43.i = trunc i32 %155 to i8
  %156 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv43.i, ptr %127, align 1
  %conv47.i = trunc i16 %110 to i8
  %157 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv47.i, ptr %128, align 1
  %158 = lshr i16 %110, 8
  %conv51.i = trunc i16 %158 to i8
  %159 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv51.i, ptr %129, align 1
  %call53.i = call i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext 270, ptr noundef nonnull %data.i) #4
  %flags.i = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %conv.i, i32 2
  %160 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %flags.i, align 4
  %162 = and i32 %161, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i = icmp eq i32 %162, 0
  br i1 %tobool.not.i, label %find_button.exit.i.make_core.exit_crit_edge, label %if.then.i

find_button.exit.i.make_core.exit_crit_edge:      ; preds = %find_button.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %make_core.exit

if.then.i:                                        ; preds = %find_button.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call57.i = call i32 @iforce_control_playback(ptr noundef %iforce, i16 noundef zeroext %102, i32 noundef 1) #4
  br label %make_core.exit

make_core.exit:                                   ; preds = %if.then.i, %find_button.exit.i.make_core.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data.i) #4
  br label %cleanup

cleanup:                                          ; preds = %make_core.exit, %need_core.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call18, %if.then.cleanup_crit_edge ], [ %call42, %if.end.cleanup_crit_edge ], [ %param_err.0117, %make_core.exit ], [ %param_err.0118, %need_core.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @make_condition_modifier(ptr noundef %iforce, ptr noundef %mod_chunk, i32 noundef %no_alloc, i16 noundef zeroext %rsat, i16 noundef zeroext %lsat, i16 noundef signext %rk, i16 noundef signext %lk, i16 noundef zeroext %db, i16 noundef signext %center) unnamed_addr #0 align 64 {
entry:
  %data = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %data) #4
  %0 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 7
  %7 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 8
  %8 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_alloc)
  %tobool.not = icmp eq i32 %no_alloc, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %mem_mutex = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mem_mutex, i32 noundef 0) #4
  %device_memory = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8
  %9 = ptrtoint ptr %device_memory to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_memory, align 4
  %end = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end, align 4
  %call = tail call i32 @allocate_resource(ptr noundef %device_memory, ptr noundef %mod_chunk, i32 noundef 8, i32 noundef %10, i32 noundef %12, i32 noundef 2, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  tail call void @mutex_unlock(ptr noundef %mem_mutex) #4
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %13 = ptrtoint ptr %mod_chunk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mod_chunk, align 4
  %conv = trunc i32 %14 to i8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %data, align 1
  %shr = lshr i32 %14, 8
  %conv10 = trunc i32 %shr to i8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %0, align 1
  %conv12 = sext i16 %rk to i32
  %mul = mul nsw i32 %conv12, 100
  %17 = lshr i32 %mul, 15
  %conv14 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv14, ptr %1, align 1
  %conv16 = sext i16 %lk to i32
  %mul17 = mul nsw i32 %conv16, 100
  %19 = lshr i32 %mul17, 15
  %conv19 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv19, ptr %2, align 1
  %conv21 = sext i16 %center to i32
  %mul22 = mul nsw i32 %conv21, 500
  %21 = lshr i32 %mul22, 15
  %conv27 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %3, align 1
  %shr30 = ashr i32 %mul22, 23
  %conv31 = trunc i32 %shr30 to i8
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv31, ptr %4, align 1
  %conv33 = zext i16 %db to i32
  %mul34 = mul nuw nsw i32 %conv33, 1000
  %24 = lshr i32 %mul34, 16
  %conv39 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv39, ptr %5, align 1
  %26 = lshr i32 %mul34, 24
  %conv43 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv43, ptr %6, align 1
  %conv45 = zext i16 %rsat to i32
  %mul46 = mul nuw nsw i32 %conv45, 100
  %28 = lshr i32 %mul46, 16
  %conv48 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv48, ptr %7, align 1
  %conv50 = zext i16 %lsat to i32
  %mul51 = mul nuw nsw i32 %conv50, 100
  %30 = lshr i32 %mul51, 16
  %conv53 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv53, ptr %8, align 1
  %call55 = call i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext 1290, ptr noundef nonnull %data) #4
  call void @iforce_dump_packet(ptr noundef %iforce, ptr noundef nonnull @.str.9, i16 noundef zeroext 1290, ptr noundef nonnull %data) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -28, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allocate_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_send_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_control_playback(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iforce_dump_packet(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/iforce/iforce-ff.c", i32 262, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @need_period_modifier._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @need_period_modifier._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/joystick/iforce/iforce-ff.c", i32 247, i32 3}
!10 = !{ptr @need_envelope_modifier._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @need_envelope_modifier._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/iforce/iforce-ff.c", i32 214, i32 3}
!14 = !{ptr @need_magnitude_modifier._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @need_magnitude_modifier._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/joystick/iforce/iforce-ff.c", i32 40, i32 29}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/joystick/iforce/iforce-ff.c", i32 189, i32 3}
!20 = !{ptr @need_condition_modifier._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @need_condition_modifier._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/joystick/iforce/iforce-ff.c", i32 162, i32 29}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
