; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-audio.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cx18_card = type { i32, ptr, ptr, i32, i32, i32, i32, [6 x %struct.cx18_card_video_input], [3 x %struct.cx18_card_audio_input], %struct.cx18_card_audio_input, i8, %struct.cx18_gpio_init, %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_audio_input, [2 x %struct.cx18_card_tuner], ptr, %struct.cx18_ddr, ptr }
%struct.cx18_card_video_input = type { i8, i8, i32 }
%struct.cx18_card_audio_input = type { i8, i32, i16 }
%struct.cx18_gpio_init = type { i32, i32 }
%struct.cx18_gpio_i2c_slave_reset = type { i32, i32, i32, i32, i32 }
%struct.cx18_gpio_audio_input = type { i32, i32, i32, i32 }
%struct.cx18_card_tuner = type { i64, i32 }
%struct.cx18_ddr = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_audio_set_io(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 32
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %card1 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %3 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card1, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %radio_input = getelementptr inbounds %struct.cx18_card, ptr %4, i32 0, i32 9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %audio_input = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 64
  %5 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %audio_input, align 4
  %arrayidx = getelementptr %struct.cx18_card, ptr %4, i32 0, i32 8, i32 %6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %in.0 = phi ptr [ %radio_input, %if.then ], [ %arrayidx, %if.else ]
  %sd_extmux = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 4
  %7 = ptrtoint ptr %sd_extmux to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_extmux, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.if.end27_crit_edge, label %if.else4

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.else4:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %audio, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.else4.if.end27_crit_edge, label %land.lhs.true

if.else4.if.end27_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

land.lhs.true:                                    ; preds = %if.else4
  %s_routing = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %s_routing to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_routing, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %land.lhs.true.if.end27_crit_edge, label %if.else10

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %s_routing13 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %s_routing13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_routing13, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end27.sink.split_crit_edge

land.lhs.true12.if.end27.sink.split_crit_edge:    ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.sink.split

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else18, %land.lhs.true12.if.end27.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.else18 ], [ %17, %land.lhs.true12.if.end27.sink.split_crit_edge ]
  %muxer_input22 = getelementptr inbounds %struct.cx18_card_audio_input, ptr %in.0, i32 0, i32 2
  %18 = ptrtoint ptr %muxer_input22 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %muxer_input22, align 4
  %conv23 = zext i16 %19 to i32
  %call24 = tail call i32 %.sink(ptr noundef nonnull %8, i32 noundef %conv23, i32 noundef 0, i32 noundef 0) #3
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %land.lhs.true.if.end27_crit_edge, %if.else4.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %subdevs = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn161 = load ptr, ptr %subdevs, align 4
  %cmp.not163 = icmp eq ptr %.pn161, %subdevs
  br i1 %cmp.not163, label %if.end27.if.end72_crit_edge, label %for.body.lr.ph

if.end27.if.end72_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

