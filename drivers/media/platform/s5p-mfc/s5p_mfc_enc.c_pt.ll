; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_enc.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s5p_mfc_codec_ops = type { ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfc_control = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, [2 x i32], i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.s5p_mfc_fmt = type { i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.117, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.114, i32 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, i32 }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.116 }
%struct.anon.116 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%union.anon.117 = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
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
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.93, i32, i32, %union.anon.95 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%union.anon.93 = type { i32 }
%union.anon.95 = type { i32 }
%struct.v4l2_plane = type { i32, i32, %union.anon.94, i32, [11 x i32] }
%union.anon.94 = type { i32 }
%struct.v4l2_event = type { i32, %union.anon.124, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.124 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.125, i32, i32, i32, i32, i32 }
%union.anon.125 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_encoder_cmd = type { i32, i32, %union.anon.100 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { [8 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.106 }
%union.anon.106 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }

@encoder_codec_ops = internal constant { %struct.s5p_mfc_codec_ops, [16 x i8] } { %struct.s5p_mfc_codec_ops { ptr @enc_pre_seq_start, ptr @enc_post_seq_start, ptr @enc_pre_frame_start, ptr @enc_post_frame_start }, [16 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_qops = internal global { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @s5p_mfc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @s5p_mfc_buf_init, ptr @s5p_mfc_buf_prepare, ptr null, ptr null, ptr @s5p_mfc_start_streaming, ptr @s5p_mfc_stop_streaming, ptr @s5p_mfc_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt, ptr @vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt, ptr @vidioc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt, ptr @vidioc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_reqbufs, ptr @vidioc_querybuf, ptr @vidioc_qbuf, ptr @vidioc_expbuf, ptr @vidioc_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_streamon, ptr @vidioc_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_encoder_cmd, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr @vidioc_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_ctrls_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"s5p_mfc_enc:2625:(&ctx->ctrl_handler)->_lock\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_ctrls_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s:%d: v4l2_ctrl_handler_init failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5p_mfc_enc_ctrls_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_enc.c\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_ctrls_setup._entry_ptr = internal global ptr @s5p_mfc_enc_ctrls_setup._entry, section ".printk_index", align 4
@controls = internal global { [116 x %struct.mfc_control], [2192 x i8] } { [116 x %struct.mfc_control] [%struct.mfc_control { i32 10029515, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 12, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029533, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029532, i32 1, [32 x i8] zeroinitializer, i32 1, i32 65535, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029531, i32 1, [32 x i8] zeroinitializer, i32 1900, i32 1073741823, i32 1, i32 0, i32 1900, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029526, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031364, i32 2, [32 x i8] c"Padding Control Enable\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031365, i32 1, [32 x i8] c"Padding Color YUV Value\00\00\00\00\00\00\00\00\00", i32 0, i32 33554431, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029527, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029519, i32 1, [32 x i8] zeroinitializer, i32 1, i32 1073741823, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031367, i32 1, [32 x i8] c"Rate Control Reaction Coeff.\00\00\00\00", i32 1, i32 65535, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031363, i32 3, [32 x i8] c"Force frame type\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029541, i32 4, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029534, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029539, i32 1, [32 x i8] c"Horizontal MV Search Range\00\00\00\00\00\00", i32 16, i32 128, i32 16, i32 0, i32 32, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029540, i32 1, [32 x i8] c"Vertical MV Search Range\00\00\00\00\00\00\00\00", i32 16, i32 128, i32 16, i32 0, i32 32, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029668, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029528, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031362, i32 3, [32 x i8] c"Frame Skip Enable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029958, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031366, i32 2, [32 x i8] c"Fixed Target Bit Enable\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029514, i32 1, [32 x i8] zeroinitializer, i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029675, i32 3, [32 x i8] zeroinitializer, i32 0, i32 16, i32 0, i32 -22, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029671, i32 3, [32 x i8] zeroinitializer, i32 0, i32 11, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029717, i32 3, [32 x i8] zeroinitializer, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029674, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029672, i32 1, [32 x i8] zeroinitializer, i32 -6, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029673, i32 1, [32 x i8] zeroinitializer, i32 -6, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029669, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031414, i32 1, [32 x i8] c"The Number of Ref. Pic for P\00\00\00\00", i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029667, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029530, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029662, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029665, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029666, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 51, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029663, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029664, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029612, i32 1, [32 x i8] c"H263 I-Frame QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029615, i32 1, [32 x i8] c"H263 Minimum QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029616, i32 1, [32 x i8] c"H263 Maximum QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 31, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029613, i32 1, [32 x i8] c"H263 P frame QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029614, i32 1, [32 x i8] c"H263 B frame QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029712, i32 1, [32 x i8] c"MPEG4 I-Frame QP value\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029715, i32 1, [32 x i8] c"MPEG4 Minimum QP value\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029716, i32 1, [32 x i8] c"MPEG4 Maximum QP value\00\00\00\00\00\00\00\00\00\00", i32 0, i32 51, i32 1, i32 0, i32 51, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029713, i32 1, [32 x i8] c"MPEG4 P frame QP value\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029714, i32 1, [32 x i8] c"MPEG4 B frame QP value\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031411, i32 2, [32 x i8] c"H264 Dark Reg Adaptive RC\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031412, i32 2, [32 x i8] c"H264 Smooth Reg Adaptive RC\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031413, i32 2, [32 x i8] c"H264 Static Reg Adaptive RC\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031410, i32 2, [32 x i8] c"H264 Activity Reg Adaptive RC\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029678, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029679, i32 3, [32 x i8] zeroinitializer, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029677, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029676, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029516, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029670, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029718, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029719, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029812, i32 9, [32 x i8] zeroinitializer, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029813, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029814, i32 9, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029815, i32 1, [32 x i8] zeroinitializer, i32 0, i32 63, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029816, i32 1, [32 x i8] zeroinitializer, i32 0, i32 7, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029817, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029818, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029820, i32 1, [32 x i8] zeroinitializer, i32 0, i32 127, i32 1, i32 0, i32 127, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029819, i32 1, [32 x i8] zeroinitializer, i32 0, i32 11, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029821, i32 1, [32 x i8] zeroinitializer, i32 0, i32 127, i32 1, i32 0, i32 10, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029822, i32 1, [32 x i8] zeroinitializer, i32 0, i32 127, i32 1, i32 0, i32 10, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029823, i32 3, [32 x i8] zeroinitializer, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029914, i32 1, [32 x i8] c"HEVC I Frame QP Value\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029915, i32 1, [32 x i8] c"HEVC P Frame QP Value\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029916, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029912, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029913, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029927, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029928, i32 3, [32 x i8] zeroinitializer, i32 0, i32 12, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029930, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029929, i32 1, [32 x i8] zeroinitializer, i32 1, i32 65535, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029931, i32 1, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029955, i32 1, [32 x i8] zeroinitializer, i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029935, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029938, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029937, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029939, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029932, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029917, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029918, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029919, i32 1, [32 x i8] zeroinitializer, i32 0, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029920, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029921, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029922, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029923, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029924, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029925, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029926, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029948, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029949, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029950, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029951, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029952, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029953, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029954, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029940, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029941, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029942, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029944, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029945, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029943, i32 1, [32 x i8] zeroinitializer, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029946, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029936, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029933, i32 1, [32 x i8] zeroinitializer, i32 -6, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029934, i32 1, [32 x i8] zeroinitializer, i32 -6, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029947, i32 3, [32 x i8] zeroinitializer, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029956, i32 1, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 9963816, i32 1, [32 x i8] c"Minimum number of output bufs\00\00\00", i32 1, i32 32, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 1 }], [2192 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @s5p_mfc_enc_g_v_ctrl, ptr null, ptr @s5p_mfc_enc_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_ctrls_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 2671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s:%d: Adding control (%d) failed\0A\00", [59 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_ctrls_setup._entry_ptr.6 = internal global ptr @s5p_mfc_enc_ctrls_setup._entry.4, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_ctx_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:%d: src=%d, dst=%d, state=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5p_mfc_ctx_ready\00", [46 x i8] zeroinitializer }, align 32
@s5p_mfc_ctx_ready._entry_ptr = internal global ptr @s5p_mfc_ctx_ready._entry, section ".printk_index", align 4
@s5p_mfc_ctx_ready._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:%d: ctx is not ready\0A\00", [37 x i8] zeroinitializer }, align 32
@s5p_mfc_ctx_ready._entry_ptr.12 = internal global ptr @s5p_mfc_ctx_ready._entry.10, section ".printk_index", align 4
@enc_post_frame_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:%d: Encoded slice type: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enc_post_frame_start\00", [43 x i8] zeroinitializer }, align 32
@enc_post_frame_start._entry_ptr = internal global ptr @enc_post_frame_start._entry, section ".printk_index", align 4
@enc_post_frame_start._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:%d: Encoded stream size: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@enc_post_frame_start._entry_ptr.17 = internal global ptr @enc_post_frame_start._entry.15, section ".printk_index", align 4
@enc_post_frame_start._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s:%d: Display order: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@enc_post_frame_start._entry_ptr.20 = internal global ptr @enc_post_frame_start._entry.18, section ".printk_index", align 4
@enc_post_frame_start._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.3, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s:%d: enc src count: %d, enc ref count: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@enc_post_frame_start._entry_ptr.23 = internal global ptr @enc_post_frame_start._entry.21, section ".printk_index", align 4
@s5p_mfc_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 2383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s:%d: invalid state: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5p_mfc_queue_setup\00", [44 x i8] zeroinitializer }, align 32
@s5p_mfc_queue_setup._entry_ptr = internal global ptr @s5p_mfc_queue_setup._entry, section ".printk_index", align 4
@s5p_mfc_queue_setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 2419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s:%d: invalid queue type: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_queue_setup._entry_ptr.28 = internal global ptr @s5p_mfc_queue_setup._entry.26, section ".printk_index", align 4
@s5p_mfc_buf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.3, i32 2454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5p_mfc_buf_init\00", [47 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_init._entry_ptr = internal global ptr @s5p_mfc_buf_init._entry, section ".printk_index", align 4
@check_vb_with_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 2359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: invalid plane number for the format\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_vb_with_fmt\00", [46 x i8] zeroinitializer }, align 32
@check_vb_with_fmt._entry_ptr = internal global ptr @check_vb_with_fmt._entry, section ".printk_index", align 4
@check_vb_with_fmt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 2365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s:%d: failed to get plane cookie\0A\00", [59 x i8] zeroinitializer }, align 32
@check_vb_with_fmt._entry_ptr.34 = internal global ptr @check_vb_with_fmt._entry.32, section ".printk_index", align 4
@check_vb_with_fmt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 2369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s:%d: index: %d, plane[%d] cookie: %pad\0A\00", [52 x i8] zeroinitializer }, align 32
@check_vb_with_fmt._entry_ptr.37 = internal global ptr @check_vb_with_fmt._entry.35, section ".printk_index", align 4
@s5p_mfc_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 2471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s:%d: plane size: %ld, dst size: %zu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5p_mfc_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_prepare._entry_ptr = internal global ptr @s5p_mfc_buf_prepare._entry, section ".printk_index", align 4
@s5p_mfc_buf_prepare._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 2473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: plane size is too small for capture\0A\00", [50 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_prepare._entry_ptr.42 = internal global ptr @s5p_mfc_buf_prepare._entry.40, section ".printk_index", align 4
@s5p_mfc_buf_prepare._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.3, i32 2481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s:%d: plane size: %ld, luma size: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_prepare._entry_ptr.45 = internal global ptr @s5p_mfc_buf_prepare._entry.43, section ".printk_index", align 4
@s5p_mfc_buf_prepare._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.3, i32 2483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s:%d: plane size: %ld, chroma size: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_prepare._entry_ptr.48 = internal global ptr @s5p_mfc_buf_prepare._entry.46, section ".printk_index", align 4
@s5p_mfc_buf_prepare._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.3, i32 2486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%d: plane size is too small for output\0A\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_prepare._entry_ptr.51 = internal global ptr @s5p_mfc_buf_prepare._entry.49, section ".printk_index", align 4
@s5p_mfc_buf_prepare._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.39, ptr @.str.3, i32 2490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_prepare._entry_ptr.53 = internal global ptr @s5p_mfc_buf_prepare._entry.52, section ".printk_index", align 4
@s5p_mfc_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 2513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s:%d: Need minimum %d OUTPUT buffers\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5p_mfc_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@s5p_mfc_start_streaming._entry_ptr = internal global ptr @s5p_mfc_start_streaming._entry, section ".printk_index", align 4
@cleanup_ref_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.56, ptr @.str.3, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cleanup_ref_queue\00", [46 x i8] zeroinitializer }, align 32
@cleanup_ref_queue._entry_ptr = internal global ptr @cleanup_ref_queue._entry, section ".printk_index", align 4
@s5p_mfc_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 2584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s:%d: unsupported buffer type (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5p_mfc_buf_queue\00", [46 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_queue._entry_ptr = internal global ptr @s5p_mfc_buf_queue._entry, section ".printk_index", align 4
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5p-mfc\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@formats = internal global { [9 x %struct.s5p_mfc_fmt], [44 x i8] } { [9 x %struct.s5p_mfc_fmt] [%struct.s5p_mfc_fmt { i32 842091862, i32 -1, i32 2, i32 2, i32 6 }, %struct.s5p_mfc_fmt { i32 842091860, i32 -1, i32 2, i32 2, i32 1 }, %struct.s5p_mfc_fmt { i32 842091854, i32 -1, i32 2, i32 2, i32 47 }, %struct.s5p_mfc_fmt { i32 825380174, i32 -1, i32 2, i32 2, i32 46 }, %struct.s5p_mfc_fmt { i32 875967048, i32 20, i32 1, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 877088845, i32 22, i32 1, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 859189832, i32 23, i32 1, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 808996950, i32 24, i32 1, i32 1, i32 44 }, %struct.s5p_mfc_fmt { i32 1129727304, i32 26, i32 1, i32 1, i32 32 }], [44 x i8] zeroinitializer }, align 32
@vidioc_g_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s:%d: f->type = %d ctx->state = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_g_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_g_fmt._entry_ptr = internal global ptr @vidioc_g_fmt._entry, section ".printk_index", align 4
@vidioc_g_fmt._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s:%d: invalid buf type\0A\00", [37 x i8] zeroinitializer }, align 32
@vidioc_g_fmt._entry_ptr.65 = internal global ptr @vidioc_g_fmt._entry.63, section ".printk_index", align 4
@vidioc_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s queue busy\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr = internal global ptr @vidioc_s_fmt._entry, section ".printk_index", align 4
@vidioc_s_fmt._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:%d: codec number: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.70 = internal global ptr @vidioc_s_fmt._entry.68, section ".printk_index", align 4
@vidioc_s_fmt._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.3, i32 1460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s:%d: fmt - w: %d, h: %d, ctx - w: %d, h: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.73 = internal global ptr @vidioc_s_fmt._entry.71, section ".printk_index", align 4
@vidioc_s_fmt._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.67, ptr @.str.3, i32 1471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.75 = internal global ptr @vidioc_s_fmt._entry.74, section ".printk_index", align 4
@vidioc_s_fmt._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.67, ptr @.str.3, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:%d: leave\0A\00", [16 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.78 = internal global ptr @vidioc_s_fmt._entry.76, section ".printk_index", align 4
@vidioc_try_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s:%d: failed to try output format\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_try_fmt\00", [17 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr = internal global ptr @vidioc_try_fmt._entry, section ".printk_index", align 4
@vidioc_try_fmt._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s:%d: Unsupported format by this MFC version.\0A\00", [46 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr.83 = internal global ptr @vidioc_try_fmt._entry.81, section ".printk_index", align 4
@vidioc_try_fmt._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr.85 = internal global ptr @vidioc_try_fmt._entry.84, section ".printk_index", align 4
@vidioc_try_fmt._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr.87 = internal global ptr @vidioc_try_fmt._entry.86, section ".printk_index", align 4
@vidioc_try_fmt._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.80, ptr @.str.3, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr.89 = internal global ptr @vidioc_try_fmt._entry.88, section ".printk_index", align 4
@vidioc_reqbufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: Freeing buffers\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_reqbufs\00", [17 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr = internal global ptr @vidioc_reqbufs._entry, section ".printk_index", align 4
@vidioc_reqbufs._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.3, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:%d: invalid capture state: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr.94 = internal global ptr @vidioc_reqbufs._entry.92, section ".printk_index", align 4
@vidioc_reqbufs._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.3, i32 1506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%d: error in vb2_reqbufs() for E(D)\0A\00", [54 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr.97 = internal global ptr @vidioc_reqbufs._entry.95, section ".printk_index", align 4
@vidioc_reqbufs._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.91, ptr @.str.3, i32 1514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: Failed to allocate encoding buffers\0A\00", [50 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr.100 = internal global ptr @vidioc_reqbufs._entry.98, section ".printk_index", align 4
@vidioc_reqbufs._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr.102 = internal global ptr @vidioc_reqbufs._entry.101, section ".printk_index", align 4
@vidioc_reqbufs._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.91, ptr @.str.3, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s:%d: invalid output state: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr.105 = internal global ptr @vidioc_reqbufs._entry.103, section ".printk_index", align 4
@vidioc_reqbufs._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.91, ptr @.str.3, i32 1540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s:%d: Minimum %d output buffers needed\0A\00", [53 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr.108 = internal global ptr @vidioc_reqbufs._entry.106, section ".printk_index", align 4
@vidioc_reqbufs._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.91, ptr @.str.3, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%d: error in vb2_reqbufs() for E(S)\0A\00", [54 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr.111 = internal global ptr @vidioc_reqbufs._entry.109, section ".printk_index", align 4
@vidioc_reqbufs._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.91, ptr @.str.3, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr.113 = internal global ptr @vidioc_reqbufs._entry.112, section ".printk_index", align 4
@vidioc_querybuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 1571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:%d: invalid context state: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vidioc_querybuf\00", [16 x i8] zeroinitializer }, align 32
@vidioc_querybuf._entry_ptr = internal global ptr @vidioc_querybuf._entry, section ".printk_index", align 4
@vidioc_querybuf._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%d: error in vb2_querybuf() for E(D)\0A\00", [53 x i8] zeroinitializer }, align 32
@vidioc_querybuf._entry_ptr.118 = internal global ptr @vidioc_querybuf._entry.116, section ".printk_index", align 4
@vidioc_querybuf._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.3, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%d: error in vb2_querybuf() for E(S)\0A\00", [53 x i8] zeroinitializer }, align 32
@vidioc_querybuf._entry_ptr.121 = internal global ptr @vidioc_querybuf._entry.119, section ".printk_index", align 4
@vidioc_querybuf._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.115, ptr @.str.3, i32 1587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_querybuf._entry_ptr.123 = internal global ptr @vidioc_querybuf._entry.122, section ".printk_index", align 4
@vidioc_qbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 1599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s:%d: Call on QBUF after unrecoverable error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vidioc_qbuf\00", [20 x i8] zeroinitializer }, align 32
@vidioc_qbuf._entry_ptr = internal global ptr @vidioc_qbuf._entry, section ".printk_index", align 4
@vidioc_qbuf._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.3, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s:%d: Call on QBUF after EOS command\0A\00", [55 x i8] zeroinitializer }, align 32
@vidioc_qbuf._entry_ptr.128 = internal global ptr @vidioc_qbuf._entry.126, section ".printk_index", align 4
@vidioc_dqbuf._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.129, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidioc_dqbuf = private unnamed_addr constant [13 x i8] c"vidioc_dqbuf\00", align 1
@vidioc_dqbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @__func__.vidioc_dqbuf, ptr @.str.3, i32 1624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s:%d: Call on DQBUF after unrecoverable error\0A\00", [46 x i8] zeroinitializer }, align 32
@vidioc_dqbuf._entry_ptr = internal global ptr @vidioc_dqbuf._entry, section ".printk_index", align 4
@vidioc_encoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 2293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s:%d: EOS: empty src queue, entering finishing state\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_encoder_cmd\00", [45 x i8] zeroinitializer }, align 32
@vidioc_encoder_cmd._entry_ptr = internal global ptr @vidioc_encoder_cmd._entry, section ".printk_index", align 4
@vidioc_encoder_cmd._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.3, i32 2300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s:%d: EOS: marking last buffer of stream\0A\00", [51 x i8] zeroinitializer }, align 32
@vidioc_encoder_cmd._entry_ptr.135 = internal global ptr @vidioc_encoder_cmd._entry.133, section ".printk_index", align 4
@vidioc_g_parm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.3, i32 2269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s:%d: Setting FPS is only possible for the output queue\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vidioc_g_parm\00", [18 x i8] zeroinitializer }, align 32
@vidioc_g_parm._entry_ptr = internal global ptr @vidioc_g_parm._entry, section ".printk_index", align 4
@vidioc_s_parm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.138, ptr @.str.3, i32 2252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vidioc_s_parm\00", [18 x i8] zeroinitializer }, align 32
@vidioc_s_parm._entry_ptr = internal global ptr @vidioc_s_parm._entry, section ".printk_index", align 4
@s5p_mfc_enc_g_v_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 2218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Encoding not initialised\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5p_mfc_enc_g_v_ctrl\00", [43 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_g_v_ctrl._entry_ptr = internal global ptr @s5p_mfc_enc_g_v_ctrl._entry, section ".printk_index", align 4
@s5p_mfc_enc_g_v_ctrl._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 2228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_g_v_ctrl._entry_ptr.142 = internal global ptr @s5p_mfc_enc_g_v_ctrl._entry.141, section ".printk_index", align 4
@s5p_mfc_enc_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 1896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s:%d: Level number is wrong\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5p_mfc_enc_s_ctrl\00", [45 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_s_ctrl._entry_ptr = internal global ptr @s5p_mfc_enc_s_ctrl._entry, section ".printk_index", align 4
@s5p_mfc_enc_s_ctrl._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 1904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_s_ctrl._entry_ptr.146 = internal global ptr @s5p_mfc_enc_s_ctrl._entry.145, section ".printk_index", align 4
@s5p_mfc_enc_s_ctrl._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.144, ptr @.str.3, i32 2200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Invalid control, id=%d, val=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@s5p_mfc_enc_s_ctrl._entry_ptr.149 = internal global ptr @s5p_mfc_enc_s_ctrl._entry.147, section ".printk_index", align 4
@h264_level.t = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 10, i32 9, i32 11, i32 12, i32 13, i32 20, i32 21, i32 22, i32 30, i32 31, i32 32, i32 40], [48 x i8] zeroinitializer }, align 32
@mpeg4_level.t = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 9, i32 1, i32 2, i32 3, i32 7, i32 4, i32 5], [32 x i8] zeroinitializer }, align 32
@vui_sar_idc.t = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 255], [56 x i8] zeroinitializer }, align 32
@__enc_update_hevc_qp_ctrls_range.__hevc_qp_ctrls = internal unnamed_addr constant [10 x i32] [i32 10029914, i32 10029915, i32 10029916, i32 10029920, i32 10029921, i32 10029922, i32 10029923, i32 10029924, i32 10029925, i32 10029926], align 4
@hevc_level.t = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 10, i32 20, i32 21, i32 30, i32 31, i32 40, i32 41, i32 50, i32 51, i32 52, i32 60, i32 61, i32 62], [44 x i8] zeroinitializer }, align 32
@mfc51_get_menu.mfc51_video_frame_skip = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Level Limit\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VBV/CPB Limit\00", [18 x i8] zeroinitializer }, align 32
@mfc51_get_menu.mfc51_video_force_frame = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.150, ptr @.str.153, ptr @.str.154, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I Frame\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Not Coded\00", [22 x i8] zeroinitializer }, align 32
@switch.table.enc_post_frame_start = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 16, i32 32], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.155 = internal global [6 x i64] [i64 4, i64 32, i64 101, i64 103, i64 105, i64 106]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.170 = internal global [117 x i64] [i64 115, i64 32, i64 10029514, i64 10029515, i64 10029516, i64 10029519, i64 10029526, i64 10029527, i64 10029528, i64 10029530, i64 10029531, i64 10029532, i64 10029533, i64 10029534, i64 10029539, i64 10029540, i64 10029541, i64 10029612, i64 10029613, i64 10029614, i64 10029615, i64 10029616, i64 10029662, i64 10029663, i64 10029664, i64 10029665, i64 10029666, i64 10029667, i64 10029668, i64 10029669, i64 10029670, i64 10029671, i64 10029672, i64 10029673, i64 10029674, i64 10029675, i64 10029676, i64 10029677, i64 10029678, i64 10029679, i64 10029712, i64 10029713, i64 10029714, i64 10029715, i64 10029716, i64 10029717, i64 10029718, i64 10029719, i64 10029812, i64 10029813, i64 10029814, i64 10029815, i64 10029816, i64 10029817, i64 10029818, i64 10029819, i64 10029820, i64 10029821, i64 10029822, i64 10029823, i64 10029912, i64 10029913, i64 10029914, i64 10029915, i64 10029916, i64 10029917, i64 10029918, i64 10029919, i64 10029920, i64 10029921, i64 10029922, i64 10029923, i64 10029924, i64 10029925, i64 10029926, i64 10029927, i64 10029928, i64 10029929, i64 10029930, i64 10029931, i64 10029932, i64 10029933, i64 10029934, i64 10029935, i64 10029936, i64 10029937, i64 10029938, i64 10029939, i64 10029940, i64 10029941, i64 10029942, i64 10029943, i64 10029944, i64 10029945, i64 10029946, i64 10029947, i64 10029948, i64 10029949, i64 10029950, i64 10029951, i64 10029952, i64 10029953, i64 10029954, i64 10029955, i64 10029956, i64 10029958, i64 10031362, i64 10031363, i64 10031364, i64 10031365, i64 10031366, i64 10031367, i64 10031410, i64 10031411, i64 10031412, i64 10031413, i64 10031414]
@__sancov_gen_cov_switch_values.171 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.174 = private unnamed_addr constant [18 x i8] c"encoder_codec_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1297, i32 39 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"s5p_mfc_enc_qops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2591, i32 23 }
@___asan_gen_.180 = private unnamed_addr constant [22 x i8] c"s5p_mfc_enc_ioctl_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2328, i32 36 }
@___asan_gen_.183 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2625, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2627, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 112, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant [21 x i8] c"s5p_mfc_enc_ctrl_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2236, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2671, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1163, i32 7 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1096, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1110, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1224, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1225, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1226, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1270, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2383, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2419, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2454, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2359, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2365, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2368, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2470, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2473, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2480, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2482, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2486, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2490, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2512, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1127, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2584, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1310, i32 23 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1312, i32 49 }
@___asan_gen_.366 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 33, i32 27 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1357, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1382, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1438, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1457, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1458, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1471, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1475, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1397, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1401, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1410, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1414, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1421, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1492, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1500, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1506, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1514, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1521, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1529, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1539, i32 5 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1548, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1553, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1571, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1576, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1583, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1587, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1599, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1604, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1624, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2293, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2300, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2269, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2252, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2218, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2228, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1896, i32 4 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1904, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2199, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1682, i32 22 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1701, i32 22 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1736, i32 22 }
@___asan_gen_.609 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1716, i32 22 }
@___asan_gen_.612 = private unnamed_addr constant [23 x i8] c"mfc51_video_frame_skip\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1073, i32 28 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1074, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1075, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1076, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant [24 x i8] c"mfc51_video_force_frame\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1079, i32 28 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1081, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.631 = private constant [48 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1082, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant [34 x i8] c"switch.table.enc_post_frame_start\00", align 1
@llvm.compiler.used = appending global [214 x ptr] [ptr @check_vb_with_fmt._entry, ptr @check_vb_with_fmt._entry.32, ptr @check_vb_with_fmt._entry.35, ptr @check_vb_with_fmt._entry_ptr, ptr @check_vb_with_fmt._entry_ptr.34, ptr @check_vb_with_fmt._entry_ptr.37, ptr @cleanup_ref_queue._entry, ptr @cleanup_ref_queue._entry_ptr, ptr @enc_post_frame_start._entry, ptr @enc_post_frame_start._entry.15, ptr @enc_post_frame_start._entry.18, ptr @enc_post_frame_start._entry.21, ptr @enc_post_frame_start._entry_ptr, ptr @enc_post_frame_start._entry_ptr.17, ptr @enc_post_frame_start._entry_ptr.20, ptr @enc_post_frame_start._entry_ptr.23, ptr @s5p_mfc_buf_init._entry, ptr @s5p_mfc_buf_init._entry_ptr, ptr @s5p_mfc_buf_prepare._entry, ptr @s5p_mfc_buf_prepare._entry.40, ptr @s5p_mfc_buf_prepare._entry.43, ptr @s5p_mfc_buf_prepare._entry.46, ptr @s5p_mfc_buf_prepare._entry.49, ptr @s5p_mfc_buf_prepare._entry.52, ptr @s5p_mfc_buf_prepare._entry_ptr, ptr @s5p_mfc_buf_prepare._entry_ptr.42, ptr @s5p_mfc_buf_prepare._entry_ptr.45, ptr @s5p_mfc_buf_prepare._entry_ptr.48, ptr @s5p_mfc_buf_prepare._entry_ptr.51, ptr @s5p_mfc_buf_prepare._entry_ptr.53, ptr @s5p_mfc_buf_queue._entry, ptr @s5p_mfc_buf_queue._entry_ptr, ptr @s5p_mfc_ctx_ready._entry, ptr @s5p_mfc_ctx_ready._entry.10, ptr @s5p_mfc_ctx_ready._entry_ptr, ptr @s5p_mfc_ctx_ready._entry_ptr.12, ptr @s5p_mfc_enc_ctrls_setup._entry, ptr @s5p_mfc_enc_ctrls_setup._entry.4, ptr @s5p_mfc_enc_ctrls_setup._entry_ptr, ptr @s5p_mfc_enc_ctrls_setup._entry_ptr.6, ptr @s5p_mfc_enc_g_v_ctrl._entry, ptr @s5p_mfc_enc_g_v_ctrl._entry.141, ptr @s5p_mfc_enc_g_v_ctrl._entry_ptr, ptr @s5p_mfc_enc_g_v_ctrl._entry_ptr.142, ptr @s5p_mfc_enc_s_ctrl._entry, ptr @s5p_mfc_enc_s_ctrl._entry.145, ptr @s5p_mfc_enc_s_ctrl._entry.147, ptr @s5p_mfc_enc_s_ctrl._entry_ptr, ptr @s5p_mfc_enc_s_ctrl._entry_ptr.146, ptr @s5p_mfc_enc_s_ctrl._entry_ptr.149, ptr @s5p_mfc_queue_setup._entry, ptr @s5p_mfc_queue_setup._entry.26, ptr @s5p_mfc_queue_setup._entry_ptr, ptr @s5p_mfc_queue_setup._entry_ptr.28, ptr @s5p_mfc_start_streaming._entry, ptr @s5p_mfc_start_streaming._entry_ptr, ptr @vidioc_dqbuf._entry, ptr @vidioc_dqbuf._entry_ptr, ptr @vidioc_encoder_cmd._entry, ptr @vidioc_encoder_cmd._entry.133, ptr @vidioc_encoder_cmd._entry_ptr, ptr @vidioc_encoder_cmd._entry_ptr.135, ptr @vidioc_g_fmt._entry, ptr @vidioc_g_fmt._entry.63, ptr @vidioc_g_fmt._entry_ptr, ptr @vidioc_g_fmt._entry_ptr.65, ptr @vidioc_g_parm._entry, ptr @vidioc_g_parm._entry_ptr, ptr @vidioc_qbuf._entry, ptr @vidioc_qbuf._entry.126, ptr @vidioc_qbuf._entry_ptr, ptr @vidioc_qbuf._entry_ptr.128, ptr @vidioc_querybuf._entry, ptr @vidioc_querybuf._entry.116, ptr @vidioc_querybuf._entry.119, ptr @vidioc_querybuf._entry.122, ptr @vidioc_querybuf._entry_ptr, ptr @vidioc_querybuf._entry_ptr.118, ptr @vidioc_querybuf._entry_ptr.121, ptr @vidioc_querybuf._entry_ptr.123, ptr @vidioc_reqbufs._entry, ptr @vidioc_reqbufs._entry.101, ptr @vidioc_reqbufs._entry.103, ptr @vidioc_reqbufs._entry.106, ptr @vidioc_reqbufs._entry.109, ptr @vidioc_reqbufs._entry.112, ptr @vidioc_reqbufs._entry.92, ptr @vidioc_reqbufs._entry.95, ptr @vidioc_reqbufs._entry.98, ptr @vidioc_reqbufs._entry_ptr, ptr @vidioc_reqbufs._entry_ptr.100, ptr @vidioc_reqbufs._entry_ptr.102, ptr @vidioc_reqbufs._entry_ptr.105, ptr @vidioc_reqbufs._entry_ptr.108, ptr @vidioc_reqbufs._entry_ptr.111, ptr @vidioc_reqbufs._entry_ptr.113, ptr @vidioc_reqbufs._entry_ptr.94, ptr @vidioc_reqbufs._entry_ptr.97, ptr @vidioc_s_fmt._entry, ptr @vidioc_s_fmt._entry.68, ptr @vidioc_s_fmt._entry.71, ptr @vidioc_s_fmt._entry.74, ptr @vidioc_s_fmt._entry.76, ptr @vidioc_s_fmt._entry_ptr, ptr @vidioc_s_fmt._entry_ptr.70, ptr @vidioc_s_fmt._entry_ptr.73, ptr @vidioc_s_fmt._entry_ptr.75, ptr @vidioc_s_fmt._entry_ptr.78, ptr @vidioc_s_parm._entry, ptr @vidioc_s_parm._entry_ptr, ptr @vidioc_try_fmt._entry, ptr @vidioc_try_fmt._entry.81, ptr @vidioc_try_fmt._entry.84, ptr @vidioc_try_fmt._entry.86, ptr @vidioc_try_fmt._entry.88, ptr @vidioc_try_fmt._entry_ptr, ptr @vidioc_try_fmt._entry_ptr.83, ptr @vidioc_try_fmt._entry_ptr.85, ptr @vidioc_try_fmt._entry_ptr.87, ptr @vidioc_try_fmt._entry_ptr.89, ptr @encoder_codec_ops, ptr @s5p_mfc_enc_qops, ptr @s5p_mfc_enc_ioctl_ops, ptr @s5p_mfc_enc_ctrls_setup._key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @controls, ptr @s5p_mfc_enc_ctrl_ops, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @formats, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @vidioc_dqbuf._rs, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.143, ptr @.str.144, ptr @.str.148, ptr @h264_level.t, ptr @mpeg4_level.t, ptr @vui_sar_idc.t, ptr @hevc_level.t, ptr @mfc51_get_menu.mfc51_video_frame_skip, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @mfc51_get_menu.mfc51_video_force_frame, ptr @.str.153, ptr @.str.154, ptr @switch.table.enc_post_frame_start], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encoder_codec_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_ctrls_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_ctrls_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controls to i32), i32 8816, i32 11008, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_ctrls_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_ctx_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_ctx_ready._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_post_frame_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_post_frame_start._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_post_frame_start._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_post_frame_start._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_queue_setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_vb_with_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_vb_with_fmt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_vb_with_fmt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_prepare._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_prepare._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_prepare._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_prepare._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_prepare._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_ref_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_querybuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_querybuf._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_querybuf._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_querybuf._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_qbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_qbuf._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_dqbuf._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_dqbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_encoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_encoder_cmd._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_parm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_parm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_g_v_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_g_v_ctrl._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_s_ctrl._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_enc_s_ctrl._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_level.t to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeg4_level.t to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vui_sar_idc.t to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hevc_level.t to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc51_get_menu.mfc51_video_frame_skip to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc51_get_menu.mfc51_video_force_frame to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.enc_post_frame_start to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_enc_codec_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @encoder_codec_ops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_enc_queue_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @s5p_mfc_enc_qops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_enc_v4l2_ioctl_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @s5p_mfc_enc_ioctl_ops
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_enc_ctrls_setup(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  %cfg = alloca %struct.v4l2_ctrl_config, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #9
  %0 = call ptr @memset(ptr %cfg, i32 255, i32 112)
  %ctrl_handler = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 65
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 116, ptr noundef nonnull @s5p_mfc_enc_ctrls_setup._key, ptr noundef nonnull @.str) #9
  %error = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 65, i32 9
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %id17 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 2
  %min = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 5
  %max = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 6
  %def = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 8
  %name24 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 3
  %type26 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 4
  %step39 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 7
  %menu_skip_mask40 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 13
  %qmenu = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 14
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2627) #12
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0161 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and = and i32 %6, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 10027008, i32 %and)
  %cmp9 = icmp ne i32 %and, 10027008
  %and12 = and i32 %6, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  %or.cond = or i1 %cmp9, %cmp13.not
  br i1 %or.cond, label %if.else45, label %if.then14

