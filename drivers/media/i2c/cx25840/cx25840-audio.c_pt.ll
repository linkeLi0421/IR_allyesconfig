; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/cx25840/cx25840-audio.c_pt.bc'
source_filename = "../drivers/media/i2c/cx25840/cx25840-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.89, %union.anon.90, i32, ptr, i32, %struct.anon.91, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.89 = type { i64 }
%union.anon.90 = type { ptr }
%struct.anon.91 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@cx25840_audio_ctrl_ops = dso_local constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @cx25840_audio_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 9963781, i64 9963782, i64 9963783, i64 9963784]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@___asan_gen_.6 = private unnamed_addr constant [23 x i8] c"cx25840_audio_ctrl_ops\00", align 1
@___asan_gen_.7 = private constant [45 x i8] c"../drivers/media/i2c/cx25840/cx25840-audio.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 556, i32 28 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @cx25840_audio_ctrl_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_audio_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx25840_audio_set_path(ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id.i = getelementptr i8, ptr %1, i32 436
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 8
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call3 = tail call i32 @cx25840_and_or(ptr noundef %client, i16 noundef zeroext 2064, i32 noundef -2, i8 noundef zeroext 1) #2
  %call4 = tail call i32 @cx25840_and_or(ptr noundef %client, i16 noundef zeroext 2051, i32 noundef -17, i8 noundef zeroext 0) #2
  %call5 = tail call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 2259, i8 noundef zeroext 31) #2
  %aud_input = getelementptr i8, ptr %1, i32 420
  %6 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aud_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %. = select i1 %cmp, i32 16846866, i32 520501360
  %call7 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2256, i32 noundef %.) #2
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %audclk_freq = getelementptr i8, ptr %1, i32 424
  %8 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audclk_freq, align 4
  %call10 = tail call fastcc i32 @set_audclk_freq(ptr noundef %client, i32 noundef %9)
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %if.end9.if.end24_crit_edge, label %if.then12

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end24

if.then12:                                        ; preds = %if.end9
  %aud_input13 = getelementptr i8, ptr %1, i32 420
  %14 = ptrtoint ptr %aud_input13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %aud_input13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14.not = icmp eq i32 %15, 0
  br i1 %cmp14.not, label %if.then12.if.end17_crit_edge, label %if.then15

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end17

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  %call16 = tail call i32 @cx25840_and_or(ptr noundef %client, i16 noundef zeroext 2051, i32 noundef -17, i8 noundef zeroext 16) #2
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then12.if.end17_crit_edge
  %call18 = tail call i32 @cx25840_and_or(ptr noundef %client, i16 noundef zeroext 2064, i32 noundef -2, i8 noundef zeroext 0) #2
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %switch = icmp ult i32 %17, 4
  br i1 %switch, label %if.then21, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #4
  %call22 = tail call i32 @cx25840_and_or(ptr noundef %client, i16 noundef zeroext 2051, i32 noundef -17, i8 noundef zeroext 16) #2
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end17.if.end24_crit_edge, %if.end9.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25840_and_or(ptr noundef, i16 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25840_write(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25840_write4(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_audclk_freq(ptr noundef %client, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %freq, label %entry.cleanup_crit_edge [
    i32 32000, label %entry.if.end_crit_edge
    i32 44100, label %entry.if.end_crit_edge36
    i32 48000, label %entry.if.end_crit_edge37
  ]

entry.if.end_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

entry.if.end_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge36, %entry.if.end_crit_edge37
  %id.i = getelementptr i8, ptr %1, i32 436
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i = icmp eq i32 %4, 3
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %aud_input.i = getelementptr i8, ptr %1, i32 420
  %5 = ptrtoint ptr %aud_input.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %aud_input.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  %7 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %freq, label %if.then.i.cx231xx_set_audclk_freq.exit_crit_edge [
    i32 32000, label %if.then.i.if.end.sink.split.i_crit_edge
    i32 44100, label %sw.bb5.i
    i32 48000, label %sw.bb9.i
  ]

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i

if.then.i.cx231xx_set_audclk_freq.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cx231xx_set_audclk_freq.exit

sw.bb5.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i

sw.bb9.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.sink.split.i

if.else.i:                                        ; preds = %if.then6
  %8 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %freq, label %if.else.i.cx231xx_set_audclk_freq.exit_crit_edge [
    i32 32000, label %sw.bb13.i
    i32 44100, label %sw.bb18.i
    i32 48000, label %sw.bb23.i
  ]

if.else.i.cx231xx_set_audclk_freq.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cx231xx_set_audclk_freq.exit

sw.bb13.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  %call14.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2296, i32 noundef 134283264) #2
  br label %if.end.sink.split.i

sw.bb18.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  %call19.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2296, i32 noundef 134308045) #2
  br label %if.end.sink.split.i

sw.bb23.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  %call24.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2296, i32 noundef 134317692) #2
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.bb23.i, %sw.bb18.i, %sw.bb13.i, %sw.bb9.i, %sw.bb5.i, %if.then.i.if.end.sink.split.i_crit_edge
  %.sink2.i = phi i32 [ 134348800, %sw.bb13.i ], [ 134312837, %sw.bb18.i ], [ 134303658, %sw.bb23.i ], [ 134311257, %sw.bb5.i ], [ 134303658, %sw.bb9.i ], [ 134346623, %if.then.i.if.end.sink.split.i_crit_edge ]
  %call15.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2304, i32 noundef %.sink2.i) #2
  %call16.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2308, i32 noundef %.sink2.i) #2
  %call17.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2316, i32 noundef %.sink2.i) #2
  br label %cx231xx_set_audclk_freq.exit