for.body.lr.ph:                                   ; preds = %if.end27
  %card34 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %audio_input53 = getelementptr inbounds %struct.cx18_card_audio_input, ptr %in.0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn166 = phi ptr [ %.pn161, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__err.0164 = phi i32 [ 0, %for.body.lr.ph ], [ %__err.1, %for.inc.for.body_crit_edge ]
  %__sd28.0167 = getelementptr i8, ptr %.pn166, i32 -80
  %21 = ptrtoint ptr %card34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card34, align 8
  %hw_audio_ctrl = getelementptr inbounds %struct.cx18_card, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %hw_audio_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_audio_ctrl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp35 = icmp eq i32 %24, 0
  br i1 %cmp35, label %for.body.land.lhs.true40_crit_edge, label %lor.lhs.false

for.body.land.lhs.true40_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true40

lor.lhs.false:                                    ; preds = %for.body
  %grp_id = getelementptr i8, ptr %.pn166, i32 68
  %25 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %grp_id, align 4
  %and = and i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %lor.lhs.false.if.end55_crit_edge, label %lor.lhs.false.land.lhs.true40_crit_edge

lor.lhs.false.land.lhs.true40_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true40

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

land.lhs.true40:                                  ; preds = %lor.lhs.false.land.lhs.true40_crit_edge, %for.body.land.lhs.true40_crit_edge
  %ops41 = getelementptr i8, ptr %.pn166, i32 24
  %27 = ptrtoint ptr %ops41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops41, align 4
  %audio42 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %audio42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %audio42, align 4
  %tobool43.not = icmp eq ptr %30, null
  br i1 %tobool43.not, label %land.lhs.true40.if.end55_crit_edge, label %land.lhs.true44

land.lhs.true40.if.end55_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %s_routing47 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %s_routing47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_routing47, align 4
  %tobool48.not = icmp eq ptr %32, null
  br i1 %tobool48.not, label %land.lhs.true44.if.end55_crit_edge, label %if.then49

land.lhs.true44.if.end55_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

if.then49:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %audio_input53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %audio_input53, align 4
  %call54 = tail call i32 %32(ptr noundef %__sd28.0167, i32 noundef %34, i32 noundef 0, i32 noundef 0) #3
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %land.lhs.true44.if.end55_crit_edge, %land.lhs.true40.if.end55_crit_edge, %lor.lhs.false.if.end55_crit_edge
  %__err.1 = phi i32 [ %call54, %if.then49 ], [ %__err.0164, %land.lhs.true44.if.end55_crit_edge ], [ %__err.0164, %land.lhs.true40.if.end55_crit_edge ], [ %__err.0164, %lor.lhs.false.if.end55_crit_edge ]
  %35 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__err.1, label %if.end55.cleanup_crit_edge [
    i32 0, label %if.end55.for.inc_crit_edge
    i32 -515, label %if.end55.for.inc_crit_edge180
  ]

if.end55.for.inc_crit_edge180:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc:                                          ; preds = %if.end55.for.inc_crit_edge, %if.end55.for.inc_crit_edge180
  %36 = ptrtoint ptr %.pn166 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load ptr, ptr %.pn166, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  %37 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %__err.1, label %for.end.cleanup_crit_edge [
    i32 -515, label %for.end.if.end72_crit_edge
    i32 0, label %for.end.if.end72_crit_edge181
  ]

for.end.if.end72_crit_edge181:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

for.end.if.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end72:                                         ; preds = %for.end.if.end72_crit_edge, %for.end.if.end72_crit_edge181, %if.end27.if.end72_crit_edge
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %38 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %39, i32 13049876
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !9
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %and74 = and i32 %41, -49
  %audio_input75 = getelementptr inbounds %struct.cx18_card_audio_input, ptr %in.0, i32 0, i32 1
  %42 = ptrtoint ptr %audio_input75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %audio_input75, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %43, label %sw.default [
    i32 0, label %if.end72.sw.epilog_crit_edge
    i32 1, label %sw.bb76
  ]

if.end72.sw.epilog_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  %or77 = or i32 %and74, 16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  %or78 = or i32 %and74, 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb76, %if.end72.sw.epilog_crit_edge
  %v.0 = phi i32 [ %or78, %sw.default ], [ %or77, %sw.bb76 ], [ %and74, %if.end72.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %v.0, i32 %41)
  %cmp79 = icmp eq i32 %v.0, %41
  br i1 %cmp79, label %if.then81, label %sw.epilog.if.end92_crit_edge

sw.epilog.if.end92_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92

if.then81:                                        ; preds = %sw.epilog
  %45 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %43, label %if.then81.sw.epilog90_crit_edge [
    i32 0, label %sw.bb84
    i32 1, label %sw.bb86
  ]

if.then81.sw.epilog90_crit_edge:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog90

sw.bb84:                                          ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #5
  %or85 = or i32 %and74, 32
  br label %sw.epilog90

sw.bb86:                                          ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #5
  %or87 = or i32 %and74, 32
  br label %sw.epilog90

sw.epilog90:                                      ; preds = %sw.bb86, %sw.bb84, %if.then81.sw.epilog90_crit_edge
  %u.0 = phi i32 [ %or87, %sw.bb86 ], [ %or85, %sw.bb84 ], [ %and74, %if.then81.sw.epilog90_crit_edge ]
  %or91 = or i32 %u.0, 2816
  %46 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i146 = getelementptr i8, ptr %47, i32 13049876
  %48 = tail call i32 @llvm.bswap.i32(i32 %or91) #3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %sw.epilog90
  %i.01.i.i = phi i32 [ 0, %sw.epilog90 ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %48) #3, !srcloc !12
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp1.i.i = icmp eq i32 %49, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %50 = lshr i32 %49, 24
  %51 = xor i32 %50, %u.0
  %52 = and i32 %51, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp4.i.i = icmp ne i32 %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.if.end92_crit_edge

if.end.i.i.if.end92_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.if.end92_crit_edge

for.inc.i.i.if.end92_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

if.end92:                                         ; preds = %for.inc.i.i.if.end92_crit_edge, %if.end.i.i.if.end92_crit_edge, %sw.epilog.if.end92_crit_edge
  %or93 = or i32 %v.0, 2816
  %53 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i148 = getelementptr i8, ptr %54, i32 13049876
  %55 = tail call i32 @llvm.bswap.i32(i32 %or93) #3
  br label %for.body.i.i151

for.body.i.i151:                                  ; preds = %for.body.backedge.i.i159, %if.end92
  %i.01.i.i149 = phi i32 [ 0, %if.end92 ], [ %i.01.be.i.i158, %for.body.backedge.i.i159 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %55) #3, !srcloc !12
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp1.i.i150 = icmp eq i32 %56, -1
  br i1 %cmp1.i.i150, label %for.inc.i.i157, label %if.end.i.i155

if.end.i.i155:                                    ; preds = %for.body.i.i151
  %57 = lshr i32 %56, 24
  %58 = xor i32 %57, %v.0
  %59 = and i32 %58, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp4.i.i152 = icmp ne i32 %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i149)
  %cmp.i.i153 = icmp ult i32 %i.01.i.i149, 9
  %or.cond.i.i154 = select i1 %cmp4.i.i152, i1 %cmp.i.i153, i1 false
  br i1 %or.cond.i.i154, label %if.end.i.i155.for.body.backedge.i.i159_crit_edge, label %if.end.i.i155.cleanup_crit_edge

