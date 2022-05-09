; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-av-audio.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-av-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.140 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, ptr }
%struct.anon.142 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, ptr }
%struct.anon.144 = type { ptr, ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.107 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.104], %struct.media_entity_enum, i32 }
%struct.anon.104 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.116 }
%union.anon.116 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.118, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.118 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.110, %union.anon.111, i32, ptr, i32, %struct.anon.112, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { ptr }
%struct.anon.112 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@cx18_av_audio_ctrl_ops = dso_local constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @cx18_av_audio_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 32, i64 9963781, i64 9963782, i64 9963783, i64 9963784, i64 9963785]
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"cx18_av_audio_ctrl_ops\00", align 1
@___asan_gen_.5 = private constant [42 x i8] c"../drivers/media/pci/cx18/cx18-av-audio.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 455, i32 28 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @cx18_av_audio_ctrl_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_audio_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_av_audio_set_path(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @cx18_av_read(ptr noundef %cx, i16 noundef zeroext 2051) #2
  %0 = and i8 %call, -17
  %call2 = tail call i32 @cx18_av_write_expect(ptr noundef %cx, i16 noundef zeroext 2051, i8 noundef zeroext %0, i8 noundef zeroext %0, i8 noundef zeroext 31) #2
  %call3 = tail call zeroext i8 @cx18_av_read(ptr noundef %cx, i16 noundef zeroext 2064) #2
  %1 = or i8 %call3, 1
  %call6 = tail call i32 @cx18_av_write_expect(ptr noundef %cx, i16 noundef zeroext 2064, i8 noundef zeroext %1, i8 noundef zeroext %1, i8 noundef zeroext 15) #2
  %call7 = tail call i32 @cx18_av_write(ptr noundef %cx, i16 noundef zeroext 2259, i8 noundef zeroext 31) #2
  %aud_input = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 6
  %2 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aud_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  %. = select i1 %cmp, i32 16846866, i32 520501360
  %call10 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2256, i32 noundef %.) #2
  %audclk_freq = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 7
  %4 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audclk_freq, align 8
  %call11 = tail call fastcc i32 @set_audclk_freq(ptr noundef %cx, i32 noundef %5)
  %call12 = tail call zeroext i8 @cx18_av_read(ptr noundef %cx, i16 noundef zeroext 2064) #2
  %6 = and i8 %call12, -2
  %call16 = tail call i32 @cx18_av_write_expect(ptr noundef %cx, i16 noundef zeroext 2064, i8 noundef zeroext %6, i8 noundef zeroext %6, i8 noundef zeroext 15) #2
  %7 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aud_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp18 = icmp ugt i32 %8, 1
  br i1 %cmp18, label %if.then20, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end26

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call21 = tail call zeroext i8 @cx18_av_read(ptr noundef %cx, i16 noundef zeroext 2051) #2
  %9 = or i8 %call21, 16
  %call25 = tail call i32 @cx18_av_write_expect(ptr noundef %cx, i16 noundef zeroext 2051, i8 noundef zeroext %9, i8 noundef zeroext %9, i8 noundef zeroext 31) #2
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cx18_av_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_write_expect(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_write(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_write4(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_audclk_freq(ptr noundef %cx, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %freq, label %entry.cleanup_crit_edge [
    i32 32000, label %entry.if.end_crit_edge
    i32 44100, label %entry.if.end_crit_edge137
    i32 48000, label %entry.if.end_crit_edge138
  ]

entry.if.end_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

entry.if.end_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge137, %entry.if.end_crit_edge138
  %aud_input = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 6
  %1 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %aud_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp4 = icmp ugt i32 %2, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %3 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %freq, label %if.then5.if.end68_crit_edge [
    i32 32000, label %sw.bb
    i32 44100, label %sw.bb14
    i32 48000, label %sw.bb24
  ]

if.then5.if.end68_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end68

sw.bb:                                            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 264, i32 noundef 537723919) #2
  %call6 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 268, i32 noundef 2876158) #2
  %call7 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 272, i32 noundef 24540172) #2
  br label %if.end68.sink.split

sw.bb14:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  %call15 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 264, i32 noundef 403571727) #2
  %call16 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 268, i32 noundef 2876158) #2
  %call17 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 272, i32 noundef 6463986) #2
  br label %if.end68.sink.split

sw.bb24:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  %call25 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 264, i32 noundef 370017295) #2
  %call26 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 268, i32 noundef 2876158) #2
  %call27 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 272, i32 noundef 5384109) #2
  br label %if.end68.sink.split

if.else:                                          ; preds = %if.end
  %4 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %freq, label %if.else.if.end68_crit_edge [
    i32 32000, label %sw.bb34
    i32 44100, label %sw.bb45
    i32 48000, label %sw.bb56
  ]

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end68