cx231xx_set_audclk_freq.exit:                     ; preds = %if.end.sink.split.i, %if.else.i.cx231xx_set_audclk_freq.exit_crit_edge, %if.then.i.cx231xx_set_audclk_freq.exit_crit_edge
  %audclk_freq.i = getelementptr i8, ptr %1, i32 424
  %9 = ptrtoint ptr %audclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %freq, ptr %audclk_freq.i, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %switch.i = icmp ult i32 %4, 3
  br i1 %switch.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %aud_input.i32 = getelementptr i8, ptr %1, i32 420
  %10 = ptrtoint ptr %aud_input.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aud_input.i32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i33 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %freq)
  %cond.i = icmp eq i32 %freq, 48000
  %or.cond.i = and i1 %cond.i, %cmp.not.i33
  br i1 %or.cond.i, label %sw.bb3.i, label %if.then10.cx23885_set_audclk_freq.exit_crit_edge

if.then10.cx23885_set_audclk_freq.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #4
  br label %cx23885_set_audclk_freq.exit

sw.bb3.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #4
  %call4.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2296, i32 noundef 134317692) #2
  %call5.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2304, i32 noundef 134303658) #2
  %call6.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2308, i32 noundef 134303658) #2
  %call7.i = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2316, i32 noundef 134303658) #2
  br label %cx23885_set_audclk_freq.exit

cx23885_set_audclk_freq.exit:                     ; preds = %sw.bb3.i, %if.then10.cx23885_set_audclk_freq.exit_crit_edge
  %audclk_freq.i34 = getelementptr i8, ptr %1, i32 424
  %12 = ptrtoint ptr %audclk_freq.i34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %freq, ptr %audclk_freq.i34, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %13 = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @cx25840_set_audclk_freq(ptr noundef %client, i32 noundef %freq) #2
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @cx25840_set_audclk_freq(ptr noundef %client, i32 noundef %freq)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %cx23885_set_audclk_freq.exit, %cx231xx_set_audclk_freq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cx231xx_set_audclk_freq.exit ], [ 0, %cx23885_set_audclk_freq.exit ], [ 0, %if.then14 ], [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_s_clock_freq(ptr nocapture noundef readonly %sd, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %id.i = getelementptr i8, ptr %sd, i32 436
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 8
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call4 = tail call i32 @cx25840_and_or(ptr noundef %1, i16 noundef zeroext 2064, i32 noundef -2, i8 noundef zeroext 1) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %aud_input = getelementptr i8, ptr %sd, i32 420
  %6 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aud_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %call6 = tail call i32 @cx25840_and_or(ptr noundef %1, i16 noundef zeroext 2051, i32 noundef -17, i8 noundef zeroext 0) #2
  %call7 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext 2259, i8 noundef zeroext 31) #2
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @set_audclk_freq(ptr noundef %1, i32 noundef %freq)
  %8 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aud_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11.not = icmp eq i32 %9, 0
  br i1 %cmp11.not, label %if.end8.if.end14_crit_edge, label %if.then12

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  %call13 = tail call i32 @cx25840_and_or(ptr noundef %1, i16 noundef zeroext 2051, i32 noundef -17, i8 noundef zeroext 16) #2
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  %call17 = tail call i32 @cx25840_and_or(ptr noundef %1, i16 noundef zeroext 2064, i32 noundef -2, i8 noundef zeroext 0) #2
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25840_audio_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -44
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963781, label %sw.bb
    i32 9963783, label %sw.bb4
    i32 9963784, label %sw.bb7
    i32 9963782, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mute = getelementptr i8, ptr %1, i32 188
  %7 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mute, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call i32 @cx25840_write(ptr noundef %3, i16 noundef zeroext 2260, i8 noundef zeroext -28) #2
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  %11 = getelementptr i8, ptr %1, i32 184
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %15)
  %cmp.i = icmp slt i32 %15, 12288
  %16 = lshr i32 %15, 8
  %17 = trunc i32 %16 to i8
  %18 = add i8 %17, -46
  %19 = and i8 %18, -2
  %phi.cast.i = sub i8 -28, %19
  %vol.0.i = select i1 %cmp.i, i8 -28, i8 %phi.cast.i
  %call.i28 = tail call i32 @cx25840_write(ptr noundef %3, i16 noundef zeroext 2260, i8 noundef zeroext %vol.0.i) #2
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val5, align 4
  %mul = mul i32 %21, 48
  %div.neg = sdiv i32 %mul, -65535
  %22 = trunc i32 %div.neg to i8
  %conv = add i8 %22, 48
  %call6 = tail call i32 @cx25840_and_or(ptr noundef %3, i16 noundef zeroext 2265, i32 noundef -64, i8 noundef zeroext %conv) #2
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val8, align 4
  %mul9 = mul i32 %24, 48
  %div10.neg = sdiv i32 %mul9, -65535
  %25 = trunc i32 %div10.neg to i8
  %conv12 = add i8 %25, 48
  %call13 = tail call i32 @cx25840_and_or(ptr noundef %3, i16 noundef zeroext 2267, i32 noundef -64, i8 noundef zeroext %conv12) #2
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val15, align 4
  %shr.i = ashr i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33023, i32 %27)
  %cmp.i29 = icmp sgt i32 %27, 33023
  br i1 %cmp.i29, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #4
  %call.i30 = tail call i32 @cx25840_and_or(ptr noundef %3, i16 noundef zeroext 2261, i32 noundef 127, i8 noundef zeroext -128) #2
  %28 = trunc i32 %shr.i to i8
  %conv.i = and i8 %28, 127
  br label %set_balance.exit

