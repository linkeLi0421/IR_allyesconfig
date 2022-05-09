; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/xilinx-xadc-events.c_pt.bc'
source_filename = "../drivers/iio/adc/xilinx-xadc-events.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.xadc = type { ptr, ptr, ptr, [16 x i16], i16, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.delayed_work, %struct.mutex, %struct.spinlock, %struct.completion }
%struct.xadc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/adc/xilinx-xadc.h\00", [34 x i8] zeroinitializer }, align 32
@switch.table.xadc_read_event_config = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 4, i32 16, i32 32, i32 64, i32 128], [40 x i8] zeroinitializer }, align 32
@switch.table.xadc_write_event_config = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 4, i32 16, i32 32, i32 64, i32 128], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_ = private constant [40 x i8] c"../drivers/iio/adc/xilinx-xadc-events.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [33 x i8] c"../drivers/iio/adc/xilinx-xadc.h\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 93, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [36 x i8] c"switch.table.xadc_read_event_config\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [37 x i8] c"switch.table.xadc_write_event_config\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @switch.table.xadc_read_event_config, ptr @switch.table.xadc_write_event_config], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xadc_read_event_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xadc_write_event_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xadc_handle_events(ptr noundef %indio_dev, i32 noundef %events) local_unnamed_addr #0 align 64 {
entry:
  %events.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %events.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %events, ptr %events.addr, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %events.addr, i32 noundef 8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp4 = icmp ult i32 %call, 8
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels2.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %xadc_handle_event.exit.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ %call, %for.body.lr.ph ], [ %call1, %xadc_handle_event.exit.for.body_crit_edge ]
  %1 = zext i32 %i.05 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.05, label %sw.default.i.i [
    i32 0, label %for.body.xadc_handle_event.exit_crit_edge
    i32 3, label %sw.bb.i.i
    i32 2, label %for.body.sw.bb1.i.i_crit_edge
    i32 1, label %for.body.sw.bb1.i.i_crit_edge8
  ]

for.body.sw.bb1.i.i_crit_edge8:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

for.body.sw.bb1.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

for.body.xadc_handle_event.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %xadc_handle_event.exit

sw.bb.i.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %channels2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels2.i.i, align 8
  br label %xadc_event_to_channel.exit.i

sw.bb1.i.i:                                       ; preds = %for.body.sw.bb1.i.i_crit_edge, %for.body.sw.bb1.i.i_crit_edge8
  %4 = ptrtoint ptr %channels2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels2.i.i, align 8
  %arrayidx3.i.i = getelementptr %struct.iio_chan_spec, ptr %5, i32 %i.05
  br label %xadc_event_to_channel.exit.i

sw.default.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %channels2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels2.i.i, align 8
  %sub.i.i = add nsw i32 %i.05, -1
  %arrayidx5.i.i = getelementptr %struct.iio_chan_spec, ptr %7, i32 %sub.i.i
  br label %xadc_event_to_channel.exit.i

xadc_event_to_channel.exit.i:                     ; preds = %sw.default.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ %arrayidx5.i.i, %sw.default.i.i ], [ %arrayidx3.i.i, %sw.bb1.i.i ], [ %3, %sw.bb.i.i ]
  %8 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp1.i = icmp eq i32 %9, 9
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %xadc_event_to_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %retval.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel.i, align 4
  %conv6.mask.i = and i32 %11, 65535
  %conv7.i = zext i32 %conv6.mask.i to i64
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %xadc_event_to_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i = zext i32 %9 to i64
  %shl13.i = shl nuw i64 %conv12.i, 32
  %channel17.i = getelementptr inbounds %struct.iio_chan_spec, ptr %retval.0.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %channel17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel17.i, align 4
  %conv18.mask.i = and i32 %13, 65535
  %conv19.i = zext i32 %conv18.mask.i to i64
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.then2.i
  %.sink.i = phi i64 [ 281513631416320, %if.then2.i ], [ %conv19.i, %if.else.i ]
  %conv7.sink.i = phi i64 [ %conv7.i, %if.then2.i ], [ %shl13.i, %if.else.i ]
  %or8.i = or i64 %conv7.sink.i, %.sink.i
  %call9.i = call i64 @iio_get_time_ns(ptr noundef %indio_dev) #6
  %call10.i = call i32 @iio_push_event(ptr noundef %indio_dev, i64 noundef %or8.i, i64 noundef %call9.i) #6
  br label %xadc_handle_event.exit