sw.bb34:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %call35 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 264, i32 noundef 806159375) #2
  %call36 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 268, i32 noundef 2876158) #2
  %call37 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 272, i32 noundef 24540172) #2
  %call38 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2296, i32 noundef 134283264) #2
  br label %if.end68.sink.split

sw.bb45:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %call46 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 264, i32 noundef 604898319) #2
  %call47 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 268, i32 noundef 2876158) #2
  %call48 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 272, i32 noundef 6463986) #2
  %call49 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2296, i32 noundef 134308045) #2
  br label %if.end68.sink.split

sw.bb56:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %call57 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 264, i32 noundef 537723919) #2
  %call58 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 268, i32 noundef 2876158) #2
  %call59 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 272, i32 noundef 24540172) #2
  %call60 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2296, i32 noundef 134316032) #2
  br label %if.end68.sink.split

if.end68.sink.split:                              ; preds = %sw.bb56, %sw.bb45, %sw.bb34, %sw.bb24, %sw.bb14, %sw.bb
  %.sink136 = phi i32 [ 134348800, %sw.bb34 ], [ 134312837, %sw.bb45 ], [ 134305109, %sw.bb56 ], [ 134346623, %sw.bb ], [ 134311257, %sw.bb14 ], [ 134303658, %sw.bb24 ]
  %.sink133 = phi i8 [ 112, %sw.bb34 ], [ 100, %sw.bb45 ], [ 96, %sw.bb56 ], [ 96, %sw.bb ], [ 88, %sw.bb14 ], [ 86, %sw.bb24 ]
  %.sink132 = phi i32 [ 287318015, %sw.bb34 ], [ 287334911, %sw.bb45 ], [ 287326207, %sw.bb56 ], [ 287322111, %sw.bb ], [ 287347455, %sw.bb14 ], [ 287334399, %sw.bb24 ]
  %.sink = phi i32 [ -1609748744, %sw.bb34 ], [ -1608692744, %sw.bb45 ], [ -1609460744, %sw.bb56 ], [ -1609748744, %sw.bb ], [ -1608692744, %sw.bb14 ], [ -1609460744, %sw.bb24 ]
  %call39 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2304, i32 noundef %.sink136) #2
  %call40 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2308, i32 noundef %.sink136) #2
  %call41 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2316, i32 noundef %.sink136) #2
  %call42 = tail call i32 @cx18_av_write(ptr noundef %cx, i16 noundef zeroext 295, i8 noundef zeroext %.sink133) #2
  %call43 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 300, i32 noundef %.sink132) #2
  %call44 = tail call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 296, i32 noundef %.sink) #2
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.else.if.end68_crit_edge, %if.then5.if.end68_crit_edge
  %audclk_freq = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 7
  %5 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %freq, ptr %audclk_freq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end68 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_s_clock_freq(ptr nocapture noundef readonly %sd, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %aud_input = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 6
  %2 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aud_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call zeroext i8 @cx18_av_read(ptr noundef %1, i16 noundef zeroext 2051) #2
  %4 = and i8 %call2, -17
  %call4 = tail call i32 @cx18_av_write_expect(ptr noundef %1, i16 noundef zeroext 2051, i8 noundef zeroext %4, i8 noundef zeroext %4, i8 noundef zeroext 31) #2
  %call5 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 2259, i8 noundef zeroext 31) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call6 = tail call zeroext i8 @cx18_av_read(ptr noundef %1, i16 noundef zeroext 2064) #2
  %5 = or i8 %call6, 1
  %call9 = tail call i32 @cx18_av_write_expect(ptr noundef %1, i16 noundef zeroext 2064, i8 noundef zeroext %5, i8 noundef zeroext %5, i8 noundef zeroext 15) #2
  %call10 = tail call fastcc i32 @set_audclk_freq(ptr noundef %1, i32 noundef %freq)
  %call11 = tail call zeroext i8 @cx18_av_read(ptr noundef %1, i16 noundef zeroext 2064) #2
  %6 = and i8 %call11, -2
  %call15 = tail call i32 @cx18_av_write_expect(ptr noundef %1, i16 noundef zeroext 2064, i8 noundef zeroext %6, i8 noundef zeroext %6, i8 noundef zeroext 15) #2
  %7 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aud_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp17 = icmp ugt i32 %8, 1
  br i1 %cmp17, label %if.then19, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %call20 = tail call zeroext i8 @cx18_av_read(ptr noundef %1, i16 noundef zeroext 2051) #2
  %9 = or i8 %call20, 16
  %call24 = tail call i32 @cx18_av_write_expect(ptr noundef %1, i16 noundef zeroext 2051, i8 noundef zeroext %9, i8 noundef zeroext %9, i8 noundef zeroext 31) #2
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end.if.end25_crit_edge
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_audio_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
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
    i32 9963783, label %sw.bb2
    i32 9963784, label %sw.bb4
    i32 9963782, label %sw.bb6
    i32 9963785, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %8)
  %cmp.i = icmp slt i32 %8, 12288
  %9 = lshr i32 %8, 8
  %10 = trunc i32 %9 to i8
  %11 = add i8 %10, -46
  %12 = and i8 %11, -2
  %phi.cast.i = sub i8 -28, %12
  %vol.0.i = select i1 %cmp.i, i8 -28, i8 %phi.cast.i
  %call.i = tail call i32 @cx18_av_write(ptr noundef %3, i16 noundef zeroext 2260, i8 noundef zeroext %vol.0.i) #2
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val3, align 4
  %mul.i = mul i32 %14, 48
  %div.neg.i = sdiv i32 %mul.i, -65535
  %15 = trunc i32 %div.neg.i to i8
  %conv.i = add i8 %15, 48
  %call.i21 = tail call i32 @cx18_av_and_or(ptr noundef %3, i16 noundef zeroext 2265, i32 noundef -64, i8 noundef zeroext %conv.i) #2
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val5, align 4
  %mul.i22 = mul i32 %17, 48
  %div.neg.i23 = sdiv i32 %mul.i22, -65535
  %18 = trunc i32 %div.neg.i23 to i8
  %conv.i24 = add i8 %18, 48
  %call.i25 = tail call i32 @cx18_av_and_or(ptr noundef %3, i16 noundef zeroext 2267, i32 noundef -64, i8 noundef zeroext %conv.i24) #2
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val7, align 4
  %shr.i = ashr i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33023, i32 %20)
  %cmp.i26 = icmp sgt i32 %20, 33023
  br i1 %cmp.i26, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  %call.i27 = tail call i32 @cx18_av_and_or(ptr noundef %3, i16 noundef zeroext 2261, i32 noundef 127, i8 noundef zeroext -128) #2
  %21 = trunc i32 %shr.i to i8
  %conv.i28 = and i8 %21, 127
  br label %set_balance.exit

