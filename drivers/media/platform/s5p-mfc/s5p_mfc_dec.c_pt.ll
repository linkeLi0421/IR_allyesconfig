; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_dec.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c"
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
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.s5p_mfc_buf_size = type { i32, i32, ptr }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.93, i32, i32, %union.anon.95 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
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
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_decoder_cmd = type { i32, i32, %union.anon.102 }
%union.anon.102 = type { %struct.anon.103, [56 x i8] }
%struct.anon.103 = type { i64 }

@decoder_codec_ops = internal constant { %struct.s5p_mfc_codec_ops, [16 x i8] } zeroinitializer, align 32
@s5p_mfc_dec_qops = internal global { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @s5p_mfc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @s5p_mfc_buf_init, ptr null, ptr null, ptr null, ptr @s5p_mfc_start_streaming, ptr @s5p_mfc_stop_streaming, ptr @s5p_mfc_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt, ptr @vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt, ptr @vidioc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt, ptr @vidioc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_reqbufs, ptr @vidioc_querybuf, ptr @vidioc_qbuf, ptr @vidioc_expbuf, ptr @vidioc_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_streamon, ptr @vidioc_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_decoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_ctrls_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"s5p_mfc_dec:1137:(&ctx->ctrl_handler)->_lock\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_ctrls_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s:%d: v4l2_ctrl_handler_init failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5p_mfc_dec_ctrls_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_dec.c\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_ctrls_setup._entry_ptr = internal global ptr @s5p_mfc_dec_ctrls_setup._entry, section ".printk_index", align 4
@controls = internal global { [7 x %struct.mfc_control], [140 x i8] } { [7 x %struct.mfc_control] [%struct.mfc_control { i32 10031360, i32 1, [32 x i8] c"H264 Display Delay\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 16383, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029965, i32 1, [32 x i8] zeroinitializer, i32 0, i32 16383, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031361, i32 2, [32 x i8] c"H264 Display Delay Enable\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029966, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029525, i32 2, [32 x i8] c"Mpeg4 Loop Filter Enable\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029524, i32 2, [32 x i8] c"Slice Interface Enable\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 9963815, i32 1, [32 x i8] c"Minimum number of cap bufs\00\00\00\00\00\00", i32 1, i32 32, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 1 }], [140 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @s5p_mfc_dec_g_v_ctrl, ptr null, ptr @s5p_mfc_dec_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_ctrls_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s:%d: Adding control (%d) failed\0A\00", [59 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_ctrls_setup._entry_ptr.6 = internal global ptr @s5p_mfc_dec_ctrls_setup._entry.4, section ".printk_index", align 4
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_dec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s:%d: Default src_fmt is %p, dest_fmt is %p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5p_mfc_dec_init\00", [47 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_init._entry_ptr = internal global ptr @s5p_mfc_dec_init._entry, section ".printk_index", align 4
@s5p_mfc_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s:%d: State seems invalid. State = %d, vq->type = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5p_mfc_queue_setup\00", [44 x i8] zeroinitializer }, align 32
@s5p_mfc_queue_setup._entry_ptr = internal global ptr @s5p_mfc_queue_setup._entry, section ".printk_index", align 4
@s5p_mfc_queue_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s:%d: Buffer count=%d, plane count=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@s5p_mfc_queue_setup._entry_ptr.13 = internal global ptr @s5p_mfc_queue_setup._entry.11, section ".printk_index", align 4
@s5p_mfc_queue_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013%s:%d: This video node is dedicated to decoding. Decoding not initialized\0A\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_queue_setup._entry_ptr.16 = internal global ptr @s5p_mfc_queue_setup._entry.14, section ".printk_index", align 4
@s5p_mfc_buf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s:%d: Plane mem not allocated\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5p_mfc_buf_init\00", [47 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_init._entry_ptr = internal global ptr @s5p_mfc_buf_init._entry, section ".printk_index", align 4
@s5p_mfc_buf_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: Plane buffer (CAPTURE) is too small\0A\00", [50 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_init._entry_ptr.21 = internal global ptr @s5p_mfc_buf_init._entry.19, section ".printk_index", align 4
@s5p_mfc_buf_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s:%d: Plane memory not allocated\0A\00", [59 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_init._entry_ptr.24 = internal global ptr @s5p_mfc_buf_init._entry.22, section ".printk_index", align 4
@s5p_mfc_buf_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%d: Plane buffer (OUTPUT) is too small\0A\00", [51 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_init._entry_ptr.27 = internal global ptr @s5p_mfc_buf_init._entry.25, section ".printk_index", align 4
@s5p_mfc_buf_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.3, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s:%d: s5p_mfc_buf_init: unknown queue type\0A\00", [49 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_init._entry_ptr.30 = internal global ptr @s5p_mfc_buf_init._entry.28, section ".printk_index", align 4
@s5p_mfc_ctx_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:%d: ctx is not ready\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5p_mfc_ctx_ready\00", [46 x i8] zeroinitializer }, align 32
@s5p_mfc_ctx_ready._entry_ptr = internal global ptr @s5p_mfc_ctx_ready._entry, section ".printk_index", align 4
@s5p_mfc_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s:%d: Err flushing buffers\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5p_mfc_stop_streaming\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_stop_streaming._entry_ptr = internal global ptr @s5p_mfc_stop_streaming._entry, section ".printk_index", align 4
@s5p_mfc_buf_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s:%d: Unsupported buffer type (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5p_mfc_buf_queue\00", [46 x i8] zeroinitializer }, align 32
@s5p_mfc_buf_queue._entry_ptr = internal global ptr @s5p_mfc_buf_queue._entry, section ".printk_index", align 4
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5p-mfc\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@formats = internal global { [16 x %struct.s5p_mfc_fmt], [64 x i8] } { [16 x %struct.s5p_mfc_fmt] [%struct.s5p_mfc_fmt { i32 842091862, i32 -1, i32 2, i32 2, i32 6 }, %struct.s5p_mfc_fmt { i32 842091860, i32 -1, i32 2, i32 2, i32 1 }, %struct.s5p_mfc_fmt { i32 842091854, i32 -1, i32 2, i32 2, i32 46 }, %struct.s5p_mfc_fmt { i32 825380174, i32 -1, i32 2, i32 2, i32 46 }, %struct.s5p_mfc_fmt { i32 875967048, i32 0, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 875967053, i32 1, i32 0, i32 1, i32 46 }, %struct.s5p_mfc_fmt { i32 859189832, i32 5, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 826757197, i32 4, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 843534413, i32 4, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 877088845, i32 3, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 1145656920, i32 3, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 1194410838, i32 2, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 1278296918, i32 6, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 808996950, i32 7, i32 0, i32 1, i32 46 }, %struct.s5p_mfc_fmt { i32 1129727304, i32 17, i32 0, i32 1, i32 32 }, %struct.s5p_mfc_fmt { i32 809062486, i32 18, i32 0, i32 1, i32 32 }], [64 x i8] zeroinitializer }, align 32
@vidioc_g_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:%d: enter\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_g_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_g_fmt._entry_ptr = internal global ptr @vidioc_g_fmt._entry, section ".printk_index", align 4
@vidioc_g_fmt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s:%d: Format could not be read\0A\00", [61 x i8] zeroinitializer }, align 32
@vidioc_g_fmt._entry_ptr.43 = internal global ptr @vidioc_g_fmt._entry.41, section ".printk_index", align 4
@vidioc_g_fmt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: %s-- with error\0A\00", [38 x i8] zeroinitializer }, align 32
@vidioc_g_fmt._entry_ptr.46 = internal global ptr @vidioc_g_fmt._entry.44, section ".printk_index", align 4
@vidioc_g_fmt._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:%d: leave\0A\00", [16 x i8] zeroinitializer }, align 32
@vidioc_g_fmt._entry_ptr.49 = internal global ptr @vidioc_g_fmt._entry.47, section ".printk_index", align 4
@vidioc_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.50, ptr @.str.3, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr = internal global ptr @vidioc_s_fmt._entry, section ".printk_index", align 4
@vidioc_s_fmt._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s queue busy\0A\00", [43 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.53 = internal global ptr @vidioc_s_fmt._entry.51, section ".printk_index", align 4
@vidioc_s_fmt._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:%d: The codec number is: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.56 = internal global ptr @vidioc_s_fmt._entry.54, section ".printk_index", align 4
@vidioc_s_fmt._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.3, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s:%d: Wrong type error for S_FMT : %d\00", [55 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.59 = internal global ptr @vidioc_s_fmt._entry.57, section ".printk_index", align 4
@vidioc_s_fmt._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.50, ptr @.str.3, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.61 = internal global ptr @vidioc_s_fmt._entry.60, section ".printk_index", align 4
@vidioc_try_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s:%d: Type is %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_try_fmt\00", [17 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr = internal global ptr @vidioc_try_fmt._entry, section ".printk_index", align 4
@vidioc_try_fmt._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s:%d: Unsupported format for source.\0A\00", [55 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr.66 = internal global ptr @vidioc_try_fmt._entry.64, section ".printk_index", align 4
@vidioc_try_fmt._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s:%d: Unknown codec\0A\00", [40 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr.69 = internal global ptr @vidioc_try_fmt._entry.67, section ".printk_index", align 4
@vidioc_try_fmt._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.3, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s:%d: Unsupported format by this MFC version.\0A\00", [46 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr.72 = internal global ptr @vidioc_try_fmt._entry.70, section ".printk_index", align 4
@vidioc_try_fmt._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.63, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: Unsupported format for destination.\0A\00", [50 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr.75 = internal global ptr @vidioc_try_fmt._entry.73, section ".printk_index", align 4
@vidioc_try_fmt._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.3, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_try_fmt._entry_ptr.77 = internal global ptr @vidioc_try_fmt._entry.76, section ".printk_index", align 4
@vidioc_reqbufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s:%d: Only V4L2_MEMORY_MMAP is supported\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_reqbufs\00", [17 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr = internal global ptr @vidioc_reqbufs._entry, section ".printk_index", align 4
@vidioc_reqbufs._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.3, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s:%d: Invalid type requested\0A\00", [63 x i8] zeroinitializer }, align 32
@vidioc_reqbufs._entry_ptr.82 = internal global ptr @vidioc_reqbufs._entry.80, section ".printk_index", align 4
@reqbufs_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: Freeing buffers\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reqbufs_output\00", [17 x i8] zeroinitializer }, align 32
@reqbufs_output._entry_ptr = internal global ptr @reqbufs_output._entry, section ".printk_index", align 4
@reqbufs_output._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%d: Reqbufs called in an invalid state\0A\00", [51 x i8] zeroinitializer }, align 32
@reqbufs_output._entry_ptr.87 = internal global ptr @reqbufs_output._entry.85, section ".printk_index", align 4
@reqbufs_output._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.3, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s:%d: Allocating %d buffers for OUTPUT queue\0A\00", [47 x i8] zeroinitializer }, align 32
@reqbufs_output._entry_ptr.90 = internal global ptr @reqbufs_output._entry.88, section ".printk_index", align 4
@reqbufs_output._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.3, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: Buffers have already been requested\0A\00", [50 x i8] zeroinitializer }, align 32
@reqbufs_output._entry_ptr.93 = internal global ptr @reqbufs_output._entry.91, section ".printk_index", align 4
@reqbufs_output._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.84, ptr @.str.3, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s:%d: Failed allocating buffers for OUTPUT queue\0A\00", [43 x i8] zeroinitializer }, align 32
@reqbufs_output._entry_ptr.96 = internal global ptr @reqbufs_output._entry.94, section ".printk_index", align 4
@reqbufs_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.97, ptr @.str.3, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reqbufs_capture\00", [16 x i8] zeroinitializer }, align 32
@reqbufs_capture._entry_ptr = internal global ptr @reqbufs_capture._entry, section ".printk_index", align 4
@reqbufs_capture._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.3, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s:%d: Allocating %d buffers for CAPTURE queue\0A\00", [46 x i8] zeroinitializer }, align 32
@reqbufs_capture._entry_ptr.100 = internal global ptr @reqbufs_capture._entry.98, section ".printk_index", align 4
@reqbufs_capture._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.3, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: Failed to allocate decoding buffers\0A\00", [50 x i8] zeroinitializer }, align 32
@reqbufs_capture._entry_ptr.103 = internal global ptr @reqbufs_capture._entry.101, section ".printk_index", align 4
@reqbufs_capture._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.97, ptr @.str.3, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@reqbufs_capture._entry_ptr.105 = internal global ptr @reqbufs_capture._entry.104, section ".printk_index", align 4
@reqbufs_capture._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.97, ptr @.str.3, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s:%d: Failed allocating buffers for CAPTURE queue\0A\00", [42 x i8] zeroinitializer }, align 32
@reqbufs_capture._entry_ptr.108 = internal global ptr @reqbufs_capture._entry.106, section ".printk_index", align 4
@vidioc_querybuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%d: Only mmapped buffers can be used\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vidioc_querybuf\00", [16 x i8] zeroinitializer }, align 32
@vidioc_querybuf._entry_ptr = internal global ptr @vidioc_querybuf._entry, section ".printk_index", align 4
@vidioc_querybuf._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.3, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:%d: State: %d, buf->type: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@vidioc_querybuf._entry_ptr.113 = internal global ptr @vidioc_querybuf._entry.111, section ".printk_index", align 4
@vidioc_querybuf._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.3, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s:%d: vidioc_querybuf called in an inappropriate state\0A\00", [37 x i8] zeroinitializer }, align 32
@vidioc_querybuf._entry_ptr.116 = internal global ptr @vidioc_querybuf._entry.114, section ".printk_index", align 4
@vidioc_querybuf._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.110, ptr @.str.3, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_querybuf._entry_ptr.118 = internal global ptr @vidioc_querybuf._entry.117, section ".printk_index", align 4
@vidioc_qbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s:%d: Call on QBUF after unrecoverable error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vidioc_qbuf\00", [20 x i8] zeroinitializer }, align 32
@vidioc_qbuf._entry_ptr = internal global ptr @vidioc_qbuf._entry, section ".printk_index", align 4
@vidioc_dqbuf._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.121, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidioc_dqbuf = private unnamed_addr constant [13 x i8] c"vidioc_dqbuf\00", align 1
@vidioc_dqbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @__func__.vidioc_dqbuf, ptr @.str.3, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s:%d: Call on DQBUF after unrecoverable error\0A\00", [46 x i8] zeroinitializer }, align 32
@vidioc_dqbuf._entry_ptr = internal global ptr @vidioc_dqbuf._entry, section ".printk_index", align 4
@vidioc_streamon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.123, ptr @.str.3, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vidioc_streamon\00", [16 x i8] zeroinitializer }, align 32
@vidioc_streamon._entry_ptr = internal global ptr @vidioc_streamon._entry, section ".printk_index", align 4
@vidioc_streamon._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.123, ptr @.str.3, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_streamon._entry_ptr.125 = internal global ptr @vidioc_streamon._entry.124, section ".printk_index", align 4
@vidioc_g_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%d: Can not get compose information\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_g_selection\00", [45 x i8] zeroinitializer }, align 32
@vidioc_g_selection._entry_ptr = internal global ptr @vidioc_g_selection._entry, section ".printk_index", align 4
@vidioc_g_selection._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017%s:%d: Composing info [h264]: l=%d t=%d w=%d h=%d (r=%d b=%d fw=%d fh=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@vidioc_g_selection._entry_ptr.130 = internal global ptr @vidioc_g_selection._entry.128, section ".printk_index", align 4
@vidioc_g_selection._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.3, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s:%d: Composing info: w=%d h=%d fw=%d fh=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@vidioc_g_selection._entry_ptr.133 = internal global ptr @vidioc_g_selection._entry.131, section ".printk_index", align 4
@vidioc_decoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.3, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s:%d: EOS: empty src queue, entering finishing state\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_decoder_cmd\00", [45 x i8] zeroinitializer }, align 32
@vidioc_decoder_cmd._entry_ptr = internal global ptr @vidioc_decoder_cmd._entry, section ".printk_index", align 4
@vidioc_decoder_cmd._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.3, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s:%d: EOS: marking last buffer of stream\00", [52 x i8] zeroinitializer }, align 32
@vidioc_decoder_cmd._entry_ptr.138 = internal global ptr @vidioc_decoder_cmd._entry.136, section ".printk_index", align 4
@s5p_mfc_dec_g_v_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Decoding not initialised\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5p_mfc_dec_g_v_ctrl\00", [43 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_g_v_ctrl._entry_ptr = internal global ptr @s5p_mfc_dec_g_v_ctrl._entry, section ".printk_index", align 4
@s5p_mfc_dec_g_v_ctrl._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_g_v_ctrl._entry_ptr.142 = internal global ptr @s5p_mfc_dec_g_v_ctrl._entry.141, section ".printk_index", align 4
@s5p_mfc_dec_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s:%d: Invalid control 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5p_mfc_dec_s_ctrl\00", [45 x i8] zeroinitializer }, align 32
@s5p_mfc_dec_s_ctrl._entry_ptr = internal global ptr @s5p_mfc_dec_s_ctrl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 102]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 102, i64 106]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 101, i64 114]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 101, i64 105]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 32, i64 102, i64 105, i64 106, i64 107]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 114]
@__sancov_gen_cov_switch_values.162 = internal global [8 x i64] [i64 6, i64 32, i64 10029524, i64 10029525, i64 10029965, i64 10029966, i64 10031360, i64 10031361]
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"decoder_codec_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 258, i32 39 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"s5p_mfc_dec_qops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1104, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"s5p_mfc_dec_ioctl_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 877, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1137, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1139, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 160, i32 27 }
@___asan_gen_.193 = private unnamed_addr constant [21 x i8] c"s5p_mfc_dec_ctrl_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 760, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1167, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1197, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 932, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 936, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 953, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 972, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 978, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 991, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 995, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1005, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 254, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1058, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 1097, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 271, i32 23 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 273, i32 49 }
@___asan_gen_.298 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 30, i32 27 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 321, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 362, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 363, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 366, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 415, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 421, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 434, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 449, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 455, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 376, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 380, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 384, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 388, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 394, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 398, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 569, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 578, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 467, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 477, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 482, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 497, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 503, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 515, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 523, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 534, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 551, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 557, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 592, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 595, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 605, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 608, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 618, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 638, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 679, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 684, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 781, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 793, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 801, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 839, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 846, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 741, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 751, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.574 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.575 = private constant [48 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.575, i32 722, i32 3 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @reqbufs_capture._entry, ptr @reqbufs_capture._entry.101, ptr @reqbufs_capture._entry.104, ptr @reqbufs_capture._entry.106, ptr @reqbufs_capture._entry.98, ptr @reqbufs_capture._entry_ptr, ptr @reqbufs_capture._entry_ptr.100, ptr @reqbufs_capture._entry_ptr.103, ptr @reqbufs_capture._entry_ptr.105, ptr @reqbufs_capture._entry_ptr.108, ptr @reqbufs_output._entry, ptr @reqbufs_output._entry.85, ptr @reqbufs_output._entry.88, ptr @reqbufs_output._entry.91, ptr @reqbufs_output._entry.94, ptr @reqbufs_output._entry_ptr, ptr @reqbufs_output._entry_ptr.87, ptr @reqbufs_output._entry_ptr.90, ptr @reqbufs_output._entry_ptr.93, ptr @reqbufs_output._entry_ptr.96, ptr @s5p_mfc_buf_init._entry, ptr @s5p_mfc_buf_init._entry.19, ptr @s5p_mfc_buf_init._entry.22, ptr @s5p_mfc_buf_init._entry.25, ptr @s5p_mfc_buf_init._entry.28, ptr @s5p_mfc_buf_init._entry_ptr, ptr @s5p_mfc_buf_init._entry_ptr.21, ptr @s5p_mfc_buf_init._entry_ptr.24, ptr @s5p_mfc_buf_init._entry_ptr.27, ptr @s5p_mfc_buf_init._entry_ptr.30, ptr @s5p_mfc_buf_queue._entry, ptr @s5p_mfc_buf_queue._entry_ptr, ptr @s5p_mfc_ctx_ready._entry, ptr @s5p_mfc_ctx_ready._entry_ptr, ptr @s5p_mfc_dec_ctrls_setup._entry, ptr @s5p_mfc_dec_ctrls_setup._entry.4, ptr @s5p_mfc_dec_ctrls_setup._entry_ptr, ptr @s5p_mfc_dec_ctrls_setup._entry_ptr.6, ptr @s5p_mfc_dec_g_v_ctrl._entry, ptr @s5p_mfc_dec_g_v_ctrl._entry.141, ptr @s5p_mfc_dec_g_v_ctrl._entry_ptr, ptr @s5p_mfc_dec_g_v_ctrl._entry_ptr.142, ptr @s5p_mfc_dec_init._entry, ptr @s5p_mfc_dec_init._entry_ptr, ptr @s5p_mfc_dec_s_ctrl._entry, ptr @s5p_mfc_dec_s_ctrl._entry_ptr, ptr @s5p_mfc_queue_setup._entry, ptr @s5p_mfc_queue_setup._entry.11, ptr @s5p_mfc_queue_setup._entry.14, ptr @s5p_mfc_queue_setup._entry_ptr, ptr @s5p_mfc_queue_setup._entry_ptr.13, ptr @s5p_mfc_queue_setup._entry_ptr.16, ptr @s5p_mfc_stop_streaming._entry, ptr @s5p_mfc_stop_streaming._entry_ptr, ptr @vidioc_decoder_cmd._entry, ptr @vidioc_decoder_cmd._entry.136, ptr @vidioc_decoder_cmd._entry_ptr, ptr @vidioc_decoder_cmd._entry_ptr.138, ptr @vidioc_dqbuf._entry, ptr @vidioc_dqbuf._entry_ptr, ptr @vidioc_g_fmt._entry, ptr @vidioc_g_fmt._entry.41, ptr @vidioc_g_fmt._entry.44, ptr @vidioc_g_fmt._entry.47, ptr @vidioc_g_fmt._entry_ptr, ptr @vidioc_g_fmt._entry_ptr.43, ptr @vidioc_g_fmt._entry_ptr.46, ptr @vidioc_g_fmt._entry_ptr.49, ptr @vidioc_g_selection._entry, ptr @vidioc_g_selection._entry.128, ptr @vidioc_g_selection._entry.131, ptr @vidioc_g_selection._entry_ptr, ptr @vidioc_g_selection._entry_ptr.130, ptr @vidioc_g_selection._entry_ptr.133, ptr @vidioc_qbuf._entry, ptr @vidioc_qbuf._entry_ptr, ptr @vidioc_querybuf._entry, ptr @vidioc_querybuf._entry.111, ptr @vidioc_querybuf._entry.114, ptr @vidioc_querybuf._entry.117, ptr @vidioc_querybuf._entry_ptr, ptr @vidioc_querybuf._entry_ptr.113, ptr @vidioc_querybuf._entry_ptr.116, ptr @vidioc_querybuf._entry_ptr.118, ptr @vidioc_reqbufs._entry, ptr @vidioc_reqbufs._entry.80, ptr @vidioc_reqbufs._entry_ptr, ptr @vidioc_reqbufs._entry_ptr.82, ptr @vidioc_s_fmt._entry, ptr @vidioc_s_fmt._entry.51, ptr @vidioc_s_fmt._entry.54, ptr @vidioc_s_fmt._entry.57, ptr @vidioc_s_fmt._entry.60, ptr @vidioc_s_fmt._entry_ptr, ptr @vidioc_s_fmt._entry_ptr.53, ptr @vidioc_s_fmt._entry_ptr.56, ptr @vidioc_s_fmt._entry_ptr.59, ptr @vidioc_s_fmt._entry_ptr.61, ptr @vidioc_streamon._entry, ptr @vidioc_streamon._entry.124, ptr @vidioc_streamon._entry_ptr, ptr @vidioc_streamon._entry_ptr.125, ptr @vidioc_try_fmt._entry, ptr @vidioc_try_fmt._entry.64, ptr @vidioc_try_fmt._entry.67, ptr @vidioc_try_fmt._entry.70, ptr @vidioc_try_fmt._entry.73, ptr @vidioc_try_fmt._entry.76, ptr @vidioc_try_fmt._entry_ptr, ptr @vidioc_try_fmt._entry_ptr.66, ptr @vidioc_try_fmt._entry_ptr.69, ptr @vidioc_try_fmt._entry_ptr.72, ptr @vidioc_try_fmt._entry_ptr.75, ptr @vidioc_try_fmt._entry_ptr.77, ptr @decoder_codec_ops, ptr @s5p_mfc_dec_qops, ptr @s5p_mfc_dec_ioctl_ops, ptr @s5p_mfc_dec_ctrls_setup._key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @controls, ptr @s5p_mfc_dec_ctrl_ops, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @formats, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.119, ptr @.str.120, ptr @vidioc_dqbuf._rs, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.143, ptr @.str.144], section "llvm.metadata"
@0 = internal global [138 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decoder_codec_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_ctrls_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_ctrls_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controls to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_ctrls_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_queue_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_queue_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_ctx_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_buf_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_reqbufs._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_output._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_output._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_output._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_output._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_capture._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_capture._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_capture._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqbufs_capture._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_querybuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_querybuf._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_querybuf._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_querybuf._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_qbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_dqbuf._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_dqbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_streamon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_streamon._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_selection._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_selection._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_decoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_decoder_cmd._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_g_v_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_g_v_ctrl._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_dec_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_dec_codec_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @decoder_codec_ops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_dec_queue_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @s5p_mfc_dec_qops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_dec_v4l2_ioctl_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @s5p_mfc_dec_ioctl_ops
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_dec_ctrls_setup(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  %cfg = alloca %struct.v4l2_ctrl_config, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg) #8
  %0 = call ptr @memset(ptr %cfg, i32 255, i32 112)
  %ctrl_handler = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 65
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 7, ptr noundef nonnull @s5p_mfc_dec_ctrls_setup._key, ptr noundef nonnull @.str) #8
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
  %step29 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %cfg, i32 0, i32 7
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1139) #11
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0111 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %and = and i32 %4, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 10027008, i32 %and)
  %cmp9 = icmp ne i32 %and, 10027008
  %and12 = and i32 %4, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  %or.cond = or i1 %cmp9, %cmp13.not
  br i1 %or.cond, label %if.else, label %if.then14

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memset(ptr %cfg, i32 0, i32 112)
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @s5p_mfc_dec_ctrl_ops, ptr %cfg, align 8
  %7 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %id17, align 8
  %minimum = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 3
  %8 = ptrtoint ptr %minimum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %minimum, align 4
  %conv = sext i32 %9 to i64
  %10 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %min, align 8
  %maximum = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 4
  %11 = ptrtoint ptr %maximum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maximum, align 4
  %conv20 = sext i32 %12 to i64
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv20, ptr %max, align 8
  %default_value = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 7
  %14 = ptrtoint ptr %default_value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %default_value, align 4
  %conv22 = sext i32 %15 to i64
  %16 = ptrtoint ptr %def to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv22, ptr %def, align 8
  %name = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 2
  %17 = ptrtoint ptr %name24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %name, ptr %name24, align 4
  %type = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %20 = ptrtoint ptr %type26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %type26, align 8
  %step = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 5
  %21 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %step, align 4
  %conv28 = sext i32 %22 to i64
  %23 = ptrtoint ptr %step29 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv28, ptr %step29, align 8
  %call31 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull %cfg, ptr noundef null) #8
  br label %if.end51

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %minimum37 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 3
  %24 = ptrtoint ptr %minimum37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %minimum37, align 4
  %conv38 = sext i32 %25 to i64
  %maximum40 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 4
  %26 = ptrtoint ptr %maximum40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maximum40, align 4
  %conv41 = sext i32 %27 to i64
  %step43 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 5
  %28 = ptrtoint ptr %step43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %step43, align 4
  %conv44 = sext i32 %29 to i64
  %default_value46 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 7
  %30 = ptrtoint ptr %default_value46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %default_value46, align 4
  %conv47 = sext i32 %31 to i64
  %call48 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5p_mfc_dec_ctrl_ops, i32 noundef %4, i64 noundef %conv38, i64 noundef %conv41, i64 noundef %conv44, i64 noundef %conv47) #8
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then14
  %call31.sink = phi ptr [ %call48, %if.else ], [ %call31, %if.then14 ]
  %32 = getelementptr %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 64, i32 %i.0111
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call31.sink, ptr %32, align 4
  %34 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool54.not = icmp eq i32 %35, 0
  br i1 %tobool54.not, label %if.end66, label %do.end59

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 1167, i32 noundef %i.0111) #11
  br label %cleanup.sink.split