if.then14:                                        ; preds = %for.body
  %7 = call ptr @memset(ptr %cfg, i32 0, i32 112)
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @s5p_mfc_enc_ctrl_ops, ptr %cfg, align 8
  %9 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %id17, align 8
  %minimum = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 3
  %10 = ptrtoint ptr %minimum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minimum, align 4
  %conv = sext i32 %11 to i64
  %12 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %min, align 8
  %maximum = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 4
  %13 = ptrtoint ptr %maximum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maximum, align 4
  %conv20 = sext i32 %14 to i64
  %15 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv20, ptr %max, align 8
  %default_value = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 7
  %16 = ptrtoint ptr %default_value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %default_value, align 4
  %conv22 = sext i32 %17 to i64
  %18 = ptrtoint ptr %def to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv22, ptr %def, align 8
  %name = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 2
  %19 = ptrtoint ptr %name24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %name, ptr %name24, align 4
  %type = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  %22 = ptrtoint ptr %type26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %type26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp28 = icmp eq i32 %21, 3
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %menu_skip_mask = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 6
  %23 = ptrtoint ptr %menu_skip_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %menu_skip_mask, align 4
  %conv32 = zext i32 %24 to i64
  %25 = ptrtoint ptr %menu_skip_mask40 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv32, ptr %menu_skip_mask40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10031363, i32 %6)
  %switch.selectcmp.i = icmp eq i32 %6, 10031363
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @mfc51_get_menu.mfc51_video_force_frame, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 10031362, i32 %6)
  %switch.selectcmp2.i = icmp eq i32 %6, 10031362
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @mfc51_get_menu.mfc51_video_frame_skip, ptr %switch.select.i
  %26 = ptrtoint ptr %qmenu to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %switch.select3.i, ptr %qmenu, align 8
  br label %if.end41

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %step37 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 5
  %27 = ptrtoint ptr %step37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %step37, align 4
  %conv38 = sext i32 %28 to i64
  %29 = ptrtoint ptr %step39 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv38, ptr %step39, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then30
  %call43 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #9
  br label %if.end87

if.else45:                                        ; preds = %for.body
  %type47 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 1
  %30 = ptrtoint ptr %type47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type47, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.else67 [
    i32 3, label %if.else45.if.then54_crit_edge
    i32 9, label %if.else45.if.then54_crit_edge168
  ]

if.else45.if.then54_crit_edge168:                 ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.else45.if.then54_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then54:                                        ; preds = %if.else45.if.then54_crit_edge, %if.else45.if.then54_crit_edge168
  %maximum59 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 4
  %33 = ptrtoint ptr %maximum59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maximum59, align 4
  %conv60 = trunc i32 %34 to i8
  %default_value62 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 7
  %35 = ptrtoint ptr %default_value62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %default_value62, align 4
  %conv63 = trunc i32 %36 to i8
  %call64 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @s5p_mfc_enc_ctrl_ops, i32 noundef %6, i8 noundef zeroext %conv60, i64 noundef 0, i8 noundef zeroext %conv63) #9
  br label %if.end87

if.else67:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  %minimum72 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 3
  %37 = ptrtoint ptr %minimum72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %minimum72, align 4
  %conv73 = sext i32 %38 to i64
  %maximum75 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 4
  %39 = ptrtoint ptr %maximum75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %maximum75, align 4
  %conv76 = sext i32 %40 to i64
  %step78 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 5
  %41 = ptrtoint ptr %step78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %step78, align 4
  %conv79 = sext i32 %42 to i64
  %default_value81 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 7
  %43 = ptrtoint ptr %default_value81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %default_value81, align 4
  %conv82 = sext i32 %44 to i64
  %call83 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5p_mfc_enc_ctrl_ops, i32 noundef %6, i64 noundef %conv73, i64 noundef %conv76, i64 noundef %conv79, i64 noundef %conv82) #9
  br label %if.end87

if.end87:                                         ; preds = %if.else67, %if.then54, %if.end41
  %call64.sink = phi ptr [ %call64, %if.then54 ], [ %call83, %if.else67 ], [ %call43, %if.end41 ]
  %arrayidx66 = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 64, i32 %i.0161
  %45 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call64.sink, ptr %arrayidx66, align 4
  %46 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool90.not = icmp eq i32 %47, 0
  br i1 %tobool90.not, label %if.end102, label %do.end95

do.end95:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 2671, i32 noundef %i.0161) #12
  %48 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %error, align 4
  br label %cleanup

if.end102:                                        ; preds = %if.end87
  %is_volatile = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0161, i32 10
  %50 = ptrtoint ptr %is_volatile to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_volatile, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool105.not = icmp eq i8 %51, 0
  br i1 %tobool105.not, label %if.end102.for.inc_crit_edge, label %land.lhs.true106

if.end102.for.inc_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true106:                                 ; preds = %if.end102
  %arrayidx108 = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 64, i32 %i.0161
  %52 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx108, align 4
  %tobool109.not = icmp eq ptr %53, null
  br i1 %tobool109.not, label %land.lhs.true106.for.inc_crit_edge, label %if.then110

land.lhs.true106.for.inc_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then110:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  %flags113 = getelementptr inbounds %struct.v4l2_ctrl, ptr %53, i32 0, i32 20
  %54 = ptrtoint ptr %flags113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags113, align 4
  %or = or i32 %55, 128
  store i32 %or, ptr %flags113, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then110, %land.lhs.true106.for.inc_crit_edge, %if.end102.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0161, 1
  %exitcond.not = icmp eq i32 %inc, 116
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call116 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end95, %do.end
  %retval.0 = phi i32 [ %4, %do.end ], [ %49, %do.end95 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_enc_ctrls_delete(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 65
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #9
  %uglygep = getelementptr i8, ptr %ctx, i32 3536
  %0 = call ptr @memset(ptr %uglygep, i32 0, i32 464)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_enc_init(ptr nocapture noundef writeonly %ctx) local_unnamed_addr #5 align 64 {
entry:
  %f = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %f) #9
  %0 = call ptr @memset(ptr %f, i32 255, i32 204)
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 842091854, ptr %pixelformat, align 4
  %call = call fastcc ptr @find_format(ptr noundef nonnull %f, i32 noundef 2)
  %src_fmt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %src_fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %src_fmt, align 4
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 875967048, ptr %pixelformat, align 4
  %call3 = call fastcc ptr @find_format(ptr noundef nonnull %f, i32 noundef 1)
  %dst_fmt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 8
  %4 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %dst_fmt, align 4
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %f) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_format(ptr nocapture noundef readonly %f, i32 noundef %t) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp1 = icmp eq i32 %2, %1
  br i1 %cmp1, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %t)
  %cmp3 = icmp eq i32 %3, %t
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %4 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp1.1 = icmp eq i32 %4, %1
  br i1 %cmp1.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %5 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %t)
  %cmp3.1 = icmp eq i32 %5, %t
  br i1 %cmp3.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %6 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp1.2 = icmp eq i32 %6, %1
  br i1 %cmp1.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %7 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %t)
  %cmp3.2 = icmp eq i32 %7, %t
  br i1 %cmp3.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %8 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp1.3 = icmp eq i32 %8, %1
  br i1 %cmp1.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %9 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %t)
  %cmp3.3 = icmp eq i32 %9, %t
  br i1 %cmp3.3, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %10 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp1.4 = icmp eq i32 %10, %1
  br i1 %cmp1.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %11 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %t)
  %cmp3.4 = icmp eq i32 %11, %t
  br i1 %cmp3.4, label %land.lhs.true.4.cleanup_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %12 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %1)
  %cmp1.5 = icmp eq i32 %12, %1
  br i1 %cmp1.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %13 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %t)
  %cmp3.5 = icmp eq i32 %13, %t
  br i1 %cmp3.5, label %land.lhs.true.5.cleanup_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %14 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp1.6 = icmp eq i32 %14, %1
  br i1 %cmp1.6, label %land.lhs.true.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %15 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %t)
  %cmp3.6 = icmp eq i32 %15, %t
  br i1 %cmp3.6, label %land.lhs.true.6.cleanup_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %16 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %1)
  %cmp1.7 = icmp eq i32 %16, %1
  br i1 %cmp1.7, label %land.lhs.true.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %17 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %t)
  %cmp3.7 = icmp eq i32 %17, %t
  br i1 %cmp3.7, label %land.lhs.true.7.cleanup_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %18 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp1.8 = icmp eq i32 %18, %1
  br i1 %cmp1.8, label %land.lhs.true.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %19 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %t)
  %cmp3.8 = icmp eq i32 %19, %t
  br i1 %cmp3.8, label %land.lhs.true.8.cleanup_crit_edge, label %land.lhs.true.8.for.inc.8_crit_edge

land.lhs.true.8.for.inc.8_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

land.lhs.true.8.cleanup_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.8:                                        ; preds = %land.lhs.true.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.8, %land.lhs.true.8.cleanup_crit_edge, %land.lhs.true.7.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ @formats, %land.lhs.true.cleanup_crit_edge ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1), %land.lhs.true.1.cleanup_crit_edge ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2), %land.lhs.true.2.cleanup_crit_edge ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3), %land.lhs.true.3.cleanup_crit_edge ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4), %land.lhs.true.4.cleanup_crit_edge ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5), %land.lhs.true.5.cleanup_crit_edge ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6), %land.lhs.true.6.cleanup_crit_edge ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7), %land.lhs.true.7.cleanup_crit_edge ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8), %land.lhs.true.8.cleanup_crit_edge ], [ null, %for.inc.8 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc_pre_seq_start(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  %2 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst_queue, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %5, i32 noundef 0) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %entry.vb2_plane_size.exit_crit_edge, label %if.then.i

entry.vb2_plane_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr %struct.vb2_buffer, ptr %9, i32 0, i32 10, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %entry.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ 0, %entry.vb2_plane_size.exit_crit_edge ]
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %14 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %vb2_plane_size.exit.cond.end_crit_edge, label %land.lhs.true

vb2_plane_size.exit.cond.end_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

land.lhs.true:                                    ; preds = %vb2_plane_size.exit
  %set_enc_stream_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %set_enc_stream_buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_enc_stream_buffer, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 %17(ptr noundef %ctx, i32 noundef %7, i32 noundef %retval.0.i) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %vb2_plane_size.exit.cond.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc_post_seq_start(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %seq_hdr_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 52, i32 19
  %2 = ptrtoint ptr %seq_hdr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq_hdr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  %4 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dst_queue, align 4
  %cmp.i.not = icmp eq ptr %5, %dst_queue
  br i1 %cmp.i.not, label %if.then.if.end12_crit_edge, label %if.then2

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2:                                         ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_del.exit_crit_edge

if.then2.list_del.exit_crit_edge:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then2.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dst_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %14 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_queue_cnt, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %dst_queue_cnt, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %18 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mfc_ops, align 4
  %tobool4.not = icmp eq ptr %19, null
  br i1 %tobool4.not, label %list_del.exit.cond.end_crit_edge, label %land.lhs.true

list_del.exit.cond.end_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

land.lhs.true:                                    ; preds = %list_del.exit
  %get_enc_strm_size = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %19, i32 0, i32 30
  %20 = ptrtoint ptr %get_enc_strm_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_enc_strm_size, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 %21(ptr noundef %1) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %list_del.exit.cond.end_crit_edge
  %cond = phi i32 [ %call9, %cond.true ], [ -19, %land.lhs.true.cond.end_crit_edge ], [ -19, %list_del.exit.cond.end_crit_edge ]
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i, label %cond.end.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

cond.end.vb2_set_plane_payload.exit_crit_edge:    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %cond.end
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %17, i32 0, i32 10, i32 0, i32 4
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %cond)
  %cmp1.i = icmp ult i32 %25, %cond
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !307

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %27, %if.then38.i ], [ %cond, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %17, i32 0, i32 10, i32 0, i32 3
  %28 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %cond.end.vb2_set_plane_payload.exit_crit_edge
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  tail call void @vb2_buffer_done(ptr noundef %30, i32 noundef 5) #9
  br label %if.end12

if.end12:                                         ; preds = %vb2_set_plane_payload.exit, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %variant, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %34)
  %cmp13 = icmp ugt i32 %34, 95
  br i1 %cmp13, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end12
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 105, ptr %state, align 4
  %call17 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end20_crit_edge, label %if.then19

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @set_work_bit_irqsave(ptr noundef %ctx) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then16.if.end20_crit_edge
  %mfc_ops21 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %36 = ptrtoint ptr %mfc_ops21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mfc_ops21, align 4
  %tobool22.not = icmp eq ptr %37, null
  br i1 %tobool22.not, label %if.end20.if.end68_crit_edge, label %land.lhs.true23

if.end20.if.end68_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true23:                                  ; preds = %if.end20
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %try_run, align 4
  %tobool25.not = icmp eq ptr %39, null
  br i1 %tobool25.not, label %land.lhs.true23.if.end68_crit_edge, label %cond.true26

land.lhs.true23.if.end68_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

cond.true26:                                      ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %39(ptr noundef %1) #9
  br label %if.end68

if.else:                                          ; preds = %if.end12
  %mfc_ops31 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %40 = ptrtoint ptr %mfc_ops31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mfc_ops31, align 4
  %tobool32.not = icmp eq ptr %41, null
  br i1 %tobool32.not, label %if.else.cond.end41_crit_edge, label %land.lhs.true33

if.else.cond.end41_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end41

land.lhs.true33:                                  ; preds = %if.else
  %get_enc_dpb_count = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %41, i32 0, i32 32
  %42 = ptrtoint ptr %get_enc_dpb_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_enc_dpb_count, align 4
  %tobool35.not = icmp eq ptr %43, null
  br i1 %tobool35.not, label %land.lhs.true33.cond.end41_crit_edge, label %cond.true36

land.lhs.true33.cond.end41_crit_edge:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end41

cond.true36:                                      ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 %43(ptr noundef %1) #9
  br label %cond.end41

cond.end41:                                       ; preds = %cond.true36, %land.lhs.true33.cond.end41_crit_edge, %if.else.cond.end41_crit_edge
  %cond42 = phi i32 [ %call39, %cond.true36 ], [ -19, %land.lhs.true33.cond.end41_crit_edge ], [ -19, %if.else.cond.end41_crit_edge ]
  %pb_count = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %44 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pb_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %cond42)
  %cmp43 = icmp ult i32 %45, %cond42
  br i1 %cmp43, label %if.then44, label %cond.end41.if.end46_crit_edge

cond.end41.if.end46_crit_edge:                    ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %pb_count to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond42, ptr %pb_count, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %cond.end41.if.end46_crit_edge
  %47 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %variant, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %50)
  %cmp49 = icmp ugt i32 %50, 159
  br i1 %cmp49, label %if.then52, label %if.end46.if.end66_crit_edge

if.end46.if.end66_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then52:                                        ; preds = %if.end46
  %51 = ptrtoint ptr %mfc_ops31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mfc_ops31, align 4
  %tobool54.not = icmp eq ptr %52, null
  br i1 %tobool54.not, label %if.then52.cond.end63_crit_edge, label %land.lhs.true55

if.then52.cond.end63_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end63

land.lhs.true55:                                  ; preds = %if.then52
  %get_e_min_scratch_buf_size = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %52, i32 0, i32 38
  %53 = ptrtoint ptr %get_e_min_scratch_buf_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_e_min_scratch_buf_size, align 4
  %tobool57.not = icmp eq ptr %54, null
  br i1 %tobool57.not, label %land.lhs.true55.cond.end63_crit_edge, label %cond.true58

land.lhs.true55.cond.end63_crit_edge:             ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end63

cond.true58:                                      ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 %54(ptr noundef %1) #9
  br label %cond.end63

cond.end63:                                       ; preds = %cond.true58, %land.lhs.true55.cond.end63_crit_edge, %if.then52.cond.end63_crit_edge
  %cond64 = phi i32 [ %call61, %cond.true58 ], [ -19, %land.lhs.true55.cond.end63_crit_edge ], [ -19, %if.then52.cond.end63_crit_edge ]
  %scratch_buf_size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 66
  %55 = ptrtoint ptr %scratch_buf_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond64, ptr %scratch_buf_size, align 4
  %size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 28, i32 3
  %56 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size, align 4
  %add = add i32 %57, %cond64
  store i32 %add, ptr %size, align 4
  br label %if.end66

if.end66:                                         ; preds = %cond.end63, %if.end46.if.end66_crit_edge
  %state67 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %58 = ptrtoint ptr %state67 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 103, ptr %state67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %cond.true26, %land.lhs.true23.if.end68_crit_edge, %if.end20.if.end68_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc_pre_frame_start(ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %2 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_queue, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %5, i32 noundef 0) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call.i44 = tail call ptr @vb2_plane_cookie(ptr noundef %9, i32 noundef 1) #9
  %10 = ptrtoint ptr %call.i44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i44, align 4
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %12 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %set_enc_frame_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %set_enc_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_enc_frame_buffer, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %15(ptr noundef %ctx, i32 noundef %7, i32 noundef %11) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  %16 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst_queue, align 4
  %add.ptr12 = getelementptr i8, ptr %17, i32 -4
  %18 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr12, align 4
  %call.i45 = tail call ptr @vb2_plane_cookie(ptr noundef %19, i32 noundef 0) #9
  %20 = ptrtoint ptr %call.i45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i45, align 4
  %22 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr12, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.not = icmp eq i32 %25, 0
  br i1 %cmp.i.not, label %cond.end.vb2_plane_size.exit_crit_edge, label %if.then.i

cond.end.vb2_plane_size.exit_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr %struct.vb2_buffer, ptr %23, i32 0, i32 10, i32 0, i32 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %cond.end.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %27, %if.then.i ], [ 0, %cond.end.vb2_plane_size.exit_crit_edge ]
  %28 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mfc_ops, align 4
  %tobool20.not = icmp eq ptr %29, null
  br i1 %tobool20.not, label %vb2_plane_size.exit.cond.end29_crit_edge, label %land.lhs.true21

vb2_plane_size.exit.cond.end29_crit_edge:         ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end29

land.lhs.true21:                                  ; preds = %vb2_plane_size.exit
  %set_enc_stream_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %set_enc_stream_buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_enc_stream_buffer, align 4
  %tobool23.not = icmp eq ptr %31, null
  br i1 %tobool23.not, label %land.lhs.true21.cond.end29_crit_edge, label %cond.true24

land.lhs.true21.cond.end29_crit_edge:             ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end29

cond.true24:                                      ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 %31(ptr noundef %ctx, i32 noundef %21, i32 noundef %retval.0.i) #9
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true24, %land.lhs.true21.cond.end29_crit_edge, %vb2_plane_size.exit.cond.end29_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc_post_frame_start(ptr noundef %ctx) #1 align 64 {
entry:
  %enc_y_addr = alloca i32, align 4
  %enc_c_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enc_y_addr) #9
  %2 = ptrtoint ptr %enc_y_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %enc_y_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enc_c_addr) #9
  %3 = ptrtoint ptr %enc_c_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %enc_c_addr, align 4
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cond.end16_crit_edge, label %land.lhs.true

entry.cond.end16_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end16

land.lhs.true:                                    ; preds = %entry
  %get_enc_slice_type = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %5, i32 0, i32 31
  %6 = ptrtoint ptr %get_enc_slice_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_enc_slice_type, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %7(ptr noundef %1) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge
  %cond.ph = phi i32 [ -19, %land.lhs.true.cond.end_crit_edge ], [ %call, %cond.true ]
  %8 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %mfc_ops, align 4
  %tobool7.not = icmp eq ptr %.pr, null
  br i1 %tobool7.not, label %cond.end.cond.end16_crit_edge, label %land.lhs.true8

cond.end.cond.end16_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end16

land.lhs.true8:                                   ; preds = %cond.end
  %get_enc_strm_size = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr, i32 0, i32 30
  %9 = ptrtoint ptr %get_enc_strm_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_enc_strm_size, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %land.lhs.true8.cond.end16_crit_edge, label %cond.true11

land.lhs.true8.cond.end16_crit_edge:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end16

cond.true11:                                      ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 %10(ptr noundef %1) #9
  br label %cond.end16

cond.end16:                                       ; preds = %cond.true11, %land.lhs.true8.cond.end16_crit_edge, %cond.end.cond.end16_crit_edge, %entry.cond.end16_crit_edge
  %cond268 = phi i32 [ %cond.ph, %cond.true11 ], [ %cond.ph, %land.lhs.true8.cond.end16_crit_edge ], [ %cond.ph, %cond.end.cond.end16_crit_edge ], [ -19, %entry.cond.end16_crit_edge ]
  %cond17 = phi i32 [ %call14, %cond.true11 ], [ -19, %land.lhs.true8.cond.end16_crit_edge ], [ -19, %cond.end.cond.end16_crit_edge ], [ -19, %entry.cond.end16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %11 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %do.body22, label %cond.end16.do.end46_crit_edge

cond.end16.do.end46_crit_edge:                    ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.body22:                                        ; preds = %cond.end16
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1224, i32 noundef %cond268) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr270 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr270)
  %cmp23 = icmp sgt i32 %.pr270, 1
  br i1 %cmp23, label %do.body33, label %do.body22.do.end46_crit_edge

