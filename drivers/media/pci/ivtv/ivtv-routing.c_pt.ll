; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-routing.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-routing.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.120, %struct.anon.121, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119 }
%struct.anon.112 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, ptr }
%struct.anon.114 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.anon.116 = type { ptr, ptr, ptr }
%struct.anon.117 = type { ptr, ptr }
%struct.anon.118 = type { ptr, ptr }
%struct.anon.119 = type { ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.90, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.90 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ivtv_card = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x %struct.ivtv_card_video_input], [3 x %struct.ivtv_card_audio_input], %struct.ivtv_card_audio_input, i32, ptr, i8, i8, %struct.ivtv_gpio_init, %struct.ivtv_gpio_video_input, %struct.ivtv_gpio_audio_input, %struct.ivtv_gpio_audio_mute, %struct.ivtv_gpio_audio_mode, %struct.ivtv_gpio_audio_freq, %struct.ivtv_gpio_audio_detect, [3 x %struct.ivtv_card_tuner], ptr, ptr }
%struct.ivtv_card_video_input = type { i8, i8, i16 }
%struct.ivtv_card_audio_input = type { i8, i32, i16 }
%struct.ivtv_gpio_init = type { i16, i16 }
%struct.ivtv_gpio_video_input = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_input = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_mute = type { i16, i16 }
%struct.ivtv_gpio_audio_mode = type { i16, i16, i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_freq = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_detect = type { i16, i16 }
%struct.ivtv_card_tuner = type { i64, i32 }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_audio_set_io(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %card1 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %3 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %radio_input = getelementptr inbounds %struct.ivtv_card, ptr %4, i32 0, i32 11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %audio_input = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 32
  %5 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %audio_input, align 4
  %arrayidx = getelementptr %struct.ivtv_card, ptr %4, i32 0, i32 10, i32 %6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %in.0 = phi ptr [ %radio_input, %if.then ], [ %arrayidx, %if.else ]
  %muxer_input = getelementptr inbounds %struct.ivtv_card_audio_input, ptr %in.0, i32 0, i32 2
  %7 = ptrtoint ptr %muxer_input to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %muxer_input, align 4
  %conv = zext i16 %8 to i32
  %card2 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %9 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card2, align 4
  %hw_muxer = getelementptr inbounds %struct.ivtv_card, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %hw_muxer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_muxer, align 4
  %and = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 49344
  %sd_muxer = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 13
  %13 = ptrtoint ptr %sd_muxer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_muxer, align 8
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.end.if.end29_crit_edge, label %if.else8

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end29

if.else8:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %audio, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.else8.if.end29_crit_edge, label %land.lhs.true

if.else8.if.end29_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end29

land.lhs.true:                                    ; preds = %if.else8
  %s_routing = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %s_routing to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_routing, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %land.lhs.true.if.end29_crit_edge, label %if.else14

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end29

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %if.else14.if.else22_crit_edge, label %land.lhs.true16

if.else14.if.else22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else14
  %s_routing17 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %s_routing17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_routing17, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else22_crit_edge, label %land.lhs.true16.if.end29.sink.split_crit_edge

land.lhs.true16.if.end29.sink.split_crit_edge:    ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end29.sink.split

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else14.if.else22_crit_edge
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.else22, %land.lhs.true16.if.end29.sink.split_crit_edge
  %.sink = phi ptr [ %20, %if.else22 ], [ %23, %land.lhs.true16.if.end29.sink.split_crit_edge ]
  %call26 = tail call i32 %.sink(ptr noundef nonnull %14, i32 noundef %conv, i32 noundef %spec.select, i32 noundef 0) #1
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %land.lhs.true.if.end29_crit_edge, %if.else8.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %audio_input30 = getelementptr inbounds %struct.ivtv_card_audio_input, ptr %in.0, i32 0, i32 1
  %24 = ptrtoint ptr %audio_input30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %audio_input30, align 4
  %26 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card2, align 4
  %hw_audio = getelementptr inbounds %struct.ivtv_card, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %hw_audio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_audio, align 4
  %and32 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %spec.store.select = select i1 %tobool33.not, i32 0, i32 68
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %30 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn104 = load ptr, ptr %subdevs, align 4
  %cmp.not106 = icmp eq ptr %.pn104, %subdevs
  br i1 %cmp.not106, label %if.end29.do.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %.pn107 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn104, %if.end29.for.body_crit_edge ]
  %__sd36.0108 = getelementptr i8, ptr %.pn107, i32 -80
  %31 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card2, align 4
  %hw_audio43 = getelementptr inbounds %struct.ivtv_card, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %hw_audio43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_audio43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp44 = icmp eq i32 %34, 0
  br i1 %cmp44, label %for.body.land.lhs.true50_crit_edge, label %lor.lhs.false

for.body.land.lhs.true50_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %land.lhs.true50

lor.lhs.false:                                    ; preds = %for.body
  %grp_id = getelementptr i8, ptr %.pn107, i32 68
  %35 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %grp_id, align 4
  %and48 = and i32 %36, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.land.lhs.true50_crit_edge

lor.lhs.false.land.lhs.true50_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  br label %land.lhs.true50

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

land.lhs.true50:                                  ; preds = %lor.lhs.false.land.lhs.true50_crit_edge, %for.body.land.lhs.true50_crit_edge
  %ops51 = getelementptr i8, ptr %.pn107, i32 24
  %37 = ptrtoint ptr %ops51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops51, align 4
  %audio52 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %audio52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %audio52, align 4
  %tobool53.not = icmp eq ptr %40, null
  br i1 %tobool53.not, label %land.lhs.true50.for.inc_crit_edge, label %land.lhs.true54

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

land.lhs.true54:                                  ; preds = %land.lhs.true50
  %s_routing57 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %s_routing57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_routing57, align 4
  %tobool58.not = icmp eq ptr %42, null
  br i1 %tobool58.not, label %land.lhs.true54.for.inc_crit_edge, label %if.then59

land.lhs.true54.for.inc_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

if.then59:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #3
  %call63 = tail call i32 %42(ptr noundef %__sd36.0108, i32 noundef %25, i32 noundef %spec.store.select, i32 noundef 0) #1
  br label %for.inc

for.inc:                                          ; preds = %if.then59, %land.lhs.true54.for.inc_crit_edge, %land.lhs.true50.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %43 = ptrtoint ptr %.pn107 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load ptr, ptr %.pn107, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end29.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_video_set_io(ptr noundef readonly %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %active_input = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 33
  %0 = ptrtoint ptr %active_input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_input, align 8
  %sd_video = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 11
  %2 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_video, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.else

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end24

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end24_crit_edge, label %land.lhs.true

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end24

land.lhs.true:                                    ; preds = %if.else
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end24_crit_edge, label %if.else6

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end24

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else13_crit_edge, label %land.lhs.true8

if.else6.if.else13_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.else13

land.lhs.true8:                                   ; preds = %if.else6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else13_crit_edge, label %land.lhs.true8.if.end24.sink.split_crit_edge

land.lhs.true8.if.end24.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end24.sink.split

land.lhs.true8.if.else13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.else13

if.else13:                                        ; preds = %land.lhs.true8.if.else13_crit_edge, %if.else6.if.else13_crit_edge
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.else13, %land.lhs.true8.if.end24.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else13 ], [ %12, %land.lhs.true8.if.end24.sink.split_crit_edge ]
  %card17 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %13 = ptrtoint ptr %card17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card17, align 4
  %video_input20 = getelementptr %struct.ivtv_card, ptr %14, i32 0, i32 9, i32 %1, i32 2
  %15 = ptrtoint ptr %video_input20 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %video_input20, align 2
  %conv21 = zext i16 %16 to i32
  %call22 = tail call i32 %.sink(ptr noundef nonnull %3, i32 noundef %conv21, i32 noundef 0, i32 noundef 0) #1
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %land.lhs.true.if.end24_crit_edge, %if.else.if.end24_crit_edge, %entry.if.end24_crit_edge
  %card25 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %17 = ptrtoint ptr %card25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card25, align 4
  %arrayidx27 = getelementptr %struct.ivtv_card, ptr %18, i32 0, i32 9, i32 %1
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp = icmp eq i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp32 = icmp ult i8 %20, 4
  %. = select i1 %cmp32, i32 2, i32 1
  %input.0 = select i1 %cmp, i32 0, i32 %.
  %hw_video = getelementptr inbounds %struct.ivtv_card, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %hw_video to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_video, align 8
  %and = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end24.if.end72_crit_edge, label %do.body

if.end24.if.end72_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end72

do.body:                                          ; preds = %if.end24
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %23 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn273275 = load ptr, ptr %subdevs, align 4
  %cmp46.not277 = icmp eq ptr %.pn273275, %subdevs
  br i1 %cmp46.not277, label %do.body.if.end72_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.if.end72_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end72

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn273278 = phi ptr [ %.pn273, %for.inc.for.body_crit_edge ], [ %.pn273275, %do.body.for.body_crit_edge ]
  %__sd41.0279 = getelementptr i8, ptr %.pn273278, i32 -80
  %grp_id = getelementptr i8, ptr %.pn273278, i32 68
  %24 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %grp_id, align 4
  %and48 = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %for.body.for.inc_crit_edge, label %land.lhs.true50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

land.lhs.true50:                                  ; preds = %for.body
  %ops51 = getelementptr i8, ptr %.pn273278, i32 24
  %26 = ptrtoint ptr %ops51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops51, align 4
  %video52 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %video52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %video52, align 4
  %tobool53.not = icmp eq ptr %29, null
  br i1 %tobool53.not, label %land.lhs.true50.for.inc_crit_edge, label %land.lhs.true54

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

land.lhs.true54:                                  ; preds = %land.lhs.true50
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool58.not = icmp eq ptr %31, null
  br i1 %tobool58.not, label %land.lhs.true54.for.inc_crit_edge, label %if.then59

land.lhs.true54.for.inc_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

if.then59:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #3
  %call63 = tail call i32 %31(ptr noundef %__sd41.0279, i32 noundef %input.0, i32 noundef 0, i32 noundef 0) #1
  br label %for.inc

for.inc:                                          ; preds = %if.then59, %land.lhs.true54.for.inc_crit_edge, %land.lhs.true50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %.pn273278 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn273 = load ptr, ptr %.pn273278, align 4
  %cmp46.not = icmp eq ptr %.pn273, %subdevs
  br i1 %cmp46.not, label %for.inc.if.end72_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body

for.inc.if.end72_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end72

if.end72:                                         ; preds = %for.inc.if.end72_crit_edge, %do.body.if.end72_crit_edge, %if.end24.if.end72_crit_edge
  %33 = ptrtoint ptr %card25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card25, align 4
  %hw_video74 = getelementptr inbounds %struct.ivtv_card, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %hw_video74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_video74, align 8
  %and75 = and i32 %36, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end72.if.end133_crit_edge, label %if.then77

if.end72.if.end133_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end133

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp80 = icmp ugt i8 %20, 3
  %or.cond = or i1 %cmp, %cmp80
  %input.1 = select i1 %or.cond, i32 8, i32 1
  %gr_config = getelementptr inbounds %struct.ivtv_card, ptr %34, i32 0, i32 14
  %37 = ptrtoint ptr %gr_config to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %gr_config, align 4
  %conv86 = zext i8 %38 to i32
  %or = or i32 %input.1, %conv86
  %subdevs92 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %39 = ptrtoint ptr %subdevs92 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn272280 = load ptr, ptr %subdevs92, align 4
  %cmp100.not282 = icmp eq ptr %.pn272280, %subdevs92
  br i1 %cmp100.not282, label %if.then77.if.end133_crit_edge, label %if.then77.for.body103_crit_edge

if.then77.for.body103_crit_edge:                  ; preds = %if.then77
  br label %for.body103

if.then77.if.end133_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end133

for.body103:                                      ; preds = %for.inc122.for.body103_crit_edge, %if.then77.for.body103_crit_edge
  %.pn272283 = phi ptr [ %.pn272, %for.inc122.for.body103_crit_edge ], [ %.pn272280, %if.then77.for.body103_crit_edge ]
  %__sd88.0284 = getelementptr i8, ptr %.pn272283, i32 -80
  %grp_id104 = getelementptr i8, ptr %.pn272283, i32 68
  %40 = ptrtoint ptr %grp_id104 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %grp_id104, align 4
  %and105 = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %for.body103.for.inc122_crit_edge, label %land.lhs.true107

for.body103.for.inc122_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc122

land.lhs.true107:                                 ; preds = %for.body103
  %ops108 = getelementptr i8, ptr %.pn272283, i32 24
  %42 = ptrtoint ptr %ops108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops108, align 4
  %video109 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %video109 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %video109, align 4
  %tobool110.not = icmp eq ptr %45, null
  br i1 %tobool110.not, label %land.lhs.true107.for.inc122_crit_edge, label %land.lhs.true111

land.lhs.true107.for.inc122_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc122

land.lhs.true111:                                 ; preds = %land.lhs.true107
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %tobool115.not = icmp eq ptr %47, null
  br i1 %tobool115.not, label %land.lhs.true111.for.inc122_crit_edge, label %if.then116

land.lhs.true111.for.inc122_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc122

if.then116:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #3
  %call120 = tail call i32 %47(ptr noundef %__sd88.0284, i32 noundef %or, i32 noundef 0, i32 noundef 0) #1
  br label %for.inc122

for.inc122:                                       ; preds = %if.then116, %land.lhs.true111.for.inc122_crit_edge, %land.lhs.true107.for.inc122_crit_edge, %for.body103.for.inc122_crit_edge
  %48 = ptrtoint ptr %.pn272283 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn272 = load ptr, ptr %.pn272283, align 4
  %cmp100.not = icmp eq ptr %.pn272, %subdevs92
  br i1 %cmp100.not, label %for.inc122.if.end133_crit_edge, label %for.inc122.for.body103_crit_edge

for.inc122.for.body103_crit_edge:                 ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body103

for.inc122.if.end133_crit_edge:                   ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end133

if.end133:                                        ; preds = %for.inc122.if.end133_crit_edge, %if.then77.if.end133_crit_edge, %if.end72.if.end133_crit_edge
  %49 = ptrtoint ptr %card25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card25, align 4
  %hw_video135 = getelementptr inbounds %struct.ivtv_card, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %hw_video135 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_video135, align 8
  %and136 = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end133.if.end210_crit_edge, label %if.then138

if.end133.if.end210_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end210

if.then138:                                       ; preds = %if.end133
  %53 = and i8 %20, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %54 = icmp eq i8 %53, 2
  br i1 %54, label %if.then138.do.body164_crit_edge, label %if.else146

if.then138.do.body164_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body164

if.else146:                                       ; preds = %if.then138
  %and149 = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.else146.do.body164_crit_edge, label %if.then151

if.else146.do.body164_crit_edge:                  ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body164

if.then151:                                       ; preds = %if.else146
  br i1 %cmp, label %if.then151.if.then159_crit_edge, label %lor.lhs.false154

if.then151.if.then159_crit_edge:                  ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then159

lor.lhs.false154:                                 ; preds = %if.then151
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %56)
  %cmp157 = icmp eq i32 %56, 11
  br i1 %cmp157, label %lor.lhs.false154.if.then159_crit_edge, label %lor.lhs.false154.do.body164_crit_edge