if.end66:                                         ; preds = %if.end51
  %is_volatile = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %i.0111, i32 10
  %36 = ptrtoint ptr %is_volatile to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_volatile, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool69.not = icmp eq i8 %37, 0
  br i1 %tobool69.not, label %if.end66.for.inc_crit_edge, label %land.lhs.true70

if.end66.for.inc_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true70:                                  ; preds = %if.end66
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %32, align 4
  %tobool73.not = icmp eq ptr %39, null
  br i1 %tobool73.not, label %land.lhs.true70.for.inc_crit_edge, label %if.then74

land.lhs.true70.for.inc_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then74:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 20
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %or = or i32 %41, 128
  store i32 %or, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then74, %land.lhs.true70.for.inc_crit_edge, %if.end66.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end59, %do.end
  %42 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ %43, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg) #8
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
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_dec_ctrls_delete(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 65
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  %uglygep = getelementptr i8, ptr %ctx, i32 3536
  %0 = call ptr @memset(ptr %uglygep, i32 0, i32 28)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_dec_init(ptr nocapture noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  %f = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %f) #8
  %0 = call ptr @memset(ptr %f, i32 255, i32 204)
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 875967048, ptr %pixelformat, align 4
  %call = call fastcc ptr @find_format(ptr noundef nonnull %f, i32 noundef 0)
  %src_fmt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %src_fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %src_fmt, align 4
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %variant, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %8)
  %cmp = icmp ugt i32 %8, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %8)
  %cmp6 = icmp ugt i32 %8, 95
  %. = select i1 %cmp6, i32 842091862, i32 842091860
  %.sink = select i1 %cmp, i32 842091854, i32 %.
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %pixelformat, align 4
  %call16 = call fastcc ptr @find_format(ptr noundef nonnull %f, i32 noundef 2)
  %dst_fmt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 8
  %10 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %dst_fmt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %11 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp17 = icmp sgt i32 %11, 1
  br i1 %cmp17, label %do.end, label %entry.do.end25_crit_edge