do.body22.do.end46_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.body33:                                        ; preds = %do.body22
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef 1225, i32 noundef %cond17) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr274 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr274)
  %cmp34 = icmp sgt i32 %.pr274, 1
  br i1 %cmp34, label %do.end38, label %do.body33.do.end46_crit_edge

do.body33.do.end46_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 8200
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !308
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !309
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14, i32 noundef 1227, i32 noundef %15) #12
  br label %do.end46

do.end46:                                         ; preds = %do.end38, %do.body33.do.end46_crit_edge, %do.body22.do.end46_crit_edge, %cond.end16.do.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond268)
  %cmp47 = icmp sgt i32 %cond268, -1
  br i1 %cmp47, label %if.then48, label %do.end46.if.end112_crit_edge

do.end46.if.end112_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then48:                                        ; preds = %do.end46
  %16 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mfc_ops, align 4
  %tobool50.not = icmp eq ptr %17, null
  br i1 %tobool50.not, label %if.then48.cond.end58_crit_edge, label %land.lhs.true51

if.then48.cond.end58_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end58

land.lhs.true51:                                  ; preds = %if.then48
  %get_enc_frame_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %get_enc_frame_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_enc_frame_buffer, align 4
  %tobool53.not = icmp eq ptr %19, null
  br i1 %tobool53.not, label %land.lhs.true51.cond.end58_crit_edge, label %cond.true54

land.lhs.true51.cond.end58_crit_edge:             ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end58

cond.true54:                                      ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  call void %19(ptr noundef %ctx, ptr noundef nonnull %enc_y_addr, ptr noundef nonnull %enc_c_addr) #9
  br label %cond.end58

cond.end58:                                       ; preds = %cond.true54, %land.lhs.true51.cond.end58_crit_edge, %if.then48.cond.end58_crit_edge
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %20 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn284 = load ptr, ptr %src_queue, align 4
  %cmp62.not286 = icmp eq ptr %.pn284, %src_queue
  br i1 %cmp62.not286, label %cond.end58.for.end_crit_edge, label %cond.end58.for.body_crit_edge

cond.end58.for.body_crit_edge:                    ; preds = %cond.end58
  br label %for.body

cond.end58.for.end_crit_edge:                     ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end58.for.body_crit_edge
  %.pn287 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn284, %cond.end58.for.body_crit_edge ]
  %mb_entry.0288 = getelementptr i8, ptr %.pn287, i32 -4
  %21 = ptrtoint ptr %mb_entry.0288 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mb_entry.0288, align 4
  %call.i = call ptr @vb2_plane_cookie(ptr noundef %22, i32 noundef 0) #9
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i, align 4
  %25 = ptrtoint ptr %mb_entry.0288 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mb_entry.0288, align 4
  %call.i242 = call ptr @vb2_plane_cookie(ptr noundef %26, i32 noundef 1) #9
  %27 = ptrtoint ptr %enc_y_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enc_y_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp67 = icmp eq i32 %28, %24
  br i1 %cmp67, label %land.lhs.true68, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true68:                                  ; preds = %for.body
  %29 = ptrtoint ptr %call.i242 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i242, align 4
  %31 = ptrtoint ptr %enc_c_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %enc_c_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp69 = icmp eq i32 %32, %30
  br i1 %cmp69, label %if.then70, label %land.lhs.true68.for.inc_crit_edge

land.lhs.true68.for.inc_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then70:                                        ; preds = %land.lhs.true68
  %mb_entry.0288.le = getelementptr i8, ptr %.pn287, i32 -4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn287) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then70.list_del.exit_crit_edge

if.then70.list_del.exit_crit_edge:                ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn287, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %.pn287 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pn287, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then70.list_del.exit_crit_edge
  %39 = ptrtoint ptr %.pn287 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn287, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn287, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %src_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 13
  %41 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %src_queue_cnt, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %src_queue_cnt, align 4
  %43 = ptrtoint ptr %mb_entry.0288.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mb_entry.0288.le, align 4
  call void @vb2_buffer_done(ptr noundef %44, i32 noundef 5) #9
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true68.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %45 = ptrtoint ptr %.pn287 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn287, align 4
  %cmp62.not = icmp eq ptr %.pn, %src_queue
  br i1 %cmp62.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit, %cond.end58.for.end_crit_edge
  %ref_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 59
  %46 = ptrtoint ptr %ref_queue to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn241289 = load ptr, ptr %ref_queue, align 4
  %cmp87.not291 = icmp eq ptr %.pn241289, %ref_queue
  br i1 %cmp87.not291, label %for.end.if.end112_crit_edge, label %for.end.for.body89_crit_edge

for.end.for.body89_crit_edge:                     ; preds = %for.end
  br label %for.body89

for.end.if.end112_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

for.body89:                                       ; preds = %for.inc105.for.body89_crit_edge, %for.end.for.body89_crit_edge
  %.pn241292 = phi ptr [ %.pn241, %for.inc105.for.body89_crit_edge ], [ %.pn241289, %for.end.for.body89_crit_edge ]
  %mb_entry.1293 = getelementptr i8, ptr %.pn241292, i32 -4
  %47 = ptrtoint ptr %mb_entry.1293 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mb_entry.1293, align 4
  %call.i243 = call ptr @vb2_plane_cookie(ptr noundef %48, i32 noundef 0) #9
  %49 = ptrtoint ptr %call.i243 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call.i243, align 4
  %51 = ptrtoint ptr %mb_entry.1293 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mb_entry.1293, align 4
  %call.i244 = call ptr @vb2_plane_cookie(ptr noundef %52, i32 noundef 1) #9
  %53 = ptrtoint ptr %enc_y_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %enc_y_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %50)
  %cmp96 = icmp eq i32 %54, %50
  br i1 %cmp96, label %land.lhs.true97, label %for.body89.for.inc105_crit_edge

for.body89.for.inc105_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc105

land.lhs.true97:                                  ; preds = %for.body89
  %55 = ptrtoint ptr %call.i244 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call.i244, align 4
  %57 = ptrtoint ptr %enc_c_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %enc_c_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %56)
  %cmp98 = icmp eq i32 %58, %56
  br i1 %cmp98, label %if.then99, label %land.lhs.true97.for.inc105_crit_edge

land.lhs.true97.for.inc105_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc105

if.then99:                                        ; preds = %land.lhs.true97
  %mb_entry.1293.le = getelementptr i8, ptr %.pn241292, i32 -4
  %call.i.i245 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn241292) #9
  br i1 %call.i.i245, label %if.end.i.i248, label %if.then99.list_del.exit250_crit_edge

if.then99.list_del.exit250_crit_edge:             ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit250

if.end.i.i248:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i246 = getelementptr inbounds %struct.list_head, ptr %.pn241292, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i246 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i246, align 4
  %61 = ptrtoint ptr %.pn241292 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %.pn241292, align 4
  %prev1.i.i.i247 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i247 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i247, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit250

list_del.exit250:                                 ; preds = %if.end.i.i248, %if.then99.list_del.exit250_crit_edge
  %65 = ptrtoint ptr %.pn241292 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn241292, align 4
  %prev.i249 = getelementptr inbounds %struct.list_head, ptr %.pn241292, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i249 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i249, align 4
  %ref_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 60
  %67 = ptrtoint ptr %ref_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ref_queue_cnt, align 4
  %dec101 = add i32 %68, -1
  store i32 %dec101, ptr %ref_queue_cnt, align 4
  %69 = ptrtoint ptr %mb_entry.1293.le to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mb_entry.1293.le, align 4
  call void @vb2_buffer_done(ptr noundef %70, i32 noundef 5) #9
  br label %if.end112

for.inc105:                                       ; preds = %land.lhs.true97.for.inc105_crit_edge, %for.body89.for.inc105_crit_edge
  %71 = ptrtoint ptr %.pn241292 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn241 = load ptr, ptr %.pn241292, align 4
  %cmp87.not = icmp eq ptr %.pn241, %ref_queue
  br i1 %cmp87.not, label %for.inc105.if.end112_crit_edge, label %for.inc105.for.body89_crit_edge

for.inc105.for.body89_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body89

for.inc105.if.end112_crit_edge:                   ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.end112:                                        ; preds = %for.inc105.if.end112_crit_edge, %list_del.exit250, %for.end.if.end112_crit_edge, %do.end46.if.end112_crit_edge
  %src_queue_cnt113 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 13
  %72 = ptrtoint ptr %src_queue_cnt113 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %src_queue_cnt113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp114.not = icmp eq i32 %73, 0
  br i1 %cmp114.not, label %if.end112.do.body133_crit_edge, label %land.lhs.true115

if.end112.do.body133_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body133

land.lhs.true115:                                 ; preds = %if.end112
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %74 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %75)
  %cmp116 = icmp eq i32 %75, 105
  br i1 %cmp116, label %if.then117, label %land.lhs.true115.do.body133_crit_edge

land.lhs.true115.do.body133_crit_edge:            ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body133

if.then117:                                       ; preds = %land.lhs.true115
  %src_queue119 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %76 = ptrtoint ptr %src_queue119 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %src_queue119, align 4
  %flags = getelementptr i8, ptr %77, i32 16
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 4
  %and = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool123.not = icmp eq i32 %and, 0
  br i1 %tobool123.not, label %if.then117.do.body133_crit_edge, label %if.then124

if.then117.do.body133_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body133

if.then124:                                       ; preds = %if.then117
  %call.i.i251 = call zeroext i1 @__list_del_entry_valid(ptr noundef %77) #9
  br i1 %call.i.i251, label %if.end.i.i254, label %if.then124.list_del.exit256_crit_edge

if.then124.list_del.exit256_crit_edge:            ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit256

if.end.i.i254:                                    ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i252 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i252 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i252, align 4
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %77, align 4
  %prev1.i.i.i253 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i.i253 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev1.i.i.i253, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %81, align 4
  br label %list_del.exit256

list_del.exit256:                                 ; preds = %if.end.i.i254, %if.then124.list_del.exit256_crit_edge
  %86 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 256 to ptr), ptr %77, align 4
  %prev.i255 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i255 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i255, align 4
  %88 = ptrtoint ptr %src_queue_cnt113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %src_queue_cnt113, align 4
  %dec127 = add i32 %89, -1
  store i32 %dec127, ptr %src_queue_cnt113, align 4
  %ref_queue129 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 59
  %prev.i257 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 59, i32 1
  %90 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i257, align 4
  %call.i.i258 = call zeroext i1 @__list_add_valid(ptr noundef %77, ptr noundef %91, ptr noundef %ref_queue129) #9
  br i1 %call.i.i258, label %if.end.i.i259, label %list_del.exit256.list_add_tail.exit_crit_edge

list_del.exit256.list_add_tail.exit_crit_edge:    ; preds = %list_del.exit256
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i259:                                    ; preds = %list_del.exit256
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %77, ptr %prev.i257, align 4
  %93 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %ref_queue129, ptr %77, align 4
  %94 = ptrtoint ptr %prev.i255 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev.i255, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %77, ptr %91, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i259, %list_del.exit256.list_add_tail.exit_crit_edge
  %ref_queue_cnt130 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 60
  %96 = ptrtoint ptr %ref_queue_cnt130 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ref_queue_cnt130, align 4
  %inc = add i32 %97, 1
  store i32 %inc, ptr %ref_queue_cnt130, align 4
  br label %do.body133

do.body133:                                       ; preds = %list_add_tail.exit, %if.then117.do.body133_crit_edge, %land.lhs.true115.do.body133_crit_edge, %if.end112.do.body133_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %98 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp134 = icmp sgt i32 %98, 1
  br i1 %cmp134, label %do.end138, label %do.body133.do.end145_crit_edge

do.body133.do.end145_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end145

do.end138:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %src_queue_cnt113 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %src_queue_cnt113, align 4
  %ref_queue_cnt141 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 60
  %101 = ptrtoint ptr %ref_queue_cnt141 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ref_queue_cnt141, align 4
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.14, i32 noundef 1271, i32 noundef %100, i32 noundef %102) #12
  br label %do.end145

do.end145:                                        ; preds = %do.end138, %do.body133.do.end145_crit_edge
  %dst_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %103 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dst_queue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp146.not = icmp eq i32 %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond17)
  %cmp148.not = icmp eq i32 %cond17, 0
  %or.cond = select i1 %cmp146.not, i1 true, i1 %cmp148.not
  br i1 %or.cond, label %do.end145.if.end171_crit_edge, label %if.then149

do.end145.if.end171_crit_edge:                    ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

if.then149:                                       ; preds = %do.end145
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  %105 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dst_queue, align 4
  %add.ptr153 = getelementptr i8, ptr %106, i32 -4
  %call.i.i260 = call zeroext i1 @__list_del_entry_valid(ptr noundef %106) #9
  br i1 %call.i.i260, label %if.end.i.i263, label %if.then149.list_del.exit265_crit_edge

if.then149.list_del.exit265_crit_edge:            ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit265

if.end.i.i263:                                    ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i261 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i261 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i261, align 4
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %106, align 4
  %prev1.i.i.i262 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %prev1.i.i.i262 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev1.i.i.i262, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %110, ptr %108, align 4
  br label %list_del.exit265

list_del.exit265:                                 ; preds = %if.end.i.i263, %if.then149.list_del.exit265_crit_edge
  %113 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 256 to ptr), ptr %106, align 4
  %prev.i264 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i264 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i264, align 4
  %115 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dst_queue_cnt, align 4
  %dec156 = add i32 %116, -1
  store i32 %dec156, ptr %dst_queue_cnt, align 4
  %switch.tableidx = add i32 %cond268, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %117 = icmp ult i32 %switch.tableidx, 3
  br i1 %117, label %switch.lookup, label %list_del.exit265.sw.epilog_crit_edge

list_del.exit265.sw.epilog_crit_edge:             ; preds = %list_del.exit265
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %list_del.exit265
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.enc_post_frame_start, i32 0, i32 %switch.tableidx
  %118 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %118)
  %switch.load = load i32, ptr %switch.gep, align 4
  %119 = ptrtoint ptr %add.ptr153 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr153, align 4
  %flags158 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags158, align 8
  %or166 = or i32 %122, %switch.load
  store i32 %or166, ptr %flags158, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %list_del.exit265.sw.epilog_crit_edge
  %123 = ptrtoint ptr %add.ptr153 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr153, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.not.i = icmp eq i32 %126, 0
  br i1 %cmp.not.i, label %sw.epilog.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

sw.epilog.vb2_set_plane_payload.exit_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %sw.epilog
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %124, i32 0, i32 10, i32 0, i32 4
  %127 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %cond17)
  %cmp1.i = icmp ult i32 %128, %cond17
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !307

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %129 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %130, %if.then38.i ], [ %cond17, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %124, i32 0, i32 10, i32 0, i32 3
  %131 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %sw.epilog.vb2_set_plane_payload.exit_crit_edge
  %132 = ptrtoint ptr %add.ptr153 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr153, align 4
  call void @vb2_buffer_done(ptr noundef %133, i32 noundef 5) #9
  br label %if.end171

if.end171:                                        ; preds = %vb2_set_plane_payload.exit, %do.end145.if.end171_crit_edge
  %134 = ptrtoint ptr %src_queue_cnt113 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %src_queue_cnt113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp173 = icmp eq i32 %135, 0
  br i1 %cmp173, label %if.end171.if.then176_crit_edge, label %lor.lhs.false

if.end171.if.then176_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then176

lor.lhs.false:                                    ; preds = %if.end171
  %136 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dst_queue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp175 = icmp eq i32 %137, 0
  br i1 %cmp175, label %lor.lhs.false.if.then176_crit_edge, label %lor.lhs.false.if.end177_crit_edge

lor.lhs.false.if.end177_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

lor.lhs.false.if.then176_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then176

if.then176:                                       ; preds = %lor.lhs.false.if.then176_crit_edge, %if.end171.if.then176_crit_edge
  call void @clear_work_bit(ptr noundef %ctx) #9
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %lor.lhs.false.if.end177_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enc_c_addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enc_y_addr) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_ctx_ready(ptr nocapture noundef readonly %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %src_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 13
  %1 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src_queue_cnt, align 4
  %dst_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %3 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dst_queue_cnt, align 4
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1097, i32 noundef %2, i32 noundef %4, i32 noundef %6) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %state3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %7 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state3, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %8, label %do.end2.do.body28_crit_edge [
    i32 101, label %land.lhs.true
    i32 105, label %do.end2.land.lhs.true13_crit_edge
    i32 103, label %do.end2.land.lhs.true13_crit_edge48
    i32 106, label %land.lhs.true23
  ]

do.end2.land.lhs.true13_crit_edge48:              ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true13

do.end2.land.lhs.true13_crit_edge:                ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true13

do.end2.do.body28_crit_edge:                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

land.lhs.true:                                    ; preds = %do.end2
  %dst_queue_cnt5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %10 = ptrtoint ptr %dst_queue_cnt5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst_queue_cnt5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.not = icmp eq i32 %11, 0
  br i1 %cmp6.not, label %land.lhs.true.do.body28_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.do.body28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

land.lhs.true13:                                  ; preds = %do.end2.land.lhs.true13_crit_edge, %do.end2.land.lhs.true13_crit_edge48
  %src_queue_cnt14 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 13
  %12 = ptrtoint ptr %src_queue_cnt14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_queue_cnt14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15.not = icmp eq i32 %13, 0
  br i1 %cmp15.not, label %land.lhs.true13.do.body28_crit_edge, label %land.lhs.true16

land.lhs.true13.do.body28_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %dst_queue_cnt17 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %14 = ptrtoint ptr %dst_queue_cnt17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_queue_cnt17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.not = icmp eq i32 %15, 0
  br i1 %cmp18.not, label %land.lhs.true16.do.body28_crit_edge, label %land.lhs.true16.return_crit_edge

land.lhs.true16.return_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true16.do.body28_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

land.lhs.true23:                                  ; preds = %do.end2
  %dst_queue_cnt24 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %16 = ptrtoint ptr %dst_queue_cnt24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst_queue_cnt24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp25.not = icmp eq i32 %17, 0
  br i1 %cmp25.not, label %land.lhs.true23.do.body28_crit_edge, label %land.lhs.true23.return_crit_edge

land.lhs.true23.return_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true23.do.body28_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

do.body28:                                        ; preds = %land.lhs.true23.do.body28_crit_edge, %land.lhs.true16.do.body28_crit_edge, %land.lhs.true13.do.body28_crit_edge, %land.lhs.true.do.body28_crit_edge, %do.end2.do.body28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %18 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp29 = icmp sgt i32 %18, 1
  br i1 %cmp29, label %do.end32, label %do.body28.return_crit_edge

do.body28.return_crit_edge:                       ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end32:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 1110) #12
  br label %return

return:                                           ; preds = %do.end32, %do.body28.return_crit_edge, %land.lhs.true23.return_crit_edge, %land.lhs.true16.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.return_crit_edge ], [ 1, %land.lhs.true16.return_crit_edge ], [ 1, %land.lhs.true23.return_crit_edge ], [ 0, %do.body28.return_crit_edge ], [ 0, %do.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_work_bit_irqsave(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_work_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %buf_count, ptr nocapture noundef writeonly %plane_count, ptr nocapture noundef writeonly %psize, ptr nocapture noundef writeonly %alloc_devs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %5, label %do.end63 [
    i32 9, label %if.then
    i32 10, label %if.then24
  ]

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %1, i32 1320
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %8)
  %cmp2.not = icmp eq i32 %8, 101
  br i1 %cmp2.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 2383, i32 noundef %8) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %dst_fmt = getelementptr i8, ptr %1, i32 264
  %9 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst_fmt, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %num_planes = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %storemerge108 = phi i32 [ %12, %if.then9 ], [ 1, %if.end.if.end11_crit_edge ]
  %13 = ptrtoint ptr %plane_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge108, ptr %plane_count, align 4
  %14 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12 = icmp eq i32 %15, 0
  br i1 %cmp12, label %if.end11.if.end17.sink.split_crit_edge, label %if.end14

if.end11.if.end17.sink.split_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %cmp15 = icmp ugt i32 %15, 32
  br i1 %cmp15, label %if.end14.if.end17.sink.split_crit_edge, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end14.if.end17.sink.split_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.end14.if.end17.sink.split_crit_edge, %if.end11.if.end17.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end11.if.end17.sink.split_crit_edge ], [ 32, %if.end14.if.end17.sink.split_crit_edge ]
  %16 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %buf_count, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.end14.if.end17_crit_edge
  %enc_dst_buf_size = getelementptr i8, ptr %1, i32 3484
  %17 = ptrtoint ptr %enc_dst_buf_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enc_dst_buf_size, align 4
  %19 = ptrtoint ptr %psize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %psize, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %mem_dev = getelementptr inbounds %struct.s5p_mfc_dev, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %mem_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem_dev, align 4
  %24 = ptrtoint ptr %alloc_devs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %alloc_devs, align 4
  br label %cleanup

if.then24:                                        ; preds = %entry
  %src_fmt = getelementptr i8, ptr %1, i32 260
  %25 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src_fmt, align 4
  %tobool25.not = icmp eq ptr %26, null
  br i1 %tobool25.not, label %if.then24.if.end30_crit_edge, label %if.then26

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %num_planes28 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %num_planes28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_planes28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then24.if.end30_crit_edge
  %storemerge = phi i32 [ %28, %if.then26 ], [ 2, %if.then24.if.end30_crit_edge ]
  %29 = ptrtoint ptr %plane_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge, ptr %plane_count, align 4
  %30 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp31 = icmp eq i32 %31, 0
  br i1 %cmp31, label %if.end30.if.end36.sink.split_crit_edge, label %if.end33

if.end30.if.end36.sink.split_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.sink.split

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %31)
  %cmp34 = icmp ugt i32 %31, 32
  br i1 %cmp34, label %if.end33.if.end36.sink.split_crit_edge, label %if.end33.if.end36_crit_edge

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end33.if.end36.sink.split_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.end33.if.end36.sink.split_crit_edge, %if.end30.if.end36.sink.split_crit_edge
  %.sink111 = phi i32 [ 1, %if.end30.if.end36.sink.split_crit_edge ], [ 32, %if.end33.if.end36.sink.split_crit_edge ]
  %32 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink111, ptr %buf_count, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.end33.if.end36_crit_edge
  %luma_size = getelementptr i8, ptr %1, i32 1344
  %33 = ptrtoint ptr %luma_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %luma_size, align 4
  %35 = ptrtoint ptr %psize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %psize, align 4
  %chroma_size = getelementptr i8, ptr %1, i32 1348
  %36 = ptrtoint ptr %chroma_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chroma_size, align 4
  %arrayidx38 = getelementptr i32, ptr %psize, i32 1
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx38, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 10
  %39 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %variant, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %42)
  %cmp39 = icmp ugt i32 %42, 95
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  br i1 %cmp39, label %if.then40, label %if.else49

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %mem_dev42 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %mem_dev42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mem_dev42, align 4
  %47 = ptrtoint ptr %alloc_devs to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %alloc_devs, align 4
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 4
  %mem_dev46 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %mem_dev46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem_dev46, align 4
  %arrayidx48 = getelementptr ptr, ptr %alloc_devs, i32 1
  %52 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %arrayidx48, align 4
  br label %cleanup

if.else49:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx52 = getelementptr %struct.s5p_mfc_dev, ptr %44, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx52, align 4
  %55 = ptrtoint ptr %alloc_devs to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %alloc_devs, align 4
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr, align 4
  %arrayidx56 = getelementptr %struct.s5p_mfc_dev, ptr %57, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr ptr, ptr %alloc_devs, i32 1
  %60 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %arrayidx57, align 4
  br label %cleanup

do.end63:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 2419, i32 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.else49, %if.then40, %if.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end63 ], [ 0, %if.else49 ], [ 0, %if.then40 ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_buf_init(ptr noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %5, label %do.end [
    i32 9, label %if.then
    i32 10, label %if.then11
  ]

if.then:                                          ; preds = %entry
  %dst_fmt = getelementptr i8, ptr %3, i32 264
  %7 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst_fmt, align 4
  %call = tail call fastcc i32 @check_vb_with_fmt(ptr noundef %8, ptr noundef %vb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %dst_bufs = getelementptr i8, ptr %3, i32 2188
  %arrayidx = getelementptr [32 x %struct.s5p_mfc_buf], ptr %dst_bufs, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vb, ptr %arrayidx, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i, align 4
  %cookie = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cookie, align 4
  %dst_bufs_cnt = getelementptr i8, ptr %3, i32 2956
  %15 = ptrtoint ptr %dst_bufs_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst_bufs_cnt, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %dst_bufs_cnt, align 4
  br label %cleanup

if.then11:                                        ; preds = %entry
  %src_fmt = getelementptr i8, ptr %3, i32 260
  %17 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src_fmt, align 4
  %call12 = tail call fastcc i32 @check_vb_with_fmt(ptr noundef %18, ptr noundef %vb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then11.cleanup_crit_edge, label %if.end15

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %index16 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %19 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index16, align 4
  %src_bufs = getelementptr i8, ptr %3, i32 1416
  %arrayidx17 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %src_bufs, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vb, ptr %arrayidx17, align 4
  %call.i68 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #9
  %22 = ptrtoint ptr %call.i68 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call.i68, align 4
  %cookie22 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx17, i32 0, i32 2
  %24 = ptrtoint ptr %cookie22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cookie22, align 4
  %call.i69 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 1) #9
  %25 = ptrtoint ptr %call.i69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i69, align 4
  %chroma = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx17, i32 0, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %chroma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %chroma, align 4
  %src_bufs_cnt = getelementptr i8, ptr %3, i32 2184
  %28 = ptrtoint ptr %src_bufs_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_bufs_cnt, align 4
  %inc27 = add i32 %29, 1
  store i32 %inc27, ptr %src_bufs_cnt, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef 2454, i32 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end15, %if.then11.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ], [ 0, %if.end15 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_buf_prepare(ptr noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %5, label %do.end76 [
    i32 9, label %if.then
    i32 10, label %if.then27
  ]

if.then:                                          ; preds = %entry
  %dst_fmt = getelementptr i8, ptr %3, i32 264
  %7 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst_fmt, align 4
  %call = tail call fastcc i32 @check_vb_with_fmt(ptr noundef %8, ptr noundef %vb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %9 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3 = icmp sgt i32 %9, 1
  br i1 %cmp3, label %do.end, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %do.body
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %do.end.vb2_plane_size.exit_crit_edge, label %if.then.i

do.end.vb2_plane_size.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %do.end.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ 0, %do.end.vb2_plane_size.exit_crit_edge ]
  %enc_dst_buf_size = getelementptr i8, ptr %3, i32 3484
  %14 = ptrtoint ptr %enc_dst_buf_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enc_dst_buf_size, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 2471, i32 noundef %retval.0.i, i32 noundef %15) #12
  br label %do.end11

do.end11:                                         ; preds = %vb2_plane_size.exit, %do.body.do.end11_crit_edge
  %num_planes.i107 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %16 = ptrtoint ptr %num_planes.i107 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_planes.i107, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i108.not = icmp eq i32 %17, 0
  br i1 %cmp.i108.not, label %do.end11.vb2_plane_size.exit112_crit_edge, label %if.then.i110

do.end11.vb2_plane_size.exit112_crit_edge:        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit112

if.then.i110:                                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %length.i109 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %18 = ptrtoint ptr %length.i109 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i109, align 8
  br label %vb2_plane_size.exit112

vb2_plane_size.exit112:                           ; preds = %if.then.i110, %do.end11.vb2_plane_size.exit112_crit_edge
  %retval.0.i111 = phi i32 [ %19, %if.then.i110 ], [ 0, %do.end11.vb2_plane_size.exit112_crit_edge ]
  %enc_dst_buf_size13 = getelementptr i8, ptr %3, i32 3484
  %20 = ptrtoint ptr %enc_dst_buf_size13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enc_dst_buf_size13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i111, i32 %21)
  %cmp14 = icmp ult i32 %retval.0.i111, %21
  br i1 %cmp14, label %do.end19, label %vb2_plane_size.exit112.cleanup_crit_edge

vb2_plane_size.exit112.cleanup_crit_edge:         ; preds = %vb2_plane_size.exit112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end19:                                         ; preds = %vb2_plane_size.exit112
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef 2473) #12
  br label %cleanup

if.then27:                                        ; preds = %entry
  %src_fmt = getelementptr i8, ptr %3, i32 260
  %22 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src_fmt, align 4
  %call28 = tail call fastcc i32 @check_vb_with_fmt(ptr noundef %23, ptr noundef %vb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then27.cleanup_crit_edge, label %do.body32

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body32:                                        ; preds = %if.then27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %24 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp33 = icmp sgt i32 %24, 1
  br i1 %cmp33, label %do.end37, label %do.body32.do.end55_crit_edge

do.body32.do.end55_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

do.end37:                                         ; preds = %do.body32
  %num_planes.i113 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %25 = ptrtoint ptr %num_planes.i113 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_planes.i113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i114.not = icmp eq i32 %26, 0
  br i1 %cmp.i114.not, label %do.end37.do.body44_crit_edge, label %if.then.i116

do.end37.do.body44_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body44

if.then.i116:                                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  %length.i115 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %27 = ptrtoint ptr %length.i115 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length.i115, align 8
  br label %do.body44

do.body44:                                        ; preds = %if.then.i116, %do.end37.do.body44_crit_edge
  %retval.0.i117 = phi i32 [ %28, %if.then.i116 ], [ 0, %do.end37.do.body44_crit_edge ]
  %luma_size = getelementptr i8, ptr %3, i32 1344
  %29 = ptrtoint ptr %luma_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %luma_size, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.39, i32 noundef 2481, i32 noundef %retval.0.i117, i32 noundef %30) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp45 = icmp sgt i32 %.pr, 1
  br i1 %cmp45, label %do.end49, label %do.body44.do.end55_crit_edge

do.body44.do.end55_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

do.end49:                                         ; preds = %do.body44
  %31 = ptrtoint ptr %num_planes.i113 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_planes.i113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i120 = icmp ugt i32 %32, 1
  br i1 %cmp.i120, label %if.then.i122, label %do.end49.vb2_plane_size.exit124_crit_edge

do.end49.vb2_plane_size.exit124_crit_edge:        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit124

if.then.i122:                                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  %length.i121 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 1, i32 4
  %33 = ptrtoint ptr %length.i121 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length.i121, align 8
  br label %vb2_plane_size.exit124

vb2_plane_size.exit124:                           ; preds = %if.then.i122, %do.end49.vb2_plane_size.exit124_crit_edge
  %retval.0.i123 = phi i32 [ %34, %if.then.i122 ], [ 0, %do.end49.vb2_plane_size.exit124_crit_edge ]
  %chroma_size = getelementptr i8, ptr %3, i32 1348
  %35 = ptrtoint ptr %chroma_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chroma_size, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.39, i32 noundef 2483, i32 noundef %retval.0.i123, i32 noundef %36) #12
  br label %do.end55