xadc_handle_event.exit:                           ; preds = %cleanup.sink.split.i, %for.body.xadc_handle_event.exit_crit_edge
  %add = add nuw nsw i32 %i.05, 1
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %events.addr, i32 noundef 8, i32 noundef %add) #6
  %cmp = icmp ult i32 %call1, 8
  br i1 %cmp, label %xadc_handle_event.exit.for.body_crit_edge, label %xadc_handle_event.exit.for.end_crit_edge

xadc_handle_event.exit.for.end_crit_edge:         ; preds = %xadc_handle_event.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

xadc_handle_event.exit.for.body_crit_edge:        ; preds = %xadc_handle_event.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %xadc_handle_event.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xadc_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %alarm_mask = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarm_mask, align 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp.i = icmp eq i32 %5, 9
  br i1 %cmp.i, label %entry.xadc_get_alarm_mask.exit_crit_edge, label %if.end.i

entry.xadc_get_alarm_mask.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %xadc_get_alarm_mask.exit

if.end.i:                                         ; preds = %entry
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %8 = icmp ult i32 %7, 6
  br i1 %8, label %switch.lookup, label %if.end.i.xadc_get_alarm_mask.exit_crit_edge

if.end.i.xadc_get_alarm_mask.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xadc_get_alarm_mask.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.xadc_read_event_config, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %xadc_get_alarm_mask.exit

xadc_get_alarm_mask.exit:                         ; preds = %switch.lookup, %if.end.i.xadc_get_alarm_mask.exit_crit_edge, %entry.xadc_get_alarm_mask.exit_crit_edge
  %retval.0.i = phi i32 [ 8, %entry.xadc_get_alarm_mask.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.i.xadc_get_alarm_mask.exit_crit_edge ]
  %and = and i32 %retval.0.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %conv = zext i1 %tobool to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xadc_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp.i = icmp eq i32 %1, 9
  br i1 %cmp.i, label %entry.xadc_get_alarm_mask.exit_crit_edge, label %if.end.i

entry.xadc_get_alarm_mask.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %xadc_get_alarm_mask.exit

if.end.i:                                         ; preds = %entry
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %4 = icmp ult i32 %3, 6
  br i1 %4, label %switch.lookup, label %if.end.i.xadc_get_alarm_mask.exit_crit_edge

if.end.i.xadc_get_alarm_mask.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xadc_get_alarm_mask.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.xadc_write_event_config, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %xadc_get_alarm_mask.exit

xadc_get_alarm_mask.exit:                         ; preds = %switch.lookup, %if.end.i.xadc_get_alarm_mask.exit_crit_edge, %entry.xadc_get_alarm_mask.exit_crit_edge
  %retval.0.i = phi i32 [ 8, %entry.xadc_get_alarm_mask.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.i.xadc_get_alarm_mask.exit_crit_edge ]
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cfg) #6
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %cfg, align 2, !annotation !11
  %mutex = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %xadc_get_alarm_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_mask = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alarm_mask, align 4
  %or = or i32 %10, %retval.0.i
  store i32 %or, ptr %alarm_mask, align 4
  br label %if.end

if.else:                                          ; preds = %xadc_get_alarm_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %retval.0.i, -1
  %alarm_mask2 = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %alarm_mask2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alarm_mask2, align 4
  %and = and i32 %12, %neg
  store i32 %and, ptr %alarm_mask2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ops = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %update_alarm = getelementptr inbounds %struct.xadc_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %update_alarm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %update_alarm, align 4
  %alarm_mask3 = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %alarm_mask3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %alarm_mask3, align 4
  tail call void %16(ptr noundef %7, i32 noundef %18) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end._xadc_read_adc_reg.exit_crit_edge, label %land.rhs.i

if.end._xadc_read_adc_reg.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %_xadc_read_adc_reg.exit

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 14, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i._xadc_read_adc_reg.exit_crit_edge, !prof !12