entry.do.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1198, ptr noundef %call, ptr noundef %call16) #11
  br label %do.end25

do.end25:                                         ; preds = %do.end, %entry.do.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %f) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_format(ptr nocapture noundef readonly %f, i32 noundef %t) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %t)
  %cmp3 = icmp eq i32 %3, %t
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %4 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp1.1 = icmp eq i32 %4, %1
  br i1 %cmp1.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %5 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %t)
  %cmp3.1 = icmp eq i32 %5, %t
  br i1 %cmp3.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %6 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp1.2 = icmp eq i32 %6, %1
  br i1 %cmp1.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %7 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %t)
  %cmp3.2 = icmp eq i32 %7, %t
  br i1 %cmp3.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %8 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp1.3 = icmp eq i32 %8, %1
  br i1 %cmp1.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %9 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %t)
  %cmp3.3 = icmp eq i32 %9, %t
  br i1 %cmp3.3, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %10 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp1.4 = icmp eq i32 %10, %1
  br i1 %cmp1.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %t)
  %cmp3.4 = icmp eq i32 %11, %t
  br i1 %cmp3.4, label %land.lhs.true.4.cleanup_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %12 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %1)
  %cmp1.5 = icmp eq i32 %12, %1
  br i1 %cmp1.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %13 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %t)
  %cmp3.5 = icmp eq i32 %13, %t
  br i1 %cmp3.5, label %land.lhs.true.5.cleanup_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp1.6 = icmp eq i32 %14, %1
  br i1 %cmp1.6, label %land.lhs.true.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %15 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %t)
  %cmp3.6 = icmp eq i32 %15, %t
  br i1 %cmp3.6, label %land.lhs.true.6.cleanup_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %16 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %1)
  %cmp1.7 = icmp eq i32 %16, %1
  br i1 %cmp1.7, label %land.lhs.true.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %t)
  %cmp3.7 = icmp eq i32 %17, %t
  br i1 %cmp3.7, label %land.lhs.true.7.cleanup_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %18 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp1.8 = icmp eq i32 %18, %1
  br i1 %cmp1.8, label %land.lhs.true.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %19 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %t)
  %cmp3.8 = icmp eq i32 %19, %t
  br i1 %cmp3.8, label %land.lhs.true.8.cleanup_crit_edge, label %land.lhs.true.8.for.inc.8_crit_edge

land.lhs.true.8.for.inc.8_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.8

land.lhs.true.8.cleanup_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.8:                                        ; preds = %land.lhs.true.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %1)
  %cmp1.9 = icmp eq i32 %20, %1
  br i1 %cmp1.9, label %land.lhs.true.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.9

land.lhs.true.9:                                  ; preds = %for.inc.8
  %21 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 9, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %t)
  %cmp3.9 = icmp eq i32 %21, %t
  br i1 %cmp3.9, label %land.lhs.true.9.cleanup_crit_edge, label %land.lhs.true.9.for.inc.9_crit_edge

land.lhs.true.9.for.inc.9_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.9

land.lhs.true.9.cleanup_crit_edge:                ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.9:                                        ; preds = %land.lhs.true.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %22 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %1)
  %cmp1.10 = icmp eq i32 %22, %1
  br i1 %cmp1.10, label %land.lhs.true.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.10

land.lhs.true.10:                                 ; preds = %for.inc.9
  %23 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 10, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %t)
  %cmp3.10 = icmp eq i32 %23, %t
  br i1 %cmp3.10, label %land.lhs.true.10.cleanup_crit_edge, label %land.lhs.true.10.for.inc.10_crit_edge

land.lhs.true.10.for.inc.10_crit_edge:            ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.10

land.lhs.true.10.cleanup_crit_edge:               ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.10:                                       ; preds = %land.lhs.true.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %24 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %1)
  %cmp1.11 = icmp eq i32 %24, %1
  br i1 %cmp1.11, label %land.lhs.true.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.11

land.lhs.true.11:                                 ; preds = %for.inc.10
  %25 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 11, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %t)
  %cmp3.11 = icmp eq i32 %25, %t
  br i1 %cmp3.11, label %land.lhs.true.11.cleanup_crit_edge, label %land.lhs.true.11.for.inc.11_crit_edge

land.lhs.true.11.for.inc.11_crit_edge:            ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.11

land.lhs.true.11.cleanup_crit_edge:               ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.11:                                       ; preds = %land.lhs.true.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  %26 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %1)
  %cmp1.12 = icmp eq i32 %26, %1
  br i1 %cmp1.12, label %land.lhs.true.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.12

land.lhs.true.12:                                 ; preds = %for.inc.11
  %27 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 12, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %t)
  %cmp3.12 = icmp eq i32 %27, %t
  br i1 %cmp3.12, label %land.lhs.true.12.cleanup_crit_edge, label %land.lhs.true.12.for.inc.12_crit_edge

land.lhs.true.12.for.inc.12_crit_edge:            ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.12

land.lhs.true.12.cleanup_crit_edge:               ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.12:                                       ; preds = %land.lhs.true.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  %28 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %1)
  %cmp1.13 = icmp eq i32 %28, %1
  br i1 %cmp1.13, label %land.lhs.true.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.13

land.lhs.true.13:                                 ; preds = %for.inc.12
  %29 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 13, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %t)
  %cmp3.13 = icmp eq i32 %29, %t
  br i1 %cmp3.13, label %land.lhs.true.13.cleanup_crit_edge, label %land.lhs.true.13.for.inc.13_crit_edge

land.lhs.true.13.for.inc.13_crit_edge:            ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.13

land.lhs.true.13.cleanup_crit_edge:               ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.13:                                       ; preds = %land.lhs.true.13.for.inc.13_crit_edge, %for.inc.12.for.inc.13_crit_edge
  %30 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %1)
  %cmp1.14 = icmp eq i32 %30, %1
  br i1 %cmp1.14, label %land.lhs.true.14, label %for.inc.13.for.inc.14_crit_edge

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.14

land.lhs.true.14:                                 ; preds = %for.inc.13
  %31 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 14, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %t)
  %cmp3.14 = icmp eq i32 %31, %t
  br i1 %cmp3.14, label %land.lhs.true.14.cleanup_crit_edge, label %land.lhs.true.14.for.inc.14_crit_edge

land.lhs.true.14.for.inc.14_crit_edge:            ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.14

land.lhs.true.14.cleanup_crit_edge:               ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.14:                                       ; preds = %land.lhs.true.14.for.inc.14_crit_edge, %for.inc.13.for.inc.14_crit_edge
  %32 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %1)
  %cmp1.15 = icmp eq i32 %32, %1
  br i1 %cmp1.15, label %land.lhs.true.15, label %for.inc.14.for.inc.15_crit_edge

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.15

land.lhs.true.15:                                 ; preds = %for.inc.14
  %33 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 15, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %t)
  %cmp3.15 = icmp eq i32 %33, %t
  br i1 %cmp3.15, label %land.lhs.true.15.cleanup_crit_edge, label %land.lhs.true.15.for.inc.15_crit_edge

land.lhs.true.15.for.inc.15_crit_edge:            ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.15

land.lhs.true.15.cleanup_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.15:                                       ; preds = %land.lhs.true.15.for.inc.15_crit_edge, %for.inc.14.for.inc.15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.15, %land.lhs.true.15.cleanup_crit_edge, %land.lhs.true.14.cleanup_crit_edge, %land.lhs.true.13.cleanup_crit_edge, %land.lhs.true.12.cleanup_crit_edge, %land.lhs.true.11.cleanup_crit_edge, %land.lhs.true.10.cleanup_crit_edge, %land.lhs.true.9.cleanup_crit_edge, %land.lhs.true.8.cleanup_crit_edge, %land.lhs.true.7.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ @formats, %land.lhs.true.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1), %land.lhs.true.1.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2), %land.lhs.true.2.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3), %land.lhs.true.3.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4), %land.lhs.true.4.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5), %land.lhs.true.5.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6), %land.lhs.true.6.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7), %land.lhs.true.7.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8), %land.lhs.true.8.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 9), %land.lhs.true.9.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 10), %land.lhs.true.10.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 11), %land.lhs.true.11.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 12), %land.lhs.true.12.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 13), %land.lhs.true.13.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 14), %land.lhs.true.14.cleanup_crit_edge ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 15), %land.lhs.true.15.cleanup_crit_edge ], [ null, %for.inc.15 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %buf_count, ptr nocapture noundef %plane_count, ptr nocapture noundef writeonly %psize, ptr nocapture noundef writeonly %alloc_devs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
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
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.do.end_crit_edge [
    i32 100, label %land.lhs.true
    i32 102, label %land.lhs.true10
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp2 = icmp eq i32 %8, 10
  br i1 %cmp2, label %if.then, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %plane_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %plane_count, align 4
  %10 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %if.then.do.body36.sink.split_crit_edge, label %if.end

if.then.do.body36.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36.sink.split

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp5 = icmp ugt i32 %11, 32
  br i1 %cmp5, label %if.end.do.body36.sink.split_crit_edge, label %if.end.do.body36_crit_edge

if.end.do.body36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

if.end.do.body36.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36.sink.split

land.lhs.true10:                                  ; preds = %entry
  %12 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp12 = icmp eq i32 %13, 9
  br i1 %cmp12, label %if.then13, label %land.lhs.true10.do.end_crit_edge

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true10
  %14 = ptrtoint ptr %plane_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %plane_count, align 4
  %15 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_count, align 4
  %pb_count = getelementptr i8, ptr %1, i32 3000
  %17 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pb_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp14 = icmp ult i32 %16, %18
  br i1 %cmp14, label %if.then15, label %if.then13.if.end17_crit_edge

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %buf_count, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then13.if.end17_crit_edge
  %20 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_count, align 4
  %22 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pb_count, align 4
  %add = add i32 %23, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add)
  %cmp19.not = icmp ugt i32 %21, %add
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp24 = icmp ugt i32 %24, 32
  %25 = or i1 %cmp19.not, %cmp24
  br i1 %25, label %28, label %if.end17.do.body36_crit_edge

if.end17.do.body36_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

do.end:                                           ; preds = %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %26 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vq, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 933, i32 noundef %5, i32 noundef %27) #11
  br label %cleanup

28:                                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %29 = tail call i32 @llvm.umin.i32(i32 %24, i32 32)
  br label %do.body36.sink.split

do.body36.sink.split:                             ; preds = %28, %if.end.do.body36.sink.split_crit_edge, %if.then.do.body36.sink.split_crit_edge
  %.sink = phi i32 [ %29, %28 ], [ 1, %if.then.do.body36.sink.split_crit_edge ], [ 32, %if.end.do.body36.sink.split_crit_edge ]
  %30 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %buf_count, align 4
  br label %do.body36

do.body36:                                        ; preds = %do.body36.sink.split, %if.end17.do.body36_crit_edge, %if.end.do.body36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %31 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp37 = icmp sgt i32 %31, 1
  br i1 %cmp37, label %do.end41, label %do.body36.do.end46_crit_edge

do.body36.do.end46_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_count, align 4
  %34 = ptrtoint ptr %plane_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %plane_count, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 937, i32 noundef %33, i32 noundef %35) #11
  br label %do.end46

do.end46:                                         ; preds = %do.end41, %do.body36.do.end46_crit_edge
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %37)
  %cmp48 = icmp eq i32 %37, 102
  %38 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vq, align 4
  br i1 %cmp48, label %land.lhs.true49, label %if.else69

land.lhs.true49:                                  ; preds = %do.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %39)
  %cmp51 = icmp eq i32 %39, 9
  br i1 %cmp51, label %if.then52, label %land.lhs.true49.do.end85_crit_edge

land.lhs.true49.do.end85_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  %luma_size = getelementptr i8, ptr %1, i32 1344
  %40 = ptrtoint ptr %luma_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %luma_size, align 4
  %42 = ptrtoint ptr %psize to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %psize, align 4
  %chroma_size = getelementptr i8, ptr %1, i32 1348
  %43 = ptrtoint ptr %chroma_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chroma_size, align 4
  %arrayidx53 = getelementptr i32, ptr %psize, i32 1
  %45 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx53, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 10
  %46 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %49)
  %cmp54 = icmp ugt i32 %49, 95
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %arrayidx62 = getelementptr %struct.s5p_mfc_dev, ptr %51, i32 0, i32 4, i32 1
  %mem_dev = getelementptr inbounds %struct.s5p_mfc_dev, ptr %51, i32 0, i32 4
  %storemerge.in = select i1 %cmp54, ptr %mem_dev, ptr %arrayidx62
  %52 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %storemerge = load ptr, ptr %storemerge.in, align 4
  %53 = ptrtoint ptr %alloc_devs to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %storemerge, ptr %alloc_devs, align 4
  %54 = load ptr, ptr %add.ptr, align 4
  %mem_dev66 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %mem_dev66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mem_dev66, align 4
  %arrayidx68 = getelementptr ptr, ptr %alloc_devs, i32 1
  %57 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %arrayidx68, align 4
  br label %cleanup

if.else69:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %39)
  %cmp71 = icmp eq i32 %39, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %37)
  %cmp74 = icmp eq i32 %37, 100
  %or.cond = select i1 %cmp71, i1 %cmp74, i1 false
  br i1 %or.cond, label %if.then75, label %if.else69.do.end85_crit_edge

if.else69.do.end85_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

if.then75:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  %dec_src_buf_size = getelementptr i8, ptr %1, i32 2968
  %58 = ptrtoint ptr %dec_src_buf_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dec_src_buf_size, align 4
  %60 = ptrtoint ptr %psize to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %psize, align 4
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 4
  %mem_dev78 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %mem_dev78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mem_dev78, align 4
  %65 = ptrtoint ptr %alloc_devs to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %alloc_devs, align 4
  br label %cleanup