do.end55:                                         ; preds = %vb2_plane_size.exit124, %do.body44.do.end55_crit_edge, %do.body32.do.end55_crit_edge
  %num_planes.i125 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %37 = ptrtoint ptr %num_planes.i125 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_planes.i125, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i126.not = icmp eq i32 %38, 0
  br i1 %cmp.i126.not, label %vb2_plane_size.exit130.thread, label %vb2_plane_size.exit130

vb2_plane_size.exit130:                           ; preds = %do.end55
  %length.i127 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %39 = ptrtoint ptr %length.i127 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i127, align 8
  %luma_size57 = getelementptr i8, ptr %3, i32 1344
  %41 = ptrtoint ptr %luma_size57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %luma_size57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp58 = icmp ult i32 %40, %42
  br i1 %cmp58, label %vb2_plane_size.exit130.do.end66_crit_edge, label %lor.lhs.false

vb2_plane_size.exit130.do.end66_crit_edge:        ; preds = %vb2_plane_size.exit130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

vb2_plane_size.exit130.thread:                    ; preds = %do.end55
  %luma_size57139 = getelementptr i8, ptr %3, i32 1344
  %43 = ptrtoint ptr %luma_size57139 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %luma_size57139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp58140.not = icmp eq i32 %44, 0
  br i1 %cmp58140.not, label %vb2_plane_size.exit130.thread.vb2_plane_size.exit136_crit_edge, label %vb2_plane_size.exit130.thread.do.end66_crit_edge

vb2_plane_size.exit130.thread.do.end66_crit_edge: ; preds = %vb2_plane_size.exit130.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

vb2_plane_size.exit130.thread.vb2_plane_size.exit136_crit_edge: ; preds = %vb2_plane_size.exit130.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit136

lor.lhs.false:                                    ; preds = %vb2_plane_size.exit130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i132 = icmp ugt i32 %38, 1
  br i1 %cmp.i132, label %if.then.i134, label %lor.lhs.false.vb2_plane_size.exit136_crit_edge

lor.lhs.false.vb2_plane_size.exit136_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit136

if.then.i134:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %length.i133 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 1, i32 4
  %45 = ptrtoint ptr %length.i133 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length.i133, align 8
  br label %vb2_plane_size.exit136

vb2_plane_size.exit136:                           ; preds = %if.then.i134, %lor.lhs.false.vb2_plane_size.exit136_crit_edge, %vb2_plane_size.exit130.thread.vb2_plane_size.exit136_crit_edge
  %retval.0.i135 = phi i32 [ %46, %if.then.i134 ], [ 0, %lor.lhs.false.vb2_plane_size.exit136_crit_edge ], [ 0, %vb2_plane_size.exit130.thread.vb2_plane_size.exit136_crit_edge ]
  %chroma_size60 = getelementptr i8, ptr %3, i32 1348
  %47 = ptrtoint ptr %chroma_size60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chroma_size60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i135, i32 %48)
  %cmp61 = icmp ult i32 %retval.0.i135, %48
  br i1 %cmp61, label %vb2_plane_size.exit136.do.end66_crit_edge, label %vb2_plane_size.exit136.cleanup_crit_edge

vb2_plane_size.exit136.cleanup_crit_edge:         ; preds = %vb2_plane_size.exit136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vb2_plane_size.exit136.do.end66_crit_edge:        ; preds = %vb2_plane_size.exit136
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

do.end66:                                         ; preds = %vb2_plane_size.exit136.do.end66_crit_edge, %vb2_plane_size.exit130.thread.do.end66_crit_edge, %vb2_plane_size.exit130.do.end66_crit_edge
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.39, i32 noundef 2486) #12
  br label %cleanup

do.end76:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.39, i32 noundef 2490, i32 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %do.end66, %vb2_plane_size.exit136.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %do.end19, %vb2_plane_size.exit112.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end19 ], [ -22, %do.end66 ], [ -22, %do.end76 ], [ %call, %if.then.cleanup_crit_edge ], [ %call28, %if.then27.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit136.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit112.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %7)
  %cmp = icmp ugt i32 %7, 95
  br i1 %cmp, label %land.lhs.true, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp2 = icmp eq i32 %9, 9
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %state = getelementptr i8, ptr %1, i32 1320
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %11)
  %cmp3 = icmp eq i32 %11, 101
  br i1 %cmp3, label %land.lhs.true4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true4:                                   ; preds = %if.then
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 27
  %12 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %curr_ctx, align 4
  %num = getelementptr i8, ptr %1, i32 192
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp5 = icmp eq i32 %13, %15
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 25
  %16 = ptrtoint ptr %hw_lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %land.lhs.true6.if.end_crit_edge, label %if.then7

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true6.if.end_crit_edge, %land.lhs.true4.if.end_crit_edge, %if.then.if.end_crit_edge
  %src_bufs_cnt = getelementptr i8, ptr %1, i32 2184
  %18 = ptrtoint ptr %src_bufs_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_bufs_cnt, align 4
  %pb_count = getelementptr i8, ptr %1, i32 3000
  %20 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pb_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp8 = icmp slt i32 %19, %21
  br i1 %cmp8, label %do.end, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 2513, i32 noundef %21) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %call18 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @set_work_bit_irqsave(ptr noundef %add.ptr) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 36
  %22 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mfc_ops, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %land.lhs.true23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end21
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %try_run, align 4
  %tobool25.not = icmp eq ptr %25, null
  br i1 %tobool25.not, label %land.lhs.true23.cleanup_crit_edge, label %cond.true26

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true26:                                      ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %25(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.true26, %land.lhs.true23.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -105, %do.end ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %cond.true26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_stop_streaming(ptr nocapture noundef readonly %q) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %state = getelementptr i8, ptr %1, i32 1320
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %.off = add i32 %5, -105
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr_ctx, align 4
  %num = getelementptr i8, ptr %1, i32 192
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4 = icmp eq i32 %7, %9
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 25
  %10 = ptrtoint ptr %hw_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true5.if.end_crit_edge, label %if.then

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 110, ptr %state, align 4
  %call = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %add.ptr, i32 noundef 13, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 107, ptr %state, align 4
  %irqlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 12
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #9
  %14 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %cmp15 = icmp eq i32 %15, 9
  br i1 %cmp15, label %if.then17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dst_queue = getelementptr i8, ptr %1, i32 1300
  %vq_dst = getelementptr i8, ptr %1, i32 780
  tail call void @s5p_mfc_cleanup_queue(ptr noundef %dst_queue, ptr noundef %vq_dst) #9
  %16 = ptrtoint ptr %dst_queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %dst_queue, ptr %dst_queue, align 4
  %prev.i = getelementptr i8, ptr %1, i32 1304
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dst_queue, ptr %prev.i, align 4
  %dst_queue_cnt = getelementptr i8, ptr %1, i32 1312
  %18 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dst_queue_cnt, align 4
  %19 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %q, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %20 = phi i32 [ %.pr, %if.then17 ], [ %15, %if.end.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %20)
  %cmp21 = icmp eq i32 %20, 10
  br i1 %cmp21, label %if.then23, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cleanup_ref_queue(ptr noundef %add.ptr)
  %src_queue = getelementptr i8, ptr %1, i32 1292
  %vq_src = getelementptr i8, ptr %1, i32 268
  tail call void @s5p_mfc_cleanup_queue(ptr noundef %src_queue, ptr noundef %vq_src) #9
  %21 = ptrtoint ptr %src_queue to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %src_queue, ptr %src_queue, align 4
  %prev.i47 = getelementptr i8, ptr %1, i32 1296
  %22 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %src_queue, ptr %prev.i47, align 4
  %src_queue_cnt = getelementptr i8, ptr %1, i32 1308
  %23 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %src_queue_cnt, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_buf_queue(ptr noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %state = getelementptr i8, ptr %3, i32 1320
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %7)
  %cmp = icmp eq i32 %7, 109
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #9
  tail call fastcc void @cleanup_ref_queue(ptr noundef %add.ptr)
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %9, label %do.end41 [
    i32 9, label %if.then3
    i32 10, label %if.then15
  ]

if.then3:                                         ; preds = %if.end
  %dst_bufs = getelementptr i8, ptr %3, i32 2188
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [32 x %struct.s5p_mfc_buf], ptr %dst_bufs, i32 0, i32 %12
  %flags4 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 3
  %13 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags4, align 4
  %and = and i32 %14, -2
  store i32 %and, ptr %flags4, align 4
  %irqlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 12
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #9
  %list = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 1
  %dst_queue = getelementptr i8, ptr %3, i32 1300
  %prev.i = getelementptr i8, ptr %3, i32 1304
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %16, ptr noundef %dst_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.list_add_tail.exit_crit_edge

if.then3.list_add_tail.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dst_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then3.list_add_tail.exit_crit_edge
  %dst_queue_cnt = getelementptr i8, ptr %3, i32 1312
  %21 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst_queue_cnt, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %dst_queue_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call8) #9
  br label %if.end48

if.then15:                                        ; preds = %if.end
  %src_bufs = getelementptr i8, ptr %3, i32 1416
  %index16 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %23 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index16, align 4
  %arrayidx17 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %src_bufs, i32 0, i32 %24
  %flags18 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx17, i32 0, i32 3
  %25 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags18, align 4
  %and19 = and i32 %26, -2
  store i32 %and19, ptr %flags18, align 4
  %irqlock27 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 12
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock27) #9
  %list34 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx17, i32 0, i32 1
  %src_queue = getelementptr i8, ptr %3, i32 1292
  %prev.i90 = getelementptr i8, ptr %3, i32 1296
  %27 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i90, align 4
  %call.i.i91 = tail call zeroext i1 @__list_add_valid(ptr noundef %list34, ptr noundef %28, ptr noundef %src_queue) #9
  br i1 %call.i.i91, label %if.end.i.i93, label %if.then15.list_add_tail.exit94_crit_edge

if.then15.list_add_tail.exit94_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit94

if.end.i.i93:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list34, ptr %prev.i90, align 4
  %30 = ptrtoint ptr %list34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %src_queue, ptr %list34, align 4
  %prev3.i.i92 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx17, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i92 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i92, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list34, ptr %28, align 4
  br label %list_add_tail.exit94

list_add_tail.exit94:                             ; preds = %if.end.i.i93, %if.then15.list_add_tail.exit94_crit_edge
  %src_queue_cnt = getelementptr i8, ptr %3, i32 1308
  %33 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %src_queue_cnt, align 4
  %inc35 = add i32 %34, 1
  store i32 %inc35, ptr %src_queue_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock27, i32 noundef %call29) #9
  br label %if.end48

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 2584, i32 noundef %9) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end41, %list_add_tail.exit94, %list_add_tail.exit
  %call49 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool.not = icmp eq i32 %call49, 0
  br i1 %tobool.not, label %if.end48.if.end51_crit_edge, label %if.then50

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @set_work_bit_irqsave(ptr noundef %add.ptr) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end48.if.end51_crit_edge
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 36
  %35 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mfc_ops, align 4
  %tobool52.not = icmp eq ptr %36, null
  br i1 %tobool52.not, label %if.end51.cleanup_crit_edge, label %land.lhs.true

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end51
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %try_run, align 4
  %tobool54.not = icmp eq ptr %38, null
  br i1 %tobool54.not, label %land.lhs.true.cleanup_crit_edge, label %cond.true

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %38(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %land.lhs.true.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_vb_with_fmt(ptr noundef readonly %fmt, ptr noundef %vb) unnamed_addr #1 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fmt, null
  br i1 %tobool.not, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

if.end:                                           ; preds = %entry
  %num_planes = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %fmt, i32 0, i32 3
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes, align 4
  %num_planes1 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %2 = ptrtoint ptr %num_planes1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp841.not = icmp eq i32 %5, 0
  br i1 %cmp841.not, label %for.cond.preheader.cleanup32_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup32_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 2359) #12
  br label %cleanup32

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #9
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dma, align 4, !annotation !310
  %call.i = call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef %i.042) #9
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i, align 4
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %do.end15, label %do.body21

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 2365) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #9
  br label %cleanup32

do.body21:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %10 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp22 = icmp sgt i32 %10, 1
  br i1 %cmp22, label %do.end26, label %for.inc.critedge

do.end26:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i32 noundef 2369, i32 noundef %12, i32 noundef %i.042, ptr noundef nonnull %dma) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #9
  br label %for.inc

for.inc.critedge:                                 ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.critedge, %do.end26
  %inc = add nuw i32 %i.042, 1
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes, align 4
  %cmp8 = icmp ult i32 %inc, %14
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.cleanup32_crit_edge

for.inc.cleanup32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup32:                                        ; preds = %for.inc.cleanup32_crit_edge, %do.end15, %do.end, %for.cond.preheader.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup32_crit_edge ], [ -22, %do.end15 ], [ 0, %for.cond.preheader.cleanup32_crit_edge ], [ 0, %for.inc.cleanup32_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_cleanup_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_ref_queue(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 59
  %0 = ptrtoint ptr %ref_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ref_queue, align 4
  %cmp.i.not25 = icmp eq ptr %1, %ref_queue
  br i1 %cmp.i.not25, label %entry.do.body_crit_edge, label %while.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

while.body.lr.ph:                                 ; preds = %entry
  %ref_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 60
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %prev.i21 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %src_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %22, %list_add_tail.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %ref_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref_queue_cnt, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %ref_queue_cnt, align 4
  %13 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i21, align 4
  %call.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %14, ptr noundef %src_queue) #9
  br i1 %call.i.i22, label %if.end.i.i23, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i23:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %2, ptr %prev.i21, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %src_queue, ptr %2, align 4
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %2, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i23, %list_del.exit.list_add_tail.exit_crit_edge
  %19 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_queue_cnt, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %src_queue_cnt, align 4
  %21 = ptrtoint ptr %ref_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %ref_queue, align 4
  %cmp.i.not = icmp eq ptr %22, %ref_queue
  br i1 %cmp.i.not, label %list_add_tail.exit.do.body_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_add_tail.exit.do.body_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %list_add_tail.exit.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %23 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp sgt i32 %23, 1
  br i1 %cmp, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %src_queue_cnt5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 13
  %24 = ptrtoint ptr %src_queue_cnt5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_queue_cnt5, align 4
  %ref_queue_cnt6 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 60
  %26 = ptrtoint ptr %ref_queue_cnt6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_queue_cnt6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.56, i32 noundef 1128, i32 noundef %25, i32 noundef %27) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %28 = ptrtoint ptr %ref_queue to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %ref_queue, ptr %ref_queue, align 4
  %prev.i24 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 59, i32 1
  %29 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ref_queue, ptr %prev.i24, align 4
  %ref_queue_cnt11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 60
  %30 = ptrtoint ptr %ref_queue_cnt11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ref_queue_cnt11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.59, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %vfd_enc = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vfd_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfd_enc, align 4
  %name = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #9
  %plat_dev = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.60, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %pirv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %2 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp6.not.i = icmp eq i32 %2, 1
  br i1 %cmp6.not.i, label %if.else8.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else8.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %variant.i, align 4
  %version_bit.i = getelementptr inbounds %struct.s5p_mfc_variant, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %version_bit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version_bit.i, align 4
  %7 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 4), align 4
  %and.i = and i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 0
  br i1 %cmp10.i, label %if.else8.i.for.inc.i_crit_edge, label %if.end13.i

if.else8.i.for.inc.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.else8.i
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14.i = icmp eq i32 %9, 0
  br i1 %cmp14.i, label %if.end13.i.if.then15.i_crit_edge, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end13.i.if.then15.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i.8.if.then15.i_crit_edge, %if.end13.i.7.if.then15.i_crit_edge, %if.end13.i.6.if.then15.i_crit_edge, %if.end13.i.5.if.then15.i_crit_edge, %if.end13.i.4.if.then15.i_crit_edge, %if.end13.i.3.if.then15.i_crit_edge, %if.end13.i.2.if.then15.i_crit_edge, %if.end13.i.1.if.then15.i_crit_edge, %if.end13.i.if.then15.i_crit_edge
  %i.029.i.lcssa = phi i32 [ 0, %if.end13.i.if.then15.i_crit_edge ], [ 1, %if.end13.i.1.if.then15.i_crit_edge ], [ 2, %if.end13.i.2.if.then15.i_crit_edge ], [ 3, %if.end13.i.3.if.then15.i_crit_edge ], [ 4, %if.end13.i.4.if.then15.i_crit_edge ], [ 5, %if.end13.i.5.if.then15.i_crit_edge ], [ 6, %if.end13.i.6.if.then15.i_crit_edge ], [ 7, %if.end13.i.7.if.then15.i_crit_edge ], [ 8, %if.end13.i.8.if.then15.i_crit_edge ]
  %arrayidx9.le.i = getelementptr [9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %i.029.i.lcssa
  %10 = ptrtoint ptr %arrayidx9.le.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9.le.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat.i, align 4
  br label %vidioc_enum_fmt.exit

for.inc.i:                                        ; preds = %if.end13.i.for.inc.i_crit_edge, %if.else8.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %j.1.i = phi i32 [ 0, %if.else8.i.for.inc.i_crit_edge ], [ 0, %entry.for.inc.i_crit_edge ], [ 1, %if.end13.i.for.inc.i_crit_edge ]
  %13 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp6.not.i.1 = icmp eq i32 %13, 1
  br i1 %cmp6.not.i.1, label %if.else8.i.1, label %for.inc.i.for.inc.i.1_crit_edge

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.1

if.else8.i.1:                                     ; preds = %for.inc.i
  %14 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant.i, align 4
  %version_bit.i.1 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %version_bit.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version_bit.i.1, align 4
  %18 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 4), align 4
  %and.i.1 = and i32 %18, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %cmp10.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %cmp10.i.1, label %if.else8.i.1.for.inc.i.1_crit_edge, label %if.end13.i.1

if.else8.i.1.for.inc.i.1_crit_edge:               ; preds = %if.else8.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.1

if.end13.i.1:                                     ; preds = %if.else8.i.1
  %19 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i, i32 %20)
  %cmp14.i.1 = icmp eq i32 %j.1.i, %20
  br i1 %cmp14.i.1, label %if.end13.i.1.if.then15.i_crit_edge, label %if.end17.i.1

if.end13.i.1.if.then15.i_crit_edge:               ; preds = %if.end13.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.1:                                     ; preds = %if.end13.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.1 = add nuw nsw i32 %j.1.i, 1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.end17.i.1, %if.else8.i.1.for.inc.i.1_crit_edge, %for.inc.i.for.inc.i.1_crit_edge
  %j.1.i.1 = phi i32 [ %j.1.i, %if.else8.i.1.for.inc.i.1_crit_edge ], [ %inc.i.1, %if.end17.i.1 ], [ %j.1.i, %for.inc.i.for.inc.i.1_crit_edge ]
  %21 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp6.not.i.2 = icmp eq i32 %21, 1
  br i1 %cmp6.not.i.2, label %if.else8.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.2

if.else8.i.2:                                     ; preds = %for.inc.i.1
  %22 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %variant.i, align 4
  %version_bit.i.2 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %version_bit.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version_bit.i.2, align 4
  %26 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 4), align 4
  %and.i.2 = and i32 %26, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %cmp10.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %cmp10.i.2, label %if.else8.i.2.for.inc.i.2_crit_edge, label %if.end13.i.2

if.else8.i.2.for.inc.i.2_crit_edge:               ; preds = %if.else8.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.2

if.end13.i.2:                                     ; preds = %if.else8.i.2
  %27 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.1, i32 %28)
  %cmp14.i.2 = icmp eq i32 %j.1.i.1, %28
  br i1 %cmp14.i.2, label %if.end13.i.2.if.then15.i_crit_edge, label %if.end17.i.2

if.end13.i.2.if.then15.i_crit_edge:               ; preds = %if.end13.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.2:                                     ; preds = %if.end13.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.2 = add nuw nsw i32 %j.1.i.1, 1
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.end17.i.2, %if.else8.i.2.for.inc.i.2_crit_edge, %for.inc.i.1.for.inc.i.2_crit_edge
  %j.1.i.2 = phi i32 [ %j.1.i.1, %if.else8.i.2.for.inc.i.2_crit_edge ], [ %inc.i.2, %if.end17.i.2 ], [ %j.1.i.1, %for.inc.i.1.for.inc.i.2_crit_edge ]
  %29 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp6.not.i.3 = icmp eq i32 %29, 1
  br i1 %cmp6.not.i.3, label %if.else8.i.3, label %for.inc.i.2.for.inc.i.3_crit_edge

for.inc.i.2.for.inc.i.3_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.3

if.else8.i.3:                                     ; preds = %for.inc.i.2
  %30 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %variant.i, align 4
  %version_bit.i.3 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %version_bit.i.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %version_bit.i.3, align 4
  %34 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 4), align 4
  %and.i.3 = and i32 %34, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %cmp10.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %cmp10.i.3, label %if.else8.i.3.for.inc.i.3_crit_edge, label %if.end13.i.3

if.else8.i.3.for.inc.i.3_crit_edge:               ; preds = %if.else8.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.3

if.end13.i.3:                                     ; preds = %if.else8.i.3
  %35 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.2, i32 %36)
  %cmp14.i.3 = icmp eq i32 %j.1.i.2, %36
  br i1 %cmp14.i.3, label %if.end13.i.3.if.then15.i_crit_edge, label %if.end17.i.3

if.end13.i.3.if.then15.i_crit_edge:               ; preds = %if.end13.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.3:                                     ; preds = %if.end13.i.3
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.3 = add nuw nsw i32 %j.1.i.2, 1
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.end17.i.3, %if.else8.i.3.for.inc.i.3_crit_edge, %for.inc.i.2.for.inc.i.3_crit_edge
  %j.1.i.3 = phi i32 [ %j.1.i.2, %if.else8.i.3.for.inc.i.3_crit_edge ], [ %inc.i.3, %if.end17.i.3 ], [ %j.1.i.2, %for.inc.i.2.for.inc.i.3_crit_edge ]
  %37 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp6.not.i.4 = icmp eq i32 %37, 1
  br i1 %cmp6.not.i.4, label %if.else8.i.4, label %for.inc.i.3.for.inc.i.4_crit_edge

for.inc.i.3.for.inc.i.4_crit_edge:                ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.4

if.else8.i.4:                                     ; preds = %for.inc.i.3
  %38 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %variant.i, align 4
  %version_bit.i.4 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %version_bit.i.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version_bit.i.4, align 4
  %42 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 4), align 4
  %and.i.4 = and i32 %42, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %cmp10.i.4 = icmp eq i32 %and.i.4, 0
  br i1 %cmp10.i.4, label %if.else8.i.4.for.inc.i.4_crit_edge, label %if.end13.i.4

if.else8.i.4.for.inc.i.4_crit_edge:               ; preds = %if.else8.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.4

if.end13.i.4:                                     ; preds = %if.else8.i.4
  %43 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.3, i32 %44)
  %cmp14.i.4 = icmp eq i32 %j.1.i.3, %44
  br i1 %cmp14.i.4, label %if.end13.i.4.if.then15.i_crit_edge, label %if.end17.i.4

if.end13.i.4.if.then15.i_crit_edge:               ; preds = %if.end13.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.4:                                     ; preds = %if.end13.i.4
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.4 = add nuw nsw i32 %j.1.i.3, 1
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.end17.i.4, %if.else8.i.4.for.inc.i.4_crit_edge, %for.inc.i.3.for.inc.i.4_crit_edge
  %j.1.i.4 = phi i32 [ %j.1.i.3, %if.else8.i.4.for.inc.i.4_crit_edge ], [ %inc.i.4, %if.end17.i.4 ], [ %j.1.i.3, %for.inc.i.3.for.inc.i.4_crit_edge ]
  %45 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp6.not.i.5 = icmp eq i32 %45, 1
  br i1 %cmp6.not.i.5, label %if.else8.i.5, label %for.inc.i.4.for.inc.i.5_crit_edge

for.inc.i.4.for.inc.i.5_crit_edge:                ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.5

if.else8.i.5:                                     ; preds = %for.inc.i.4
  %46 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant.i, align 4
  %version_bit.i.5 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %version_bit.i.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %version_bit.i.5, align 4
  %50 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 4), align 4
  %and.i.5 = and i32 %50, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5)
  %cmp10.i.5 = icmp eq i32 %and.i.5, 0
  br i1 %cmp10.i.5, label %if.else8.i.5.for.inc.i.5_crit_edge, label %if.end13.i.5

if.else8.i.5.for.inc.i.5_crit_edge:               ; preds = %if.else8.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.5

if.end13.i.5:                                     ; preds = %if.else8.i.5
  %51 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.4, i32 %52)
  %cmp14.i.5 = icmp eq i32 %j.1.i.4, %52
  br i1 %cmp14.i.5, label %if.end13.i.5.if.then15.i_crit_edge, label %if.end17.i.5

if.end13.i.5.if.then15.i_crit_edge:               ; preds = %if.end13.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.5:                                     ; preds = %if.end13.i.5
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.5 = add nuw nsw i32 %j.1.i.4, 1
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.end17.i.5, %if.else8.i.5.for.inc.i.5_crit_edge, %for.inc.i.4.for.inc.i.5_crit_edge
  %j.1.i.5 = phi i32 [ %j.1.i.4, %if.else8.i.5.for.inc.i.5_crit_edge ], [ %inc.i.5, %if.end17.i.5 ], [ %j.1.i.4, %for.inc.i.4.for.inc.i.5_crit_edge ]
  %53 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp6.not.i.6 = icmp eq i32 %53, 1
  br i1 %cmp6.not.i.6, label %if.else8.i.6, label %for.inc.i.5.for.inc.i.6_crit_edge

for.inc.i.5.for.inc.i.6_crit_edge:                ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.6

if.else8.i.6:                                     ; preds = %for.inc.i.5
  %54 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %variant.i, align 4
  %version_bit.i.6 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %version_bit.i.6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %version_bit.i.6, align 4
  %58 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 4), align 4
  %and.i.6 = and i32 %58, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6)
  %cmp10.i.6 = icmp eq i32 %and.i.6, 0
  br i1 %cmp10.i.6, label %if.else8.i.6.for.inc.i.6_crit_edge, label %if.end13.i.6

if.else8.i.6.for.inc.i.6_crit_edge:               ; preds = %if.else8.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.6