if.else.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  %call2.i = tail call i32 @cx18_av_and_or(ptr noundef %3, i16 noundef zeroext 2261, i32 noundef 127, i8 noundef zeroext 0) #2
  %22 = trunc i32 %shr.i to i8
  %conv3.i = sub i8 -128, %22
  br label %set_balance.exit

set_balance.exit:                                 ; preds = %if.else.i, %if.then.i
  %conv3.sink.i = phi i8 [ %conv3.i, %if.else.i ], [ %conv.i28, %if.then.i ]
  %call4.i = tail call i32 @cx18_av_and_or(ptr noundef %3, i16 noundef zeroext 2261, i32 noundef -128, i8 noundef zeroext %conv3.sink.i) #2
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val9, align 4
  %aud_input.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 18, i32 6
  %25 = ptrtoint ptr %aud_input.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %aud_input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i29 = icmp ugt i32 %26, 1
  br i1 %cmp.i29, label %if.then.i31, label %if.else8.i

if.then.i31:                                      ; preds = %sw.bb8
  %call.i30 = tail call zeroext i8 @cx18_av_read(ptr noundef %3, i16 noundef zeroext 2051) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.else.i33, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #4
  %27 = and i8 %call.i30, -17
  %call3.i = tail call i32 @cx18_av_write_expect(ptr noundef %3, i16 noundef zeroext 2051, i8 noundef zeroext %27, i8 noundef zeroext %27, i8 noundef zeroext 31) #2
  %call4.i32 = tail call i32 @cx18_av_write(ptr noundef %3, i16 noundef zeroext 2259, i8 noundef zeroext 31) #2
  br label %cleanup

if.else.i33:                                      ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #4
  %28 = or i8 %call.i30, 16
  %call7.i = tail call i32 @cx18_av_write_expect(ptr noundef %3, i16 noundef zeroext 2051, i8 noundef zeroext %28, i8 noundef zeroext %28, i8 noundef zeroext 31) #2
  br label %cleanup

if.else8.i:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool9.not.i = icmp eq i32 %24, 0
  %conv10.i = select i1 %tobool9.not.i, i8 0, i8 2
  %call11.i = tail call i32 @cx18_av_and_or(ptr noundef %3, i16 noundef zeroext 2259, i32 noundef -3, i8 noundef zeroext %conv10.i) #2
  br label %cleanup

cleanup:                                          ; preds = %if.else8.i, %if.else.i33, %if.then1.i, %set_balance.exit, %sw.bb4, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %set_balance.exit ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ 0, %if.then1.i ], [ 0, %if.else.i33 ], [ 0, %if.else8.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_and_or(ptr noundef, i16 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

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

!0 = !{ptr @cx18_av_audio_ctrl_ops, !1, !"cx18_av_audio_ctrl_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-av-audio.c", i32 455, i32 28}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