do.end85:                                         ; preds = %if.else69.do.end85_crit_edge, %land.lhs.true49.do.end85_crit_edge
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef 953) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %if.then75, %if.then52, %do.end
  %retval.0 = phi i32 [ -22, %do.end85 ], [ -22, %do.end ], [ 0, %if.then75 ], [ 0, %if.then52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_buf_init(ptr noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %5, label %do.end78 [
    i32 9, label %if.then
    i32 10, label %if.then40
  ]

if.then:                                          ; preds = %entry
  %capture_state = getelementptr i8, ptr %3, i32 1408
  %7 = ptrtoint ptr %capture_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capture_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp4 = icmp eq i32 %8, 3
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %for.cond.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then
  %dst_fmt = getelementptr i8, ptr %3, i32 264
  %9 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst_fmt, align 4
  %num_planes144 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %num_planes144 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6145.not = icmp eq i32 %12, 0
  br i1 %cmp6145.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0146, 1
  %13 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst_fmt, align 4
  %num_planes = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_planes, align 4
  %cmp6 = icmp ult i32 %inc, %16
  br i1 %cmp6, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0146 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef %i.0146) #8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  %19 = inttoptr i32 %18 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %cmp.i = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 972) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %20 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i120.not = icmp eq i32 %21, 0
  br i1 %cmp.i120.not, label %vb2_plane_size.exit.thread, label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %for.end
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 8
  %luma_size = getelementptr i8, ptr %3, i32 1344
  %24 = ptrtoint ptr %luma_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %luma_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp17 = icmp ult i32 %23, %25
  br i1 %cmp17, label %vb2_plane_size.exit.do.end24_crit_edge, label %lor.lhs.false

vb2_plane_size.exit.do.end24_crit_edge:           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

vb2_plane_size.exit.thread:                       ; preds = %for.end
  %luma_size141 = getelementptr i8, ptr %3, i32 1344
  %26 = ptrtoint ptr %luma_size141 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %luma_size141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp17142.not = icmp eq i32 %27, 0
  br i1 %cmp17142.not, label %vb2_plane_size.exit.thread.vb2_plane_size.exit126_crit_edge, label %vb2_plane_size.exit.thread.do.end24_crit_edge

vb2_plane_size.exit.thread.do.end24_crit_edge:    ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

vb2_plane_size.exit.thread.vb2_plane_size.exit126_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit126

lor.lhs.false:                                    ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i122 = icmp ugt i32 %21, 1
  br i1 %cmp.i122, label %if.then.i124, label %lor.lhs.false.vb2_plane_size.exit126_crit_edge

lor.lhs.false.vb2_plane_size.exit126_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit126

if.then.i124:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %length.i123 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 1, i32 4
  %28 = ptrtoint ptr %length.i123 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i123, align 8
  br label %vb2_plane_size.exit126

vb2_plane_size.exit126:                           ; preds = %if.then.i124, %lor.lhs.false.vb2_plane_size.exit126_crit_edge, %vb2_plane_size.exit.thread.vb2_plane_size.exit126_crit_edge
  %retval.0.i125 = phi i32 [ %29, %if.then.i124 ], [ 0, %lor.lhs.false.vb2_plane_size.exit126_crit_edge ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit126_crit_edge ]
  %chroma_size = getelementptr i8, ptr %3, i32 1348
  %30 = ptrtoint ptr %chroma_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chroma_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i125, i32 %31)
  %cmp19 = icmp ult i32 %retval.0.i125, %31
  br i1 %cmp19, label %vb2_plane_size.exit126.do.end24_crit_edge, label %if.end29

vb2_plane_size.exit126.do.end24_crit_edge:        ; preds = %vb2_plane_size.exit126
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

do.end24:                                         ; preds = %vb2_plane_size.exit126.do.end24_crit_edge, %vb2_plane_size.exit.thread.do.end24_crit_edge, %vb2_plane_size.exit.do.end24_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 978) #11
  br label %cleanup

if.end29:                                         ; preds = %vb2_plane_size.exit126
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  %dst_bufs = getelementptr i8, ptr %3, i32 2188
  %arrayidx = getelementptr [32 x %struct.s5p_mfc_buf], ptr %dst_bufs, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %vb, ptr %arrayidx, align 4
  %call.i127 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #8
  %35 = ptrtoint ptr %call.i127 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i127, align 4
  %cookie = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 2
  %37 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cookie, align 4
  %call.i128 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 1) #8
  %38 = ptrtoint ptr %call.i128 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call.i128, align 4
  %chroma = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 2, i32 0, i32 1
  %40 = ptrtoint ptr %chroma to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %chroma, align 4
  %dst_bufs_cnt = getelementptr i8, ptr %3, i32 2956
  %41 = ptrtoint ptr %dst_bufs_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dst_bufs_cnt, align 4
  %inc37 = add i32 %42, 1
  store i32 %inc37, ptr %dst_bufs_cnt, align 4
  br label %cleanup

if.then40:                                        ; preds = %entry
  %call.i129 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #8
  %43 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call.i129, align 4
  %45 = inttoptr i32 %44 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i130 = icmp eq i32 %44, 0
  %cmp.i131 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  %spec.select.i132 = or i1 %tobool.not.i130, %cmp.i131
  br i1 %spec.select.i132, label %do.end48, label %if.end53

do.end48:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, i32 noundef 991) #11
  br label %cleanup

if.end53:                                         ; preds = %if.then40
  %num_planes.i133 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %46 = ptrtoint ptr %num_planes.i133 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_planes.i133, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i134.not = icmp eq i32 %47, 0
  br i1 %cmp.i134.not, label %if.end53.vb2_plane_size.exit138_crit_edge, label %if.then.i136

if.end53.vb2_plane_size.exit138_crit_edge:        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit138

if.then.i136:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %length.i135 = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %48 = ptrtoint ptr %length.i135 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length.i135, align 8
  br label %vb2_plane_size.exit138

vb2_plane_size.exit138:                           ; preds = %if.then.i136, %if.end53.vb2_plane_size.exit138_crit_edge
  %retval.0.i137 = phi i32 [ %49, %if.then.i136 ], [ 0, %if.end53.vb2_plane_size.exit138_crit_edge ]
  %dec_src_buf_size = getelementptr i8, ptr %3, i32 2968
  %50 = ptrtoint ptr %dec_src_buf_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dec_src_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i137, i32 %51)
  %cmp55 = icmp ult i32 %retval.0.i137, %51
  br i1 %cmp55, label %do.end60, label %if.end65

do.end60:                                         ; preds = %vb2_plane_size.exit138
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef 995) #11
  br label %cleanup

if.end65:                                         ; preds = %vb2_plane_size.exit138
  call void @__sanitizer_cov_trace_pc() #10
  %index66 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %52 = ptrtoint ptr %index66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index66, align 4
  %src_bufs = getelementptr i8, ptr %3, i32 1416
  %arrayidx67 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %src_bufs, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %vb, ptr %arrayidx67, align 4
  %call.i139 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #8
  %55 = ptrtoint ptr %call.i139 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call.i139, align 4
  %cookie72 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx67, i32 0, i32 2
  %57 = ptrtoint ptr %cookie72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %cookie72, align 4
  %src_bufs_cnt = getelementptr i8, ptr %3, i32 2184
  %58 = ptrtoint ptr %src_bufs_cnt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %src_bufs_cnt, align 4
  %inc73 = add i32 %59, 1
  store i32 %inc73, ptr %src_bufs_cnt, align 4
  br label %cleanup

do.end78:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.18, i32 noundef 1005) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end65, %do.end60, %do.end48, %if.end29, %do.end24, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end24 ], [ -22, %do.end48 ], [ -22, %do.end60 ], [ -22, %do.end78 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end65 ], [ 0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %ctrl_handler = getelementptr i8, ptr %1, i32 4044
  %call = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #8
  %state = getelementptr i8, ptr %1, i32 1320
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %6)
  %switch = icmp eq i32 %6, 106
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 105, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_work_bit_irqsave(ptr noundef %add.ptr) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 36
  %8 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mfc_ops, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.cond.end_crit_edge, label %land.lhs.true

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

land.lhs.true:                                    ; preds = %if.end7
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %try_run, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %3) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %if.end7.cond.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_stop_streaming(ptr nocapture noundef readonly %q) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %irqlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #8
  %state = getelementptr i8, ptr %1, i32 1320
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %.off = add i32 %5, -105
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %cmp12 = icmp eq i32 %7, %9
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 25
  %10 = ptrtoint ptr %hw_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true14.if.end_crit_edge, label %if.then

land.lhs.true14.if.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 110, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call4) #8
  %call17 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %add.ptr, i32 noundef 13, i32 noundef 0) #8
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true14.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool87.not = phi i1 [ false, %if.then ], [ true, %land.lhs.true14.if.end_crit_edge ], [ true, %land.lhs.true.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ]
  %flags.0 = phi i32 [ %call27, %if.then ], [ %call4, %land.lhs.true14.if.end_crit_edge ], [ %call4, %land.lhs.true.if.end_crit_edge ], [ %call4, %entry.if.end_crit_edge ]
  %13 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %q, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %14, label %if.end.if.end86_crit_edge [
    i32 9, label %if.then34
    i32 10, label %if.then83
  ]

if.end.if.end86_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then34:                                        ; preds = %if.end
  %dst_queue = getelementptr i8, ptr %1, i32 1300
  %vq_dst = getelementptr i8, ptr %1, i32 780
  tail call void @s5p_mfc_cleanup_queue(ptr noundef %dst_queue, ptr noundef %vq_dst) #8
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
  %dpb_flush_flag = getelementptr i8, ptr %1, i32 1360
  %19 = ptrtoint ptr %dpb_flush_flag to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %dpb_flush_flag, align 4
  %dec_dst_flag = getelementptr i8, ptr %1, i32 2964
  %20 = ptrtoint ptr %dec_dst_flag to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dec_dst_flag, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %variant, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %24)
  %cmp36 = icmp ugt i32 %24, 95
  br i1 %cmp36, label %land.lhs.true38, label %if.then34.if.end86_crit_edge

if.then34.if.end86_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

land.lhs.true38:                                  ; preds = %if.then34
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %26)
  %cmp40 = icmp eq i32 %26, 105
  br i1 %cmp40, label %if.then42, label %land.lhs.true38.if.end86_crit_edge

land.lhs.true38.if.end86_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then42:                                        ; preds = %land.lhs.true38
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 111, ptr %state, align 4
  tail call void @set_work_bit_irqsave(ptr noundef %add.ptr) #8
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 36
  %28 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mfc_ops, align 4
  %tobool44.not = icmp eq ptr %29, null
  br i1 %tobool44.not, label %if.then42.cond.end_crit_edge, label %land.lhs.true45

if.then42.cond.end_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

land.lhs.true45:                                  ; preds = %if.then42
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %try_run, align 4
  %tobool47.not = icmp eq ptr %31, null
  br i1 %tobool47.not, label %land.lhs.true45.cond.end_crit_edge, label %cond.true48

land.lhs.true45.cond.end_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true48:                                      ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %31(ptr noundef %3) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true48, %land.lhs.true45.cond.end_crit_edge, %if.then42.cond.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %flags.0) #8
  %call53 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %add.ptr, i32 noundef 10, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cond.end.do.body66_crit_edge, label %do.end59

cond.end.do.body66_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body66

do.end59:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 1058) #11
  br label %do.body66

do.body66:                                        ; preds = %do.end59, %cond.end.do.body66_crit_edge
  %call74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #8
  br label %if.end86

if.then83:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %src_queue = getelementptr i8, ptr %1, i32 1292
  %vq_src = getelementptr i8, ptr %1, i32 268
  tail call void @s5p_mfc_cleanup_queue(ptr noundef %src_queue, ptr noundef %vq_src) #8
  %32 = ptrtoint ptr %src_queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %src_queue, ptr %src_queue, align 4
  %prev.i131 = getelementptr i8, ptr %1, i32 1296
  %33 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %src_queue, ptr %prev.i131, align 4
  %src_queue_cnt = getelementptr i8, ptr %1, i32 1308
  %34 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %src_queue_cnt, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %do.body66, %land.lhs.true38.if.end86_crit_edge, %if.then34.if.end86_crit_edge, %if.end.if.end86_crit_edge
  %flags.1 = phi i32 [ %call74, %do.body66 ], [ %flags.0, %land.lhs.true38.if.end86_crit_edge ], [ %flags.0, %if.then34.if.end86_crit_edge ], [ %flags.0, %if.then83 ], [ %flags.0, %if.end.if.end86_crit_edge ]
  br i1 %tobool87.not, label %if.end86.if.end90_crit_edge, label %if.then88

if.end86.if.end90_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 105, ptr %state, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end86.if.end90_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %flags.1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_buf_queue(ptr nocapture noundef readonly %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %7, label %do.end40 [
    i32 10, label %if.then
    i32 9, label %if.then13
  ]

if.then:                                          ; preds = %entry
  %src_bufs = getelementptr i8, ptr %3, i32 1416
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [32 x %struct.s5p_mfc_buf], ptr %src_bufs, i32 0, i32 %10
  %flags2 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 3
  %11 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags2, align 4
  %and = and i32 %12, -2
  store i32 %and, ptr %flags2, align 4
  %irqlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 12
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #8
  %list = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 1
  %src_queue = getelementptr i8, ptr %3, i32 1292
  %prev.i = getelementptr i8, ptr %3, i32 1296
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %14, ptr noundef %src_queue) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %src_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %src_queue_cnt = getelementptr i8, ptr %3, i32 1308
  %19 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_queue_cnt, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %src_queue_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call6) #8
  br label %if.end46

if.then13:                                        ; preds = %entry
  %dst_bufs = getelementptr i8, ptr %3, i32 2188
  %index14 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %21 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index14, align 4
  %arrayidx15 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %dst_bufs, i32 0, i32 %22
  %flags16 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx15, i32 0, i32 3
  %23 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags16, align 4
  %and17 = and i32 %24, -2
  store i32 %and17, ptr %flags16, align 4
  %irqlock25 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 12
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock25) #8
  %25 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index14, align 4
  %dec_dst_flag = getelementptr i8, ptr %3, i32 2964
  tail call void @_set_bit(i32 noundef %26, ptr noundef %dec_dst_flag) #8
  %list33 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx15, i32 0, i32 1
  %dst_queue = getelementptr i8, ptr %3, i32 1300
  %prev.i83 = getelementptr i8, ptr %3, i32 1304
  %27 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i83, align 4
  %call.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef %list33, ptr noundef %28, ptr noundef %dst_queue) #8
  br i1 %call.i.i84, label %if.end.i.i86, label %if.then13.list_add_tail.exit87_crit_edge

if.then13.list_add_tail.exit87_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit87

if.end.i.i86:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list33, ptr %prev.i83, align 4
  %30 = ptrtoint ptr %list33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dst_queue, ptr %list33, align 4
  %prev3.i.i85 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx15, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i85 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i85, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list33, ptr %28, align 4
  br label %list_add_tail.exit87

list_add_tail.exit87:                             ; preds = %if.end.i.i86, %if.then13.list_add_tail.exit87_crit_edge
  %dst_queue_cnt = getelementptr i8, ptr %3, i32 1312
  %33 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst_queue_cnt, align 4
  %inc34 = add i32 %34, 1
  store i32 %inc34, ptr %dst_queue_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock25, i32 noundef %call27) #8
  br label %if.end46