if.end13.i.6:                                     ; preds = %if.else8.i.6
  %59 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.5, i32 %60)
  %cmp14.i.6 = icmp eq i32 %j.1.i.5, %60
  br i1 %cmp14.i.6, label %if.end13.i.6.if.then15.i_crit_edge, label %if.end17.i.6

if.end13.i.6.if.then15.i_crit_edge:               ; preds = %if.end13.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.6:                                     ; preds = %if.end13.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.6 = add nuw nsw i32 %j.1.i.5, 1
  br label %for.inc.i.6

for.inc.i.6:                                      ; preds = %if.end17.i.6, %if.else8.i.6.for.inc.i.6_crit_edge, %for.inc.i.5.for.inc.i.6_crit_edge
  %j.1.i.6 = phi i32 [ %j.1.i.5, %if.else8.i.6.for.inc.i.6_crit_edge ], [ %inc.i.6, %if.end17.i.6 ], [ %j.1.i.5, %for.inc.i.5.for.inc.i.6_crit_edge ]
  %61 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp6.not.i.7 = icmp eq i32 %61, 1
  br i1 %cmp6.not.i.7, label %if.else8.i.7, label %for.inc.i.6.for.inc.i.7_crit_edge

for.inc.i.6.for.inc.i.7_crit_edge:                ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.7

if.else8.i.7:                                     ; preds = %for.inc.i.6
  %62 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %variant.i, align 4
  %version_bit.i.7 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %version_bit.i.7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %version_bit.i.7, align 4
  %66 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 4), align 4
  %and.i.7 = and i32 %66, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.7)
  %cmp10.i.7 = icmp eq i32 %and.i.7, 0
  br i1 %cmp10.i.7, label %if.else8.i.7.for.inc.i.7_crit_edge, label %if.end13.i.7

if.else8.i.7.for.inc.i.7_crit_edge:               ; preds = %if.else8.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.7

if.end13.i.7:                                     ; preds = %if.else8.i.7
  %67 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.6, i32 %68)
  %cmp14.i.7 = icmp eq i32 %j.1.i.6, %68
  br i1 %cmp14.i.7, label %if.end13.i.7.if.then15.i_crit_edge, label %if.end17.i.7

if.end13.i.7.if.then15.i_crit_edge:               ; preds = %if.end13.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.7:                                     ; preds = %if.end13.i.7
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.7 = add nuw nsw i32 %j.1.i.6, 1
  br label %for.inc.i.7

for.inc.i.7:                                      ; preds = %if.end17.i.7, %if.else8.i.7.for.inc.i.7_crit_edge, %for.inc.i.6.for.inc.i.7_crit_edge
  %j.1.i.7 = phi i32 [ %j.1.i.6, %if.else8.i.7.for.inc.i.7_crit_edge ], [ %inc.i.7, %if.end17.i.7 ], [ %j.1.i.6, %for.inc.i.6.for.inc.i.7_crit_edge ]
  %69 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp6.not.i.8 = icmp eq i32 %69, 1
  br i1 %cmp6.not.i.8, label %if.else8.i.8, label %for.inc.i.7.vidioc_enum_fmt.exit_crit_edge

for.inc.i.7.vidioc_enum_fmt.exit_crit_edge:       ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %vidioc_enum_fmt.exit

if.else8.i.8:                                     ; preds = %for.inc.i.7
  %70 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %variant.i, align 4
  %version_bit.i.8 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %version_bit.i.8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %version_bit.i.8, align 4
  %74 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 4), align 4
  %and.i.8 = and i32 %74, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.8)
  %cmp10.i.8 = icmp eq i32 %and.i.8, 0
  br i1 %cmp10.i.8, label %if.else8.i.8.vidioc_enum_fmt.exit_crit_edge, label %if.end13.i.8

if.else8.i.8.vidioc_enum_fmt.exit_crit_edge:      ; preds = %if.else8.i.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %vidioc_enum_fmt.exit

if.end13.i.8:                                     ; preds = %if.else8.i.8
  %75 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.7, i32 %76)
  %cmp14.i.8 = icmp eq i32 %j.1.i.7, %76
  br i1 %cmp14.i.8, label %if.end13.i.8.if.then15.i_crit_edge, label %if.end13.i.8.vidioc_enum_fmt.exit_crit_edge

if.end13.i.8.vidioc_enum_fmt.exit_crit_edge:      ; preds = %if.end13.i.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %vidioc_enum_fmt.exit

if.end13.i.8.if.then15.i_crit_edge:               ; preds = %if.end13.i.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

vidioc_enum_fmt.exit:                             ; preds = %if.end13.i.8.vidioc_enum_fmt.exit_crit_edge, %if.else8.i.8.vidioc_enum_fmt.exit_crit_edge, %for.inc.i.7.vidioc_enum_fmt.exit_crit_edge, %if.then15.i
  %retval.0.i = phi i32 [ 0, %if.then15.i ], [ -22, %if.end13.i.8.vidioc_enum_fmt.exit_crit_edge ], [ -22, %if.else8.i.8.vidioc_enum_fmt.exit_crit_edge ], [ -22, %for.inc.i.7.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %2 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1.not.i = icmp eq i32 %2, 2
  br i1 %cmp1.not.i, label %if.else8.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else8.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %variant.i, align 4
  %version_bit.i = getelementptr inbounds %struct.s5p_mfc_variant, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %version_bit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version_bit.i, align 4
  %7 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 4), align 4
  %and.i = and i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 0
  br i1 %cmp10.i, label %if.else8.i.for.inc.i_crit_edge, label %if.end13.i

if.else8.i.for.inc.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.else8.i
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14.i = icmp eq i32 %9, 0
  br i1 %cmp14.i, label %if.end13.i.if.then15.i_crit_edge, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end13.i.if.then15.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i.8.if.then15.i_crit_edge, %if.end13.i.7.if.then15.i_crit_edge, %if.end13.i.6.if.then15.i_crit_edge, %if.end13.i.5.if.then15.i_crit_edge, %if.end13.i.4.if.then15.i_crit_edge, %if.end13.i.3.if.then15.i_crit_edge, %if.end13.i.2.if.then15.i_crit_edge, %if.end13.i.1.if.then15.i_crit_edge, %if.end13.i.if.then15.i_crit_edge
  %i.029.i.lcssa = phi i32 [ 0, %if.end13.i.if.then15.i_crit_edge ], [ 1, %if.end13.i.1.if.then15.i_crit_edge ], [ 2, %if.end13.i.2.if.then15.i_crit_edge ], [ 3, %if.end13.i.3.if.then15.i_crit_edge ], [ 4, %if.end13.i.4.if.then15.i_crit_edge ], [ 5, %if.end13.i.5.if.then15.i_crit_edge ], [ 6, %if.end13.i.6.if.then15.i_crit_edge ], [ 7, %if.end13.i.7.if.then15.i_crit_edge ], [ 8, %if.end13.i.8.if.then15.i_crit_edge ]
  %arrayidx9.le.i = getelementptr [9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %i.029.i.lcssa
  %10 = ptrtoint ptr %arrayidx9.le.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9.le.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat.i, align 4
  br label %vidioc_enum_fmt.exit

for.inc.i:                                        ; preds = %if.end13.i.for.inc.i_crit_edge, %if.else8.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %j.1.i = phi i32 [ 0, %entry.for.inc.i_crit_edge ], [ 0, %if.else8.i.for.inc.i_crit_edge ], [ 1, %if.end13.i.for.inc.i_crit_edge ]
  %13 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp1.not.i.1 = icmp eq i32 %13, 2
  br i1 %cmp1.not.i.1, label %if.else8.i.1, label %for.inc.i.for.inc.i.1_crit_edge

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.1

if.else8.i.1:                                     ; preds = %for.inc.i
  %14 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant.i, align 4
  %version_bit.i.1 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %version_bit.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version_bit.i.1, align 4
  %18 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 4), align 4
  %and.i.1 = and i32 %18, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %cmp10.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %cmp10.i.1, label %if.else8.i.1.for.inc.i.1_crit_edge, label %if.end13.i.1

if.else8.i.1.for.inc.i.1_crit_edge:               ; preds = %if.else8.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.1

if.end13.i.1:                                     ; preds = %if.else8.i.1
  %19 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i, i32 %20)
  %cmp14.i.1 = icmp eq i32 %j.1.i, %20
  br i1 %cmp14.i.1, label %if.end13.i.1.if.then15.i_crit_edge, label %if.end17.i.1

if.end13.i.1.if.then15.i_crit_edge:               ; preds = %if.end13.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.1:                                     ; preds = %if.end13.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.1 = add nuw nsw i32 %j.1.i, 1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.end17.i.1, %if.else8.i.1.for.inc.i.1_crit_edge, %for.inc.i.for.inc.i.1_crit_edge
  %j.1.i.1 = phi i32 [ %j.1.i, %for.inc.i.for.inc.i.1_crit_edge ], [ %j.1.i, %if.else8.i.1.for.inc.i.1_crit_edge ], [ %inc.i.1, %if.end17.i.1 ]
  %21 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp1.not.i.2 = icmp eq i32 %21, 2
  br i1 %cmp1.not.i.2, label %if.else8.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.2

if.else8.i.2:                                     ; preds = %for.inc.i.1
  %22 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %variant.i, align 4
  %version_bit.i.2 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %version_bit.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version_bit.i.2, align 4
  %26 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 4), align 4
  %and.i.2 = and i32 %26, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %cmp10.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %cmp10.i.2, label %if.else8.i.2.for.inc.i.2_crit_edge, label %if.end13.i.2

if.else8.i.2.for.inc.i.2_crit_edge:               ; preds = %if.else8.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.2

if.end13.i.2:                                     ; preds = %if.else8.i.2
  %27 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.1, i32 %28)
  %cmp14.i.2 = icmp eq i32 %j.1.i.1, %28
  br i1 %cmp14.i.2, label %if.end13.i.2.if.then15.i_crit_edge, label %if.end17.i.2

if.end13.i.2.if.then15.i_crit_edge:               ; preds = %if.end13.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.2:                                     ; preds = %if.end13.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.2 = add nuw nsw i32 %j.1.i.1, 1
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.end17.i.2, %if.else8.i.2.for.inc.i.2_crit_edge, %for.inc.i.1.for.inc.i.2_crit_edge
  %j.1.i.2 = phi i32 [ %j.1.i.1, %for.inc.i.1.for.inc.i.2_crit_edge ], [ %j.1.i.1, %if.else8.i.2.for.inc.i.2_crit_edge ], [ %inc.i.2, %if.end17.i.2 ]
  %29 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp1.not.i.3 = icmp eq i32 %29, 2
  br i1 %cmp1.not.i.3, label %if.else8.i.3, label %for.inc.i.2.for.inc.i.3_crit_edge

for.inc.i.2.for.inc.i.3_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.3

if.else8.i.3:                                     ; preds = %for.inc.i.2
  %30 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %variant.i, align 4
  %version_bit.i.3 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %version_bit.i.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %version_bit.i.3, align 4
  %34 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 4), align 4
  %and.i.3 = and i32 %34, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %cmp10.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %cmp10.i.3, label %if.else8.i.3.for.inc.i.3_crit_edge, label %if.end13.i.3

if.else8.i.3.for.inc.i.3_crit_edge:               ; preds = %if.else8.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.3

if.end13.i.3:                                     ; preds = %if.else8.i.3
  %35 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.2, i32 %36)
  %cmp14.i.3 = icmp eq i32 %j.1.i.2, %36
  br i1 %cmp14.i.3, label %if.end13.i.3.if.then15.i_crit_edge, label %if.end17.i.3

if.end13.i.3.if.then15.i_crit_edge:               ; preds = %if.end13.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.3:                                     ; preds = %if.end13.i.3
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.3 = add nuw nsw i32 %j.1.i.2, 1
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.end17.i.3, %if.else8.i.3.for.inc.i.3_crit_edge, %for.inc.i.2.for.inc.i.3_crit_edge
  %j.1.i.3 = phi i32 [ %j.1.i.2, %for.inc.i.2.for.inc.i.3_crit_edge ], [ %j.1.i.2, %if.else8.i.3.for.inc.i.3_crit_edge ], [ %inc.i.3, %if.end17.i.3 ]
  %37 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp1.not.i.4 = icmp eq i32 %37, 2
  br i1 %cmp1.not.i.4, label %if.else8.i.4, label %for.inc.i.3.for.inc.i.4_crit_edge

for.inc.i.3.for.inc.i.4_crit_edge:                ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.4

if.else8.i.4:                                     ; preds = %for.inc.i.3
  %38 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %variant.i, align 4
  %version_bit.i.4 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %version_bit.i.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version_bit.i.4, align 4
  %42 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 4), align 4
  %and.i.4 = and i32 %42, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %cmp10.i.4 = icmp eq i32 %and.i.4, 0
  br i1 %cmp10.i.4, label %if.else8.i.4.for.inc.i.4_crit_edge, label %if.end13.i.4

if.else8.i.4.for.inc.i.4_crit_edge:               ; preds = %if.else8.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.4

if.end13.i.4:                                     ; preds = %if.else8.i.4
  %43 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.3, i32 %44)
  %cmp14.i.4 = icmp eq i32 %j.1.i.3, %44
  br i1 %cmp14.i.4, label %if.end13.i.4.if.then15.i_crit_edge, label %if.end17.i.4

if.end13.i.4.if.then15.i_crit_edge:               ; preds = %if.end13.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.4:                                     ; preds = %if.end13.i.4
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.4 = add nuw nsw i32 %j.1.i.3, 1
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.end17.i.4, %if.else8.i.4.for.inc.i.4_crit_edge, %for.inc.i.3.for.inc.i.4_crit_edge
  %j.1.i.4 = phi i32 [ %j.1.i.3, %for.inc.i.3.for.inc.i.4_crit_edge ], [ %j.1.i.3, %if.else8.i.4.for.inc.i.4_crit_edge ], [ %inc.i.4, %if.end17.i.4 ]
  %45 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp1.not.i.5 = icmp eq i32 %45, 2
  br i1 %cmp1.not.i.5, label %if.else8.i.5, label %for.inc.i.4.for.inc.i.5_crit_edge

for.inc.i.4.for.inc.i.5_crit_edge:                ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.5

if.else8.i.5:                                     ; preds = %for.inc.i.4
  %46 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant.i, align 4
  %version_bit.i.5 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %version_bit.i.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %version_bit.i.5, align 4
  %50 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 4), align 4
  %and.i.5 = and i32 %50, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5)
  %cmp10.i.5 = icmp eq i32 %and.i.5, 0
  br i1 %cmp10.i.5, label %if.else8.i.5.for.inc.i.5_crit_edge, label %if.end13.i.5

if.else8.i.5.for.inc.i.5_crit_edge:               ; preds = %if.else8.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.5

if.end13.i.5:                                     ; preds = %if.else8.i.5
  %51 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.4, i32 %52)
  %cmp14.i.5 = icmp eq i32 %j.1.i.4, %52
  br i1 %cmp14.i.5, label %if.end13.i.5.if.then15.i_crit_edge, label %if.end17.i.5

if.end13.i.5.if.then15.i_crit_edge:               ; preds = %if.end13.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.5:                                     ; preds = %if.end13.i.5
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.5 = add nuw nsw i32 %j.1.i.4, 1
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.end17.i.5, %if.else8.i.5.for.inc.i.5_crit_edge, %for.inc.i.4.for.inc.i.5_crit_edge
  %j.1.i.5 = phi i32 [ %j.1.i.4, %for.inc.i.4.for.inc.i.5_crit_edge ], [ %j.1.i.4, %if.else8.i.5.for.inc.i.5_crit_edge ], [ %inc.i.5, %if.end17.i.5 ]
  %53 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp1.not.i.6 = icmp eq i32 %53, 2
  br i1 %cmp1.not.i.6, label %if.else8.i.6, label %for.inc.i.5.for.inc.i.6_crit_edge

for.inc.i.5.for.inc.i.6_crit_edge:                ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.6

if.else8.i.6:                                     ; preds = %for.inc.i.5
  %54 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %variant.i, align 4
  %version_bit.i.6 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %version_bit.i.6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %version_bit.i.6, align 4
  %58 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 4), align 4
  %and.i.6 = and i32 %58, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6)
  %cmp10.i.6 = icmp eq i32 %and.i.6, 0
  br i1 %cmp10.i.6, label %if.else8.i.6.for.inc.i.6_crit_edge, label %if.end13.i.6

if.else8.i.6.for.inc.i.6_crit_edge:               ; preds = %if.else8.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.6

if.end13.i.6:                                     ; preds = %if.else8.i.6
  %59 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.5, i32 %60)
  %cmp14.i.6 = icmp eq i32 %j.1.i.5, %60
  br i1 %cmp14.i.6, label %if.end13.i.6.if.then15.i_crit_edge, label %if.end17.i.6

if.end13.i.6.if.then15.i_crit_edge:               ; preds = %if.end13.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.6:                                     ; preds = %if.end13.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.6 = add nuw nsw i32 %j.1.i.5, 1
  br label %for.inc.i.6

for.inc.i.6:                                      ; preds = %if.end17.i.6, %if.else8.i.6.for.inc.i.6_crit_edge, %for.inc.i.5.for.inc.i.6_crit_edge
  %j.1.i.6 = phi i32 [ %j.1.i.5, %for.inc.i.5.for.inc.i.6_crit_edge ], [ %j.1.i.5, %if.else8.i.6.for.inc.i.6_crit_edge ], [ %inc.i.6, %if.end17.i.6 ]
  %61 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp1.not.i.7 = icmp eq i32 %61, 2
  br i1 %cmp1.not.i.7, label %if.else8.i.7, label %for.inc.i.6.for.inc.i.7_crit_edge

for.inc.i.6.for.inc.i.7_crit_edge:                ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.7

if.else8.i.7:                                     ; preds = %for.inc.i.6
  %62 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %variant.i, align 4
  %version_bit.i.7 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %version_bit.i.7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %version_bit.i.7, align 4
  %66 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 4), align 4
  %and.i.7 = and i32 %66, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.7)
  %cmp10.i.7 = icmp eq i32 %and.i.7, 0
  br i1 %cmp10.i.7, label %if.else8.i.7.for.inc.i.7_crit_edge, label %if.end13.i.7

if.else8.i.7.for.inc.i.7_crit_edge:               ; preds = %if.else8.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.7

if.end13.i.7:                                     ; preds = %if.else8.i.7
  %67 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.6, i32 %68)
  %cmp14.i.7 = icmp eq i32 %j.1.i.6, %68
  br i1 %cmp14.i.7, label %if.end13.i.7.if.then15.i_crit_edge, label %if.end17.i.7

if.end13.i.7.if.then15.i_crit_edge:               ; preds = %if.end13.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end17.i.7:                                     ; preds = %if.end13.i.7
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.7 = add nuw nsw i32 %j.1.i.6, 1
  br label %for.inc.i.7

for.inc.i.7:                                      ; preds = %if.end17.i.7, %if.else8.i.7.for.inc.i.7_crit_edge, %for.inc.i.6.for.inc.i.7_crit_edge
  %j.1.i.7 = phi i32 [ %j.1.i.6, %for.inc.i.6.for.inc.i.7_crit_edge ], [ %j.1.i.6, %if.else8.i.7.for.inc.i.7_crit_edge ], [ %inc.i.7, %if.end17.i.7 ]
  %69 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp1.not.i.8 = icmp eq i32 %69, 2
  br i1 %cmp1.not.i.8, label %if.else8.i.8, label %for.inc.i.7.vidioc_enum_fmt.exit_crit_edge

for.inc.i.7.vidioc_enum_fmt.exit_crit_edge:       ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %vidioc_enum_fmt.exit

if.else8.i.8:                                     ; preds = %for.inc.i.7
  %70 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %variant.i, align 4
  %version_bit.i.8 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %version_bit.i.8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %version_bit.i.8, align 4
  %74 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 4), align 4
  %and.i.8 = and i32 %74, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.8)
  %cmp10.i.8 = icmp eq i32 %and.i.8, 0
  br i1 %cmp10.i.8, label %if.else8.i.8.vidioc_enum_fmt.exit_crit_edge, label %if.end13.i.8

if.else8.i.8.vidioc_enum_fmt.exit_crit_edge:      ; preds = %if.else8.i.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %vidioc_enum_fmt.exit

if.end13.i.8:                                     ; preds = %if.else8.i.8
  %75 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i.7, i32 %76)
  %cmp14.i.8 = icmp eq i32 %j.1.i.7, %76
  br i1 %cmp14.i.8, label %if.end13.i.8.if.then15.i_crit_edge, label %if.end13.i.8.vidioc_enum_fmt.exit_crit_edge

if.end13.i.8.vidioc_enum_fmt.exit_crit_edge:      ; preds = %if.end13.i.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %vidioc_enum_fmt.exit

if.end13.i.8.if.then15.i_crit_edge:               ; preds = %if.end13.i.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

vidioc_enum_fmt.exit:                             ; preds = %if.end13.i.8.vidioc_enum_fmt.exit_crit_edge, %if.else8.i.8.vidioc_enum_fmt.exit_crit_edge, %for.inc.i.7.vidioc_enum_fmt.exit_crit_edge, %if.then15.i
  %retval.0.i = phi i32 [ 0, %if.then15.i ], [ -22, %if.end13.i.8.vidioc_enum_fmt.exit_crit_edge ], [ -22, %if.else8.i.8.vidioc_enum_fmt.exit_crit_edge ], [ -22, %for.inc.i.7.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  %state = getelementptr i8, ptr %priv, i32 1320
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 1357, i32 noundef %2, i32 noundef %4) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %6, label %do.end43 [
    i32 9, label %if.then7
    i32 10, label %if.then16
  ]

if.then7:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %height, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1, ptr %field, align 1
  %dst_fmt = getelementptr i8, ptr %priv, i32 264
  %11 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst_fmt, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %pixelformat, align 1
  %16 = load ptr, ptr %dst_fmt, align 4
  %num_planes = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_planes, align 4
  %conv = trunc i32 %18 to i8
  %num_planes9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %19 = ptrtoint ptr %num_planes9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %num_planes9, align 1
  %enc_dst_buf_size = getelementptr i8, ptr %priv, i32 3484
  %20 = ptrtoint ptr %enc_dst_buf_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enc_dst_buf_size, align 4
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %bytesperline, align 1
  %23 = load i32, ptr %enc_dst_buf_size, align 4
  %24 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %plane_fmt, align 1
  br label %cleanup

if.then16:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %img_width = getelementptr i8, ptr %priv, i32 1328
  %25 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %img_width, align 4
  %27 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %fmt, align 1
  %img_height = getelementptr i8, ptr %priv, i32 1332
  %28 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %img_height, align 4
  %height18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %height18 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %height18, align 1
  %field19 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %field19 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 1, ptr %field19, align 1
  %src_fmt = getelementptr i8, ptr %priv, i32 260
  %32 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src_fmt, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %pixelformat21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %pixelformat21 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %pixelformat21, align 1
  %37 = load ptr, ptr %src_fmt, align 4
  %num_planes23 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %num_planes23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_planes23, align 4
  %conv24 = trunc i32 %39 to i8
  %num_planes25 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %40 = ptrtoint ptr %num_planes25 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv24, ptr %num_planes25, align 1
  %buf_width = getelementptr i8, ptr %priv, i32 1336
  %41 = ptrtoint ptr %buf_width to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_width, align 4
  %plane_fmt26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %bytesperline28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %43 = ptrtoint ptr %bytesperline28 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %bytesperline28, align 1
  %luma_size = getelementptr i8, ptr %priv, i32 1344
  %44 = ptrtoint ptr %luma_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %luma_size, align 4
  %46 = ptrtoint ptr %plane_fmt26 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %plane_fmt26, align 1
  %47 = load i32, ptr %buf_width, align 4
  %arrayidx34 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %bytesperline35 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %48 = ptrtoint ptr %bytesperline35 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %bytesperline35, align 1
  %chroma_size = getelementptr i8, ptr %priv, i32 1348
  %49 = ptrtoint ptr %chroma_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chroma_size, align 4
  %51 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %arrayidx34, align 1
  br label %cleanup

do.end43:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef 1382) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.then16, %if.then7
  %retval.0 = phi i32 [ -22, %do.end43 ], [ 0, %if.then16 ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %add.ptr = getelementptr i8, ptr %priv, i32 -4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call1 = tail call i32 @vidioc_try_fmt(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming = getelementptr i8, ptr %priv, i32 716
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool2.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %streaming3 = getelementptr i8, ptr %priv, i32 1228
  %3 = ptrtoint ptr %streaming3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load4 = load i16, ptr %streaming3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load4)
  %tobool7.not = icmp sgt i16 %bf.load4, -1
  br i1 %tobool7.not, label %if.end11, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, ptr noundef nonnull @.str.67) #12
  br label %do.body80

if.end11:                                         ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %5, label %do.end73 [
    i32 9, label %if.then12
    i32 10, label %if.then21
  ]

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call fastcc ptr @find_format(ptr noundef %f, i32 noundef 1)
  %dst_fmt = getelementptr i8, ptr %priv, i32 264
  %7 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %dst_fmt, align 4
  %state = getelementptr i8, ptr %priv, i32 1320
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 100, ptr %state, align 4
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %call13, i32 0, i32 1
  %9 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %codec_mode, align 4
  %codec_mode15 = getelementptr i8, ptr %priv, i32 2972
  %11 = ptrtoint ptr %codec_mode15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %codec_mode15, align 4
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %12 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %plane_fmt, align 1
  %enc_dst_buf_size = getelementptr i8, ptr %priv, i32 3484
  %14 = ptrtoint ptr %enc_dst_buf_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %enc_dst_buf_size, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %bytesperline, align 1
  %dst_bufs_cnt = getelementptr i8, ptr %priv, i32 2956
  %16 = ptrtoint ptr %dst_bufs_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dst_bufs_cnt, align 4
  %capture_state = getelementptr i8, ptr %priv, i32 1408
  %17 = ptrtoint ptr %capture_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %capture_state, align 4
  %call18 = tail call i32 @s5p_mfc_open_mfc_inst(ptr noundef %1, ptr noundef %add.ptr) #9
  br label %do.body80

if.then21:                                        ; preds = %if.end11
  %call22 = tail call fastcc ptr @find_format(ptr noundef %f, i32 noundef 2)
  %src_fmt = getelementptr i8, ptr %priv, i32 260
  %18 = ptrtoint ptr %src_fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call22, ptr %src_fmt, align 4
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %fmt, align 1
  %img_width = getelementptr i8, ptr %priv, i32 1328
  %21 = ptrtoint ptr %img_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %img_width, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %height, align 1
  %img_height = getelementptr i8, ptr %priv, i32 1332
  %24 = ptrtoint ptr %img_height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %img_height, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %25 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp24 = icmp sgt i32 %25, 1
  br i1 %cmp24, label %do.body36, label %if.then21.do.end50_crit_edge

if.then21.do.end50_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

do.body36:                                        ; preds = %if.then21
  %codec_mode31 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %call22, i32 0, i32 1
  %26 = ptrtoint ptr %codec_mode31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %codec_mode31, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef 1457, i32 noundef %27) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp37 = icmp sgt i32 %.pr, 1
  br i1 %cmp37, label %do.end41, label %do.body36.do.end50_crit_edge

do.body36.do.end50_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %fmt, align 1
  %30 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %height, align 1
  %32 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %img_width, align 4
  %34 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %img_height, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, i32 noundef 1460, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #12
  br label %do.end50

do.end50:                                         ; preds = %do.end41, %do.body36.do.end50_crit_edge, %if.then21.do.end50_crit_edge
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %36 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mfc_ops, align 4
  %tobool51.not = icmp eq ptr %37, null
  br i1 %tobool51.not, label %do.end50.cond.end_crit_edge, label %land.lhs.true

do.end50.cond.end_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

land.lhs.true:                                    ; preds = %do.end50
  %enc_calc_src_size = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %enc_calc_src_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enc_calc_src_size, align 4
  %tobool53.not = icmp eq ptr %39, null
  br i1 %tobool53.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %39(ptr noundef %add.ptr) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %do.end50.cond.end_crit_edge
  %luma_size = getelementptr i8, ptr %priv, i32 1344
  %40 = ptrtoint ptr %luma_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %luma_size, align 4
  %plane_fmt56 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %42 = ptrtoint ptr %plane_fmt56 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %plane_fmt56, align 1
  %buf_width = getelementptr i8, ptr %priv, i32 1336
  %43 = ptrtoint ptr %buf_width to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buf_width, align 4
  %bytesperline61 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %45 = ptrtoint ptr %bytesperline61 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %bytesperline61, align 1
  %chroma_size = getelementptr i8, ptr %priv, i32 1348
  %46 = ptrtoint ptr %chroma_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chroma_size, align 4
  %arrayidx63 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %arrayidx63, align 1
  %49 = load i32, ptr %buf_width, align 4
  %bytesperline68 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %50 = ptrtoint ptr %bytesperline68 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %bytesperline68, align 1
  %src_bufs_cnt = getelementptr i8, ptr %priv, i32 2184
  %51 = ptrtoint ptr %src_bufs_cnt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %src_bufs_cnt, align 4
  %output_state = getelementptr i8, ptr %priv, i32 1412
  %52 = ptrtoint ptr %output_state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %output_state, align 4
  br label %do.body80