land.rhs.i._xadc_read_adc_reg.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_xadc_read_adc_reg.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #6
  br label %_xadc_read_adc_reg.exit

_xadc_read_adc_reg.exit:                          ; preds = %do.end.i, %land.rhs.i._xadc_read_adc_reg.exit_crit_edge, %if.end._xadc_read_adc_reg.exit_crit_edge
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call24.i = call i32 %23(ptr noundef %7, i32 noundef 65, ptr noundef nonnull %cfg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool5.not = icmp eq i32 %call24.i, 0
  br i1 %tobool5.not, label %if.end7, label %_xadc_read_adc_reg.exit.err_out_crit_edge

_xadc_read_adc_reg.exit.err_out_crit_edge:        ; preds = %_xadc_read_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end7:                                          ; preds = %_xadc_read_adc_reg.exit
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cfg, align 2
  %or8 = or i16 %25, 3855
  %26 = ptrtoint ptr %alarm_mask3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %alarm_mask3, align 4
  %.tr = trunc i32 %27 to i16
  %28 = shl i16 %.tr, 4
  %29 = and i16 %28, 3840
  %30 = lshr i16 %.tr, 3
  %31 = and i16 %30, 1
  %32 = or i16 %29, %31
  %33 = shl i16 %.tr, 1
  %34 = and i16 %33, 14
  %35 = or i16 %32, %34
  %36 = xor i16 %35, -1
  %conv28 = and i16 %or8, %36
  store i16 %conv28, ptr %cfg, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %conv28)
  %cmp.not = icmp eq i16 %25, %conv28
  br i1 %cmp.not, label %if.end7.err_out_crit_edge, label %if.then32

if.end7.err_out_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.then32:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %37 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i51 = icmp eq i32 %37, 0
  br i1 %tobool.not.i51, label %if.then32._xadc_write_adc_reg.exit_crit_edge, label %land.rhs.i55

if.then32._xadc_write_adc_reg.exit_crit_edge:     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %_xadc_write_adc_reg.exit