do.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 1097, i32 noundef %7) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %list_add_tail.exit87, %list_add_tail.exit
  %call47 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool.not = icmp eq i32 %call47, 0
  br i1 %tobool.not, label %if.end46.if.end49_crit_edge, label %if.then48

if.end46.if.end49_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_work_bit_irqsave(ptr noundef %add.ptr) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end46.if.end49_crit_edge
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 36
  %35 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mfc_ops, align 4
  %tobool50.not = icmp eq ptr %36, null
  br i1 %tobool50.not, label %if.end49.cond.end_crit_edge, label %land.lhs.true

if.end49.cond.end_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

land.lhs.true:                                    ; preds = %if.end49
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %try_run, align 4
  %tobool52.not = icmp eq ptr %38, null
  br i1 %tobool52.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %38(ptr noundef %5) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %if.end49.cond.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_ctx_ready(ptr nocapture noundef readonly %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %src_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 13
  %0 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_queue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %state1171 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %2 = ptrtoint ptr %state1171 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state1171, align 4
  br i1 %cmp.not, label %if.end10.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %3)
  %cmp1 = icmp eq i32 %3, 101
  br i1 %cmp1, label %land.lhs.true.return_crit_edge, label %land.lhs.true4

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %state1171 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state1171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %5)
  %cmp6 = icmp eq i32 %5, 105
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true4.if.end10_crit_edge

land.lhs.true4.if.end10_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %dst_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %6 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_queue_cnt, align 4
  %pb_count = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %8 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pb_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp8.not = icmp ult i32 %7, %9
  br i1 %cmp8.not, label %if.end10thread-pre-split, label %land.lhs.true7.return_crit_edge

land.lhs.true7.return_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10thread-pre-split:                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %state1171 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %state1171, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %land.lhs.true4.if.end10_crit_edge
  %11 = phi i32 [ %.pr, %if.end10thread-pre-split ], [ %5, %land.lhs.true4.if.end10_crit_edge ]
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %11, label %if.end10.if.end27_crit_edge [
    i32 106, label %land.lhs.true13
    i32 102, label %land.lhs.true24
  ]

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end10.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %3)
  %cmp1272 = icmp eq i32 %3, 106
  br i1 %cmp1272, label %land.lhs.true13.thread, label %if.end10.thread.if.end27_crit_edge

if.end10.thread.if.end27_crit_edge:               ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true13:                                  ; preds = %if.end10
  %dst_queue_cnt14 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %13 = ptrtoint ptr %dst_queue_cnt14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_queue_cnt14, align 4
  %pb_count15 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %15 = ptrtoint ptr %pb_count15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pb_count15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp16.not = icmp ult i32 %14, %16
  br i1 %cmp16.not, label %land.lhs.true13.do.body_crit_edge, label %land.lhs.true13.return_crit_edge

land.lhs.true13.return_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true13.do.body_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true13.thread:                           ; preds = %if.end10.thread
  %dst_queue_cnt1474 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %17 = ptrtoint ptr %dst_queue_cnt1474 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_queue_cnt1474, align 4
  %pb_count1575 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %19 = ptrtoint ptr %pb_count1575 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pb_count1575, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp16.not76 = icmp ult i32 %18, %20
  br i1 %cmp16.not76, label %land.lhs.true13.thread.do.body_crit_edge, label %land.lhs.true13.thread.return_crit_edge

land.lhs.true13.thread.return_crit_edge:          ; preds = %land.lhs.true13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true13.thread.do.body_crit_edge:         ; preds = %land.lhs.true13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true24:                                  ; preds = %if.end10
  %capture_state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 30
  %21 = ptrtoint ptr %capture_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capture_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp25 = icmp eq i32 %22, 3
  br i1 %cmp25, label %land.lhs.true24.return_crit_edge, label %land.lhs.true24.do.body_crit_edge

land.lhs.true24.do.body_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true24.return_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end27:                                         ; preds = %if.end10.thread.if.end27_crit_edge, %if.end10.if.end27_crit_edge
  %23 = phi i32 [ %3, %if.end10.thread.if.end27_crit_edge ], [ %11, %if.end10.if.end27_crit_edge ]
  %24 = and i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %24)
  %switch = icmp eq i32 %24, 112
  br i1 %switch, label %land.lhs.true32, label %if.end37

land.lhs.true32:                                  ; preds = %if.end27
  %dst_queue_cnt33 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %25 = ptrtoint ptr %dst_queue_cnt33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_queue_cnt33, align 4
  %pb_count34 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %27 = ptrtoint ptr %pb_count34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pb_count34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp35.not = icmp ult i32 %26, %28
  br i1 %cmp35.not, label %land.lhs.true32.do.body_crit_edge, label %land.lhs.true32.return_crit_edge

land.lhs.true32.return_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true32.do.body_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 114, i32 %23)
  %cmp39 = icmp ne i32 %23, 114
  %brmerge = select i1 %cmp39, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.end37.do.body_crit_edge, label %if.end37.return_crit_edge

if.end37.return_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end37.do.body_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end37.do.body_crit_edge, %land.lhs.true32.do.body_crit_edge, %land.lhs.true24.do.body_crit_edge, %land.lhs.true13.thread.do.body_crit_edge, %land.lhs.true13.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %29 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp45 = icmp sgt i32 %29, 1
  br i1 %cmp45, label %do.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 254) #11
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %if.end37.return_crit_edge, %land.lhs.true32.return_crit_edge, %land.lhs.true24.return_crit_edge, %land.lhs.true13.thread.return_crit_edge, %land.lhs.true13.return_crit_edge, %land.lhs.true7.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.return_crit_edge ], [ 1, %land.lhs.true7.return_crit_edge ], [ 1, %land.lhs.true13.return_crit_edge ], [ 1, %land.lhs.true24.return_crit_edge ], [ 1, %land.lhs.true32.return_crit_edge ], [ 0, %do.body.return_crit_edge ], [ 0, %do.end ], [ 1, %land.lhs.true13.thread.return_crit_edge ], [ 1, %if.end37.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_work_bit_irqsave(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_cleanup_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.37, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %vfd_dec = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfd_dec, align 4
  %name = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %pirv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %j.038.i = phi i32 [ 0, %entry ], [ %j.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.036.i = phi i32 [ 0, %entry ], [ %inc17.i, %for.inc.i.for.body.i_crit_edge ]
  %type.i = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %i.036.i, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 2
  br i1 %cmp6.not.i, label %if.else8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else8.i:                                       ; preds = %for.body.i
  %4 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant.i, align 4
  %version_bit.i = getelementptr inbounds %struct.s5p_mfc_variant, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %version_bit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version_bit.i, align 4
  %versions.i = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %i.036.i, i32 4
  %8 = ptrtoint ptr %versions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %versions.i, align 4
  %and.i = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 0
  br i1 %cmp10.i, label %if.else8.i.for.inc.i_crit_edge, label %if.end13.i

if.else8.i.for.inc.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.else8.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.038.i, i32 %11)
  %cmp14.i = icmp eq i32 %j.038.i, %11
  br i1 %cmp14.i, label %if.end20.i, label %if.end16.i

if.end16.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i32 %j.038.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i, %if.else8.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %j.038.i, %if.else8.i.for.inc.i_crit_edge ], [ %inc.i, %if.end16.i ], [ %j.038.i, %for.body.i.for.inc.i_crit_edge ]
  %inc17.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc17.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.vidioc_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.vidioc_enum_fmt.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidioc_enum_fmt.exit

if.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %i.036.i
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx21.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat.i, align 4
  br label %vidioc_enum_fmt.exit

vidioc_enum_fmt.exit:                             ; preds = %if.end20.i, %for.inc.i.vidioc_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end20.i ], [ -22, %for.inc.i.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %j.038.i = phi i32 [ 0, %entry ], [ %j.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.036.i = phi i32 [ 0, %entry ], [ %inc17.i, %for.inc.i.for.body.i_crit_edge ]
  %type.i = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %i.036.i, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not.i = icmp eq i32 %3, 0
  br i1 %cmp1.not.i, label %if.else8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else8.i:                                       ; preds = %for.body.i
  %4 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant.i, align 4
  %version_bit.i = getelementptr inbounds %struct.s5p_mfc_variant, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %version_bit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version_bit.i, align 4
  %versions.i = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %i.036.i, i32 4
  %8 = ptrtoint ptr %versions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %versions.i, align 4
  %and.i = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 0
  br i1 %cmp10.i, label %if.else8.i.for.inc.i_crit_edge, label %if.end13.i

if.else8.i.for.inc.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.else8.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.038.i, i32 %11)
  %cmp14.i = icmp eq i32 %j.038.i, %11
  br i1 %cmp14.i, label %if.end20.i, label %if.end16.i

if.end16.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i32 %j.038.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i, %if.else8.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %j.038.i, %for.body.i.for.inc.i_crit_edge ], [ %j.038.i, %if.else8.i.for.inc.i_crit_edge ], [ %inc.i, %if.end16.i ]
  %inc17.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc17.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.vidioc_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.vidioc_enum_fmt.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidioc_enum_fmt.exit

if.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %i.036.i
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx21.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat.i, align 4
  br label %vidioc_enum_fmt.exit

vidioc_enum_fmt.exit:                             ; preds = %if.end20.i, %for.inc.i.vidioc_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end20.i ], [ -22, %for.inc.i.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 321) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %cmp5 = icmp eq i32 %2, 9
  br i1 %cmp5, label %land.lhs.true, label %do.end4.if.else_crit_edge

do.end4.if.else_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.end4
  %state = getelementptr i8, ptr %priv, i32 1320
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %4, label %land.lhs.true.land.lhs.true14_crit_edge [
    i32 101, label %land.lhs.true.if.end11_crit_edge
    i32 114, label %land.lhs.true.if.end11_crit_edge123
  ]

land.lhs.true.if.end11_crit_edge123:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true.land.lhs.true14_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true14

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge123
  %call10 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 0) #8
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.pr)
  %cmp13 = icmp eq i32 %.pr, 9
  br i1 %cmp13, label %if.end11.land.lhs.true14_crit_edge, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end11.land.lhs.true14_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end11.land.lhs.true14_crit_edge, %land.lhs.true.land.lhs.true14_crit_edge
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %9 = add i32 %8, -102
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %if.then20, label %land.lhs.true14.do.end53_crit_edge

land.lhs.true14.do.end53_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

if.then20:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  %buf_width = getelementptr i8, ptr %priv, i32 1336
  %11 = ptrtoint ptr %buf_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_width, align 4
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %fmt, align 1
  %buf_height = getelementptr i8, ptr %priv, i32 1340
  %14 = ptrtoint ptr %buf_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_height, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %height, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 1, ptr %field, align 1
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %18 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %num_planes, align 1
  %dst_fmt = getelementptr i8, ptr %priv, i32 264
  %19 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst_fmt, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %pixelformat, align 1
  %24 = load i32, ptr %buf_width, align 4
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %bytesperline, align 1
  %luma_size = getelementptr i8, ptr %priv, i32 1344
  %26 = ptrtoint ptr %luma_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %luma_size, align 4
  %28 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %plane_fmt, align 1
  %29 = load i32, ptr %buf_width, align 4
  %arrayidx26 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %bytesperline27 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %30 = ptrtoint ptr %bytesperline27 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %bytesperline27, align 1
  %chroma_size = getelementptr i8, ptr %priv, i32 1348
  %31 = ptrtoint ptr %chroma_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chroma_size, align 4
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %arrayidx26, align 1
  br label %do.body72

if.else:                                          ; preds = %if.end11.if.else_crit_edge, %do.end4.if.else_crit_edge
  %34 = phi i32 [ %.pr, %if.end11.if.else_crit_edge ], [ %2, %do.end4.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %34)
  %cmp32 = icmp eq i32 %34, 10
  br i1 %cmp32, label %if.then33, label %if.else.do.end53_crit_edge

if.else.do.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %fmt, align 1
  %height35 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %height35 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %height35, align 1
  %field36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %37 = ptrtoint ptr %field36 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 1, ptr %field36, align 1
  %dec_src_buf_size = getelementptr i8, ptr %priv, i32 2968
  %38 = ptrtoint ptr %dec_src_buf_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dec_src_buf_size, align 4
  %plane_fmt37 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %bytesperline39 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %40 = ptrtoint ptr %bytesperline39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %bytesperline39, align 1
  %41 = load i32, ptr %dec_src_buf_size, align 4
  %42 = ptrtoint ptr %plane_fmt37 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %plane_fmt37, align 1
  %src_fmt = getelementptr i8, ptr %priv, i32 260
  %43 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %src_fmt, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %pixelformat45 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %pixelformat45 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %pixelformat45, align 1
  %48 = load ptr, ptr %src_fmt, align 4
  %num_planes47 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %num_planes47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_planes47, align 4
  %conv = trunc i32 %50 to i8
  %num_planes48 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %51 = ptrtoint ptr %num_planes48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv, ptr %num_planes48, align 1
  br label %do.body72

do.end53:                                         ; preds = %if.else.do.end53_crit_edge, %land.lhs.true14.do.end53_crit_edge
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 362) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %52 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp59 = icmp sgt i32 %52, 1
  br i1 %cmp59, label %do.end64, label %do.end53.cleanup_crit_edge

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end64:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.40, i32 noundef 363, ptr noundef nonnull @.str.40) #11
  br label %cleanup

do.body72:                                        ; preds = %if.then33, %if.then20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %53 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp73 = icmp sgt i32 %53, 4
  br i1 %cmp73, label %do.end78, label %do.body72.cleanup_crit_edge

do.body72.cleanup_crit_edge:                      ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end78:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.40, i32 noundef 366) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %do.body72.cleanup_crit_edge, %do.end64, %do.end53.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end64 ], [ -22, %do.end53.cleanup_crit_edge ], [ 0, %do.end78 ], [ 0, %do.body72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt(ptr noundef %file, ptr nocapture noundef %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %buf_size1 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %buf_size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_size1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %6 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp sgt i32 %6, 4
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.50, i32 noundef 415) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call i32 @vidioc_try_fmt(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %streaming.i = getelementptr i8, ptr %priv, i32 716
  %7 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end9.do.end15_crit_edge, label %lor.lhs.false

if.end9.do.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end9
  %streaming.i117 = getelementptr i8, ptr %priv, i32 1228
  %8 = ptrtoint ptr %streaming.i117 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i118 = load i16, ptr %streaming.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i118)
  %tobool.i119 = icmp slt i16 %bf.load.i118, 0
  br i1 %tobool.i119, label %lor.lhs.false.do.end15_crit_edge, label %if.end18

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false.do.end15_crit_edge, %if.end9.do.end15_crit_edge
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef nonnull @.str.50) #11
  br label %do.body72

if.end18:                                         ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %10, label %do.end66 [
    i32 9, label %if.then20
    i32 10, label %if.then24
  ]

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call fastcc ptr @find_format(ptr noundef %f, i32 noundef 2)
  %dst_fmt = getelementptr i8, ptr %priv, i32 264
  %12 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %dst_fmt, align 4
  br label %do.body72