if.else.i:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #4
  %call2.i = tail call i32 @cx25840_and_or(ptr noundef %3, i16 noundef zeroext 2261, i32 noundef 127, i8 noundef zeroext 0) #2
  %29 = trunc i32 %shr.i to i8
  %conv3.i = sub i8 -128, %29
  br label %set_balance.exit

set_balance.exit:                                 ; preds = %if.else.i, %if.then.i
  %conv3.sink.i = phi i8 [ %conv3.i, %if.else.i ], [ %conv.i, %if.then.i ]
  %call4.i = tail call i32 @cx25840_and_or(ptr noundef %3, i16 noundef zeroext 2261, i32 noundef -128, i8 noundef zeroext %conv3.sink.i) #2
  br label %cleanup

cleanup:                                          ; preds = %set_balance.exit, %sw.bb7, %sw.bb4, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %set_balance.exit ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx25840_set_audclk_freq(ptr noundef %client, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %aud_input = getelementptr i8, ptr %1, i32 420
  %2 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aud_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %freq, label %if.then.if.end64_crit_edge [
    i32 32000, label %sw.bb
    i32 44100, label %sw.bb10
    i32 48000, label %sw.bb20
  ]

if.then.if.end64_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64

sw.bb:                                            ; preds = %if.then
  %call2 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 264, i32 noundef 268829711) #2
  %call3 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 272, i32 noundef 29047278) #2
  %call4 = tail call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 295, i8 noundef zeroext 80) #2
  %id.i = getelementptr i8, ptr %1, i32 436
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 8
  %7 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %sw.bb.if.end64_crit_edge, label %sw.bb.if.end64.sink.split_crit_edge

sw.bb.if.end64.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64.sink.split

sw.bb.if.end64_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64

sw.bb10:                                          ; preds = %if.then
  %call11 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 264, i32 noundef 269026319) #2
  %call12 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 272, i32 noundef 15494102) #2
  %call13 = tail call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 295, i8 noundef zeroext 80) #2
  %id.i1 = getelementptr i8, ptr %1, i32 436
  %9 = ptrtoint ptr %id.i1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i1, align 8
  %11 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %sw.bb10.if.end64_crit_edge, label %sw.bb10.if.end64.sink.split_crit_edge

sw.bb10.if.end64.sink.split_crit_edge:            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64.sink.split

sw.bb10.if.end64_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64

sw.bb20:                                          ; preds = %if.then
  %call21 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 264, i32 noundef 269091855) #2
  %call22 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 272, i32 noundef 10016485) #2
  %call23 = tail call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 295, i8 noundef zeroext 80) #2
  %id.i2 = getelementptr i8, ptr %1, i32 436
  %13 = ptrtoint ptr %id.i2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i2, align 8
  %15 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %sw.bb20.if.end64_crit_edge, label %sw.bb20.if.end64.sink.split_crit_edge

sw.bb20.if.end64.sink.split_crit_edge:            ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64.sink.split

sw.bb20.if.end64_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64