if.end.i.i155.cleanup_crit_edge:                  ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i155.for.body.backedge.i.i159_crit_edge: ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.backedge.i.i159

for.inc.i.i157:                                   ; preds = %for.body.i.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i149)
  %cmp.old.i.i156 = icmp ult i32 %i.01.i.i149, 9
  br i1 %cmp.old.i.i156, label %for.inc.i.i157.for.body.backedge.i.i159_crit_edge, label %for.inc.i.i157.cleanup_crit_edge

for.inc.i.i157.cleanup_crit_edge:                 ; preds = %for.inc.i.i157
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc.i.i157.for.body.backedge.i.i159_crit_edge: ; preds = %for.inc.i.i157
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.backedge.i.i159

for.body.backedge.i.i159:                         ; preds = %for.inc.i.i157.for.body.backedge.i.i159_crit_edge, %if.end.i.i155.for.body.backedge.i.i159_crit_edge
  %i.01.be.i.i158 = add nuw nsw i32 %i.01.i.i149, 1
  br label %for.body.i.i151

cleanup:                                          ; preds = %for.inc.i.i157.cleanup_crit_edge, %if.end.i.i155.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end55.cleanup_crit_edge
  %retval.0 = phi i32 [ %__err.1, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.i155.cleanup_crit_edge ], [ 0, %for.inc.i.i157.cleanup_crit_edge ], [ %__err.1, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 5742562}
!10 = !{i64 2158642155}
!11 = !{i64 2158642525}
!12 = !{i64 5742144}