if.then24:                                        ; preds = %if.end18
  %call25 = tail call fastcc ptr @find_format(ptr noundef %f, i32 noundef 0)
  %src_fmt = getelementptr i8, ptr %priv, i32 260
  %13 = ptrtoint ptr %src_fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %src_fmt, align 4
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %call25, i32 0, i32 1
  %14 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %codec_mode, align 4
  %codec_mode27 = getelementptr i8, ptr %priv, i32 2972
  %16 = ptrtoint ptr %codec_mode27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %codec_mode27, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %17 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp29 = icmp sgt i32 %17, 1
  br i1 %cmp29, label %do.end33, label %if.then24.do.end39_crit_edge

if.then24.do.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end33:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50, i32 noundef 434, i32 noundef %15) #11
  br label %do.end39

do.end39:                                         ; preds = %do.end33, %if.then24.do.end39_crit_edge
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %height, align 1
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %fmt, align 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %plane_fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp40 = icmp eq i32 %21, 0
  br i1 %cmp40, label %if.then41, label %if.else45

if.then41:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  %dec_src_buf_size = getelementptr i8, ptr %priv, i32 2968
  %22 = ptrtoint ptr %dec_src_buf_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 262144, ptr %dec_src_buf_size, align 4
  %23 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 262144, ptr %plane_fmt, align 1
  br label %if.end59

if.else45:                                        ; preds = %do.end39
  %cpb = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %cpb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp49 = icmp ugt i32 %21, %25
  %dec_src_buf_size52 = getelementptr i8, ptr %priv, i32 2968
  br i1 %cmp49, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dec_src_buf_size52 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dec_src_buf_size52, align 4
  br label %if.end59

if.else53:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dec_src_buf_size52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %21, ptr %dec_src_buf_size52, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else53, %if.then50, %if.then41
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %bytesperline, align 1
  %state = getelementptr i8, ptr %priv, i32 1320
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100, ptr %state, align 4
  br label %do.body72

do.end66:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.50, i32 noundef 449, i32 noundef %10) #11
  br label %do.body72

do.body72:                                        ; preds = %do.end66, %if.end59, %if.then20, %do.end15
  %ret.0 = phi i32 [ -16, %do.end15 ], [ 0, %if.then20 ], [ 0, %if.end59 ], [ -22, %do.end66 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %30 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp73 = icmp sgt i32 %30, 4
  br i1 %cmp73, label %do.end77, label %do.body72.cleanup_crit_edge

do.body72.cleanup_crit_edge:                      ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end77:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.50, i32 noundef 455) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %do.body72.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end6.cleanup_crit_edge ], [ %ret.0, %do.end77 ], [ %ret.0, %do.body72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef 376, i32 noundef %4) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %6, label %do.end4.cleanup_crit_edge [
    i32 10, label %if.then7
    i32 9, label %if.then43
  ]

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %do.end4
  %call8 = tail call fastcc ptr @find_format(ptr noundef %f, i32 noundef 0)
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %do.end13, label %if.end18

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 380) #11
  br label %cleanup

if.end18:                                         ; preds = %if.then7
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %call8, i32 0, i32 1
  %8 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp19 = icmp eq i32 %9, -1
  br i1 %cmp19, label %do.end24, label %if.end29

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, i32 noundef 384) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant, align 4
  %version_bit = getelementptr inbounds %struct.s5p_mfc_variant, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %version_bit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %version_bit, align 4
  %versions = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %call8, i32 0, i32 4
  %14 = ptrtoint ptr %versions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %versions, align 4
  %and = and i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %do.end35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.63, i32 noundef 388) #11
  br label %cleanup

if.then43:                                        ; preds = %do.end4
  %call44 = tail call fastcc ptr @find_format(ptr noundef %f, i32 noundef 2)
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.end50, label %if.end55

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.63, i32 noundef 394) #11
  br label %cleanup

if.end55:                                         ; preds = %if.then43
  %variant56 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %variant56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %variant56, align 4
  %version_bit57 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %version_bit57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version_bit57, align 4
  %versions58 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %call44, i32 0, i32 4
  %20 = ptrtoint ptr %versions58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %versions58, align 4
  %and59 = and i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60 = icmp eq i32 %and59, 0
  br i1 %cmp60, label %do.end65, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end65:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.63, i32 noundef 398) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.end55.cleanup_crit_edge, %do.end50, %do.end35, %if.end29.cleanup_crit_edge, %do.end24, %do.end13, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end24 ], [ -22, %do.end35 ], [ -22, %do.end13 ], [ -22, %do.end65 ], [ -22, %do.end50 ], [ 0, %do.end4.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %reqbufs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %add.ptr = getelementptr i8, ptr %priv, i32 -4
  %memory = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %reqbufs, i32 0, i32 2
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %4 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1 = icmp sgt i32 %4, 1
  br i1 %cmp1, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 569) #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %reqbufs, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %6, label %do.end20 [
    i32 10, label %if.then10
    i32 9, label %if.then14
  ]

if.then10:                                        ; preds = %if.end8
  %call.i32 = tail call i32 @s5p_mfc_clock_on() #8
  %8 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %10 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp1.i = icmp sgt i32 %10, 1
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end6.i_crit_edge

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef 467) #11
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %vq_src.i = getelementptr i8, ptr %priv, i32 268
  %call7.i = tail call i32 @vb2_reqbufs(ptr noundef %vq_src.i, ptr noundef %reqbufs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %do.end6.i.do.end92.i_crit_edge

do.end6.i.do.end92.i_crit_edge:                   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.i

if.end9.i:                                        ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %src_bufs_cnt.i = getelementptr i8, ptr %priv, i32 2184
  %11 = ptrtoint ptr %src_bufs_cnt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %src_bufs_cnt.i, align 4
  %output_state.i = getelementptr i8, ptr %priv, i32 1412
  %12 = ptrtoint ptr %output_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %output_state.i, align 4
  br label %out.i

if.else.i:                                        ; preds = %if.then10
  %output_state10.i = getelementptr i8, ptr %priv, i32 1412
  %13 = ptrtoint ptr %output_state10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %output_state10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.i = icmp eq i32 %14, 0
  br i1 %cmp11.i, label %if.then12.i, label %do.end80.i

if.then12.i:                                      ; preds = %if.else.i
  %src_bufs_cnt13.i = getelementptr i8, ptr %priv, i32 2184
  %15 = ptrtoint ptr %src_bufs_cnt13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_bufs_cnt13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14.not.i = icmp eq i32 %16, 0
  br i1 %cmp14.not.i, label %if.then12.i.if.end32.i_crit_edge, label %do.end26.i, !prof !271

if.then12.i.if.end32.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

do.end26.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 475, i32 noundef 9, ptr noundef null) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end26.i, %if.then12.i.if.end32.i_crit_edge
  %state.i = getelementptr i8, ptr %priv, i32 1320
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %18)
  %cmp40.not.i = icmp eq i32 %18, 100
  br i1 %cmp40.not.i, label %do.body51.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, i32 noundef 477) #11
  br label %do.end92.i

do.body51.i:                                      ; preds = %if.end32.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %19 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp52.i = icmp sgt i32 %19, 1
  br i1 %cmp52.i, label %do.end56.i, label %do.body51.i.do.end62.i_crit_edge

do.body51.i.do.end62.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end62.i

do.end56.i:                                       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reqbufs, align 4
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.84, i32 noundef 483, i32 noundef %21) #11
  br label %do.end62.i

do.end62.i:                                       ; preds = %do.end56.i, %do.body51.i.do.end62.i_crit_edge
  %vq_src63.i = getelementptr i8, ptr %priv, i32 268
  %call64.i = tail call i32 @vb2_reqbufs(ptr noundef %vq_src63.i, ptr noundef %reqbufs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %do.end62.i.do.end92.i_crit_edge

do.end62.i.do.end92.i_crit_edge:                  ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.i

if.end67.i:                                       ; preds = %do.end62.i
  %call68.i = tail call i32 @s5p_mfc_open_mfc_inst(ptr noundef %1, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end74.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %reqbufs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reqbufs, align 4
  %call73.i = tail call i32 @vb2_reqbufs(ptr noundef %vq_src63.i, ptr noundef %reqbufs) #8
  br label %do.end92.i

if.end74.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %output_state10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %output_state10.i, align 4
  br label %out.i

do.end80.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.84, i32 noundef 497) #11
  br label %do.end92.i

out.i:                                            ; preds = %if.end74.i, %if.end9.i
  tail call void @s5p_mfc_clock_off() #8
  br label %cleanup

do.end92.i:                                       ; preds = %do.end80.i, %if.then70.i, %do.end62.i.do.end92.i_crit_edge, %do.end45.i, %do.end6.i.do.end92.i_crit_edge
  %ret.0.ph.i = phi i32 [ -22, %do.end80.i ], [ %call68.i, %if.then70.i ], [ %call64.i, %do.end62.i.do.end92.i_crit_edge ], [ -22, %do.end45.i ], [ %call7.i, %do.end6.i.do.end92.i_crit_edge ]
  tail call void @s5p_mfc_clock_off() #8
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.84, i32 noundef 503) #11
  br label %cleanup

if.then14:                                        ; preds = %if.end8
  %call.i33 = tail call i32 @s5p_mfc_clock_on() #8
  %24 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reqbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i34 = icmp eq i32 %25, 0
  br i1 %cmp.i34, label %do.body.i36, label %if.else.i43

do.body.i36:                                      ; preds = %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %26 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp1.i35 = icmp sgt i32 %26, 1
  br i1 %cmp1.i35, label %do.end.i38, label %do.body.i36.do.end6.i41_crit_edge

do.body.i36.do.end6.i41_crit_edge:                ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i41

do.end.i38:                                       ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.97, i32 noundef 515) #11
  br label %do.end6.i41

do.end6.i41:                                      ; preds = %do.end.i38, %do.body.i36.do.end6.i41_crit_edge
  %vq_dst.i = getelementptr i8, ptr %priv, i32 780
  %call7.i39 = tail call i32 @vb2_reqbufs(ptr noundef %vq_dst.i, ptr noundef %reqbufs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i39)
  %tobool.not.i40 = icmp eq i32 %call7.i39, 0
  br i1 %tobool.not.i40, label %if.end9.i42, label %do.end6.i41.do.end154.i_crit_edge

do.end6.i41.do.end154.i_crit_edge:                ; preds = %do.end6.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end154.i

if.end9.i42:                                      ; preds = %do.end6.i41
  %mfc_ops.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %27 = ptrtoint ptr %mfc_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mfc_ops.i, align 4
  %tobool10.not.i = icmp eq ptr %28, null
  br i1 %tobool10.not.i, label %if.end9.i42.cond.end.i_crit_edge, label %land.lhs.true.i

if.end9.i42.cond.end.i_crit_edge:                 ; preds = %if.end9.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

land.lhs.true.i:                                  ; preds = %if.end9.i42
  %release_codec_buffers.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %release_codec_buffers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %release_codec_buffers.i, align 4
  %tobool12.not.i = icmp eq ptr %30, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.cond.end.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %30(ptr noundef %add.ptr) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %land.lhs.true.i.cond.end.i_crit_edge, %if.end9.i42.cond.end.i_crit_edge
  %dst_bufs_cnt.i = getelementptr i8, ptr %priv, i32 2956
  %31 = ptrtoint ptr %dst_bufs_cnt.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %dst_bufs_cnt.i, align 4
  br label %out.i44

if.else.i43:                                      ; preds = %if.then14
  %capture_state.i = getelementptr i8, ptr %priv, i32 1408
  %32 = ptrtoint ptr %capture_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %capture_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp15.i = icmp eq i32 %33, 0
  br i1 %cmp15.i, label %if.then16.i, label %do.end142.i

if.then16.i:                                      ; preds = %if.else.i43
  %dst_bufs_cnt17.i = getelementptr i8, ptr %priv, i32 2956
  %34 = ptrtoint ptr %dst_bufs_cnt17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dst_bufs_cnt17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp18.not.i = icmp eq i32 %35, 0
  br i1 %cmp18.not.i, label %if.then16.i.if.end36.i_crit_edge, label %do.end30.i, !prof !271

if.then16.i.if.end36.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

do.end30.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 522, i32 noundef 9, ptr noundef null) #8
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end30.i, %if.then16.i.if.end36.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %36 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp45.i = icmp sgt i32 %36, 1
  br i1 %cmp45.i, label %do.end49.i, label %if.end36.i.do.end55.i_crit_edge

if.end36.i.do.end55.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55.i

do.end49.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reqbufs, align 4
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, i32 noundef 524, i32 noundef %38) #11
  br label %do.end55.i

do.end55.i:                                       ; preds = %do.end49.i, %if.end36.i.do.end55.i_crit_edge
  %vq_dst56.i = getelementptr i8, ptr %priv, i32 780
  %call57.i = tail call i32 @vb2_reqbufs(ptr noundef %vq_dst56.i, ptr noundef %reqbufs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %do.end55.i.do.end154.i_crit_edge

do.end55.i.do.end154.i_crit_edge:                 ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end154.i

if.end60.i:                                       ; preds = %do.end55.i
  %39 = ptrtoint ptr %capture_state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %capture_state.i, align 4
  %40 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reqbufs, align 4
  %total_dpb_count.i = getelementptr i8, ptr %priv, i32 3004
  %42 = ptrtoint ptr %total_dpb_count.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %total_dpb_count.i, align 4
  %mfc_ops63.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %43 = ptrtoint ptr %mfc_ops63.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mfc_ops63.i, align 4
  %tobool64.not.i = icmp eq ptr %44, null
  br i1 %tobool64.not.i, label %if.end60.i.do.end79.i_crit_edge, label %land.lhs.true65.i

if.end60.i.do.end79.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79.i

land.lhs.true65.i:                                ; preds = %if.end60.i
  %alloc_codec_buffers.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %alloc_codec_buffers.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %alloc_codec_buffers.i, align 4
  %tobool67.not.i = icmp eq ptr %46, null
  br i1 %tobool67.not.i, label %land.lhs.true65.i.do.end79.i_crit_edge, label %cond.true68.i

land.lhs.true65.i.do.end79.i_crit_edge:           ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79.i

cond.true68.i:                                    ; preds = %land.lhs.true65.i
  %call71.i = tail call i32 %46(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %phi.cmp.i = icmp eq i32 %call71.i, 0
  br i1 %phi.cmp.i, label %if.end88.i, label %cond.true68.i.do.end79.i_crit_edge

cond.true68.i.do.end79.i_crit_edge:               ; preds = %cond.true68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79.i

do.end79.i:                                       ; preds = %cond.true68.i.do.end79.i_crit_edge, %land.lhs.true65.i.do.end79.i_crit_edge, %if.end60.i.do.end79.i_crit_edge
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.97, i32 noundef 534) #11
  %47 = ptrtoint ptr %reqbufs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %reqbufs, align 4
  %call86.i = tail call i32 @vb2_reqbufs(ptr noundef %vq_dst56.i, ptr noundef %reqbufs) #8
  %48 = ptrtoint ptr %capture_state.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %capture_state.i, align 4
  br label %do.end154.i

if.end88.i:                                       ; preds = %cond.true68.i
  %49 = ptrtoint ptr %dst_bufs_cnt17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dst_bufs_cnt17.i, align 4
  %51 = ptrtoint ptr %total_dpb_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total_dpb_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp92.not.i = icmp eq i32 %50, %52
  br i1 %cmp92.not.i, label %if.end88.i.if.end114.i_crit_edge, label %do.end108.i, !prof !271

if.end88.i.if.end114.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i

do.end108.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 542, i32 noundef 9, ptr noundef null) #8
  br label %if.end114.i