if.else:                                          ; preds = %entry
  %17 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %freq, label %if.else.if.end64_crit_edge [
    i32 32000, label %sw.bb30
    i32 44100, label %sw.bb41
    i32 48000, label %sw.bb52
  ]

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64

sw.bb30:                                          ; preds = %if.else
  %call31 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 264, i32 noundef 503841807) #2
  %call32 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 272, i32 noundef 19531881) #2
  %call33 = tail call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 295, i8 noundef zeroext 84) #2
  %id.i3 = getelementptr i8, ptr %1, i32 436
  %18 = ptrtoint ptr %id.i3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i3, align 8
  %20 = and i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %sw.bb30.if.end64_crit_edge, label %sw.bb30.if.end64.sink.split.sink.split_crit_edge

sw.bb30.if.end64.sink.split.sink.split_crit_edge: ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64.sink.split.sink.split

sw.bb30.if.end64_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64

sw.bb41:                                          ; preds = %if.else
  %call42 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 264, i32 noundef 403244047) #2
  %call43 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 272, i32 noundef 15494102) #2
  %call44 = tail call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 295, i8 noundef zeroext 80) #2
  %id.i4 = getelementptr i8, ptr %1, i32 436
  %22 = ptrtoint ptr %id.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i4, align 8
  %24 = and i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %sw.bb41.if.end64_crit_edge, label %sw.bb41.if.end64.sink.split.sink.split_crit_edge

sw.bb41.if.end64.sink.split.sink.split_crit_edge: ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64.sink.split.sink.split

sw.bb41.if.end64_crit_edge:                       ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64

sw.bb52:                                          ; preds = %if.else
  %call53 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 264, i32 noundef 403309583) #2
  %call54 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 272, i32 noundef 10016485) #2
  %call55 = tail call i32 @cx25840_write(ptr noundef %client, i16 noundef zeroext 295, i8 noundef zeroext 80) #2
  %id.i5 = getelementptr i8, ptr %1, i32 436
  %26 = ptrtoint ptr %id.i5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i5, align 8
  %28 = and i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %sw.bb52.if.end64_crit_edge, label %sw.bb52.if.end64.sink.split.sink.split_crit_edge

sw.bb52.if.end64.sink.split.sink.split_crit_edge: ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64.sink.split.sink.split

sw.bb52.if.end64_crit_edge:                       ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64

if.end64.sink.split.sink.split:                   ; preds = %sw.bb52.if.end64.sink.split.sink.split_crit_edge, %sw.bb41.if.end64.sink.split.sink.split_crit_edge, %sw.bb30.if.end64.sink.split.sink.split_crit_edge
  %.sink = phi i32 [ 134283264, %sw.bb30.if.end64.sink.split.sink.split_crit_edge ], [ 134308045, %sw.bb41.if.end64.sink.split.sink.split_crit_edge ], [ 134316032, %sw.bb52.if.end64.sink.split.sink.split_crit_edge ]
  %.sink7.ph = phi i32 [ 134348800, %sw.bb30.if.end64.sink.split.sink.split_crit_edge ], [ 134312837, %sw.bb41.if.end64.sink.split.sink.split_crit_edge ], [ 134305109, %sw.bb52.if.end64.sink.split.sink.split_crit_edge ]
  %call59 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2296, i32 noundef %.sink) #2
  br label %if.end64.sink.split

if.end64.sink.split:                              ; preds = %if.end64.sink.split.sink.split, %sw.bb20.if.end64.sink.split_crit_edge, %sw.bb10.if.end64.sink.split_crit_edge, %sw.bb.if.end64.sink.split_crit_edge
  %.sink7 = phi i32 [ 134346623, %sw.bb.if.end64.sink.split_crit_edge ], [ 134311257, %sw.bb10.if.end64.sink.split_crit_edge ], [ 134303658, %sw.bb20.if.end64.sink.split_crit_edge ], [ %.sink7.ph, %if.end64.sink.split.sink.split ]
  %call38 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2304, i32 noundef %.sink7) #2
  %call39 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2308, i32 noundef %.sink7) #2
  %call40 = tail call i32 @cx25840_write4(ptr noundef %client, i16 noundef zeroext 2316, i32 noundef %.sink7) #2
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %sw.bb52.if.end64_crit_edge, %sw.bb41.if.end64_crit_edge, %sw.bb30.if.end64_crit_edge, %if.else.if.end64_crit_edge, %sw.bb20.if.end64_crit_edge, %sw.bb10.if.end64_crit_edge, %sw.bb.if.end64_crit_edge, %if.then.if.end64_crit_edge
  %audclk_freq = getelementptr i8, ptr %1, i32 424
  %30 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %freq, ptr %audclk_freq, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @cx25840_audio_ctrl_ops, !1, !"cx25840_audio_ctrl_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/cx25840/cx25840-audio.c", i32 556, i32 28}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