do.end73:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.67, i32 noundef 1471) #12
  br label %do.body80

do.body80:                                        ; preds = %do.end73, %cond.end, %if.then12, %do.end
  %ret.0 = phi i32 [ -16, %do.end ], [ %call18, %if.then12 ], [ 0, %cond.end ], [ -22, %do.end73 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %53 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp81 = icmp sgt i32 %53, 4
  br i1 %cmp81, label %do.end85, label %do.body80.cleanup_crit_edge

do.body80.cleanup_crit_edge:                      ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end85:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.67, i32 noundef 1475) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %do.body80.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.0, %do.end85 ], [ %ret.0, %do.body80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %3, label %do.end55 [
    i32 9, label %if.then
    i32 10, label %if.then23
  ]

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc ptr @find_format(ptr noundef %f, i32 noundef 1)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 1397) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %variant, align 4
  %version_bit = getelementptr inbounds %struct.s5p_mfc_variant, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %version_bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version_bit, align 4
  %versions = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %call2, i32 0, i32 4
  %9 = ptrtoint ptr %versions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %versions, align 4
  %and = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %do.end13, label %if.end18

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef 1401) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %plane_fmt, align 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %bytesperline, align 1
  br label %cleanup

if.then23:                                        ; preds = %entry
  %call24 = tail call fastcc ptr @find_format(ptr noundef %f, i32 noundef 2)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end30, label %if.end35

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 1410) #12
  br label %cleanup

if.end35:                                         ; preds = %if.then23
  %variant36 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %variant36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant36, align 4
  %version_bit37 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %version_bit37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version_bit37, align 4
  %versions38 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %call24, i32 0, i32 4
  %18 = ptrtoint ptr %versions38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %versions38, align 4
  %and39 = and i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 0
  br i1 %cmp40, label %do.end45, label %if.end50

do.end45:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef 1414) #12
  br label %cleanup

if.end50:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt1, i32 noundef 8, i32 noundef 1920, i32 noundef 1, ptr noundef %height, i32 noundef 4, i32 noundef 1080, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

do.end55:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.80, i32 noundef 1421) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end50, %do.end45, %do.end30, %if.end18, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end13 ], [ -22, %do.end ], [ -22, %do.end45 ], [ -22, %do.end30 ], [ -22, %do.end55 ], [ 0, %if.end50 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %reqbufs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %add.ptr = getelementptr i8, ptr %priv, i32 -4
  %memory = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %reqbufs, i32 0, i32 2
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memory, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %reqbufs, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %5, label %do.end167 [
    i32 9, label %if.then4
    i32 10, label %if.then79
  ]

if.then4:                                         ; preds = %if.end
  %7 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reqbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %do.body, label %if.end21

do.body:                                          ; preds = %if.then4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %9 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp7 = icmp sgt i32 %9, 1
  br i1 %cmp7, label %do.end, label %do.body.do.end14_crit_edge

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 1492) #12
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  %vq_dst = getelementptr i8, ptr %priv, i32 780
  %call15 = tail call i32 @vb2_reqbufs(ptr noundef %vq_dst, ptr noundef %reqbufs) #9
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %10 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end14.cond.end_crit_edge, label %land.lhs.true16

do.end14.cond.end_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

land.lhs.true16:                                  ; preds = %do.end14
  %release_codec_buffers = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %release_codec_buffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_codec_buffers, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %land.lhs.true16.cond.end_crit_edge, label %cond.true

land.lhs.true16.cond.end_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %add.ptr) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true16.cond.end_crit_edge, %do.end14.cond.end_crit_edge
  %capture_state = getelementptr i8, ptr %priv, i32 1408
  %14 = ptrtoint ptr %capture_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %capture_state, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.then4
  %capture_state22 = getelementptr i8, ptr %priv, i32 1408
  %15 = ptrtoint ptr %capture_state22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capture_state22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23.not = icmp eq i32 %16, 0
  br i1 %cmp23.not, label %if.end34, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, i32 noundef 1501, i32 noundef %16) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end21
  %vq_dst35 = getelementptr i8, ptr %priv, i32 780
  %call36 = tail call i32 @vb2_reqbufs(ptr noundef %vq_dst35, ptr noundef %reqbufs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end47, label %do.end42

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.91, i32 noundef 1506) #12
  br label %cleanup

if.end47:                                         ; preds = %if.end34
  %17 = ptrtoint ptr %capture_state22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %capture_state22, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %mfc_ops50 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %19, i32 0, i32 36
  %20 = ptrtoint ptr %mfc_ops50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mfc_ops50, align 4
  %tobool51.not = icmp eq ptr %21, null
  br i1 %tobool51.not, label %if.end47.do.end68_crit_edge, label %land.lhs.true52

if.end47.do.end68_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true52:                                  ; preds = %if.end47
  %alloc_codec_buffers = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %alloc_codec_buffers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alloc_codec_buffers, align 4
  %tobool55.not = icmp eq ptr %23, null
  br i1 %tobool55.not, label %land.lhs.true52.do.end68_crit_edge, label %cond.true56

land.lhs.true52.do.end68_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

cond.true56:                                      ; preds = %land.lhs.true52
  %call60 = tail call i32 %23(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %phi.cmp = icmp eq i32 %call60, 0
  br i1 %phi.cmp, label %cond.true56.cleanup_crit_edge, label %cond.true56.do.end68_crit_edge

cond.true56.do.end68_crit_edge:                   ; preds = %cond.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

cond.true56.cleanup_crit_edge:                    ; preds = %cond.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end68:                                         ; preds = %cond.true56.do.end68_crit_edge, %land.lhs.true52.do.end68_crit_edge, %if.end47.do.end68_crit_edge
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.91, i32 noundef 1514) #12
  %24 = ptrtoint ptr %reqbufs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %reqbufs, align 4
  %call75 = tail call i32 @vb2_reqbufs(ptr noundef %vq_dst35, ptr noundef %reqbufs) #9
  br label %cleanup

if.then79:                                        ; preds = %if.end
  %25 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reqbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp81 = icmp eq i32 %26, 0
  br i1 %cmp81, label %do.body83, label %if.end106

do.body83:                                        ; preds = %if.then79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %27 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp84 = icmp sgt i32 %27, 1
  br i1 %cmp84, label %do.end88, label %do.body83.do.end93_crit_edge

do.body83.do.end93_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end93

do.end88:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 1521) #12
  br label %do.end93

do.end93:                                         ; preds = %do.end88, %do.body83.do.end93_crit_edge
  %vq_src = getelementptr i8, ptr %priv, i32 268
  %call94 = tail call i32 @vb2_reqbufs(ptr noundef %vq_src, ptr noundef %reqbufs) #9
  %mfc_ops95 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %28 = ptrtoint ptr %mfc_ops95 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mfc_ops95, align 4
  %tobool96.not = icmp eq ptr %29, null
  br i1 %tobool96.not, label %do.end93.cond.end105_crit_edge, label %land.lhs.true97

do.end93.cond.end105_crit_edge:                   ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end105

land.lhs.true97:                                  ; preds = %do.end93
  %release_codec_buffers99 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %release_codec_buffers99 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %release_codec_buffers99, align 4
  %tobool100.not = icmp eq ptr %31, null
  br i1 %tobool100.not, label %land.lhs.true97.cond.end105_crit_edge, label %cond.true101

land.lhs.true97.cond.end105_crit_edge:            ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end105

cond.true101:                                     ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %31(ptr noundef %add.ptr) #9
  br label %cond.end105

cond.end105:                                      ; preds = %cond.true101, %land.lhs.true97.cond.end105_crit_edge, %do.end93.cond.end105_crit_edge
  %output_state = getelementptr i8, ptr %priv, i32 1412
  %32 = ptrtoint ptr %output_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %output_state, align 4
  br label %cleanup

if.end106:                                        ; preds = %if.then79
  %output_state107 = getelementptr i8, ptr %priv, i32 1412
  %33 = ptrtoint ptr %output_state107 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %output_state107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp108.not = icmp eq i32 %34, 0
  br i1 %cmp108.not, label %if.end119, label %do.end113

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.91, i32 noundef 1530, i32 noundef %34) #12
  br label %cleanup

if.end119:                                        ; preds = %if.end106
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %variant, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %38)
  %cmp120 = icmp ugt i32 %38, 95
  br i1 %cmp120, label %if.then123, label %if.end119.if.end148_crit_edge

if.end119.if.end148_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then123:                                       ; preds = %if.end119
  %pb_count = getelementptr i8, ptr %priv, i32 3000
  %39 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool124.not = icmp ne i32 %40, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %40)
  %cmp128 = icmp ult i32 %26, %40
  %or.cond = select i1 %tobool124.not, i1 %cmp128, i1 false
  br i1 %or.cond, label %if.then129, label %if.else144

if.then129:                                       ; preds = %if.then123
  %41 = ptrtoint ptr %reqbufs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %reqbufs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %42 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp133 = icmp sgt i32 %42, 1
  br i1 %cmp133, label %do.end137, label %if.then129.if.end148_crit_edge

if.then129.if.end148_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

do.end137:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pb_count, align 4
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.91, i32 noundef 1540, i32 noundef %44) #12
  br label %if.end148

if.else144:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %pb_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %26, ptr %pb_count, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else144, %do.end137, %if.then129.if.end148_crit_edge, %if.end119.if.end148_crit_edge
  %vq_src149 = getelementptr i8, ptr %priv, i32 268
  %call150 = tail call i32 @vb2_reqbufs(ptr noundef %vq_src149, ptr noundef %reqbufs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151.not = icmp eq i32 %call150, 0
  br i1 %cmp151.not, label %if.end161, label %do.end156

do.end156:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.91, i32 noundef 1548) #12
  br label %cleanup

if.end161:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %output_state107 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %output_state107, align 4
  br label %cleanup

do.end167:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.91, i32 noundef 1553) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end167, %if.end161, %do.end156, %do.end113, %cond.end105, %do.end68, %cond.true56.cleanup_crit_edge, %do.end42, %do.end28, %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %cond.end ], [ -22, %do.end28 ], [ %call36, %do.end42 ], [ -12, %do.end68 ], [ %call94, %cond.end105 ], [ -22, %do.end113 ], [ %call150, %do.end156 ], [ -22, %do.end167 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cond.true56.cleanup_crit_edge ], [ 0, %if.end161 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querybuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 8
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %memory, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %3, label %do.end45 [
    i32 9, label %if.then4
    i32 10, label %if.then28
  ]

if.then4:                                         ; preds = %if.end
  %state = getelementptr i8, ptr %priv, i32 1320
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %6)
  %cmp5.not = icmp eq i32 %6, 101
  br i1 %cmp5.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef 1571, i32 noundef %6) #12
  br label %cleanup

if.end12:                                         ; preds = %if.then4
  %vq_dst = getelementptr i8, ptr %priv, i32 780
  %call13 = tail call i32 @vb2_querybuf(ptr noundef %vq_dst, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115, i32 noundef 1576) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %m = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 9
  %7 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m, align 8
  %m25 = getelementptr inbounds %struct.v4l2_plane, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %m25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m25, align 4
  %add = add i32 %10, 1073741824
  store i32 %add, ptr %m25, align 4
  br label %cleanup

if.then28:                                        ; preds = %if.end
  %vq_src = getelementptr i8, ptr %priv, i32 268
  %call29 = tail call i32 @vb2_querybuf(ptr noundef %vq_src, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.then28.cleanup_crit_edge, label %do.end35

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.115, i32 noundef 1583) #12
  br label %cleanup

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.115, i32 noundef 1587) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.end35, %if.then28.cleanup_crit_edge, %if.end24, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call13, %do.end19 ], [ %call29, %do.end35 ], [ -22, %do.end45 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_qbuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %priv, i32 1320
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %1)
  %cmp = icmp eq i32 %1, 109
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef 1599) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 10, label %if.then6
    i32 9, label %if.then22
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %1)
  %cmp8 = icmp eq i32 %1, 106
  br i1 %cmp8, label %do.end13, label %if.end18

do.end13:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125, i32 noundef 1604) #12
  br label %cleanup

if.end18:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %vq_src = getelementptr i8, ptr %priv, i32 268
  %call19 = tail call i32 @vb2_qbuf(ptr noundef %vq_src, ptr noundef null, ptr noundef %buf) #9
  br label %cleanup

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vq_dst = getelementptr i8, ptr %priv, i32 780
  %call23 = tail call i32 @vb2_qbuf(ptr noundef %vq_dst, ptr noundef null, ptr noundef %buf) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end18, %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end13 ], [ %call19, %if.end18 ], [ %call23, %if.then22 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_expbuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %eb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eb, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 10, label %entry.cleanup.sink.split_crit_edge
    i32 9, label %if.then3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 780, %if.then3 ], [ 268, %entry.cleanup.sink.split_crit_edge ]
  %vq_dst = getelementptr i8, ptr %priv, i32 %.sink
  %call4 = tail call i32 @vb2_expbuf(ptr noundef %vq_dst, ptr noundef %eb) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_dqbuf(ptr nocapture noundef readonly %file, ptr noundef %priv, ptr noundef %buf) #1 align 64 {
entry:
  %ev = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev) #9
  %0 = call ptr @memset(ptr %ev, i32 0, i32 136)
  %1 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %ev, align 8
  %state = getelementptr i8, ptr %priv, i32 1320
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %3)
  %cmp = icmp eq i32 %3, 109
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vidioc_dqbuf._rs, ptr noundef nonnull @__func__.vidioc_dqbuf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @__func__.vidioc_dqbuf, i32 noundef 1624) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %5, label %if.end7.cleanup_crit_edge [
    i32 10, label %if.then9
    i32 9, label %if.then14
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %vq_src = getelementptr i8, ptr %priv, i32 268
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10 = icmp ne i32 %and, 0
  %call11 = tail call i32 @vb2_dqbuf(ptr noundef %vq_src, ptr noundef %buf, i1 noundef zeroext %tobool10) #9
  br label %cleanup

if.then14:                                        ; preds = %if.end7
  %vq_dst = getelementptr i8, ptr %priv, i32 780
  %f_flags15 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags15, align 4
  %and16 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17 = icmp ne i32 %and16, 0
  %call18 = tail call i32 @vb2_dqbuf(ptr noundef %vq_dst, ptr noundef %buf, i1 noundef zeroext %tobool17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then14
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %12)
  %cmp21 = icmp eq i32 %12, 107
  br i1 %cmp21, label %land.lhs.true22, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true22:                                  ; preds = %land.lhs.true
  %done_list = getelementptr i8, ptr %priv, i32 1124
  %13 = ptrtoint ptr %done_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %done_list, align 4
  %cmp.i.not = icmp eq ptr %14, %done_list
  br i1 %cmp.i.not, label %if.then26, label %land.lhs.true22.cleanup_crit_edge

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  call void @v4l2_event_queue_fh(ptr noundef %priv, ptr noundef nonnull %ev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then9, %if.end7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ %call11, %if.then9 ], [ 0, %if.then26 ], [ 0, %land.lhs.true22.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call18, %if.then14.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamon(ptr nocapture noundef readnone %file, ptr noundef %priv, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 10, label %entry.cleanup.sink.split_crit_edge
    i32 9, label %if.then2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 780, %if.then2 ], [ 268, %entry.cleanup.sink.split_crit_edge ]
  %vq_dst = getelementptr i8, ptr %priv, i32 %.sink9
  %call3 = tail call i32 @vb2_streamon(ptr noundef %vq_dst, i32 noundef %type) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamoff(ptr nocapture noundef readnone %file, ptr noundef %priv, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 10, label %entry.cleanup.sink.split_crit_edge
    i32 9, label %if.then2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 780, %if.then2 ], [ 268, %entry.cleanup.sink.split_crit_edge ]
  %vq_dst = getelementptr i8, ptr %priv, i32 %.sink9
  %call3 = tail call i32 @vb2_streamoff(ptr noundef %vq_dst, i32 noundef %type) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_encoder_cmd(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr nocapture noundef readonly %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %flags3 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %streaming = getelementptr i8, ptr %priv, i32 716
  %6 = ptrtoint ptr %streaming to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %irqlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 12
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #9
  %src_queue = getelementptr i8, ptr %priv, i32 1292
  %7 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i.not = icmp eq ptr %8, %src_queue
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %9 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp16 = icmp sgt i32 %9, 1
  br i1 %cmp.i.not, label %do.body15, label %do.body37

do.body15:                                        ; preds = %do.body6
  br i1 %cmp16, label %do.end21, label %do.body15.do.end26_crit_edge

do.body15.do.end26_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end21:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 2293) #12
  br label %do.end26

do.end26:                                         ; preds = %do.end21, %do.body15.do.end26_crit_edge
  %state = getelementptr i8, ptr %priv, i32 1320
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 106, ptr %state, align 4
  %call27 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end26.if.end30_crit_edge, label %if.then29

do.end26.if.end30_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @set_work_bit_irqsave(ptr noundef %add.ptr) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %do.end26.if.end30_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call9) #9
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %11 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mfc_ops, align 4
  %tobool32.not = icmp eq ptr %12, null
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %land.lhs.true

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end30
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %try_run, align 4
  %tobool34.not = icmp eq ptr %14, null
  br i1 %tobool34.not, label %land.lhs.true.cleanup_crit_edge, label %cond.true

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %14(ptr noundef %1) #9
  br label %cleanup

do.body37:                                        ; preds = %do.body6
  br i1 %cmp16, label %do.end43, label %do.body37.do.end48_crit_edge

do.body37.do.end48_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.132, i32 noundef 2300) #12
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %do.body37.do.end48_crit_edge
  %prev = getelementptr i8, ptr %priv, i32 1296
  %15 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev, align 4
  %flags53 = getelementptr i8, ptr %16, i32 16
  %17 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags53, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.else57, label %if.then55

if.then55:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %state56 = getelementptr i8, ptr %priv, i32 1320
  %19 = ptrtoint ptr %state56 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 106, ptr %state56, align 4
  br label %if.end59

if.else57:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %18, 2
  %20 = ptrtoint ptr %flags53 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %flags53, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %cond.true, %land.lhs.true.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end59 ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %cond.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %a) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rc_framerate_num = getelementptr i8, ptr %priv, i32 3148
  %2 = ptrtoint ptr %rc_framerate_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rc_framerate_num, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %denominator, align 4
  %rc_framerate_denom = getelementptr i8, ptr %priv, i32 3152
  %5 = ptrtoint ptr %rc_framerate_denom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rc_framerate_denom, align 4
  %7 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %timeperframe, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef 2269) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef writeonly %priv, ptr nocapture noundef readonly %a) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  %rc_framerate_num = getelementptr i8, ptr %priv, i32 3148
  %4 = ptrtoint ptr %rc_framerate_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rc_framerate_num, align 4
  %5 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeperframe, align 4
  %rc_framerate_denom = getelementptr i8, ptr %priv, i32 3152
  %7 = ptrtoint ptr %rc_framerate_denom to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rc_framerate_denom, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.138, i32 noundef 2252) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_subscribe_event(ptr noundef %fh, ptr noundef %sub) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 2, ptr noundef null) #9
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_open_mfc_inst(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_expbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dqbuf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_enc_g_v_ctrl(ptr nocapture noundef %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4048
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963816, i32 %5)
  %cond = icmp eq i32 %5, 9963816
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %state = getelementptr i8, ptr %1, i32 -2724
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = add i32 %7, -102
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %pb_count = getelementptr i8, ptr %1, i32 -1044
  %10 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pb_count, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %7)
  %cmp5.not = icmp eq i32 %7, 100
  br i1 %cmp5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name) #12
  br label %cleanup

if.end8:                                          ; preds = %if.else
  %call9 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 0) #9
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %15 = add i32 %14, -102
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %if.then15, label %do.end21

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %pb_count16 = getelementptr i8, ptr %1, i32 -1044
  %17 = ptrtoint ptr %pb_count16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pb_count16, align 4
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val17, align 4
  br label %cleanup

do.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %name24 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name24) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.then15, %do.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end21 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_enc_s_ctrl(ptr noundef readonly %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4048
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %5, label %do.end598 [
    i32 10029515, label %sw.bb
    i32 10029533, label %sw.bb2
    i32 10029532, label %sw.bb4
    i32 10029531, label %sw.bb7
    i32 10029526, label %sw.bb9
    i32 10031364, label %sw.bb12
    i32 10031365, label %sw.bb14
    i32 10029527, label %sw.bb25
    i32 10029519, label %sw.bb27
    i32 10031367, label %sw.bb29
    i32 10031363, label %sw.bb32
    i32 10029541, label %sw.bb34
    i32 10029534, label %sw.bb36
    i32 10029539, label %sw.bb39
    i32 10029540, label %sw.bb41
    i32 10029668, label %sw.bb43
    i32 10029528, label %sw.bb46
    i32 10031362, label %entry.sw.bb48_crit_edge
    i32 10029958, label %entry.sw.bb48_crit_edge853
    i32 10031366, label %sw.bb50
    i32 10029514, label %sw.bb52
    i32 10029675, label %sw.bb55
    i32 10029671, label %sw.bb73
    i32 10029717, label %sw.bb95
    i32 10029674, label %sw.bb122
    i32 10029672, label %sw.bb126
    i32 10029673, label %sw.bb131
    i32 10029669, label %sw.bb136
    i32 10031414, label %sw.bb140
    i32 10029667, label %sw.bb145
    i32 10029530, label %sw.bb149
    i32 10029662, label %sw.bb151
    i32 10029665, label %sw.bb156
    i32 10029666, label %sw.bb161
    i32 10029663, label %sw.bb166
    i32 10029664, label %sw.bb171
    i32 10029712, label %entry.sw.bb176_crit_edge
    i32 10029612, label %entry.sw.bb176_crit_edge854
    i32 10029715, label %entry.sw.bb182_crit_edge
    i32 10029615, label %entry.sw.bb182_crit_edge855
    i32 10029716, label %entry.sw.bb188_crit_edge
    i32 10029616, label %entry.sw.bb188_crit_edge856
    i32 10029713, label %entry.sw.bb194_crit_edge
    i32 10029613, label %entry.sw.bb194_crit_edge857
    i32 10029714, label %entry.sw.bb200_crit_edge
    i32 10029614, label %entry.sw.bb200_crit_edge858
    i32 10031411, label %sw.bb206
    i32 10031412, label %sw.bb210
    i32 10031413, label %sw.bb214
    i32 10031410, label %sw.bb218
    i32 10029678, label %sw.bb222
    i32 10029679, label %sw.bb226
    i32 10029677, label %sw.bb232
    i32 10029676, label %sw.bb237
    i32 10029516, label %sw.bb242
    i32 10029670, label %sw.bb246
    i32 10029718, label %sw.bb251
    i32 10029719, label %sw.bb263
    i32 10029812, label %sw.bb267
    i32 10029813, label %sw.bb270
    i32 10029814, label %sw.bb275
    i32 10029815, label %sw.bb279
    i32 10029816, label %sw.bb284
    i32 10029817, label %sw.bb289
    i32 10029818, label %sw.bb293
    i32 10029819, label %sw.bb297
    i32 10029820, label %sw.bb303
    i32 10029821, label %sw.bb309
    i32 10029822, label %sw.bb315
    i32 10029823, label %sw.bb321
    i32 10029914, label %sw.bb327
    i32 10029915, label %sw.bb332
    i32 10029916, label %sw.bb338
    i32 10029929, label %sw.bb344
    i32 10029912, label %sw.bb348
    i32 10029913, label %sw.bb359
    i32 10029928, label %sw.bb370
    i32 10029927, label %sw.bb380
    i32 10029930, label %sw.bb392
    i32 10029931, label %sw.bb397
    i32 10029955, label %sw.bb402
    i32 10029935, label %sw.bb407
    i32 10029938, label %sw.bb412
    i32 10029937, label %sw.bb417
    i32 10029939, label %sw.bb422
    i32 10029932, label %sw.bb427
    i32 10029917, label %sw.bb432
    i32 10029918, label %sw.bb437
    i32 10029919, label %sw.bb441
    i32 10029920, label %sw.bb446
    i32 10029921, label %sw.bb451
    i32 10029922, label %sw.bb458
    i32 10029923, label %sw.bb465
    i32 10029924, label %sw.bb472
    i32 10029925, label %sw.bb479
    i32 10029926, label %sw.bb486
    i32 10029948, label %sw.bb493
    i32 10029949, label %sw.bb498
    i32 10029950, label %sw.bb504
    i32 10029951, label %sw.bb510
    i32 10029952, label %sw.bb516
    i32 10029953, label %sw.bb522
    i32 10029954, label %sw.bb528
    i32 10029940, label %sw.bb534
    i32 10029941, label %sw.bb539
    i32 10029942, label %sw.bb544
    i32 10029944, label %sw.bb549
    i32 10029945, label %sw.bb554
    i32 10029943, label %sw.bb562
    i32 10029946, label %sw.bb567
    i32 10029936, label %sw.bb572
    i32 10029933, label %sw.bb577
    i32 10029934, label %sw.bb581
    i32 10029947, label %sw.bb585
    i32 10029956, label %sw.bb590
  ]

entry.sw.bb200_crit_edge858:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb200

entry.sw.bb200_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb200

entry.sw.bb194_crit_edge857:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb194

entry.sw.bb194_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb194

entry.sw.bb188_crit_edge856:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb188

entry.sw.bb188_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb188

entry.sw.bb182_crit_edge855:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb182

entry.sw.bb182_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb182

entry.sw.bb176_crit_edge854:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb176

entry.sw.bb176_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb176

entry.sw.bb48_crit_edge853:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

entry.sw.bb48_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = trunc i32 %8 to i16
  %gop_size = getelementptr i8, ptr %1, i32 -960
  %9 = ptrtoint ptr %gop_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %gop_size, align 4
  br label %sw.epilog603

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val3, align 4
  %slice_mode = getelementptr i8, ptr %1, i32 -956
  %12 = ptrtoint ptr %slice_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %slice_mode, align 4
  br label %sw.epilog603

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val5, align 4
  %conv6 = trunc i32 %14 to i16
  %slice_mb = getelementptr i8, ptr %1, i32 -952
  %15 = ptrtoint ptr %slice_mb to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6, ptr %slice_mb, align 4
  br label %sw.epilog603

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val8, align 4
  %mul = shl i32 %17, 3
  %slice_bit = getelementptr i8, ptr %1, i32 -948
  %18 = ptrtoint ptr %slice_bit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %slice_bit, align 4
  br label %sw.epilog603

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val10, align 4
  %conv11 = trunc i32 %20 to i16
  %intra_refresh_mb = getelementptr i8, ptr %1, i32 -944
  %21 = ptrtoint ptr %intra_refresh_mb to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv11, ptr %intra_refresh_mb, align 4
  br label %sw.epilog603

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val13, align 4
  %pad = getelementptr i8, ptr %1, i32 -940
  %24 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pad, align 4
  br label %sw.epilog603

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val15, align 4
  %27 = lshr i32 %26, 16
  %conv16 = trunc i32 %27 to i8
  %pad_luma = getelementptr i8, ptr %1, i32 -936
  %28 = ptrtoint ptr %pad_luma to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv16, ptr %pad_luma, align 4
  %29 = load i32, ptr %val15, align 4
  %30 = lshr i32 %29, 8
  %conv20 = trunc i32 %30 to i8
  %pad_cb = getelementptr i8, ptr %1, i32 -935
  %31 = ptrtoint ptr %pad_cb to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv20, ptr %pad_cb, align 1
  %32 = load i32, ptr %val15, align 4
  %conv24 = trunc i32 %32 to i8
  %pad_cr = getelementptr i8, ptr %1, i32 -934
  %33 = ptrtoint ptr %pad_cr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv24, ptr %pad_cr, align 2
  br label %sw.epilog603

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %34 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val26, align 4
  %rc_frame = getelementptr i8, ptr %1, i32 -932
  %36 = ptrtoint ptr %rc_frame to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rc_frame, align 4
  br label %sw.epilog603

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val28, align 4
  %rc_bitrate = getelementptr i8, ptr %1, i32 -924
  %39 = ptrtoint ptr %rc_bitrate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rc_bitrate, align 4
  br label %sw.epilog603

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %40 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val30, align 4
  %conv31 = trunc i32 %41 to i16
  %rc_reaction_coeff = getelementptr i8, ptr %1, i32 -920
  %42 = ptrtoint ptr %rc_reaction_coeff to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv31, ptr %rc_reaction_coeff, align 4
  br label %sw.epilog603

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %43 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val33, align 4
  %force_frame_type = getelementptr i8, ptr %1, i32 -540
  %45 = ptrtoint ptr %force_frame_type to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %force_frame_type, align 4
  br label %sw.epilog603

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %force_frame_type35 = getelementptr i8, ptr %1, i32 -540
  %46 = ptrtoint ptr %force_frame_type35 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %force_frame_type35, align 4
  br label %sw.epilog603

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val37, align 4
  %conv38 = trunc i32 %48 to i16
  %vbv_size = getelementptr i8, ptr %1, i32 -918
  %49 = ptrtoint ptr %vbv_size to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv38, ptr %vbv_size, align 2
  br label %sw.epilog603

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %50 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val40, align 4
  %mv_h_range = getelementptr i8, ptr %1, i32 -968
  %52 = ptrtoint ptr %mv_h_range to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %mv_h_range, align 4
  br label %sw.epilog603

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %53 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val42, align 4
  %mv_v_range = getelementptr i8, ptr %1, i32 -964
  %55 = ptrtoint ptr %mv_v_range to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %mv_v_range, align 4
  br label %sw.epilog603

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %56 = ptrtoint ptr %val44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val44, align 4
  %conv45 = trunc i32 %57 to i16
  %cpb_size = getelementptr i8, ptr %1, i32 -816
  %58 = ptrtoint ptr %cpb_size to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv45, ptr %cpb_size, align 4
  br label %sw.epilog603

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %59 = ptrtoint ptr %val47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val47, align 4
  %seq_hdr_mode = getelementptr i8, ptr %1, i32 -912
  %61 = ptrtoint ptr %seq_hdr_mode to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %seq_hdr_mode, align 4
  br label %sw.epilog603

sw.bb48:                                          ; preds = %entry.sw.bb48_crit_edge, %entry.sw.bb48_crit_edge853
  %val49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %62 = ptrtoint ptr %val49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val49, align 4
  %frame_skip_mode = getelementptr i8, ptr %1, i32 -908
  %64 = ptrtoint ptr %frame_skip_mode to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %frame_skip_mode, align 4
  br label %sw.epilog603

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %65 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val51, align 4
  %fixed_target_bit = getelementptr i8, ptr %1, i32 -904
  %67 = ptrtoint ptr %fixed_target_bit to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %fixed_target_bit, align 4
  br label %sw.epilog603

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %68 = ptrtoint ptr %val53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val53, align 4
  %conv54 = trunc i32 %69 to i8
  %num_b_frame = getelementptr i8, ptr %1, i32 -900
  %70 = ptrtoint ptr %num_b_frame to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv54, ptr %num_b_frame, align 4
  br label %sw.epilog603

sw.bb55:                                          ; preds = %entry
  %val56 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %71 = ptrtoint ptr %val56 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val56, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %72, label %sw.bb55.sw.epilog603_crit_edge [
    i32 2, label %sw.bb57
    i32 4, label %sw.bb60
    i32 0, label %sw.bb64
    i32 1, label %sw.bb68
  ]

sw.bb55.sw.epilog603_crit_edge:                   ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog603

sw.bb57:                                          ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  %codec58 = getelementptr i8, ptr %1, i32 -888
  %74 = ptrtoint ptr %codec58 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %codec58, align 4
  br label %sw.epilog603

sw.bb60:                                          ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  %codec61 = getelementptr i8, ptr %1, i32 -888
  %75 = ptrtoint ptr %codec61 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %codec61, align 4
  br label %sw.epilog603

sw.bb64:                                          ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  %codec65 = getelementptr i8, ptr %1, i32 -888
  %76 = ptrtoint ptr %codec65 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %codec65, align 4
  br label %sw.epilog603

sw.bb68:                                          ; preds = %sw.bb55
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 10
  %77 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %variant, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %80)
  %cmp = icmp ugt i32 %80, 95
  br i1 %cmp, label %if.then, label %sw.bb68.sw.epilog603_crit_edge