if.end114.i:                                      ; preds = %do.end108.i, %if.end88.i.if.end114.i_crit_edge
  %53 = ptrtoint ptr %capture_state.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %capture_state.i, align 4
  %call123.i = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool124.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool124.not.i, label %if.end114.i.if.end126.i_crit_edge, label %if.then125.i

if.end114.i.if.end126.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126.i

if.then125.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_work_bit_irqsave(ptr noundef %add.ptr) #8
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then125.i, %if.end114.i.if.end126.i_crit_edge
  %54 = ptrtoint ptr %mfc_ops63.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mfc_ops63.i, align 4
  %tobool128.not.i = icmp eq ptr %55, null
  br i1 %tobool128.not.i, label %if.end126.i.cond.end136.i_crit_edge, label %land.lhs.true129.i

if.end126.i.cond.end136.i_crit_edge:              ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end136.i

land.lhs.true129.i:                               ; preds = %if.end126.i
  %try_run.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %try_run.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %try_run.i, align 4
  %tobool131.not.i = icmp eq ptr %57, null
  br i1 %tobool131.not.i, label %land.lhs.true129.i.cond.end136.i_crit_edge, label %cond.true132.i

land.lhs.true129.i.cond.end136.i_crit_edge:       ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end136.i

cond.true132.i:                                   ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %57(ptr noundef %1) #8
  br label %cond.end136.i

cond.end136.i:                                    ; preds = %cond.true132.i, %land.lhs.true129.i.cond.end136.i_crit_edge, %if.end126.i.cond.end136.i_crit_edge
  %call137.i = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %add.ptr, i32 noundef 4, i32 noundef 0) #8
  br label %out.i44

do.end142.i:                                      ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #10
  %call144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.97, i32 noundef 551) #11
  br label %do.end154.i

out.i44:                                          ; preds = %cond.end136.i, %cond.end.i
  tail call void @s5p_mfc_clock_off() #8
  br label %cleanup

do.end154.i:                                      ; preds = %do.end142.i, %do.end79.i, %do.end55.i.do.end154.i_crit_edge, %do.end6.i41.do.end154.i_crit_edge
  %ret.0.ph.i45 = phi i32 [ -22, %do.end142.i ], [ -12, %do.end79.i ], [ %call57.i, %do.end55.i.do.end154.i_crit_edge ], [ %call7.i39, %do.end6.i41.do.end154.i_crit_edge ]
  tail call void @s5p_mfc_clock_off() #8
  %call156.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.97, i32 noundef 557) #11
  br label %cleanup

do.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef 578) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end154.i, %out.i44, %do.end92.i, %out.i, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end20 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %ret.0.ph.i, %do.end92.i ], [ 0, %out.i ], [ %ret.0.ph.i45, %do.end154.i ], [ 0, %out.i44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querybuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 8
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i32 noundef 592) #11
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp6 = icmp sgt i32 %2, 1
  br i1 %cmp6, label %do.end10, label %do.body5.do.end15_crit_edge

do.body5.do.end15_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr i8, ptr %priv, i32 1320
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110, i32 noundef 595, i32 noundef %4, i32 noundef %6) #11
  br label %do.end15

do.end15:                                         ; preds = %do.end10, %do.body5.do.end15_crit_edge
  %state16 = getelementptr i8, ptr %priv, i32 1320
  %7 = ptrtoint ptr %state16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state16, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %8, label %do.end15.do.end35_crit_edge [
    i32 101, label %land.lhs.true
    i32 105, label %land.lhs.true24
  ]

do.end15.do.end35_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

land.lhs.true:                                    ; preds = %do.end15
  %type18 = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %type18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp19 = icmp eq i32 %11, 10
  br i1 %cmp19, label %if.then20, label %land.lhs.true.do.end35_crit_edge

land.lhs.true.do.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %vq_src = getelementptr i8, ptr %priv, i32 268
  %call21 = tail call i32 @vb2_querybuf(ptr noundef %vq_src, ptr noundef %buf) #8
  br label %do.body42

land.lhs.true24:                                  ; preds = %do.end15
  %type25 = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %type25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp26 = icmp eq i32 %13, 9
  br i1 %cmp26, label %if.then27, label %land.lhs.true24.do.end35_crit_edge

land.lhs.true24.do.end35_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

if.then27:                                        ; preds = %land.lhs.true24
  %vq_dst = getelementptr i8, ptr %priv, i32 780
  %call28 = tail call i32 @vb2_querybuf(ptr noundef %vq_dst, ptr noundef %buf) #8
  %length = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 10
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2969.not = icmp eq i32 %15, 0
  br i1 %cmp2969.not, label %if.then27.do.body42_crit_edge, label %for.body.lr.ph

if.then27.do.body42_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

for.body.lr.ph:                                   ; preds = %if.then27
  %m = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m, align 8
  %m30 = getelementptr %struct.v4l2_plane, ptr %17, i32 %i.070, i32 2
  %18 = ptrtoint ptr %m30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m30, align 4
  %add = add i32 %19, 1073741824
  store i32 %add, ptr %m30, align 4
  %inc = add nuw i32 %i.070, 1
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  %cmp29 = icmp ult i32 %inc, %21
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.do.body42_crit_edge

for.body.do.body42_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end35:                                         ; preds = %land.lhs.true24.do.end35_crit_edge, %land.lhs.true.do.end35_crit_edge, %do.end15.do.end35_crit_edge
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.110, i32 noundef 605) #11
  br label %do.body42

do.body42:                                        ; preds = %do.end35, %for.body.do.body42_crit_edge, %if.then27.do.body42_crit_edge, %if.then20
  %ret.0 = phi i32 [ %call21, %if.then20 ], [ -22, %do.end35 ], [ %call28, %if.then27.do.body42_crit_edge ], [ %call28, %for.body.do.body42_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %22 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp43 = icmp sgt i32 %22, 4
  br i1 %cmp43, label %do.end47, label %do.body42.cleanup_crit_edge

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end47:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.110, i32 noundef 608) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %do.body42.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %do.end47 ], [ %ret.0, %do.body42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_qbuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %priv, i32 1320
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %1)
  %cmp = icmp eq i32 %1, 109
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef 618) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 10, label %if.then6
    i32 9, label %if.then10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %vq_src = getelementptr i8, ptr %priv, i32 268
  %call7 = tail call i32 @vb2_qbuf(ptr noundef %vq_src, ptr noundef null, ptr noundef %buf) #8
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %vq_dst = getelementptr i8, ptr %priv, i32 780
  %call11 = tail call i32 @vb2_qbuf(ptr noundef %vq_dst, ptr noundef null, ptr noundef %buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call7, %if.then6 ], [ %call11, %if.then10 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_expbuf(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %eb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eb, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 10, label %entry.cleanup.sink.split_crit_edge
    i32 9, label %if.then3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 780, %if.then3 ], [ 268, %entry.cleanup.sink.split_crit_edge ]
  %vq_dst = getelementptr i8, ptr %priv, i32 %.sink
  %call4 = tail call i32 @vb2_expbuf(ptr noundef %vq_dst, ptr noundef %eb) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_dqbuf(ptr nocapture noundef readonly %file, ptr noundef %priv, ptr noundef %buf) #1 align 64 {
entry:
  %ev = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev) #8
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
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vidioc_dqbuf._rs, ptr noundef nonnull @__func__.vidioc_dqbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.vidioc_dqbuf, i32 noundef 638) #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %5, label %if.end7.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 9, label %sw.bb10
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %vq_src = getelementptr i8, ptr %priv, i32 268
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8 = icmp ne i32 %and, 0
  %call9 = tail call i32 @vb2_dqbuf(ptr noundef %vq_src, ptr noundef %buf, i1 noundef zeroext %tobool8) #8
  br label %cleanup

sw.bb10:                                          ; preds = %if.end7
  %vq_dst = getelementptr i8, ptr %priv, i32 780
  %f_flags11 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags11, align 4
  %and12 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13 = icmp ne i32 %and12, 0
  %call14 = tail call i32 @vb2_dqbuf(ptr noundef %vq_dst, ptr noundef %buf, i1 noundef zeroext %tobool13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %sw.bb10
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %12)
  %cmp19 = icmp eq i32 %12, 107
  br i1 %cmp19, label %land.lhs.true, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end17
  %dst_bufs = getelementptr i8, ptr %priv, i32 2188
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 8
  %arrayidx = getelementptr [32 x %struct.s5p_mfc_buf], ptr %dst_bufs, i32 0, i32 %14
  %flags = getelementptr inbounds %struct.s5p_mfc_buf, ptr %arrayidx, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and20 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.cleanup_crit_edge, label %if.then22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @v4l2_event_queue_fh(ptr noundef %priv, ptr noundef nonnull %ev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %land.lhs.true.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb, %if.end7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.bb ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ %call14, %sw.bb10.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamon(ptr nocapture noundef readnone %file, ptr noundef %priv, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.123, i32 noundef 679) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %type, label %do.end4.do.body13_crit_edge [
    i32 10, label %do.end4.do.body13.sink.split_crit_edge
    i32 9, label %if.then9
  ]

do.end4.do.body13.sink.split_crit_edge:           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13.sink.split

do.end4.do.body13_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

if.then9:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13.sink.split

do.body13.sink.split:                             ; preds = %if.then9, %do.end4.do.body13.sink.split_crit_edge
  %.sink28 = phi i32 [ 780, %if.then9 ], [ 268, %do.end4.do.body13.sink.split_crit_edge ]
  %vq_src = getelementptr i8, ptr %priv, i32 %.sink28
  %call7 = tail call i32 @vb2_streamon(ptr noundef %vq_src, i32 noundef %type) #8
  br label %do.body13

do.body13:                                        ; preds = %do.body13.sink.split, %do.end4.do.body13_crit_edge
  %ret.0 = phi i32 [ -22, %do.end4.do.body13_crit_edge ], [ %call7, %do.body13.sink.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp14 = icmp sgt i32 %2, 4
  br i1 %cmp14, label %do.end18, label %do.body13.do.end23_crit_edge

do.body13.do.end23_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.123, i32 noundef 684) #11
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body13.do.end23_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamoff(ptr nocapture noundef readnone %file, ptr noundef %priv, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 10, label %entry.cleanup.sink.split_crit_edge
    i32 9, label %if.then2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 780, %if.then2 ], [ 268, %entry.cleanup.sink.split_crit_edge ]
  %vq_dst = getelementptr i8, ptr %priv, i32 %.sink9
  %call3 = tail call i32 @vb2_streamoff(ptr noundef %vq_dst, i32 noundef %type) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_selection(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr nocapture noundef %s) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %priv, i32 1320
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %5, label %do.end [
    i32 102, label %if.end.if.end16_crit_edge
    i32 105, label %if.end.if.end16_crit_edge141
    i32 106, label %if.end.if.end16_crit_edge142
    i32 107, label %if.end.if.end16_crit_edge143
  ]

if.end.if.end16_crit_edge143:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.if.end16_crit_edge142:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.if.end16_crit_edge141:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i32 noundef 781) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %if.end.if.end16_crit_edge141, %if.end.if.end16_crit_edge142, %if.end.if.end16_crit_edge143
  %src_fmt = getelementptr i8, ptr %priv, i32 260
  %7 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src_fmt, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %10)
  %cmp17 = icmp eq i32 %10, 875967048
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %11 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then18.cond.end35_crit_edge, label %land.lhs.true19

if.then18.cond.end35_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end35

land.lhs.true19:                                  ; preds = %if.then18
  %get_crop_info_h = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %get_crop_info_h to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_crop_info_h, align 4
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %land.lhs.true19.cond.end_crit_edge, label %cond.true

land.lhs.true19.cond.end_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 %14(ptr noundef %add.ptr) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true19.cond.end_crit_edge
  %cond.ph = phi i32 [ -19, %land.lhs.true19.cond.end_crit_edge ], [ %call24, %cond.true ]
  %15 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %mfc_ops, align 4
  %shr = lshr i32 %cond.ph, 16
  %and = and i32 %cond.ph, 65535
  %tobool26.not = icmp eq ptr %.pr, null
  br i1 %tobool26.not, label %cond.end.cond.end35_crit_edge, label %land.lhs.true27

cond.end.cond.end35_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end35

land.lhs.true27:                                  ; preds = %cond.end
  %get_crop_info_v = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr, i32 0, i32 36
  %16 = ptrtoint ptr %get_crop_info_v to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_crop_info_v, align 4
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %land.lhs.true27.cond.end35_crit_edge, label %cond.true30

land.lhs.true27.cond.end35_crit_edge:             ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end35

cond.true30:                                      ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 %17(ptr noundef %add.ptr) #8
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true30, %land.lhs.true27.cond.end35_crit_edge, %cond.end.cond.end35_crit_edge, %if.then18.cond.end35_crit_edge
  %and139 = phi i32 [ %and, %cond.true30 ], [ %and, %land.lhs.true27.cond.end35_crit_edge ], [ %and, %cond.end.cond.end35_crit_edge ], [ 65517, %if.then18.cond.end35_crit_edge ]
  %shr138 = phi i32 [ %shr, %cond.true30 ], [ %shr, %land.lhs.true27.cond.end35_crit_edge ], [ %shr, %cond.end.cond.end35_crit_edge ], [ 65535, %if.then18.cond.end35_crit_edge ]
  %cond36 = phi i32 [ %call33, %cond.true30 ], [ -19, %land.lhs.true27.cond.end35_crit_edge ], [ -19, %cond.end.cond.end35_crit_edge ], [ -19, %if.then18.cond.end35_crit_edge ]
  %shr37 = lshr i32 %cond36, 16
  %and38 = and i32 %cond36, 65535
  %img_width = getelementptr i8, ptr %priv, i32 1328
  %18 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %img_width, align 4
  %20 = add nuw nsw i32 %shr138, %and139
  %sub39 = sub i32 %19, %20
  %img_height = getelementptr i8, ptr %priv, i32 1332
  %21 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %img_height, align 4
  %23 = add nuw nsw i32 %and38, %shr37
  %sub41 = sub i32 %22, %23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %24 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp43 = icmp sgt i32 %24, 1
  br i1 %cmp43, label %do.end47, label %cond.end35.if.end75_crit_edge