lor.lhs.false154.do.body164_crit_edge:            ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body164

lor.lhs.false154.if.then159_crit_edge:            ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then159

if.then159:                                       ; preds = %lor.lhs.false154.if.then159_crit_edge, %if.then151.if.then159_crit_edge
  br label %do.body164

do.body164:                                       ; preds = %if.then159, %lor.lhs.false154.do.body164_crit_edge, %if.else146.do.body164_crit_edge, %if.then138.do.body164_crit_edge
  %input.2 = phi i32 [ 4, %if.then159 ], [ 0, %lor.lhs.false154.do.body164_crit_edge ], [ 0, %if.else146.do.body164_crit_edge ], [ 3, %if.then138.do.body164_crit_edge ]
  %subdevs169 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %57 = ptrtoint ptr %subdevs169 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn285 = load ptr, ptr %subdevs169, align 4
  %cmp177.not287 = icmp eq ptr %.pn285, %subdevs169
  br i1 %cmp177.not287, label %do.body164.if.end210_crit_edge, label %do.body164.for.body180_crit_edge

do.body164.for.body180_crit_edge:                 ; preds = %do.body164
  br label %for.body180

do.body164.if.end210_crit_edge:                   ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end210

for.body180:                                      ; preds = %for.inc199.for.body180_crit_edge, %do.body164.for.body180_crit_edge
  %.pn288 = phi ptr [ %.pn, %for.inc199.for.body180_crit_edge ], [ %.pn285, %do.body164.for.body180_crit_edge ]
  %__sd165.0289 = getelementptr i8, ptr %.pn288, i32 -80
  %grp_id181 = getelementptr i8, ptr %.pn288, i32 68
  %58 = ptrtoint ptr %grp_id181 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %grp_id181, align 4
  %and182 = and i32 %59, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %for.body180.for.inc199_crit_edge, label %land.lhs.true184