sw.bb68.sw.epilog603_crit_edge:                   ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog603

if.then:                                          ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  %codec70 = getelementptr i8, ptr %1, i32 -888
  %81 = ptrtoint ptr %codec70 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %codec70, align 4
  br label %sw.epilog603

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val74 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %82 = ptrtoint ptr %val74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val74, align 4
  %level_v4l2 = getelementptr i8, ptr %1, i32 -824
  %84 = ptrtoint ptr %level_v4l2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %level_v4l2, align 4
  %85 = load i32, ptr %val74, align 4
  %arrayidx.i = getelementptr [12 x i32], ptr @h264_level.t, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 4
  %level = getelementptr i8, ptr %1, i32 -820
  %88 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %level, align 4
  br label %sw.epilog603

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val96 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %89 = ptrtoint ptr %val96 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val96, align 4
  %level_v4l298 = getelementptr i8, ptr %1, i32 -712
  %91 = ptrtoint ptr %level_v4l298 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %level_v4l298, align 4
  %92 = load i32, ptr %val96, align 4
  %arrayidx.i850 = getelementptr [8 x i32], ptr @mpeg4_level.t, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx.i850 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i850, align 4
  %level103 = getelementptr i8, ptr %1, i32 -708
  %95 = ptrtoint ptr %level103 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %level103, align 4
  br label %sw.epilog603

sw.bb122:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val123 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %96 = ptrtoint ptr %val123 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val123, align 4
  %loop_filter_mode = getelementptr i8, ptr %1, i32 -884
  %98 = ptrtoint ptr %loop_filter_mode to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %loop_filter_mode, align 4
  br label %sw.epilog603

sw.bb126:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val127 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %99 = ptrtoint ptr %val127 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val127, align 4
  %conv128 = trunc i32 %100 to i8
  %loop_filter_alpha = getelementptr i8, ptr %1, i32 -880
  %101 = ptrtoint ptr %loop_filter_alpha to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv128, ptr %loop_filter_alpha, align 4
  br label %sw.epilog603

sw.bb131:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val132 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %102 = ptrtoint ptr %val132 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %val132, align 4
  %conv133 = trunc i32 %103 to i8
  %loop_filter_beta = getelementptr i8, ptr %1, i32 -879
  %104 = ptrtoint ptr %loop_filter_beta to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv133, ptr %loop_filter_beta, align 1
  br label %sw.epilog603

sw.bb136:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val137 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %105 = ptrtoint ptr %val137 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %val137, align 4
  %entropy_mode = getelementptr i8, ptr %1, i32 -876
  %107 = ptrtoint ptr %entropy_mode to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %entropy_mode, align 4
  br label %sw.epilog603

sw.bb140:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val141 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %108 = ptrtoint ptr %val141 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val141, align 4
  %conv142 = trunc i32 %109 to i8
  %num_ref_pic_4p = getelementptr i8, ptr %1, i32 -871
  %110 = ptrtoint ptr %num_ref_pic_4p to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv142, ptr %num_ref_pic_4p, align 1
  br label %sw.epilog603

sw.bb145:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val146 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %111 = ptrtoint ptr %val146 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val146, align 4
  %_8x8_transform = getelementptr i8, ptr %1, i32 -868
  %113 = ptrtoint ptr %_8x8_transform to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %_8x8_transform, align 4
  br label %sw.epilog603

sw.bb149:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val150 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %114 = ptrtoint ptr %val150 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %val150, align 4
  %rc_mb = getelementptr i8, ptr %1, i32 -928
  %116 = ptrtoint ptr %rc_mb to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %rc_mb, align 4
  br label %sw.epilog603

sw.bb151:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val152 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %117 = ptrtoint ptr %val152 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val152, align 4
  %conv153 = trunc i32 %118 to i8
  %rc_frame_qp = getelementptr i8, ptr %1, i32 -830
  %119 = ptrtoint ptr %rc_frame_qp to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv153, ptr %rc_frame_qp, align 2
  br label %sw.epilog603

sw.bb156:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val157 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %120 = ptrtoint ptr %val157 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %val157, align 4
  %conv158 = trunc i32 %121 to i8
  %rc_min_qp = getelementptr i8, ptr %1, i32 -829
  %122 = ptrtoint ptr %rc_min_qp to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv158, ptr %rc_min_qp, align 1
  br label %sw.epilog603

sw.bb161:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val162 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %123 = ptrtoint ptr %val162 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val162, align 4
  %conv163 = trunc i32 %124 to i8
  %rc_max_qp = getelementptr i8, ptr %1, i32 -828
  %125 = ptrtoint ptr %rc_max_qp to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv163, ptr %rc_max_qp, align 4
  br label %sw.epilog603

sw.bb166:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val167 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %126 = ptrtoint ptr %val167 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %val167, align 4
  %conv168 = trunc i32 %127 to i8
  %rc_p_frame_qp = getelementptr i8, ptr %1, i32 -827
  %128 = ptrtoint ptr %rc_p_frame_qp to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv168, ptr %rc_p_frame_qp, align 1
  br label %sw.epilog603

sw.bb171:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val172 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %129 = ptrtoint ptr %val172 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val172, align 4
  %conv173 = trunc i32 %130 to i8
  %rc_b_frame_qp = getelementptr i8, ptr %1, i32 -826
  %131 = ptrtoint ptr %rc_b_frame_qp to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv173, ptr %rc_b_frame_qp, align 2
  br label %sw.epilog603

sw.bb176:                                         ; preds = %entry.sw.bb176_crit_edge, %entry.sw.bb176_crit_edge854
  %val177 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %132 = ptrtoint ptr %val177 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val177, align 4
  %conv178 = trunc i32 %133 to i8
  %rc_frame_qp181 = getelementptr i8, ptr %1, i32 -720
  %134 = ptrtoint ptr %rc_frame_qp181 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv178, ptr %rc_frame_qp181, align 4
  br label %sw.epilog603

sw.bb182:                                         ; preds = %entry.sw.bb182_crit_edge, %entry.sw.bb182_crit_edge855
  %val183 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %135 = ptrtoint ptr %val183 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %val183, align 4
  %conv184 = trunc i32 %136 to i8
  %rc_min_qp187 = getelementptr i8, ptr %1, i32 -719
  %137 = ptrtoint ptr %rc_min_qp187 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv184, ptr %rc_min_qp187, align 1
  br label %sw.epilog603

sw.bb188:                                         ; preds = %entry.sw.bb188_crit_edge, %entry.sw.bb188_crit_edge856
  %val189 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %138 = ptrtoint ptr %val189 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %val189, align 4
  %conv190 = trunc i32 %139 to i8
  %rc_max_qp193 = getelementptr i8, ptr %1, i32 -718
  %140 = ptrtoint ptr %rc_max_qp193 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv190, ptr %rc_max_qp193, align 2
  br label %sw.epilog603

sw.bb194:                                         ; preds = %entry.sw.bb194_crit_edge, %entry.sw.bb194_crit_edge857
  %val195 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %141 = ptrtoint ptr %val195 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %val195, align 4
  %conv196 = trunc i32 %142 to i8
  %rc_p_frame_qp199 = getelementptr i8, ptr %1, i32 -717
  %143 = ptrtoint ptr %rc_p_frame_qp199 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv196, ptr %rc_p_frame_qp199, align 1
  br label %sw.epilog603

sw.bb200:                                         ; preds = %entry.sw.bb200_crit_edge, %entry.sw.bb200_crit_edge858
  %val201 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %144 = ptrtoint ptr %val201 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %val201, align 4
  %conv202 = trunc i32 %145 to i8
  %rc_b_frame_qp205 = getelementptr i8, ptr %1, i32 -716
  %146 = ptrtoint ptr %rc_b_frame_qp205 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv202, ptr %rc_b_frame_qp205, align 4
  br label %sw.epilog603

sw.bb206:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val207 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %147 = ptrtoint ptr %val207 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %val207, align 4
  %rc_mb_dark = getelementptr i8, ptr %1, i32 -864
  %149 = ptrtoint ptr %rc_mb_dark to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %rc_mb_dark, align 4
  br label %sw.epilog603

sw.bb210:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val211 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %150 = ptrtoint ptr %val211 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %val211, align 4
  %rc_mb_smooth = getelementptr i8, ptr %1, i32 -860
  %152 = ptrtoint ptr %rc_mb_smooth to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %rc_mb_smooth, align 4
  br label %sw.epilog603

sw.bb214:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val215 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %153 = ptrtoint ptr %val215 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %val215, align 4
  %rc_mb_static = getelementptr i8, ptr %1, i32 -856
  %155 = ptrtoint ptr %rc_mb_static to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %rc_mb_static, align 4
  br label %sw.epilog603

sw.bb218:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val219 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %156 = ptrtoint ptr %val219 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %val219, align 4
  %rc_mb_activity = getelementptr i8, ptr %1, i32 -852
  %158 = ptrtoint ptr %rc_mb_activity to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %rc_mb_activity, align 4
  br label %sw.epilog603

sw.bb222:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val223 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %159 = ptrtoint ptr %val223 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %val223, align 4
  %vui_sar = getelementptr i8, ptr %1, i32 -848
  %161 = ptrtoint ptr %vui_sar to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %vui_sar, align 4
  br label %sw.epilog603

sw.bb226:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val227 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %162 = ptrtoint ptr %val227 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %val227, align 4
  %arrayidx.i851 = getelementptr [18 x i32], ptr @vui_sar_idc.t, i32 0, i32 %163
  %164 = ptrtoint ptr %arrayidx.i851 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.i851, align 4
  %conv229 = trunc i32 %165 to i8
  %vui_sar_idc = getelementptr i8, ptr %1, i32 -844
  %166 = ptrtoint ptr %vui_sar_idc to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv229, ptr %vui_sar_idc, align 4
  br label %sw.epilog603

sw.bb232:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val233 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %167 = ptrtoint ptr %val233 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %val233, align 4
  %conv234 = trunc i32 %168 to i16
  %vui_ext_sar_width = getelementptr i8, ptr %1, i32 -842
  %169 = ptrtoint ptr %vui_ext_sar_width to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv234, ptr %vui_ext_sar_width, align 2
  br label %sw.epilog603

sw.bb237:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val238 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %170 = ptrtoint ptr %val238 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %val238, align 4
  %conv239 = trunc i32 %171 to i16
  %vui_ext_sar_height = getelementptr i8, ptr %1, i32 -840
  %172 = ptrtoint ptr %vui_ext_sar_height to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv239, ptr %vui_ext_sar_height, align 4
  br label %sw.epilog603

sw.bb242:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val243 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %173 = ptrtoint ptr %val243 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %val243, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not = icmp eq i32 %174, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %open_gop = getelementptr i8, ptr %1, i32 -836
  %175 = ptrtoint ptr %open_gop to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %lnot.ext, ptr %open_gop, align 4
  br label %sw.epilog603

sw.bb246:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val247 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %176 = ptrtoint ptr %val247 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %val247, align 4
  %conv248 = trunc i32 %177 to i16
  %open_gop_size = getelementptr i8, ptr %1, i32 -832
  %178 = ptrtoint ptr %open_gop_size to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %conv248, ptr %open_gop_size, align 4
  br label %sw.epilog603

sw.bb251:                                         ; preds = %entry
  %val252 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %179 = ptrtoint ptr %val252 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %val252, align 4
  %181 = zext i32 %180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %180, label %sw.bb251.sw.epilog603_crit_edge [
    i32 0, label %sw.bb253
    i32 1, label %sw.bb257
  ]

sw.bb251.sw.epilog603_crit_edge:                  ; preds = %sw.bb251
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog603

sw.bb253:                                         ; preds = %sw.bb251
  call void @__sanitizer_cov_trace_pc() #11
  %mpeg4255 = getelementptr i8, ptr %1, i32 -732
  %182 = ptrtoint ptr %mpeg4255 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %mpeg4255, align 4
  br label %sw.epilog603

sw.bb257:                                         ; preds = %sw.bb251
  call void @__sanitizer_cov_trace_pc() #11
  %mpeg4259 = getelementptr i8, ptr %1, i32 -732
  %183 = ptrtoint ptr %mpeg4259 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %mpeg4259, align 4
  br label %sw.epilog603

sw.bb263:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val264 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %184 = ptrtoint ptr %val264 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %val264, align 4
  %quarter_pixel = getelementptr i8, ptr %1, i32 -728
  %186 = ptrtoint ptr %quarter_pixel to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %quarter_pixel, align 4
  br label %sw.epilog603

sw.bb267:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val268 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %187 = ptrtoint ptr %val268 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %val268, align 4
  %num_partitions = getelementptr i8, ptr %1, i32 -700
  %189 = ptrtoint ptr %num_partitions to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %num_partitions, align 4
  br label %sw.epilog603

sw.bb270:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val271 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %190 = ptrtoint ptr %val271 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %val271, align 4
  %conv272 = trunc i32 %191 to i8
  %vp8274 = getelementptr i8, ptr %1, i32 -704
  %192 = ptrtoint ptr %vp8274 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv272, ptr %vp8274, align 4
  br label %sw.epilog603

sw.bb275:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val276 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %193 = ptrtoint ptr %val276 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %val276, align 4
  %num_ref = getelementptr i8, ptr %1, i32 -696
  %195 = ptrtoint ptr %num_ref to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %num_ref, align 4
  br label %sw.epilog603

sw.bb279:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val280 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %196 = ptrtoint ptr %val280 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %val280, align 4
  %conv281 = trunc i32 %197 to i8
  %filter_level = getelementptr i8, ptr %1, i32 -692
  %198 = ptrtoint ptr %filter_level to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv281, ptr %filter_level, align 4
  br label %sw.epilog603

sw.bb284:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val285 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %199 = ptrtoint ptr %val285 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %val285, align 4
  %conv286 = trunc i32 %200 to i8
  %filter_sharpness = getelementptr i8, ptr %1, i32 -691
  %201 = ptrtoint ptr %filter_sharpness to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv286, ptr %filter_sharpness, align 1
  br label %sw.epilog603

sw.bb289:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val290 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %202 = ptrtoint ptr %val290 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %val290, align 4
  %golden_frame_ref_period = getelementptr i8, ptr %1, i32 -688
  %204 = ptrtoint ptr %golden_frame_ref_period to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %golden_frame_ref_period, align 4
  br label %sw.epilog603

sw.bb293:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val294 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %205 = ptrtoint ptr %val294 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %val294, align 4
  %golden_frame_sel = getelementptr i8, ptr %1, i32 -684
  %207 = ptrtoint ptr %golden_frame_sel to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %golden_frame_sel, align 4
  br label %sw.epilog603

sw.bb297:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val298 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %208 = ptrtoint ptr %val298 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %val298, align 4
  %conv299 = trunc i32 %209 to i8
  %rc_min_qp302 = getelementptr i8, ptr %1, i32 -676
  %210 = ptrtoint ptr %rc_min_qp302 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv299, ptr %rc_min_qp302, align 4
  br label %sw.epilog603

sw.bb303:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val304 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %211 = ptrtoint ptr %val304 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %val304, align 4
  %conv305 = trunc i32 %212 to i8
  %rc_max_qp308 = getelementptr i8, ptr %1, i32 -675
  %213 = ptrtoint ptr %rc_max_qp308 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv305, ptr %rc_max_qp308, align 1
  br label %sw.epilog603

sw.bb309:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val310 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %214 = ptrtoint ptr %val310 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %val310, align 4
  %conv311 = trunc i32 %215 to i8
  %rc_frame_qp314 = getelementptr i8, ptr %1, i32 -674
  %216 = ptrtoint ptr %rc_frame_qp314 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv311, ptr %rc_frame_qp314, align 2
  br label %sw.epilog603

sw.bb315:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val316 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %217 = ptrtoint ptr %val316 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %val316, align 4
  %conv317 = trunc i32 %218 to i8
  %rc_p_frame_qp320 = getelementptr i8, ptr %1, i32 -673
  %219 = ptrtoint ptr %rc_p_frame_qp320 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv317, ptr %rc_p_frame_qp320, align 1
  br label %sw.epilog603

sw.bb321:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val322 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %220 = ptrtoint ptr %val322 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %val322, align 4
  %conv323 = trunc i32 %221 to i8
  %profile326 = getelementptr i8, ptr %1, i32 -672
  %222 = ptrtoint ptr %profile326 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv323, ptr %profile326, align 4
  br label %sw.epilog603

sw.bb327:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val328 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %223 = ptrtoint ptr %val328 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %val328, align 4
  %conv329 = trunc i32 %224 to i8
  %rc_frame_qp331 = getelementptr i8, ptr %1, i32 -642
  %225 = ptrtoint ptr %rc_frame_qp331 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv329, ptr %rc_frame_qp331, align 2
  br label %sw.epilog603

sw.bb332:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val333 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %226 = ptrtoint ptr %val333 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %val333, align 4
  %conv334 = trunc i32 %227 to i8
  %rc_p_frame_qp337 = getelementptr i8, ptr %1, i32 -641
  %228 = ptrtoint ptr %rc_p_frame_qp337 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv334, ptr %rc_p_frame_qp337, align 1
  br label %sw.epilog603

sw.bb338:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val339 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %229 = ptrtoint ptr %val339 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %val339, align 4
  %conv340 = trunc i32 %230 to i8
  %rc_b_frame_qp343 = getelementptr i8, ptr %1, i32 -640
  %231 = ptrtoint ptr %rc_b_frame_qp343 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv340, ptr %rc_b_frame_qp343, align 4
  br label %sw.epilog603

sw.bb344:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val345 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %232 = ptrtoint ptr %val345 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %val345, align 4
  %rc_framerate = getelementptr i8, ptr %1, i32 -652
  %234 = ptrtoint ptr %rc_framerate to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %rc_framerate, align 4
  br label %sw.epilog603

sw.bb348:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val349 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %235 = ptrtoint ptr %val349 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %val349, align 4
  %conv350 = trunc i32 %236 to i8
  %rc_min_qp353 = getelementptr i8, ptr %1, i32 -648
  %237 = ptrtoint ptr %rc_min_qp353 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv350, ptr %rc_min_qp353, align 4
  %238 = load i32, ptr %val349, align 4
  %rc_max_qp357 = getelementptr i8, ptr %1, i32 -647
  %239 = ptrtoint ptr %rc_max_qp357 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %rc_max_qp357, align 1
  %conv358 = zext i8 %240 to i32
  tail call fastcc void @__enc_update_hevc_qp_ctrls_range(ptr noundef %add.ptr, i32 noundef %238, i32 noundef %conv358)
  br label %sw.epilog603

sw.bb359:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val360 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %241 = ptrtoint ptr %val360 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %val360, align 4
  %conv361 = trunc i32 %242 to i8
  %rc_max_qp364 = getelementptr i8, ptr %1, i32 -647
  %243 = ptrtoint ptr %rc_max_qp364 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv361, ptr %rc_max_qp364, align 1
  %rc_min_qp367 = getelementptr i8, ptr %1, i32 -648
  %244 = ptrtoint ptr %rc_min_qp367 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %rc_min_qp367, align 4
  %conv368 = zext i8 %245 to i32
  %246 = load i32, ptr %val360, align 4
  tail call fastcc void @__enc_update_hevc_qp_ctrls_range(ptr noundef %add.ptr, i32 noundef %conv368, i32 noundef %246)
  br label %sw.epilog603

sw.bb370:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val371 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %247 = ptrtoint ptr %val371 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %val371, align 4
  %level_v4l2374 = getelementptr i8, ptr %1, i32 -660
  %249 = ptrtoint ptr %level_v4l2374 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %level_v4l2374, align 4
  %250 = load i32, ptr %val371, align 4
  %arrayidx.i852 = getelementptr [13 x i32], ptr @hevc_level.t, i32 0, i32 %250
  %251 = ptrtoint ptr %arrayidx.i852 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx.i852, align 4
  %level379 = getelementptr i8, ptr %1, i32 -664
  %253 = ptrtoint ptr %level379 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %level379, align 4
  br label %sw.epilog603

sw.bb380:                                         ; preds = %entry
  %val381 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %254 = ptrtoint ptr %val381 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %val381, align 4
  %256 = zext i32 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %255, label %sw.bb380.sw.epilog603_crit_edge [
    i32 0, label %sw.bb382
    i32 1, label %sw.bb386
  ]

sw.bb380.sw.epilog603_crit_edge:                  ; preds = %sw.bb380
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog603

sw.bb382:                                         ; preds = %sw.bb380
  call void @__sanitizer_cov_trace_pc() #11
  %hevc384 = getelementptr i8, ptr %1, i32 -668
  %257 = ptrtoint ptr %hevc384 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %hevc384, align 4
  br label %sw.epilog603

sw.bb386:                                         ; preds = %sw.bb380
  call void @__sanitizer_cov_trace_pc() #11
  %hevc388 = getelementptr i8, ptr %1, i32 -668
  %258 = ptrtoint ptr %hevc388 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 1, ptr %hevc388, align 4
  br label %sw.epilog603

sw.bb392:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val393 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %259 = ptrtoint ptr %val393 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %val393, align 4
  %conv394 = trunc i32 %260 to i8
  %tier = getelementptr i8, ptr %1, i32 -656
  %261 = ptrtoint ptr %tier to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv394, ptr %tier, align 4
  br label %sw.epilog603

sw.bb397:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val398 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %262 = ptrtoint ptr %val398 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %val398, align 4
  %conv399 = trunc i32 %263 to i8
  %max_partition_depth = getelementptr i8, ptr %1, i32 -639
  %264 = ptrtoint ptr %max_partition_depth to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %conv399, ptr %max_partition_depth, align 1
  br label %sw.epilog603

sw.bb402:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val403 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %265 = ptrtoint ptr %val403 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %val403, align 4
  %conv404 = trunc i32 %266 to i8
  %num_refs_for_p = getelementptr i8, ptr %1, i32 -638
  %267 = ptrtoint ptr %num_refs_for_p to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %conv404, ptr %num_refs_for_p, align 2
  br label %sw.epilog603

sw.bb407:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val408 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %268 = ptrtoint ptr %val408 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %val408, align 4
  %conv409 = trunc i32 %269 to i8
  %refreshtype = getelementptr i8, ptr %1, i32 -637
  %270 = ptrtoint ptr %refreshtype to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv409, ptr %refreshtype, align 1
  br label %sw.epilog603

sw.bb412:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val413 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %271 = ptrtoint ptr %val413 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %val413, align 4
  %conv414 = trunc i32 %272 to i8
  %const_intra_period_enable = getelementptr i8, ptr %1, i32 -618
  %273 = ptrtoint ptr %const_intra_period_enable to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %conv414, ptr %const_intra_period_enable, align 2
  br label %sw.epilog603

sw.bb417:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val418 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %274 = ptrtoint ptr %val418 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %val418, align 4
  %conv419 = trunc i32 %275 to i8
  %lossless_cu_enable = getelementptr i8, ptr %1, i32 -617
  %276 = ptrtoint ptr %lossless_cu_enable to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %conv419, ptr %lossless_cu_enable, align 1
  br label %sw.epilog603

sw.bb422:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val423 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %277 = ptrtoint ptr %val423 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %val423, align 4
  %conv424 = trunc i32 %278 to i8
  %wavefront_enable = getelementptr i8, ptr %1, i32 -616
  %279 = ptrtoint ptr %wavefront_enable to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv424, ptr %wavefront_enable, align 4
  br label %sw.epilog603

sw.bb427:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val428 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %280 = ptrtoint ptr %val428 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %val428, align 4
  %conv429 = trunc i32 %281 to i8
  %loopfilter = getelementptr i8, ptr %1, i32 -624
  %282 = ptrtoint ptr %loopfilter to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %conv429, ptr %loopfilter, align 4
  br label %sw.epilog603

sw.bb432:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val433 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %283 = ptrtoint ptr %val433 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %val433, align 4
  %conv434 = trunc i32 %284 to i8
  %hier_qp_enable = getelementptr i8, ptr %1, i32 -614
  %285 = ptrtoint ptr %hier_qp_enable to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %conv434, ptr %hier_qp_enable, align 2
  br label %sw.epilog603

sw.bb437:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val438 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %286 = ptrtoint ptr %val438 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %val438, align 4
  %hier_qp_type = getelementptr i8, ptr %1, i32 -612
  %288 = ptrtoint ptr %hier_qp_type to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %hier_qp_type, align 4
  br label %sw.epilog603

sw.bb441:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val442 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %289 = ptrtoint ptr %val442 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %val442, align 4
  %conv443 = trunc i32 %290 to i8
  %num_hier_layer = getelementptr i8, ptr %1, i32 -608
  %291 = ptrtoint ptr %num_hier_layer to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %conv443, ptr %num_hier_layer, align 4
  br label %sw.epilog603