cond.end35.if.end75_crit_edge:                    ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end47:                                         ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #10
  %width49 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %width49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width49, align 4
  %height51 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %height51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height51, align 4
  %buf_width = getelementptr i8, ptr %priv, i32 1336
  %29 = ptrtoint ptr %buf_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_width, align 4
  %buf_height = getelementptr i8, ptr %priv, i32 1340
  %31 = ptrtoint ptr %buf_height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_height, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.127, i32 noundef 795, i32 noundef %and139, i32 noundef %and38, i32 noundef %26, i32 noundef %28, i32 noundef %shr138, i32 noundef %shr37, i32 noundef %30, i32 noundef %32) #11
  br label %if.end75

if.else:                                          ; preds = %if.end16
  %img_width56 = getelementptr i8, ptr %priv, i32 1328
  %33 = ptrtoint ptr %img_width56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %img_width56, align 4
  %img_height57 = getelementptr i8, ptr %priv, i32 1332
  %35 = ptrtoint ptr %img_height57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %img_height57, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %37 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp59 = icmp sgt i32 %37, 1
  br i1 %cmp59, label %do.end63, label %if.else.if.end75_crit_edge

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end63:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %width66 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %width66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %width66, align 4
  %height68 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %height68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height68, align 4
  %buf_width69 = getelementptr i8, ptr %priv, i32 1336
  %42 = ptrtoint ptr %buf_width69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_width69, align 4
  %buf_height70 = getelementptr i8, ptr %priv, i32 1340
  %44 = ptrtoint ptr %buf_height70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_height70, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.127, i32 noundef 803, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #11
  br label %if.end75

if.end75:                                         ; preds = %do.end63, %if.else.if.end75_crit_edge, %do.end47, %cond.end35.if.end75_crit_edge
  %left.0 = phi i32 [ %and139, %do.end47 ], [ %and139, %cond.end35.if.end75_crit_edge ], [ 0, %do.end63 ], [ 0, %if.else.if.end75_crit_edge ]
  %top.0 = phi i32 [ %and38, %do.end47 ], [ %and38, %cond.end35.if.end75_crit_edge ], [ 0, %do.end63 ], [ 0, %if.else.if.end75_crit_edge ]
  %width.0 = phi i32 [ %sub39, %do.end47 ], [ %sub39, %cond.end35.if.end75_crit_edge ], [ %34, %do.end63 ], [ %34, %if.else.if.end75_crit_edge ]
  %height.0 = phi i32 [ %sub41, %do.end47 ], [ %sub41, %cond.end35.if.end75_crit_edge ], [ %36, %do.end63 ], [ %36, %if.else.if.end75_crit_edge ]
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %46 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %target, align 4
  %.off = add i32 %47, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %r76 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %48 = ptrtoint ptr %r76 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %left.0, ptr %r76, align 4
  %top79 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %top79 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %top.0, ptr %top79, align 4
  %width81 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %width81 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %width.0, ptr %width81, align 4
  %height83 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %height83 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %height.0, ptr %height83, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end75.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_decoder_cmd(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr nocapture noundef readonly %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %priv, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %flags3 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %streaming.i = getelementptr i8, ptr %priv, i32 716
  %6 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.body6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %irqlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 12
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #8
  %src_queue = getelementptr i8, ptr %priv, i32 1292
  %7 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i.not = icmp eq ptr %8, %src_queue
  br i1 %cmp.i.not, label %do.end18, label %do.end36

do.end18:                                         ; preds = %do.body6
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 839) #11
  %state = getelementptr i8, ptr %priv, i32 1320
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 106, ptr %state, align 4
  %call23 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end18.if.end26_crit_edge, label %if.then25

do.end18.if.end26_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_work_bit_irqsave(ptr noundef %add.ptr) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.end18.if.end26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call10) #8
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %10 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mfc_ops, align 4
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %land.lhs.true

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end26
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %try_run, align 4
  %tobool30.not = icmp eq ptr %13, null
  br i1 %tobool30.not, label %land.lhs.true.cleanup_crit_edge, label %cond.true

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %1) #8
  br label %cleanup

do.end36:                                         ; preds = %do.body6
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135, i32 noundef 846) #11
  %prev = getelementptr i8, ptr %priv, i32 1296
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev, align 4
  %flags45 = getelementptr i8, ptr %15, i32 16
  %16 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags45, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  %state48 = getelementptr i8, ptr %priv, i32 1320
  %18 = ptrtoint ptr %state48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 106, ptr %state48, align 4
  br label %if.end51

if.else49:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %17, 2
  %19 = ptrtoint ptr %flags45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %flags45, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %cond.true, %land.lhs.true.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end51 ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %cond.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_subscribe_event(ptr noundef %fh, ptr noundef %sub) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 5, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 2, ptr noundef null) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %fh, ptr noundef %sub) #8
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_open_mfc_inst(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_dec_g_v_ctrl(ptr nocapture noundef %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963815, i32 %5)
  %cond = icmp eq i32 %5, 9963815
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  %13 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %7, label %do.end [
    i32 100, label %if.else.if.end11_crit_edge
    i32 114, label %if.else.if.end11_crit_edge48
  ]

if.else.if.end11_crit_edge48:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name) #11
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.else.if.end11_crit_edge48
  %call12 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 0) #8
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %16 = add i32 %15, -102
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %if.then18, label %do.end24

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %pb_count19 = getelementptr i8, ptr %1, i32 -1044
  %18 = ptrtoint ptr %pb_count19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pb_count19, align 4
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val20, align 4
  br label %cleanup

do.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %name27 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name27) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.then18, %do.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end24 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_dec_s_ctrl(ptr nocapture noundef readonly %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %3, label %do.end [
    i32 10031360, label %entry.sw.bb_crit_edge
    i32 10029965, label %entry.sw.bb_crit_edge21
    i32 10031361, label %entry.sw.bb1_crit_edge
    i32 10029966, label %entry.sw.bb1_crit_edge22
    i32 10029525, label %sw.bb3
    i32 10029524, label %sw.bb5
  ]

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %display_delay = getelementptr i8, ptr %1, i32 -1060
  %7 = ptrtoint ptr %display_delay to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %display_delay, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge22
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %display_delay_enable = getelementptr i8, ptr %1, i32 -1056
  %10 = ptrtoint ptr %display_delay_enable to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %display_delay_enable, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val4, align 4
  %loop_filter_mpeg4 = getelementptr i8, ptr %1, i32 -1064
  %13 = ptrtoint ptr %loop_filter_mpeg4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %loop_filter_mpeg4, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val6, align 4
  %slice_interface = getelementptr i8, ptr %1, i32 -1068
  %16 = ptrtoint ptr %slice_interface to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %slice_interface, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.144, i32 noundef 722, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !215, !216, !218, !219, !220, !222, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !249, !251, !252, !253, !254, !256, !257, !259, !260, !261}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @s5p_mfc_dec_ctrls_setup._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 1137, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 1139, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @s5p_mfc_dec_ctrls_setup._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @s5p_mfc_dec_ctrls_setup._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 1167, i32 4}
!11 = !{ptr @s5p_mfc_dec_ctrls_setup._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @s5p_mfc_dec_ctrls_setup._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 1197, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @s5p_mfc_dec_init._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @s5p_mfc_dec_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @decoder_codec_ops, !19, !"decoder_codec_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 258, i32 39}
!20 = !{ptr @s5p_mfc_dec_qops, !21, !"s5p_mfc_dec_qops", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 1104, i32 23}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 932, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @s5p_mfc_queue_setup._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @s5p_mfc_queue_setup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 936, i32 2}
!29 = !{ptr @s5p_mfc_queue_setup._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @s5p_mfc_queue_setup._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 953, i32 3}
!33 = !{ptr @s5p_mfc_queue_setup._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @s5p_mfc_queue_setup._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 972, i32 5}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @s5p_mfc_buf_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @s5p_mfc_buf_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 978, i32 4}
!42 = !{ptr @s5p_mfc_buf_init._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @s5p_mfc_buf_init._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 991, i32 4}
!46 = !{ptr @s5p_mfc_buf_init._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @s5p_mfc_buf_init._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 995, i32 4}
!50 = !{ptr @s5p_mfc_buf_init._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @s5p_mfc_buf_init._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 1005, i32 3}
!54 = !{ptr @s5p_mfc_buf_init._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @s5p_mfc_buf_init._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 254, i32 2}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @s5p_mfc_ctx_ready._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @s5p_mfc_ctx_ready._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 1058, i32 5}
!63 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @s5p_mfc_stop_streaming._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @s5p_mfc_stop_streaming._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 1097, i32 3}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @s5p_mfc_buf_queue._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @s5p_mfc_buf_queue._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @s5p_mfc_dec_ioctl_ops, !72, !"s5p_mfc_dec_ioctl_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 877, i32 36}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 271, i32 23}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 273, i32 49}
!77 = !{ptr @formats, !78, !"formats", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 30, i32 27}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 321, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @vidioc_g_fmt._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @vidioc_g_fmt._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 362, i32 3}
!86 = !{ptr @vidioc_g_fmt._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @vidioc_g_fmt._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 363, i32 3}
!90 = !{ptr @vidioc_g_fmt._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @vidioc_g_fmt._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 366, i32 2}
!94 = !{ptr @vidioc_g_fmt._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @vidioc_g_fmt._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 415, i32 2}
!98 = !{ptr @vidioc_s_fmt._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vidioc_s_fmt._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 421, i32 3}
!102 = !{ptr @vidioc_s_fmt._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @vidioc_s_fmt._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 434, i32 3}
!106 = !{ptr @vidioc_s_fmt._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @vidioc_s_fmt._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 449, i32 3}
!110 = !{ptr @vidioc_s_fmt._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @vidioc_s_fmt._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @vidioc_s_fmt._entry.60, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 455, i32 2}
!114 = !{ptr @vidioc_s_fmt._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 376, i32 2}
!117 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vidioc_try_fmt._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @vidioc_try_fmt._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 380, i32 4}
!122 = !{ptr @vidioc_try_fmt._entry.64, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @vidioc_try_fmt._entry_ptr.66, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 384, i32 4}
!126 = !{ptr @vidioc_try_fmt._entry.67, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @vidioc_try_fmt._entry_ptr.69, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 388, i32 4}
!130 = !{ptr @vidioc_try_fmt._entry.70, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @vidioc_try_fmt._entry_ptr.72, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 394, i32 4}
!134 = !{ptr @vidioc_try_fmt._entry.73, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @vidioc_try_fmt._entry_ptr.75, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @vidioc_try_fmt._entry.76, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 398, i32 4}
!138 = !{ptr @vidioc_try_fmt._entry_ptr.77, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.78, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 569, i32 3}
!141 = !{ptr @.str.79, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @vidioc_reqbufs._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @vidioc_reqbufs._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.81, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 578, i32 3}
!146 = !{ptr @vidioc_reqbufs._entry.80, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @vidioc_reqbufs._entry_ptr.82, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.83, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 467, i32 3}
!150 = !{ptr @.str.84, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @reqbufs_output._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @reqbufs_output._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.86, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 477, i32 4}
!155 = !{ptr @reqbufs_output._entry.85, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @reqbufs_output._entry_ptr.87, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.89, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 482, i32 3}
!159 = !{ptr @reqbufs_output._entry.88, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @reqbufs_output._entry_ptr.90, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.92, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 497, i32 3}
!163 = !{ptr @reqbufs_output._entry.91, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @reqbufs_output._entry_ptr.93, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.95, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 503, i32 3}
!167 = !{ptr @reqbufs_output._entry.94, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @reqbufs_output._entry_ptr.96, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.97, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 515, i32 3}
!171 = !{ptr @reqbufs_capture._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @reqbufs_capture._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.99, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 523, i32 3}
!175 = !{ptr @reqbufs_capture._entry.98, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @reqbufs_capture._entry_ptr.100, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.102, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 534, i32 4}
!179 = !{ptr @reqbufs_capture._entry.101, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @reqbufs_capture._entry_ptr.103, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @reqbufs_capture._entry.104, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 551, i32 3}
!183 = !{ptr @reqbufs_capture._entry_ptr.105, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 557, i32 3}
!186 = !{ptr @reqbufs_capture._entry.106, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @reqbufs_capture._entry_ptr.108, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.109, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 592, i32 3}
!190 = !{ptr @.str.110, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @vidioc_querybuf._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @vidioc_querybuf._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.112, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 595, i32 2}
!195 = !{ptr @vidioc_querybuf._entry.111, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @vidioc_querybuf._entry_ptr.113, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.115, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 605, i32 3}
!199 = !{ptr @vidioc_querybuf._entry.114, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @vidioc_querybuf._entry_ptr.116, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @vidioc_querybuf._entry.117, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 608, i32 2}
!203 = !{ptr @vidioc_querybuf._entry_ptr.118, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.119, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 618, i32 3}
!206 = !{ptr @.str.120, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @vidioc_qbuf._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @vidioc_qbuf._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.121, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 638, i32 3}
!211 = !{ptr @vidioc_dqbuf._rs, !210, !"_rs", i1 false, i1 false}
!212 = !{ptr @__func__.vidioc_dqbuf, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.122, !210, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @vidioc_dqbuf._entry, !210, !"_entry", i1 false, i1 false}
!215 = !{ptr @vidioc_dqbuf._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.123, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 679, i32 2}
!218 = !{ptr @vidioc_streamon._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @vidioc_streamon._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @vidioc_streamon._entry.124, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 684, i32 2}
!222 = !{ptr @vidioc_streamon._entry_ptr.125, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.126, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 781, i32 3}
!225 = !{ptr @.str.127, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @vidioc_g_selection._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @vidioc_g_selection._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.129, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 793, i32 3}
!230 = !{ptr @vidioc_g_selection._entry.128, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @vidioc_g_selection._entry_ptr.130, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.132, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 801, i32 3}
!234 = !{ptr @vidioc_g_selection._entry.131, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @vidioc_g_selection._entry_ptr.133, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.134, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 839, i32 4}
!238 = !{ptr @.str.135, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @vidioc_decoder_cmd._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @vidioc_decoder_cmd._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.137, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 846, i32 4}
!243 = !{ptr @vidioc_decoder_cmd._entry.136, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @vidioc_decoder_cmd._entry_ptr.138, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @controls, !246, !"controls", i1 false, i1 false}
!246 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 160, i32 27}
!247 = !{ptr @s5p_mfc_dec_ctrl_ops, !248, !"s5p_mfc_dec_ctrl_ops", i1 false, i1 false}
!248 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 760, i32 35}
!249 = !{ptr @.str.139, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 741, i32 4}
!251 = !{ptr @.str.140, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @s5p_mfc_dec_g_v_ctrl._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @s5p_mfc_dec_g_v_ctrl._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @s5p_mfc_dec_g_v_ctrl._entry.141, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 751, i32 4}
!256 = !{ptr @s5p_mfc_dec_g_v_ctrl._entry_ptr.142, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.143, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c", i32 722, i32 3}
!259 = !{ptr @.str.144, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @s5p_mfc_dec_s_ctrl._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @s5p_mfc_dec_s_ctrl._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{!"branch_weights", i32 2000, i32 1}