for.body180.for.inc199_crit_edge:                 ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc199

land.lhs.true184:                                 ; preds = %for.body180
  %ops185 = getelementptr i8, ptr %.pn288, i32 24
  %60 = ptrtoint ptr %ops185 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops185, align 4
  %video186 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %video186 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %video186, align 4
  %tobool187.not = icmp eq ptr %63, null
  br i1 %tobool187.not, label %land.lhs.true184.for.inc199_crit_edge, label %land.lhs.true188

land.lhs.true184.for.inc199_crit_edge:            ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc199

land.lhs.true188:                                 ; preds = %land.lhs.true184
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %tobool192.not = icmp eq ptr %65, null
  br i1 %tobool192.not, label %land.lhs.true188.for.inc199_crit_edge, label %if.then193

land.lhs.true188.for.inc199_crit_edge:            ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc199

if.then193:                                       ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #3
  %call197 = tail call i32 %65(ptr noundef %__sd165.0289, i32 noundef %input.2, i32 noundef 0, i32 noundef 0) #1
  br label %for.inc199

for.inc199:                                       ; preds = %if.then193, %land.lhs.true188.for.inc199_crit_edge, %land.lhs.true184.for.inc199_crit_edge, %for.body180.for.inc199_crit_edge
  %66 = ptrtoint ptr %.pn288 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn = load ptr, ptr %.pn288, align 4
  %cmp177.not = icmp eq ptr %.pn, %subdevs169
  br i1 %cmp177.not, label %for.inc199.if.end210_crit_edge, label %for.inc199.for.body180_crit_edge

for.inc199.for.body180_crit_edge:                 ; preds = %for.inc199
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body180

for.inc199.if.end210_crit_edge:                   ; preds = %for.inc199
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end210

if.end210:                                        ; preds = %for.inc199.if.end210_crit_edge, %do.body164.if.end210_crit_edge, %if.end133.if.end210_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

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