land.rhs.i55:                                     ; preds = %if.then32
  %dep_map.i52 = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 14, i32 5
  %call.i.i53 = call i32 @lock_is_held_type(ptr noundef %dep_map.i52, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %cmp.not.i54 = icmp eq i32 %call.i.i53, 0
  br i1 %cmp.not.i54, label %do.end.i56, label %land.rhs.i55._xadc_write_adc_reg.exit_crit_edge, !prof !12

land.rhs.i55._xadc_write_adc_reg.exit_crit_edge:  ; preds = %land.rhs.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %_xadc_write_adc_reg.exit

do.end.i56:                                       ; preds = %land.rhs.i55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #6
  br label %_xadc_write_adc_reg.exit

_xadc_write_adc_reg.exit:                         ; preds = %do.end.i56, %land.rhs.i55._xadc_write_adc_reg.exit_crit_edge, %if.then32._xadc_write_adc_reg.exit_crit_edge
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %write.i = getelementptr inbounds %struct.xadc_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i, align 4
  %call24.i58 = call i32 %41(ptr noundef %7, i32 noundef 65, i16 noundef zeroext %conv28) #6
  br label %err_out

err_out:                                          ; preds = %_xadc_write_adc_reg.exit, %if.end7.err_out_crit_edge, %_xadc_read_adc_reg.exit.err_out_crit_edge
  %ret.0 = phi i32 [ %call24.i, %_xadc_read_adc_reg.exit.err_out_crit_edge ], [ %call24.i58, %_xadc_write_adc_reg.exit ], [ 0, %if.end7.err_out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfg) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xadc_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp.i = icmp eq i32 %1, 9
  br i1 %cmp.i, label %entry.xadc_get_threshold_offset.exit_crit_edge, label %if.else.i

entry.xadc_get_threshold_offset.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %xadc_get_threshold_offset.exit

if.else.i:                                        ; preds = %entry
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.i = icmp slt i32 %3, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nsw i32 %3, 1
  br label %xadc_get_threshold_offset.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add6.i = add nuw i32 %3, 6
  br label %xadc_get_threshold_offset.exit

xadc_get_threshold_offset.exit:                   ; preds = %if.else4.i, %if.then2.i, %entry.xadc_get_threshold_offset.exit_crit_edge
  %offset.0.i = phi i32 [ %add.i, %if.then2.i ], [ %add6.i, %if.else4.i ], [ 3, %entry.xadc_get_threshold_offset.exit_crit_edge ]
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %info, label %xadc_get_threshold_offset.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

xadc_get_threshold_offset.exit.cleanup_crit_edge: ; preds = %xadc_get_threshold_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %xadc_get_threshold_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp8.i = icmp eq i32 %dir, 2
  %add10.i = add i32 %offset.0.i, 4
  %spec.select.i = select i1 %cmp8.i, i32 %add10.i, i32 %offset.0.i
  %arrayidx = getelementptr %struct.xadc, ptr %5, i32 0, i32 3, i32 %spec.select.i
  br label %sw.epilog

sw.bb2:                                           ; preds = %xadc_get_threshold_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %temp_hysteresis = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %storemerge.in.in = phi ptr [ %temp_hysteresis, %sw.bb2 ], [ %arrayidx, %sw.bb ]
  %7 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %storemerge.in = load i16, ptr %storemerge.in.in, align 2
  %storemerge = zext i16 %storemerge.in to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %realbits, align 1
  %conv4 = zext i8 %10 to i32
  %sub = sub nsw i32 16, %conv4
  %shr = lshr i32 %storemerge, %sub
  store i32 %shr, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %xadc_get_threshold_offset.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ -22, %xadc_get_threshold_offset.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xadc_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp.i = icmp eq i32 %1, 9
  br i1 %cmp.i, label %entry.xadc_get_threshold_offset.exit_crit_edge, label %if.else.i

entry.xadc_get_threshold_offset.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %xadc_get_threshold_offset.exit

if.else.i:                                        ; preds = %entry
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.i = icmp slt i32 %3, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nsw i32 %3, 1
  br label %xadc_get_threshold_offset.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add6.i = add nuw i32 %3, 6
  br label %xadc_get_threshold_offset.exit

xadc_get_threshold_offset.exit:                   ; preds = %if.else4.i, %if.then2.i, %entry.xadc_get_threshold_offset.exit_crit_edge
  %offset.0.i = phi i32 [ %add.i, %if.then2.i ], [ %add6.i, %if.else4.i ], [ 3, %entry.xadc_get_threshold_offset.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp8.i = icmp eq i32 %dir, 2
  %add10.i = add i32 %offset.0.i, 4
  %spec.select.i = select i1 %cmp8.i, i32 %add10.i, i32 %offset.0.i
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %realbits, align 1
  %conv = zext i8 %7 to i32
  %sub = sub nsw i32 16, %conv
  %shl = shl i32 %val, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shl)
  %8 = icmp ugt i32 %shl, 65535
  br i1 %8, label %xadc_get_threshold_offset.exit.cleanup_crit_edge, label %if.end

xadc_get_threshold_offset.exit.cleanup_crit_edge: ; preds = %xadc_get_threshold_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %xadc_get_threshold_offset.exit
  %mutex = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %9 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %info, label %if.end.cleanup.sink.split_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = trunc i32 %shl to i16
  %arrayidx = getelementptr %struct.xadc, ptr %5, i32 0, i32 3, i32 %spec.select.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv5, ptr %arrayidx, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv7 = trunc i32 %shl to i16
  %temp_hysteresis = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %temp_hysteresis to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %temp_hysteresis, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp10 = icmp eq i32 %13, 9
  br i1 %cmp10, label %if.then12, label %sw.epilog.if.end42_crit_edge

sw.epilog.if.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then12:                                        ; preds = %sw.epilog
  %or = or i32 %shl, 3
  %arrayidx14 = getelementptr %struct.xadc, ptr %5, i32 0, i32 3, i32 %spec.select.i
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx14, align 2
  %temp_hysteresis16 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %temp_hysteresis16 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %temp_hysteresis16, align 4
  %18 = call i16 @llvm.usub.sat.i16(i16 %15, i16 %17)
  %add31 = add i32 %spec.select.i, 4
  %arrayidx32 = getelementptr %struct.xadc, ptr %5, i32 0, i32 3, i32 %add31
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx32, align 2
  %add35 = add i32 %spec.select.i, 84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then12._xadc_write_adc_reg.exit_crit_edge, label %land.rhs.i

if.then12._xadc_write_adc_reg.exit_crit_edge:     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %_xadc_write_adc_reg.exit

land.rhs.i:                                       ; preds = %if.then12
  %dep_map.i = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 14, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i._xadc_write_adc_reg.exit_crit_edge, !prof !12

land.rhs.i._xadc_write_adc_reg.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_xadc_write_adc_reg.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #6
  br label %_xadc_write_adc_reg.exit

_xadc_write_adc_reg.exit:                         ; preds = %do.end.i, %land.rhs.i._xadc_write_adc_reg.exit_crit_edge, %if.then12._xadc_write_adc_reg.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.xadc_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %call24.i = tail call i32 %24(ptr noundef %5, i32 noundef %add35, i16 noundef zeroext %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool.not = icmp eq i32 %call24.i, 0
  br i1 %tobool.not, label %_xadc_write_adc_reg.exit.if.end42_crit_edge, label %_xadc_write_adc_reg.exit.cleanup.sink.split_crit_edge

_xadc_write_adc_reg.exit.cleanup.sink.split_crit_edge: ; preds = %_xadc_write_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

_xadc_write_adc_reg.exit.if.end42_crit_edge:      ; preds = %_xadc_write_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end42:                                         ; preds = %_xadc_write_adc_reg.exit.if.end42_crit_edge, %sw.epilog.if.end42_crit_edge
  %val.addr.0 = phi i32 [ %or, %_xadc_write_adc_reg.exit.if.end42_crit_edge ], [ %shl, %sw.epilog.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cmp43 = icmp eq i32 %info, 1
  br i1 %cmp43, label %if.then45, label %if.end42.cleanup.sink.split_crit_edge

if.end42.cleanup.sink.split_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then45:                                        ; preds = %if.end42
  %add46 = add i32 %spec.select.i, 80
  %conv47 = trunc i32 %val.addr.0 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i83 = icmp eq i32 %25, 0
  br i1 %tobool.not.i83, label %if.then45._xadc_write_adc_reg.exit92_crit_edge, label %land.rhs.i87

if.then45._xadc_write_adc_reg.exit92_crit_edge:   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %_xadc_write_adc_reg.exit92

land.rhs.i87:                                     ; preds = %if.then45
  %dep_map.i84 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 14, i32 5
  %call.i.i85 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i84, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %cmp.not.i86 = icmp eq i32 %call.i.i85, 0
  br i1 %cmp.not.i86, label %do.end.i88, label %land.rhs.i87._xadc_write_adc_reg.exit92_crit_edge, !prof !12

land.rhs.i87._xadc_write_adc_reg.exit92_crit_edge: ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #8
  br label %_xadc_write_adc_reg.exit92

do.end.i88:                                       ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #6
  br label %_xadc_write_adc_reg.exit92

_xadc_write_adc_reg.exit92:                       ; preds = %do.end.i88, %land.rhs.i87._xadc_write_adc_reg.exit92_crit_edge, %if.then45._xadc_write_adc_reg.exit92_crit_edge
  %ops.i89 = getelementptr inbounds %struct.xadc, ptr %5, i32 0, i32 2
  %26 = ptrtoint ptr %ops.i89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i89, align 4
  %write.i90 = getelementptr inbounds %struct.xadc_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write.i90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i90, align 4
  %call24.i91 = tail call i32 %29(ptr noundef %5, i32 noundef %add46, i16 noundef zeroext %conv47) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %_xadc_write_adc_reg.exit92, %if.end42.cleanup.sink.split_crit_edge, %_xadc_write_adc_reg.exit.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end.cleanup.sink.split_crit_edge ], [ %call24.i, %_xadc_write_adc_reg.exit.cleanup.sink.split_crit_edge ], [ %call24.i91, %_xadc_write_adc_reg.exit92 ], [ 0, %if.end42.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %xadc_get_threshold_offset.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %xadc_get_threshold_offset.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/xilinx-xadc.h", i32 93, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