sw.bb446:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val447 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %292 = ptrtoint ptr %val447 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %val447, align 4
  %conv448 = trunc i32 %293 to i8
  %hier_qp_layer = getelementptr i8, ptr %1, i32 -607
  %294 = ptrtoint ptr %hier_qp_layer to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %conv448, ptr %hier_qp_layer, align 1
  br label %sw.epilog603

sw.bb451:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val452 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %295 = ptrtoint ptr %val452 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %val452, align 4
  %conv453 = trunc i32 %296 to i8
  %arrayidx457 = getelementptr i8, ptr %1, i32 -606
  %297 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %conv453, ptr %arrayidx457, align 1
  br label %sw.epilog603

sw.bb458:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val459 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %298 = ptrtoint ptr %val459 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %val459, align 4
  %conv460 = trunc i32 %299 to i8
  %arrayidx464 = getelementptr i8, ptr %1, i32 -605
  %300 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %conv460, ptr %arrayidx464, align 1
  br label %sw.epilog603

sw.bb465:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val466 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %301 = ptrtoint ptr %val466 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %val466, align 4
  %conv467 = trunc i32 %302 to i8
  %arrayidx471 = getelementptr i8, ptr %1, i32 -604
  %303 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv467, ptr %arrayidx471, align 1
  br label %sw.epilog603

sw.bb472:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val473 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %304 = ptrtoint ptr %val473 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %val473, align 4
  %conv474 = trunc i32 %305 to i8
  %arrayidx478 = getelementptr i8, ptr %1, i32 -603
  %306 = ptrtoint ptr %arrayidx478 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %conv474, ptr %arrayidx478, align 1
  br label %sw.epilog603

sw.bb479:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val480 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %307 = ptrtoint ptr %val480 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %val480, align 4
  %conv481 = trunc i32 %308 to i8
  %arrayidx485 = getelementptr i8, ptr %1, i32 -602
  %309 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %conv481, ptr %arrayidx485, align 1
  br label %sw.epilog603

sw.bb486:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val487 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %310 = ptrtoint ptr %val487 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %val487, align 4
  %conv488 = trunc i32 %311 to i8
  %arrayidx492 = getelementptr i8, ptr %1, i32 -601
  %312 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %conv488, ptr %arrayidx492, align 1
  br label %sw.epilog603

sw.bb493:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val494 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %313 = ptrtoint ptr %val494 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %val494, align 4
  %hier_bit_layer = getelementptr i8, ptr %1, i32 -600
  %315 = ptrtoint ptr %hier_bit_layer to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %314, ptr %hier_bit_layer, align 4
  br label %sw.epilog603

sw.bb498:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val499 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %316 = ptrtoint ptr %val499 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %val499, align 4
  %arrayidx503 = getelementptr i8, ptr %1, i32 -596
  %318 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %317, ptr %arrayidx503, align 4
  br label %sw.epilog603

sw.bb504:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val505 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %319 = ptrtoint ptr %val505 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %val505, align 4
  %arrayidx509 = getelementptr i8, ptr %1, i32 -592
  %321 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %320, ptr %arrayidx509, align 4
  br label %sw.epilog603

sw.bb510:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val511 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %322 = ptrtoint ptr %val511 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %val511, align 4
  %arrayidx515 = getelementptr i8, ptr %1, i32 -588
  %324 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %arrayidx515, align 4
  br label %sw.epilog603

sw.bb516:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val517 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %325 = ptrtoint ptr %val517 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %val517, align 4
  %arrayidx521 = getelementptr i8, ptr %1, i32 -584
  %327 = ptrtoint ptr %arrayidx521 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %arrayidx521, align 4
  br label %sw.epilog603

sw.bb522:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val523 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %328 = ptrtoint ptr %val523 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %val523, align 4
  %arrayidx527 = getelementptr i8, ptr %1, i32 -580
  %330 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %arrayidx527, align 4
  br label %sw.epilog603

sw.bb528:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val529 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %331 = ptrtoint ptr %val529 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %val529, align 4
  %arrayidx533 = getelementptr i8, ptr %1, i32 -576
  %333 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %332, ptr %arrayidx533, align 4
  br label %sw.epilog603

sw.bb534:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val535 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %334 = ptrtoint ptr %val535 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %val535, align 4
  %conv536 = trunc i32 %335 to i8
  %general_pb_enable = getelementptr i8, ptr %1, i32 -571
  %336 = ptrtoint ptr %general_pb_enable to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %conv536, ptr %general_pb_enable, align 1
  br label %sw.epilog603

sw.bb539:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val540 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %337 = ptrtoint ptr %val540 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %val540, align 4
  %conv541 = trunc i32 %338 to i8
  %temporal_id_enable = getelementptr i8, ptr %1, i32 -570
  %339 = ptrtoint ptr %temporal_id_enable to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %conv541, ptr %temporal_id_enable, align 2
  br label %sw.epilog603

sw.bb544:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val545 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %340 = ptrtoint ptr %val545 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %val545, align 4
  %conv546 = trunc i32 %341 to i8
  %strong_intra_smooth = getelementptr i8, ptr %1, i32 -569
  %342 = ptrtoint ptr %strong_intra_smooth to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %conv546, ptr %strong_intra_smooth, align 1
  br label %sw.epilog603

sw.bb549:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val550 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %343 = ptrtoint ptr %val550 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %val550, align 4
  %conv551 = trunc i32 %344 to i8
  %intra_pu_split_disable = getelementptr i8, ptr %1, i32 -568
  %345 = ptrtoint ptr %intra_pu_split_disable to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %conv551, ptr %intra_pu_split_disable, align 4
  br label %sw.epilog603

sw.bb554:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val555 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %346 = ptrtoint ptr %val555 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %val555, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %tobool556.not = icmp eq i32 %347, 0
  %conv559 = zext i1 %tobool556.not to i8
  %tmv_prediction_disable = getelementptr i8, ptr %1, i32 -567
  %348 = ptrtoint ptr %tmv_prediction_disable to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %conv559, ptr %tmv_prediction_disable, align 1
  br label %sw.epilog603

sw.bb562:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val563 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %349 = ptrtoint ptr %val563 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %val563, align 4
  %conv564 = trunc i32 %350 to i8
  %max_num_merge_mv = getelementptr i8, ptr %1, i32 -566
  %351 = ptrtoint ptr %max_num_merge_mv to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %conv564, ptr %max_num_merge_mv, align 2
  br label %sw.epilog603

sw.bb567:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val568 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %352 = ptrtoint ptr %val568 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %val568, align 4
  %conv569 = trunc i32 %353 to i8
  %encoding_nostartcode_enable = getelementptr i8, ptr %1, i32 -564
  %354 = ptrtoint ptr %encoding_nostartcode_enable to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %conv569, ptr %encoding_nostartcode_enable, align 4
  br label %sw.epilog603

sw.bb572:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val573 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %355 = ptrtoint ptr %val573 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %val573, align 4
  %conv574 = trunc i32 %356 to i16
  %refreshperiod = getelementptr i8, ptr %1, i32 -636
  %357 = ptrtoint ptr %refreshperiod to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 %conv574, ptr %refreshperiod, align 4
  br label %sw.epilog603

sw.bb577:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val578 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %358 = ptrtoint ptr %val578 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %val578, align 4
  %lf_beta_offset_div2 = getelementptr i8, ptr %1, i32 -632
  %360 = ptrtoint ptr %lf_beta_offset_div2 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %359, ptr %lf_beta_offset_div2, align 4
  br label %sw.epilog603

sw.bb581:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val582 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %361 = ptrtoint ptr %val582 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %val582, align 4
  %lf_tc_offset_div2 = getelementptr i8, ptr %1, i32 -628
  %363 = ptrtoint ptr %lf_tc_offset_div2 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %362, ptr %lf_tc_offset_div2, align 4
  br label %sw.epilog603

sw.bb585:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val586 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %364 = ptrtoint ptr %val586 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %val586, align 4
  %conv587 = trunc i32 %365 to i8
  %size_of_length_field = getelementptr i8, ptr %1, i32 -563
  %366 = ptrtoint ptr %size_of_length_field to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %conv587, ptr %size_of_length_field, align 1
  br label %sw.epilog603

sw.bb590:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val591 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %367 = ptrtoint ptr %val591 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %val591, align 4
  %conv592 = trunc i32 %368 to i8
  %prepend_sps_pps_to_idr = getelementptr i8, ptr %1, i32 -562
  %369 = ptrtoint ptr %prepend_sps_pps_to_idr to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 %conv592, ptr %prepend_sps_pps_to_idr, align 2
  br label %sw.epilog603

do.end598:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %val601 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %370 = ptrtoint ptr %val601 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %val601, align 4
  %call602 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %name, i32 noundef %5, i32 noundef %371) #12
  br label %sw.epilog603

sw.epilog603:                                     ; preds = %do.end598, %sw.bb590, %sw.bb585, %sw.bb581, %sw.bb577, %sw.bb572, %sw.bb567, %sw.bb562, %sw.bb554, %sw.bb549, %sw.bb544, %sw.bb539, %sw.bb534, %sw.bb528, %sw.bb522, %sw.bb516, %sw.bb510, %sw.bb504, %sw.bb498, %sw.bb493, %sw.bb486, %sw.bb479, %sw.bb472, %sw.bb465, %sw.bb458, %sw.bb451, %sw.bb446, %sw.bb441, %sw.bb437, %sw.bb432, %sw.bb427, %sw.bb422, %sw.bb417, %sw.bb412, %sw.bb407, %sw.bb402, %sw.bb397, %sw.bb392, %sw.bb386, %sw.bb382, %sw.bb380.sw.epilog603_crit_edge, %sw.bb370, %sw.bb359, %sw.bb348, %sw.bb344, %sw.bb338, %sw.bb332, %sw.bb327, %sw.bb321, %sw.bb315, %sw.bb309, %sw.bb303, %sw.bb297, %sw.bb293, %sw.bb289, %sw.bb284, %sw.bb279, %sw.bb275, %sw.bb270, %sw.bb267, %sw.bb263, %sw.bb257, %sw.bb253, %sw.bb251.sw.epilog603_crit_edge, %sw.bb246, %sw.bb242, %sw.bb237, %sw.bb232, %sw.bb226, %sw.bb222, %sw.bb218, %sw.bb214, %sw.bb210, %sw.bb206, %sw.bb200, %sw.bb194, %sw.bb188, %sw.bb182, %sw.bb176, %sw.bb171, %sw.bb166, %sw.bb161, %sw.bb156, %sw.bb151, %sw.bb149, %sw.bb145, %sw.bb140, %sw.bb136, %sw.bb131, %sw.bb126, %sw.bb122, %sw.bb95, %sw.bb73, %if.then, %sw.bb68.sw.epilog603_crit_edge, %sw.bb64, %sw.bb60, %sw.bb57, %sw.bb55.sw.epilog603_crit_edge, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb14, %sw.bb12, %sw.bb9, %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end598 ], [ 0, %sw.bb590 ], [ 0, %sw.bb585 ], [ 0, %sw.bb581 ], [ 0, %sw.bb577 ], [ 0, %sw.bb572 ], [ 0, %sw.bb567 ], [ 0, %sw.bb562 ], [ 0, %sw.bb554 ], [ 0, %sw.bb549 ], [ 0, %sw.bb544 ], [ 0, %sw.bb539 ], [ 0, %sw.bb534 ], [ 0, %sw.bb528 ], [ 0, %sw.bb522 ], [ 0, %sw.bb516 ], [ 0, %sw.bb510 ], [ 0, %sw.bb504 ], [ 0, %sw.bb498 ], [ 0, %sw.bb493 ], [ 0, %sw.bb486 ], [ 0, %sw.bb479 ], [ 0, %sw.bb472 ], [ 0, %sw.bb465 ], [ 0, %sw.bb458 ], [ 0, %sw.bb451 ], [ 0, %sw.bb446 ], [ 0, %sw.bb441 ], [ 0, %sw.bb437 ], [ 0, %sw.bb432 ], [ 0, %sw.bb427 ], [ 0, %sw.bb422 ], [ 0, %sw.bb417 ], [ 0, %sw.bb412 ], [ 0, %sw.bb407 ], [ 0, %sw.bb402 ], [ 0, %sw.bb397 ], [ 0, %sw.bb392 ], [ 0, %sw.bb386 ], [ 0, %sw.bb382 ], [ 0, %sw.bb370 ], [ 0, %sw.bb359 ], [ 0, %sw.bb348 ], [ 0, %sw.bb344 ], [ 0, %sw.bb338 ], [ 0, %sw.bb332 ], [ 0, %sw.bb327 ], [ 0, %sw.bb321 ], [ 0, %sw.bb315 ], [ 0, %sw.bb309 ], [ 0, %sw.bb303 ], [ 0, %sw.bb297 ], [ 0, %sw.bb293 ], [ 0, %sw.bb289 ], [ 0, %sw.bb284 ], [ 0, %sw.bb279 ], [ 0, %sw.bb275 ], [ 0, %sw.bb270 ], [ 0, %sw.bb267 ], [ 0, %sw.bb263 ], [ 0, %sw.bb257 ], [ 0, %sw.bb253 ], [ 0, %sw.bb246 ], [ 0, %sw.bb242 ], [ 0, %sw.bb237 ], [ 0, %sw.bb232 ], [ 0, %sw.bb226 ], [ 0, %sw.bb222 ], [ 0, %sw.bb218 ], [ 0, %sw.bb214 ], [ 0, %sw.bb210 ], [ 0, %sw.bb206 ], [ 0, %sw.bb200 ], [ 0, %sw.bb194 ], [ 0, %sw.bb188 ], [ 0, %sw.bb182 ], [ 0, %sw.bb176 ], [ 0, %sw.bb171 ], [ 0, %sw.bb166 ], [ 0, %sw.bb161 ], [ 0, %sw.bb156 ], [ 0, %sw.bb151 ], [ 0, %sw.bb149 ], [ 0, %sw.bb145 ], [ 0, %sw.bb140 ], [ 0, %sw.bb136 ], [ 0, %sw.bb131 ], [ 0, %sw.bb126 ], [ 0, %sw.bb122 ], [ 0, %sw.bb95 ], [ 0, %sw.bb73 ], [ 0, %if.then ], [ 0, %sw.bb64 ], [ 0, %sw.bb60 ], [ 0, %sw.bb57 ], [ 0, %sw.bb52 ], [ 0, %sw.bb50 ], [ 0, %sw.bb48 ], [ 0, %sw.bb46 ], [ 0, %sw.bb43 ], [ 0, %sw.bb41 ], [ 0, %sw.bb39 ], [ 0, %sw.bb36 ], [ 0, %sw.bb34 ], [ 0, %sw.bb32 ], [ 0, %sw.bb29 ], [ 0, %sw.bb27 ], [ 0, %sw.bb25 ], [ 0, %sw.bb14 ], [ 0, %sw.bb12 ], [ 0, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %sw.bb68.sw.epilog603_crit_edge ], [ -22, %sw.bb55.sw.epilog603_crit_edge ], [ -22, %sw.bb251.sw.epilog603_crit_edge ], [ -22, %sw.bb380.sw.epilog603_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__enc_update_hevc_qp_ctrls_range(ptr nocapture noundef readonly %ctx, i32 noundef %min, i32 noundef %max) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %min to i64
  %conv33 = sext i32 %max to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %if.end32.critedge.for.cond1.preheader_crit_edge, %entry
  %ctrl.050 = phi ptr [ null, %entry ], [ %ctrl.1, %if.end32.critedge.for.cond1.preheader_crit_edge ]
  %i.049 = phi i32 [ 0, %entry ], [ %inc36, %if.end32.critedge.for.cond1.preheader_crit_edge ]
  %arrayidx4 = getelementptr [10 x i32], ptr @__enc_update_hevc_qp_ctrls_range.__hevc_qp_ctrls, i32 0, i32 %i.049
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx4, align 4
  br label %for.body3

for.cond1:                                        ; preds = %for.body3
  %inc = add nuw nsw i32 %j.048, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.cond1.for.end_crit_edge, label %for.cond1.for.body3_crit_edge

for.cond1.for.body3_crit_edge:                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.cond1.for.end_crit_edge:                      ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body3:                                        ; preds = %for.cond1.for.body3_crit_edge, %for.cond1.preheader
  %j.048 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.cond1.for.body3_crit_edge ]
  %arrayidx = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 64, i32 %j.048
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp5 = icmp eq i32 %5, %1
  br i1 %cmp5, label %for.body3.for.end_crit_edge, label %for.cond1

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body3.for.end_crit_edge, %for.cond1.for.end_crit_edge
  %ctrl.1 = phi ptr [ %ctrl.050, %for.cond1.for.end_crit_edge ], [ %3, %for.body3.for.end_crit_edge ]
  %tobool.not = icmp eq ptr %ctrl.1, null
  br i1 %tobool.not, label %do.end, label %if.end32.critedge, !prof !311

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1788, i32 noundef 9, ptr noundef null) #9
  br label %for.end37

if.end32.critedge:                                ; preds = %for.end
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.1, i32 0, i32 18
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %call = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef nonnull %ctrl.1, i64 noundef %conv, i64 noundef %conv33, i64 noundef %8, i64 noundef %conv) #9
  %inc36 = add nuw nsw i32 %i.049, 1
  %exitcond51.not = icmp eq i32 %inc36, 10
  br i1 %exitcond51.not, label %if.end32.critedge.for.end37_crit_edge, label %if.end32.critedge.for.cond1.preheader_crit_edge

if.end32.critedge.for.cond1.preheader_crit_edge:  ; preds = %if.end32.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

if.end32.critedge.for.end37_crit_edge:            ; preds = %if.end32.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

for.end37:                                        ; preds = %if.end32.critedge.for.end37_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !254, !256, !257, !258, !259, !261, !262, !264, !265, !266, !267, !269, !270, !272, !273, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305}
!llvm.ident = !{!306}

!0 = !{ptr @s5p_mfc_enc_ctrls_setup._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2625, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2627, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @s5p_mfc_enc_ctrls_setup._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @s5p_mfc_enc_ctrls_setup._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2671, i32 4}
!11 = !{ptr @s5p_mfc_enc_ctrls_setup._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @s5p_mfc_enc_ctrls_setup._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @encoder_codec_ops, !14, !"encoder_codec_ops", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1297, i32 39}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1096, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @s5p_mfc_ctx_ready._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @s5p_mfc_ctx_ready._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1110, i32 2}
!25 = !{ptr @s5p_mfc_ctx_ready._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @s5p_mfc_ctx_ready._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1224, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @enc_post_frame_start._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @enc_post_frame_start._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1225, i32 2}
!34 = !{ptr @enc_post_frame_start._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @enc_post_frame_start._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1226, i32 2}
!38 = !{ptr @enc_post_frame_start._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @enc_post_frame_start._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1270, i32 2}
!42 = !{ptr @enc_post_frame_start._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @enc_post_frame_start._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @s5p_mfc_enc_qops, !45, !"s5p_mfc_enc_qops", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2591, i32 23}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2383, i32 4}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @s5p_mfc_queue_setup._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @s5p_mfc_queue_setup._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2419, i32 3}
!53 = !{ptr @s5p_mfc_queue_setup._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @s5p_mfc_queue_setup._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2454, i32 3}
!57 = !{ptr @s5p_mfc_buf_init._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @s5p_mfc_buf_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2359, i32 3}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @check_vb_with_fmt._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @check_vb_with_fmt._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2365, i32 4}
!66 = !{ptr @check_vb_with_fmt._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @check_vb_with_fmt._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2368, i32 3}
!70 = !{ptr @check_vb_with_fmt._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @check_vb_with_fmt._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2470, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @s5p_mfc_buf_prepare._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @s5p_mfc_buf_prepare._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2473, i32 4}
!79 = !{ptr @s5p_mfc_buf_prepare._entry.40, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @s5p_mfc_buf_prepare._entry_ptr.42, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2480, i32 3}
!83 = !{ptr @s5p_mfc_buf_prepare._entry.43, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @s5p_mfc_buf_prepare._entry_ptr.45, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2482, i32 3}
!87 = !{ptr @s5p_mfc_buf_prepare._entry.46, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @s5p_mfc_buf_prepare._entry_ptr.48, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2486, i32 4}
!91 = !{ptr @s5p_mfc_buf_prepare._entry.49, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @s5p_mfc_buf_prepare._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @s5p_mfc_buf_prepare._entry.52, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2490, i32 3}
!95 = !{ptr @s5p_mfc_buf_prepare._entry_ptr.53, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2512, i32 4}
!98 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @s5p_mfc_start_streaming._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @s5p_mfc_start_streaming._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1127, i32 2}
!103 = !{ptr @cleanup_ref_queue._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @cleanup_ref_queue._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2584, i32 3}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @s5p_mfc_buf_queue._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @s5p_mfc_buf_queue._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @s5p_mfc_enc_ioctl_ops, !111, !"s5p_mfc_enc_ioctl_ops", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2328, i32 36}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1310, i32 23}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1312, i32 49}
!116 = !{ptr @formats, !117, !"formats", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 33, i32 27}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1357, i32 2}
!120 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @vidioc_g_fmt._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @vidioc_g_fmt._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1382, i32 3}
!125 = !{ptr @vidioc_g_fmt._entry.63, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @vidioc_g_fmt._entry_ptr.65, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1438, i32 3}
!129 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @vidioc_s_fmt._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @vidioc_s_fmt._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1457, i32 3}
!134 = !{ptr @vidioc_s_fmt._entry.68, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @vidioc_s_fmt._entry_ptr.70, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1458, i32 3}
!138 = !{ptr @vidioc_s_fmt._entry.71, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @vidioc_s_fmt._entry_ptr.73, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @vidioc_s_fmt._entry.74, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1471, i32 3}
!142 = !{ptr @vidioc_s_fmt._entry_ptr.75, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1475, i32 2}
!145 = !{ptr @vidioc_s_fmt._entry.76, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @vidioc_s_fmt._entry_ptr.78, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1397, i32 4}
!149 = !{ptr @.str.80, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @vidioc_try_fmt._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @vidioc_try_fmt._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1401, i32 4}
!154 = !{ptr @vidioc_try_fmt._entry.81, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @vidioc_try_fmt._entry_ptr.83, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @vidioc_try_fmt._entry.84, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1410, i32 4}
!158 = !{ptr @vidioc_try_fmt._entry_ptr.85, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @vidioc_try_fmt._entry.86, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1414, i32 4}
!161 = !{ptr @vidioc_try_fmt._entry_ptr.87, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @vidioc_try_fmt._entry.88, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1421, i32 3}
!164 = !{ptr @vidioc_try_fmt._entry_ptr.89, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1492, i32 4}
!167 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @vidioc_reqbufs._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @vidioc_reqbufs._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1500, i32 4}
!172 = !{ptr @vidioc_reqbufs._entry.92, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @vidioc_reqbufs._entry_ptr.94, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1506, i32 4}
!176 = !{ptr @vidioc_reqbufs._entry.95, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @vidioc_reqbufs._entry_ptr.97, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1514, i32 4}
!180 = !{ptr @vidioc_reqbufs._entry.98, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @vidioc_reqbufs._entry_ptr.100, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @vidioc_reqbufs._entry.101, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1521, i32 4}
!184 = !{ptr @vidioc_reqbufs._entry_ptr.102, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.104, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1529, i32 4}
!187 = !{ptr @vidioc_reqbufs._entry.103, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @vidioc_reqbufs._entry_ptr.105, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.107, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1539, i32 5}
!191 = !{ptr @vidioc_reqbufs._entry.106, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @vidioc_reqbufs._entry_ptr.108, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.110, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1548, i32 4}
!195 = !{ptr @vidioc_reqbufs._entry.109, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @vidioc_reqbufs._entry_ptr.111, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @vidioc_reqbufs._entry.112, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1553, i32 3}
!199 = !{ptr @vidioc_reqbufs._entry_ptr.113, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1571, i32 4}
!202 = !{ptr @.str.115, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @vidioc_querybuf._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @vidioc_querybuf._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.117, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1576, i32 4}
!207 = !{ptr @vidioc_querybuf._entry.116, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @vidioc_querybuf._entry_ptr.118, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.120, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1583, i32 4}
!211 = !{ptr @vidioc_querybuf._entry.119, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @vidioc_querybuf._entry_ptr.121, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @vidioc_querybuf._entry.122, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1587, i32 3}
!215 = !{ptr @vidioc_querybuf._entry_ptr.123, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.124, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1599, i32 3}
!218 = !{ptr @.str.125, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @vidioc_qbuf._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @vidioc_qbuf._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.127, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1604, i32 4}
!223 = !{ptr @vidioc_qbuf._entry.126, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @vidioc_qbuf._entry_ptr.128, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.129, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1624, i32 3}
!227 = !{ptr @vidioc_dqbuf._rs, !226, !"_rs", i1 false, i1 false}
!228 = !{ptr @__func__.vidioc_dqbuf, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.130, !226, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @vidioc_dqbuf._entry, !226, !"_entry", i1 false, i1 false}
!231 = !{ptr @vidioc_dqbuf._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.131, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2293, i32 4}
!234 = !{ptr @.str.132, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @vidioc_encoder_cmd._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @vidioc_encoder_cmd._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.134, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2300, i32 4}
!239 = !{ptr @vidioc_encoder_cmd._entry.133, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @vidioc_encoder_cmd._entry_ptr.135, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.136, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2269, i32 3}
!243 = !{ptr @.str.137, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @vidioc_g_parm._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @vidioc_g_parm._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.138, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2252, i32 3}
!248 = !{ptr @vidioc_s_parm._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @vidioc_s_parm._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @controls, !251, !"controls", i1 false, i1 false}
!251 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 112, i32 27}
!252 = !{ptr @s5p_mfc_enc_ctrl_ops, !253, !"s5p_mfc_enc_ctrl_ops", i1 false, i1 false}
!253 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2236, i32 35}
!254 = !{ptr @.str.139, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2218, i32 4}
!256 = !{ptr @.str.140, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @s5p_mfc_enc_g_v_ctrl._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @s5p_mfc_enc_g_v_ctrl._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @s5p_mfc_enc_g_v_ctrl._entry.141, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2228, i32 4}
!261 = !{ptr @s5p_mfc_enc_g_v_ctrl._entry_ptr.142, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.143, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1896, i32 4}
!264 = !{ptr @.str.144, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @s5p_mfc_enc_s_ctrl._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @s5p_mfc_enc_s_ctrl._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @s5p_mfc_enc_s_ctrl._entry.145, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1904, i32 4}
!269 = !{ptr @s5p_mfc_enc_s_ctrl._entry_ptr.146, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.148, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 2199, i32 3}
!272 = !{ptr @s5p_mfc_enc_s_ctrl._entry.147, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @s5p_mfc_enc_s_ctrl._entry_ptr.149, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @h264_level.t, !275, !"t", i1 false, i1 false}
!275 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1682, i32 22}
!276 = !{ptr @mpeg4_level.t, !277, !"t", i1 false, i1 false}
!277 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1701, i32 22}
!278 = !{ptr @vui_sar_idc.t, !279, !"t", i1 false, i1 false}
!279 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1736, i32 22}
!280 = !{ptr @__enc_update_hevc_qp_ctrls_range.__hevc_qp_ctrls, !281, !"__hevc_qp_ctrls", i1 false, i1 false}
!281 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1766, i32 19}
!282 = !{ptr @hevc_level.t, !283, !"t", i1 false, i1 false}
!283 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1716, i32 22}
!284 = !{ptr @.str.150, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1074, i32 3}
!286 = !{ptr @.str.151, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1075, i32 3}
!288 = !{ptr @.str.152, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1076, i32 3}
!290 = !{ptr @mfc51_get_menu.mfc51_video_frame_skip, !291, !"mfc51_video_frame_skip", i1 false, i1 false}
!291 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1073, i32 28}
!292 = !{ptr @.str.153, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1081, i32 3}
!294 = !{ptr @.str.154, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1082, i32 3}
!296 = !{ptr @mfc51_get_menu.mfc51_video_force_frame, !297, !"mfc51_video_force_frame", i1 false, i1 false}
!297 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c", i32 1079, i32 28}
!298 = !{i32 1, !"wchar_size", i32 2}
!299 = !{i32 1, !"min_enum_size", i32 4}
!300 = !{i32 8, !"branch-target-enforcement", i32 0}
!301 = !{i32 8, !"sign-return-address", i32 0}
!302 = !{i32 8, !"sign-return-address-all", i32 0}
!303 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!304 = !{i32 7, !"uwtable", i32 1}
!305 = !{i32 7, !"frame-pointer", i32 2}
!306 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!307 = !{!"branch_weights", i32 2000, i32 1}
!308 = !{i64 4301768}
!309 = !{i64 2156616502}
!310 = !{!"auto-init"}
!311 = !{!"branch_weights", i32 1, i32 2000}
