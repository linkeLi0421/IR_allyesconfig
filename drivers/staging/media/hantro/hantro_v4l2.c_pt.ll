; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_v4l2.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hantro_ctx = type { ptr, %struct.v4l2_fh, i8, i32, i32, ptr, %struct.v4l2_pix_format_mplane, ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_ctrl_handler, i32, ptr, %struct.hantro_postproc_ctx, %union.anon.114 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hantro_postproc_ctx = type { [32 x %struct.hantro_aux_buf] }
%struct.hantro_aux_buf = type { ptr, i32, i32, i32 }
%union.anon.114 = type { %struct.hantro_vp9_dec_hw_ctx }
%struct.hantro_vp9_dec_hw_ctx = type { %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_context, [4 x %struct.v4l2_vp9_frame_context], %struct.hantro_vp9_frame_info, %struct.hantro_vp9_frame_info, i32, i32, i32, i32, [34 x i16], [64 x i16], i32, i32, i32, i32, i32, [8 x i8], [8 x [4 x i16]] }
%struct.v4l2_vp9_frame_symbol_counts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [2 x [2 x [6 x [6 x ptr]]]]], [4 x [2 x [2 x [6 x [6 x [2 x ptr]]]]]] }
%struct.v4l2_vp9_frame_context = type { [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [2 x [2 x [6 x [6 x [3 x i8]]]]]], [3 x i8], [7 x [3 x i8]], [4 x [2 x i8]], [4 x i8], [5 x i8], [5 x [2 x i8]], [5 x i8], [4 x [9 x i8]], [10 x [9 x i8]], [16 x [3 x i8]], %struct.v4l2_vp9_frame_mv_context }
%struct.v4l2_vp9_frame_mv_context = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.hantro_vp9_frame_info = type { i16, i32, i64 }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hantro_variant = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.hantro_fmt = type { ptr, i32, i32, i32, i32, i32, %struct.v4l2_frmsize_stepwise, i8 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.107, [2 x i32] }
%union.anon.107 = type { %struct.v4l2_frmsize_stepwise }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.hantro_codec_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }

@hantro_ioctl_ops = dso_local constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_cap_mplane, ptr @vidioc_g_fmt_out_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_cap_mplane, ptr @vidioc_s_fmt_out_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_cap_mplane, ptr @vidioc_try_fmt_out_mplane, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@hantro_queue_ops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @hantro_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @hantro_buf_out_validate, ptr null, ptr @hantro_buf_prepare, ptr null, ptr null, ptr @hantro_start_streaming, ptr @hantro_stop_streaming, ptr @hantro_buf_queue, ptr @hantro_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@hantro_set_fmt_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:%d: CAPTURE codec mode: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hantro_set_fmt_cap\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/hantro/hantro_v4l2.c\00", [53 x i8] zeroinitializer }, align 32
@hantro_set_fmt_cap._entry_ptr = internal global ptr @hantro_set_fmt_cap._entry, section ".printk_index", align 4
@hantro_set_fmt_cap._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s:%d: fmt - w: %d, h: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@hantro_set_fmt_cap._entry_ptr.5 = internal global ptr @hantro_set_fmt_cap._entry.3, section ".printk_index", align 4
@hantro_try_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:%d: trying format %c%c%c%c\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hantro_try_fmt\00", [17 x i8] zeroinitializer }, align 32
@hantro_try_fmt._entry_ptr = internal global ptr @hantro_try_fmt._entry, section ".printk_index", align 4
@hantro_set_fmt_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:%d: OUTPUT codec mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hantro_set_fmt_out\00", [45 x i8] zeroinitializer }, align 32
@hantro_set_fmt_out._entry_ptr = internal global ptr @hantro_set_fmt_out._entry, section ".printk_index", align 4
@hantro_set_fmt_out._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hantro_set_fmt_out._entry_ptr.11 = internal global ptr @hantro_set_fmt_out._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform: %s\00", [19 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_cap_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s:%d: f->type = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vidioc_g_fmt_cap_mplane\00", [40 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_cap_mplane._entry_ptr = internal global ptr @vidioc_g_fmt_cap_mplane._entry, section ".printk_index", align 4
@vidioc_g_fmt_out_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vidioc_g_fmt_out_mplane\00", [40 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_out_mplane._entry_ptr = internal global ptr @vidioc_g_fmt_out_mplane._entry, section ".printk_index", align 4
@vidioc_enum_framesizes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s:%d: invalid frame size index (expected 0, got %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_enum_framesizes\00", [41 x i8] zeroinitializer }, align 32
@vidioc_enum_framesizes._entry_ptr = internal global ptr @vidioc_enum_framesizes._entry, section ".printk_index", align 4
@vidioc_enum_framesizes._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s:%d: unsupported bitstream format (%08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@vidioc_enum_framesizes._entry_ptr.20 = internal global ptr @vidioc_enum_framesizes._entry.18, section ".printk_index", align 4
@hantro_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s:%d: invalid queue type: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hantro_queue_setup\00", [45 x i8] zeroinitializer }, align 32
@hantro_queue_setup._entry_ptr = internal global ptr @hantro_queue_setup._entry, section ".printk_index", align 4
@hantro_buf_plane_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:%d: plane %d size: %ld, sizeimage: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hantro_buf_plane_check\00", [41 x i8] zeroinitializer }, align 32
@hantro_buf_plane_check._entry_ptr = internal global ptr @hantro_buf_plane_check._entry, section ".printk_index", align 4
@hantro_buf_plane_check._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%d: plane %d is too small for output\0A\00", [53 x i8] zeroinitializer }, align 32
@hantro_buf_plane_check._entry_ptr.27 = internal global ptr @hantro_buf_plane_check._entry.25, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@hantro_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: Codec mode = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hantro_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@hantro_start_streaming._entry_ptr = internal global ptr @hantro_start_streaming._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.32 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.33 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.34 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.35 = internal global [8 x i64] [i64 6, i64 32, i64 875967059, i64 892744275, i64 1178095702, i64 1178161238, i64 1195724874, i64 1395803981]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 875967059, i64 892744275, i64 1178095702, i64 1178161238, i64 1195724874, i64 1395803981]
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"hantro_ioctl_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 557, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"hantro_queue_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 774, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 536, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 537, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 245, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 476, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 477, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 49 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 228, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 215, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 120, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 127, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 602, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 630, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 633, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1163, i32 7 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [46 x i8] c"../drivers/staging/media/hantro/hantro_v4l2.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 698, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @hantro_buf_plane_check._entry, ptr @hantro_buf_plane_check._entry.25, ptr @hantro_buf_plane_check._entry_ptr, ptr @hantro_buf_plane_check._entry_ptr.27, ptr @hantro_queue_setup._entry, ptr @hantro_queue_setup._entry_ptr, ptr @hantro_set_fmt_cap._entry, ptr @hantro_set_fmt_cap._entry.3, ptr @hantro_set_fmt_cap._entry_ptr, ptr @hantro_set_fmt_cap._entry_ptr.5, ptr @hantro_set_fmt_out._entry, ptr @hantro_set_fmt_out._entry.10, ptr @hantro_set_fmt_out._entry_ptr, ptr @hantro_set_fmt_out._entry_ptr.11, ptr @hantro_start_streaming._entry, ptr @hantro_start_streaming._entry_ptr, ptr @hantro_try_fmt._entry, ptr @hantro_try_fmt._entry_ptr, ptr @vidioc_enum_framesizes._entry, ptr @vidioc_enum_framesizes._entry.18, ptr @vidioc_enum_framesizes._entry_ptr, ptr @vidioc_enum_framesizes._entry_ptr.20, ptr @vidioc_g_fmt_cap_mplane._entry, ptr @vidioc_g_fmt_cap_mplane._entry_ptr, ptr @vidioc_g_fmt_out_mplane._entry, ptr @vidioc_g_fmt_out_mplane._entry_ptr, ptr @hantro_ioctl_ops, ptr @hantro_queue_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_queue_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_set_fmt_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_set_fmt_cap._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_try_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_set_fmt_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_set_fmt_out._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_cap_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_out_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_framesizes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_framesizes._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_buf_plane_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_buf_plane_check._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_reset_fmts(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_encoder.i.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %is_encoder.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_encoder.i.i.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %variant4.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %variant4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant4.i.i.i, align 8
  %dec_fmts.i.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 4
  %num_dec_fmts.i.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 5
  %enc_fmts.i.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 2
  %num_enc_fmts.i.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 3
  %storemerge.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %num_dec_fmts.i.i.i, ptr %num_enc_fmts.i.i.i
  %formats.0.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %dec_fmts.i.i.i, ptr %enc_fmts.i.i.i
  %6 = ptrtoint ptr %formats.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %formats.0.i.i.i = load ptr, ptr %formats.0.in.i.i.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i.i.i = load i32, ptr %storemerge.in.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i.i)
  %cmp13.not.i.i = icmp eq i32 %storemerge.i.i.i, 0
  br i1 %cmp13.not.i.i, label %entry.hantro_get_default_fmt.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.hantro_get_default_fmt.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_get_default_fmt.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %codec_mode.i.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i.i, i32 %i.014.i.i, i32 2
  %8 = ptrtoint ptr %codec_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp1.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp1.i.not.i, label %for.inc.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i.i, i32 %i.014.i.i
  br label %hantro_get_default_fmt.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %storemerge.i.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.hantro_get_default_fmt.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.hantro_get_default_fmt.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_get_default_fmt.exit.i

hantro_get_default_fmt.exit.i:                    ; preds = %for.inc.i.i.hantro_get_default_fmt.exit.i_crit_edge, %if.then.i.i, %entry.hantro_get_default_fmt.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.then.i.i ], [ null, %entry.hantro_get_default_fmt.exit.i_crit_edge ], [ null, %for.inc.i.i.hantro_get_default_fmt.exit.i_crit_edge ]
  br i1 %tobool.not.i.i.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %hantro_get_default_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_dst_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %10 = ptrtoint ptr %vpu_dst_fmt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %vpu_dst_fmt.i, align 4
  %dst_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %hantro_get_default_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %11 = ptrtoint ptr %vpu_src_fmt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i.i, ptr %vpu_src_fmt.i, align 8
  %src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %fmt.0.i = phi ptr [ %dst_fmt.i, %if.then.i ], [ %src_fmt.i, %if.else.i ]
  %12 = call ptr @memset(ptr %fmt.0.i, i32 0, i32 192)
  %fourcc.i.i = getelementptr inbounds %struct.hantro_fmt, ptr %retval.0.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %fourcc.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fourcc.i.i, align 4
  %pixelformat.i.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %fmt.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %pixelformat.i.i, align 1
  %field.i.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %fmt.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %field.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 1, ptr %field.i.i, align 1
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %fmt.0.i, i32 0, i32 4
  %17 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 7, ptr %colorspace.i.i, align 1
  %18 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %fmt.0.i, i32 0, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %18, align 1
  %quantization.i.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %fmt.0.i, i32 0, i32 9
  %20 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %quantization.i.i, align 1
  %xfer_func.i.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %fmt.0.i, i32 0, i32 10
  %21 = ptrtoint ptr %xfer_func.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %xfer_func.i.i, align 1
  %frmsize.i = getelementptr inbounds %struct.hantro_fmt, ptr %retval.0.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %frmsize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frmsize.i, align 4
  %24 = ptrtoint ptr %fmt.0.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %fmt.0.i, align 1
  %min_height.i = getelementptr inbounds %struct.hantro_fmt, ptr %retval.0.i.i, i32 0, i32 6, i32 3
  %25 = ptrtoint ptr %min_height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_height.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %fmt.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %height.i, align 1
  %28 = ptrtoint ptr %is_encoder.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_encoder.i.i.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not.i = icmp eq i8 %29, 0
  br i1 %tobool3.not.i, label %if.else6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call fastcc i32 @hantro_set_fmt_cap(ptr noundef %ctx, ptr noundef %fmt.0.i) #6
  br label %hantro_reset_encoded_fmt.exit

if.else6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @hantro_set_fmt_out(ptr noundef %ctx, ptr noundef %fmt.0.i) #6
  br label %hantro_reset_encoded_fmt.exit

hantro_reset_encoded_fmt.exit:                    ; preds = %if.else6.i, %if.then4.i
  tail call fastcc void @hantro_reset_raw_fmt(ptr noundef %ctx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hantro_reset_raw_fmt(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_encoder.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %is_encoder.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_encoder.i.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %variant4.i.i = getelementptr inbounds %struct.hantro_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %variant4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant4.i.i, align 8
  %dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 4
  %num_dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 5
  %enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 2
  %num_enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 3
  %storemerge.in.i.i = select i1 %tobool.not.i.i, ptr %num_dec_fmts.i.i, ptr %num_enc_fmts.i.i
  %formats.0.in.i.i = select i1 %tobool.not.i.i, ptr %dec_fmts.i.i, ptr %enc_fmts.i.i
  %6 = ptrtoint ptr %formats.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %formats.0.i.i = load ptr, ptr %formats.0.in.i.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i.i = load i32, ptr %storemerge.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i)
  %cmp13.not.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %cmp13.not.i, label %entry.hantro_get_default_fmt.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.hantro_get_default_fmt.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_get_default_fmt.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %codec_mode.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.014.i, i32 2
  %8 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp1.i = icmp eq i32 %9, -1
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.014.i
  br label %hantro_get_default_fmt.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %storemerge.i.i
  br i1 %exitcond.not.i, label %for.inc.i.hantro_get_default_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.hantro_get_default_fmt.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_get_default_fmt.exit

hantro_get_default_fmt.exit:                      ; preds = %for.inc.i.hantro_get_default_fmt.exit_crit_edge, %if.then.i, %entry.hantro_get_default_fmt.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ null, %entry.hantro_get_default_fmt.exit_crit_edge ], [ null, %for.inc.i.hantro_get_default_fmt.exit_crit_edge ]
  br i1 %tobool.not.i.i, label %if.else, label %if.then

if.then:                                          ; preds = %hantro_get_default_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_src_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %10 = ptrtoint ptr %vpu_src_fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %vpu_src_fmt, align 8
  %src_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %hantro_get_default_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %11 = ptrtoint ptr %vpu_dst_fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i, ptr %vpu_dst_fmt, align 4
  %dst_fmt1 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %src_fmt2 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %raw_fmt.0 = phi ptr [ %src_fmt, %if.then ], [ %dst_fmt1, %if.else ]
  %encoded_fmt.0 = phi ptr [ %dst_fmt, %if.then ], [ %src_fmt2, %if.else ]
  %12 = call ptr @memset(ptr %raw_fmt.0, i32 0, i32 192)
  %fourcc.i = getelementptr inbounds %struct.hantro_fmt, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fourcc.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %raw_fmt.0, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %pixelformat.i, align 1
  %field.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %raw_fmt.0, i32 0, i32 3
  %16 = ptrtoint ptr %field.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 1, ptr %field.i, align 1
  %colorspace.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %raw_fmt.0, i32 0, i32 4
  %17 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 7, ptr %colorspace.i, align 1
  %18 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %raw_fmt.0, i32 0, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %18, align 1
  %quantization.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %raw_fmt.0, i32 0, i32 9
  %20 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %quantization.i, align 1
  %xfer_func.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %raw_fmt.0, i32 0, i32 10
  %21 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %xfer_func.i, align 1
  %22 = ptrtoint ptr %encoded_fmt.0 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %encoded_fmt.0, align 1
  %24 = ptrtoint ptr %raw_fmt.0 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %raw_fmt.0, align 1
  %height = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %encoded_fmt.0, i32 0, i32 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %height, align 1
  %height4 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %raw_fmt.0, i32 0, i32 1
  %27 = ptrtoint ptr %height4 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %height4, align 1
  %28 = ptrtoint ptr %is_encoder.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_encoder.i.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool6.not = icmp eq i8 %29, 0
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call fastcc i32 @hantro_set_fmt_out(ptr noundef %ctx, ptr noundef %raw_fmt.0)
  br label %if.end11

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call fastcc i32 @hantro_set_fmt_cap(ptr noundef %ctx, ptr noundef %raw_fmt.0)
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #6
  %dev = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %7, i32 noundef 16) #6
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name5 = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 12
  %call7 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name5, i32 noundef 32) #6
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %driver10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver10, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %13)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %priv, i32 -4
  %is_encoder.i = getelementptr i8, ptr %priv, i32 192
  %0 = ptrtoint ptr %is_encoder.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_encoder.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp ne i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %variant4.i.i = getelementptr inbounds %struct.hantro_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %variant4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant4.i.i, align 8
  %dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 4
  %num_dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 5
  %enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 2
  %num_enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 3
  %storemerge.in.i.i = select i1 %tobool.not.i.i, ptr %num_dec_fmts.i.i, ptr %num_enc_fmts.i.i
  %formats.0.in.i.i = select i1 %tobool.not.i.i, ptr %dec_fmts.i.i, ptr %enc_fmts.i.i
  %6 = ptrtoint ptr %formats.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %formats.0.i.i = load ptr, ptr %formats.0.in.i.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i.i = load i32, ptr %storemerge.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i)
  %cmp610.not.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %cmp610.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %j.013.i = phi i32 [ %j.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ %inc22.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %codec_mode.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.011.i, i32 2
  %8 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp8.i = icmp eq i32 %9, -1
  %cmp15.i = xor i1 %cmp.i, %cmp8.i
  br i1 %cmp15.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.013.i, i32 %11)
  %cmp17.i = icmp eq i32 %j.013.i, %11
  br i1 %cmp17.i, label %cleanup.i, label %if.end21.i

if.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %j.013.i, 1
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %fourcc.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.011.i, i32 1
  br label %cleanup43.sink.split.i

for.inc.i:                                        ; preds = %if.end21.i, %for.body.i.for.inc.i_crit_edge
  %j.1.ph.i = phi i32 [ %j.013.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end21.i ]
  %inc22.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc22.i, %storemerge.i.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %j.1.ph.i, %for.inc.i.for.end.i_crit_edge ]
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %for.end.i.vidioc_enum_fmt.exit_crit_edge

for.end.i.vidioc_enum_fmt.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidioc_enum_fmt.exit

lor.lhs.false.i.i:                                ; preds = %for.end.i
  %postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %postproc_fmts.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.vidioc_enum_fmt.exit_crit_edge, label %hantro_get_postproc_formats.exit.i

lor.lhs.false.i.i.vidioc_enum_fmt.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidioc_enum_fmt.exit

hantro_get_postproc_formats.exit.i:               ; preds = %lor.lhs.false.i.i
  %num_postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %num_postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_postproc_fmts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2814.not.i = icmp eq i32 %15, 0
  br i1 %cmp2814.not.i, label %hantro_get_postproc_formats.exit.i.vidioc_enum_fmt.exit_crit_edge, label %for.body30.lr.ph.i

hantro_get_postproc_formats.exit.i.vidioc_enum_fmt.exit_crit_edge: ; preds = %hantro_get_postproc_formats.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidioc_enum_fmt.exit

for.body30.lr.ph.i:                               ; preds = %hantro_get_postproc_formats.exit.i
  %16 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f, align 4
  br label %for.body30.i

for.body30.i:                                     ; preds = %if.end38.i.for.body30.i_crit_edge, %for.body30.lr.ph.i
  %j.216.i = phi i32 [ %j.0.lcssa.i, %for.body30.lr.ph.i ], [ %inc39.i, %if.end38.i.for.body30.i_crit_edge ]
  %i.115.i = phi i32 [ 0, %for.body30.lr.ph.i ], [ %inc41.i, %if.end38.i.for.body30.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.216.i, i32 %17)
  %cmp32.i = icmp eq i32 %j.216.i, %17
  br i1 %cmp32.i, label %if.then34.i, label %if.end38.i

if.then34.i:                                      ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  %fourcc36.i = getelementptr %struct.hantro_fmt, ptr %13, i32 %i.115.i, i32 1
  br label %cleanup43.sink.split.i

if.end38.i:                                       ; preds = %for.body30.i
  %inc39.i = add i32 %j.216.i, 1
  %inc41.i = add nuw i32 %i.115.i, 1
  %exitcond19.not.i = icmp eq i32 %inc41.i, %15
  br i1 %exitcond19.not.i, label %if.end38.i.vidioc_enum_fmt.exit_crit_edge, label %if.end38.i.for.body30.i_crit_edge

if.end38.i.for.body30.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.i

if.end38.i.vidioc_enum_fmt.exit_crit_edge:        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidioc_enum_fmt.exit

cleanup43.sink.split.i:                           ; preds = %if.then34.i, %cleanup.i
  %fourcc.sink.i = phi ptr [ %fourcc.i, %cleanup.i ], [ %fourcc36.i, %if.then34.i ]
  %18 = ptrtoint ptr %fourcc.sink.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fourcc.sink.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat.i, align 4
  br label %vidioc_enum_fmt.exit

vidioc_enum_fmt.exit:                             ; preds = %cleanup43.sink.split.i, %if.end38.i.vidioc_enum_fmt.exit_crit_edge, %hantro_get_postproc_formats.exit.i.vidioc_enum_fmt.exit_crit_edge, %lor.lhs.false.i.i.vidioc_enum_fmt.exit_crit_edge, %for.end.i.vidioc_enum_fmt.exit_crit_edge
  %retval.2.i = phi i32 [ -22, %hantro_get_postproc_formats.exit.i.vidioc_enum_fmt.exit_crit_edge ], [ -22, %lor.lhs.false.i.i.vidioc_enum_fmt.exit_crit_edge ], [ -22, %for.end.i.vidioc_enum_fmt.exit_crit_edge ], [ 0, %cleanup43.sink.split.i ], [ -22, %if.end38.i.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %priv, i32 -4
  %is_encoder.i = getelementptr i8, ptr %priv, i32 192
  %0 = ptrtoint ptr %is_encoder.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_encoder.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %variant4.i.i = getelementptr inbounds %struct.hantro_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %variant4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant4.i.i, align 8
  %dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 4
  %num_dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 5
  %enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 2
  %num_enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %5, i32 0, i32 3
  %storemerge.in.i.i = select i1 %tobool.not.i.i, ptr %num_dec_fmts.i.i, ptr %num_enc_fmts.i.i
  %formats.0.in.i.i = select i1 %tobool.not.i.i, ptr %dec_fmts.i.i, ptr %enc_fmts.i.i
  %6 = ptrtoint ptr %formats.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %formats.0.i.i = load ptr, ptr %formats.0.in.i.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i.i = load i32, ptr %storemerge.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i)
  %cmp610.not.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %cmp610.not.i, label %entry.vidioc_enum_fmt.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.vidioc_enum_fmt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidioc_enum_fmt.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %j.013.i = phi i32 [ %j.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ %inc22.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %codec_mode.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.011.i, i32 2
  %8 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp8.i = icmp eq i32 %9, -1
  %cmp15.i = xor i1 %cmp.i, %cmp8.i
  br i1 %cmp15.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.013.i, i32 %11)
  %cmp17.i = icmp eq i32 %j.013.i, %11
  br i1 %cmp17.i, label %cleanup.i, label %if.end21.i

if.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %j.013.i, 1
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %fourcc.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.011.i, i32 1
  %12 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fourcc.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat.i, align 4
  br label %vidioc_enum_fmt.exit

for.inc.i:                                        ; preds = %if.end21.i, %for.body.i.for.inc.i_crit_edge
  %j.1.ph.i = phi i32 [ %j.013.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end21.i ]
  %inc22.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc22.i, %storemerge.i.i
  br i1 %exitcond.not.i, label %for.inc.i.vidioc_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.vidioc_enum_fmt.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidioc_enum_fmt.exit

vidioc_enum_fmt.exit:                             ; preds = %for.inc.i.vidioc_enum_fmt.exit_crit_edge, %cleanup.i, %entry.vidioc_enum_fmt.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %cleanup.i ], [ -22, %entry.vidioc_enum_fmt.exit_crit_edge ], [ -22, %for.inc.i.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_cap_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %0 = load i32, ptr @hantro_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 228, i32 noundef %2) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %dst_fmt = getelementptr i8, ptr %priv, i32 404
  %3 = call ptr @memcpy(ptr %fmt, ptr %dst_fmt, i32 192)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_out_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %0 = load i32, ptr @hantro_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef 215, i32 noundef %2) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %src_fmt = getelementptr i8, ptr %priv, i32 208
  %3 = call ptr @memcpy(ptr %fmt, ptr %src_fmt, i32 192)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_cap_mplane(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call1 = tail call fastcc i32 @hantro_set_fmt_cap(ptr noundef %add.ptr.i, ptr noundef %fmt)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_out_mplane(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call1 = tail call fastcc i32 @hantro_set_fmt_out(ptr noundef %add.ptr.i, ptr noundef %fmt)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_cap_mplane(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  tail call fastcc void @hantro_try_fmt(ptr noundef %add.ptr.i, ptr noundef %fmt, i32 noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_out_mplane(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  tail call fastcc void @hantro_try_fmt(ptr noundef %add.ptr.i, ptr noundef %fmt, i32 noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2 = load i32, ptr @hantro_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 121, i32 noundef %1) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %3 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixel_format, align 4
  %is_encoder.i.i = getelementptr i8, ptr %priv, i32 192
  %5 = ptrtoint ptr %is_encoder.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_encoder.i.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %variant4.i.i = getelementptr inbounds %struct.hantro_dev, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %variant4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant4.i.i, align 8
  %dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %10, i32 0, i32 4
  %num_dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %10, i32 0, i32 5
  %enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %10, i32 0, i32 2
  %num_enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %10, i32 0, i32 3
  %storemerge.in.i.i = select i1 %tobool.not.i.i, ptr %num_dec_fmts.i.i, ptr %num_enc_fmts.i.i
  %formats.0.in.i.i = select i1 %tobool.not.i.i, ptr %dec_fmts.i.i, ptr %enc_fmts.i.i
  %11 = ptrtoint ptr %formats.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %formats.0.i.i = load ptr, ptr %formats.0.in.i.i, align 4
  %12 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %storemerge.i.i = load i32, ptr %storemerge.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i)
  %cmp36.not.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %cmp36.not.i, label %if.end7.for.end.i_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.for.end.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %fourcc1.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.037.i, i32 1
  %13 = ptrtoint ptr %fourcc1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fourcc1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %4)
  %cmp2.i = icmp eq i32 %14, %4
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.037.i
  br label %hantro_find_format.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %storemerge.i.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end7.for.end.i_crit_edge
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %for.end.i.do.body11_crit_edge

for.end.i.do.body11_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

lor.lhs.false.i.i:                                ; preds = %for.end.i
  %postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %10, i32 0, i32 6
  %15 = ptrtoint ptr %postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %postproc_fmts.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.body11_crit_edge, label %hantro_get_postproc_formats.exit.i

lor.lhs.false.i.i.do.body11_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

hantro_get_postproc_formats.exit.i:               ; preds = %lor.lhs.false.i.i
  %num_postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %10, i32 0, i32 7
  %17 = ptrtoint ptr %num_postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_postproc_fmts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp638.not.i = icmp eq i32 %18, 0
  br i1 %cmp638.not.i, label %hantro_get_postproc_formats.exit.i.do.body11_crit_edge, label %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge

hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge: ; preds = %hantro_get_postproc_formats.exit.i
  br label %for.body7.i

hantro_get_postproc_formats.exit.i.do.body11_crit_edge: ; preds = %hantro_get_postproc_formats.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

for.body7.i:                                      ; preds = %for.inc14.i.for.body7.i_crit_edge, %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge
  %i.139.i = phi i32 [ %inc15.i, %for.inc14.i.for.body7.i_crit_edge ], [ 0, %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge ]
  %fourcc9.i = getelementptr %struct.hantro_fmt, ptr %16, i32 %i.139.i, i32 1
  %19 = ptrtoint ptr %fourcc9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fourcc9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %4)
  %cmp10.i = icmp eq i32 %20, %4
  br i1 %cmp10.i, label %if.then11.i, label %for.inc14.i

if.then11.i:                                      ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.i = getelementptr %struct.hantro_fmt, ptr %16, i32 %i.139.i
  br label %hantro_find_format.exit

for.inc14.i:                                      ; preds = %for.body7.i
  %inc15.i = add nuw i32 %i.139.i, 1
  %exitcond42.not.i = icmp eq i32 %inc15.i, %18
  br i1 %exitcond42.not.i, label %for.inc14.i.do.body11_crit_edge, label %for.inc14.i.for.body7.i_crit_edge

for.inc14.i.for.body7.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

for.inc14.i.do.body11_crit_edge:                  ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

hantro_find_format.exit:                          ; preds = %if.then11.i, %if.then.i
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx8.i, %if.then11.i ]
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %hantro_find_format.exit.do.body11_crit_edge, label %if.end24

hantro_find_format.exit.do.body11_crit_edge:      ; preds = %hantro_find_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

do.body11:                                        ; preds = %hantro_find_format.exit.do.body11_crit_edge, %for.inc14.i.do.body11_crit_edge, %hantro_get_postproc_formats.exit.i.do.body11_crit_edge, %lor.lhs.false.i.i.do.body11_crit_edge, %for.end.i.do.body11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %21 = load i32, ptr @hantro_debug, align 4
  %and12 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %do.end17

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 128, i32 noundef %4) #9
  br label %cleanup

if.end24:                                         ; preds = %hantro_find_format.exit
  %codec_mode = getelementptr inbounds %struct.hantro_fmt, ptr %retval.0.i, i32 0, i32 2
  %22 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %codec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp25 = icmp eq i32 %23, -1
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %type, align 4
  %25 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %frmsize = getelementptr inbounds %struct.hantro_fmt, ptr %retval.0.i, i32 0, i32 6
  %26 = call ptr @memcpy(ptr %25, ptr %frmsize, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end24.cleanup_crit_edge, %do.end17, %do.body11.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end17 ], [ -22, %do.body11.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 9, label %sw.bb
    i32 10, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %src_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 602, i32 noundef %3) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %pixfmt.0 = phi ptr [ %src_fmt, %sw.bb1 ], [ %dst_fmt, %sw.bb ]
  %5 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %num_planes17 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixfmt.0, i32 0, i32 6
  %7 = ptrtoint ptr %num_planes17 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_planes17, align 1
  %conv18 = zext i8 %8 to i32
  br i1 %tobool.not, label %if.end16, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv18)
  %cmp.not = icmp eq i32 %6, %conv18
  br i1 %cmp.not, label %for.cond.preheader, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp953.not = icmp eq i8 %8, 0
  br i1 %cmp953.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.054
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pixfmt.0, i32 0, i32 5, i32 %i.054
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp12 = icmp ult i32 %10, %12
  br i1 %cmp12, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv18, ptr %num_planes, align 4
  %14 = ptrtoint ptr %num_planes17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_planes17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp2257.not = icmp eq i8 %15, 0
  br i1 %cmp2257.not, label %if.end16.cleanup_crit_edge, label %if.end16.for.body24_crit_edge

if.end16.for.body24_crit_edge:                    ; preds = %if.end16
  br label %for.body24

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %if.end16.for.body24_crit_edge
  %i.158 = phi i32 [ %inc30, %for.body24.for.body24_crit_edge ], [ 0, %if.end16.for.body24_crit_edge ]
  %arrayidx26 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pixfmt.0, i32 0, i32 5, i32 %i.158
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx26, align 1
  %arrayidx28 = getelementptr i32, ptr %sizes, i32 %i.158
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx28, align 4
  %inc30 = add nuw nsw i32 %i.158, 1
  %19 = ptrtoint ptr %num_planes17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_planes17, align 1
  %conv21 = zext i8 %20 to i32
  %cmp22 = icmp ult i32 %inc30, %conv21
  br i1 %cmp22, label %for.body24.for.body24_crit_edge, label %for.body24.cleanup_crit_edge

for.body24.cleanup_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24

cleanup:                                          ; preds = %for.body24.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body24.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hantro_buf_out_validate(ptr nocapture noundef writeonly %vb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %5, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge83
    i32 3, label %entry.if.then_crit_edge84
    i32 8, label %entry.if.then_crit_edge85
    i32 5, label %entry.if.then_crit_edge86
    i32 7, label %entry.if.then_crit_edge87
    i32 12, label %entry.if.then_crit_edge88
    i32 14, label %entry.if.then_crit_edge89
  ]

entry.if.then_crit_edge89:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge88:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge87:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge83, %entry.if.then_crit_edge84, %entry.if.then_crit_edge85, %entry.if.then_crit_edge86, %entry.if.then_crit_edge87, %entry.if.then_crit_edge88, %entry.if.then_crit_edge89
  %src_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %3, i32 0, i32 6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %3, i32 0, i32 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pix_fmt.0 = phi ptr [ %src_fmt, %if.then ], [ %dst_fmt, %if.else ]
  %num_planes.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_fmt.0, i32 0, i32 6
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp34.not.i = icmp eq i8 %8, 0
  br i1 %cmp34.not.i, label %if.end.if.end23_crit_edge, label %for.body.lr.ph.i

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

for.body.lr.ph.i:                                 ; preds = %if.end
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix_fmt.0, i32 0, i32 5, i32 %i.035.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %11 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.do.end5.i_crit_edge, label %do.end.i

for.body.i.do.end5.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.i

do.end.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %i.035.i)
  %cmp.i.i = icmp ugt i32 %13, %i.035.i
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.vb2_plane_size.exit.i_crit_edge

do.end.i.vb2_plane_size.exit.i_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_plane_size.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %length.i.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.035.i, i32 4
  %14 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i.i, align 8
  br label %vb2_plane_size.exit.i

vb2_plane_size.exit.i:                            ; preds = %if.then.i.i, %do.end.i.vb2_plane_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %15, %if.then.i.i ], [ 0, %do.end.i.vb2_plane_size.exit.i_crit_edge ]
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 631, i32 noundef %i.035.i, i32 noundef %retval.0.i.i, i32 noundef %10) #9
  br label %do.end5.i

do.end5.i:                                        ; preds = %vb2_plane_size.exit.i, %for.body.i.do.end5.i_crit_edge
  %16 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %i.035.i)
  %cmp.i27.i = icmp ugt i32 %17, %i.035.i
  br i1 %cmp.i27.i, label %if.then.i29.i, label %do.end5.i.vb2_plane_size.exit31.i_crit_edge

do.end5.i.vb2_plane_size.exit31.i_crit_edge:      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_plane_size.exit31.i

if.then.i29.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %length.i28.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.035.i, i32 4
  %18 = ptrtoint ptr %length.i28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i28.i, align 8
  br label %vb2_plane_size.exit31.i

vb2_plane_size.exit31.i:                          ; preds = %if.then.i29.i, %do.end5.i.vb2_plane_size.exit31.i_crit_edge
  %retval.0.i30.i = phi i32 [ %19, %if.then.i29.i ], [ 0, %do.end5.i.vb2_plane_size.exit31.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i30.i, i32 %10)
  %cmp7.i = icmp ult i32 %retval.0.i30.i, %10
  br i1 %cmp7.i, label %hantro_buf_plane_check.exit, label %for.inc.i

for.inc.i:                                        ; preds = %vb2_plane_size.exit31.i
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %20 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_planes.i, align 1
  %conv.i = zext i8 %21 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end23_crit_edge

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

hantro_buf_plane_check.exit:                      ; preds = %vb2_plane_size.exit31.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 633, i32 noundef %i.035.i) #9
  br label %cleanup

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %switch.tableidx = add i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %24 = icmp ult i32 %switch.tableidx, 13
  br i1 %24, label %switch.hole_check, label %if.end23.if.then47_crit_edge

if.end23.if.then47_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

if.then47:                                        ; preds = %switch.hole_check.if.then47_crit_edge, %if.end23.if.then47_crit_edge
  %num_planes.i74 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %25 = ptrtoint ptr %num_planes.i74 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_planes.i74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i, label %if.then47.cleanup_crit_edge, label %if.then.i

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then47
  %plane_fmt = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_fmt.0, i32 0, i32 5
  %27 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %plane_fmt, align 1
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp1.i = icmp ult i32 %30, %28
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !79

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1163, i32 noundef 9, ptr noundef null) #6
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %32, %if.then38.i ], [ %28, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %33 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

switch.hole_check:                                ; preds = %if.end23
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 5483, %switch.maskindex
  %34 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %switch.lobit.not = icmp eq i16 %34, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then47_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check.if.then47_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.end42.i, %if.then47.cleanup_crit_edge, %hantro_buf_plane_check.exit
  %retval.0 = phi i32 [ -22, %hantro_buf_plane_check.exit ], [ 0, %if.then47.cleanup_crit_edge ], [ 0, %if.end42.i ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hantro_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge131
    i32 3, label %entry.if.then_crit_edge132
    i32 8, label %entry.if.then_crit_edge133
    i32 5, label %entry.if.then_crit_edge134
    i32 7, label %entry.if.then_crit_edge135
    i32 12, label %entry.if.then_crit_edge136
    i32 14, label %entry.if.then_crit_edge137
  ]

entry.if.then_crit_edge137:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge135:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge131, %entry.if.then_crit_edge132, %entry.if.then_crit_edge133, %entry.if.then_crit_edge134, %entry.if.then_crit_edge135, %entry.if.then_crit_edge136, %entry.if.then_crit_edge137
  %sequence_out = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %sequence_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sequence_out, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sequence_cap = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sequence_cap to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sequence_cap, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_priv.i, align 4
  %is_encoder.i = getelementptr inbounds %struct.hantro_ctx, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %is_encoder.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_encoder.i, align 4, !range !78
  %11 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %q, align 4
  %switch.tableidx = add i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 11
  br i1 %13, label %switch.hole_check, label %if.end.lor.rhs.i_crit_edge

if.end.lor.rhs.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %switch.hole_check.lor.rhs.i_crit_edge, %if.end.lor.rhs.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %12)
  %cmp26.i = icmp eq i32 %12, 14
  %phi.cast.i = zext i1 %cmp26.i to i32
  br label %hantro_vq_is_coded.exit

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1387, %switch.maskindex
  %14 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %switch.lobit.not = icmp eq i16 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs.i_crit_edge, label %switch.hole_check.hantro_vq_is_coded.exit_crit_edge

switch.hole_check.hantro_vq_is_coded.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_vq_is_coded.exit

switch.hole_check.lor.rhs.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

hantro_vq_is_coded.exit:                          ; preds = %switch.hole_check.hantro_vq_is_coded.exit_crit_edge, %lor.rhs.i
  %15 = phi i32 [ %phi.cast.i, %lor.rhs.i ], [ 1, %switch.hole_check.hantro_vq_is_coded.exit_crit_edge ]
  %16 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp28.i.not = icmp eq i32 %15, %16
  br i1 %cmp28.i.not, label %hantro_vq_is_coded.exit.cleanup83_crit_edge, label %if.then22

hantro_vq_is_coded.exit.cleanup83_crit_edge:      ; preds = %hantro_vq_is_coded.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

if.then22:                                        ; preds = %hantro_vq_is_coded.exit
  %17 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %12, label %if.else48 [
    i32 2, label %if.then22.if.then46_crit_edge
    i32 10, label %if.then22.if.then46_crit_edge138
    i32 3, label %if.then22.if.then46_crit_edge139
    i32 8, label %if.then22.if.then46_crit_edge140
    i32 5, label %if.then22.if.then46_crit_edge141
    i32 7, label %if.then22.if.then46_crit_edge142
    i32 12, label %if.then22.if.then46_crit_edge143
    i32 14, label %if.then22.if.then46_crit_edge144
  ]

if.then22.if.then46_crit_edge144:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then22.if.then46_crit_edge143:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then22.if.then46_crit_edge142:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then22.if.then46_crit_edge141:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then22.if.then46_crit_edge140:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then22.if.then46_crit_edge139:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then22.if.then46_crit_edge138:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then22.if.then46_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then46:                                        ; preds = %if.then22.if.then46_crit_edge, %if.then22.if.then46_crit_edge138, %if.then22.if.then46_crit_edge139, %if.then22.if.then46_crit_edge140, %if.then22.if.then46_crit_edge141, %if.then22.if.then46_crit_edge142, %if.then22.if.then46_crit_edge143, %if.then22.if.then46_crit_edge144
  %vpu_src_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 5
  br label %do.body

if.else48:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %if.else48, %if.then46
  %.pn.in = phi ptr [ %vpu_src_fmt, %if.then46 ], [ %vpu_dst_fmt, %if.else48 ]
  %18 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn.in, align 4
  %codec_mode.0.in = getelementptr inbounds %struct.hantro_fmt, ptr %.pn, i32 0, i32 2
  %19 = ptrtoint ptr %codec_mode.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %codec_mode.0 = load i32, ptr %codec_mode.0.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %20 = load i32, ptr @hantro_debug, align 4
  %and = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end56_crit_edge, label %do.end

do.body.do.end56_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 698, i32 noundef %codec_mode.0) #9
  br label %do.end56

do.end56:                                         ; preds = %do.end, %do.body.do.end56_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant, align 8
  %codec_ops = getelementptr inbounds %struct.hantro_variant, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %codec_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %codec_ops, align 4
  %arrayidx = getelementptr %struct.hantro_codec_ops, ptr %26, i32 %codec_mode.0
  %codec_ops57 = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %codec_ops57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx, ptr %codec_ops57, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool59.not = icmp eq ptr %29, null
  br i1 %tobool59.not, label %do.end56.if.end67_crit_edge, label %if.then60

do.end56.if.end67_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then60:                                        ; preds = %do.end56
  %call63 = tail call i32 %29(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then60.if.end67_crit_edge, label %if.then60.cleanup83_crit_edge

if.then60.cleanup83_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.end67:                                         ; preds = %if.then60.if.end67_crit_edge, %do.end56.if.end67_crit_edge
  %vpu_dst_fmt68 = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %vpu_dst_fmt68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vpu_dst_fmt68, align 4
  %call69 = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %1, ptr noundef %31) #6
  br i1 %call69, label %if.then70, label %if.end67.cleanup83_crit_edge

if.end67.cleanup83_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

if.then70:                                        ; preds = %if.end67
  %call71 = tail call i32 @hantro_postproc_alloc(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then70.cleanup83_crit_edge, label %err_codec_exit

if.then70.cleanup83_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

err_codec_exit:                                   ; preds = %if.then70
  %32 = ptrtoint ptr %codec_ops57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %codec_ops57, align 4
  %exit = getelementptr inbounds %struct.hantro_codec_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %exit, align 4
  %tobool78.not = icmp eq ptr %35, null
  br i1 %tobool78.not, label %err_codec_exit.cleanup83_crit_edge, label %if.then79

err_codec_exit.cleanup83_crit_edge:               ; preds = %err_codec_exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

if.then79:                                        ; preds = %err_codec_exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %35(ptr noundef %1) #6
  br label %cleanup83

cleanup83:                                        ; preds = %if.then79, %err_codec_exit.cleanup83_crit_edge, %if.then70.cleanup83_crit_edge, %if.end67.cleanup83_crit_edge, %if.then60.cleanup83_crit_edge, %hantro_vq_is_coded.exit.cleanup83_crit_edge
  %retval.1 = phi i32 [ %call71, %if.then79 ], [ %call71, %err_codec_exit.cleanup83_crit_edge ], [ 0, %hantro_vq_is_coded.exit.cleanup83_crit_edge ], [ %call63, %if.then60.cleanup83_crit_edge ], [ 0, %if.end67.cleanup83_crit_edge ], [ 0, %if.then70.cleanup83_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hantro_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %is_encoder.i = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %is_encoder.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_encoder.i, align 4, !range !78
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 11
  br i1 %6, label %switch.hole_check, label %entry.lor.rhs.i_crit_edge

entry.lor.rhs.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %switch.hole_check.lor.rhs.i_crit_edge, %entry.lor.rhs.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp26.i = icmp eq i32 %5, 14
  %phi.cast.i = zext i1 %cmp26.i to i32
  br label %hantro_vq_is_coded.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1387, %switch.maskindex
  %7 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %switch.lobit.not = icmp eq i16 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs.i_crit_edge, label %switch.hole_check.hantro_vq_is_coded.exit_crit_edge

switch.hole_check.hantro_vq_is_coded.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_vq_is_coded.exit

switch.hole_check.lor.rhs.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

hantro_vq_is_coded.exit:                          ; preds = %switch.hole_check.hantro_vq_is_coded.exit_crit_edge, %lor.rhs.i
  %8 = phi i32 [ %phi.cast.i, %lor.rhs.i ], [ 1, %switch.hole_check.hantro_vq_is_coded.exit_crit_edge ]
  %9 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp28.i.not = icmp eq i32 %8, %9
  br i1 %cmp28.i.not, label %hantro_vq_is_coded.exit.if.end7_crit_edge, label %if.then

hantro_vq_is_coded.exit.if.end7_crit_edge:        ; preds = %hantro_vq_is_coded.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %hantro_vq_is_coded.exit
  tail call void @hantro_postproc_free(ptr noundef %1) #6
  %codec_ops = getelementptr inbounds %struct.hantro_ctx, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %codec_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %codec_ops, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %land.lhs.true

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then
  %exit = getelementptr inbounds %struct.hantro_codec_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exit, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %1) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.then.if.end7_crit_edge, %hantro_vq_is_coded.exit.if.end7_crit_edge
  %14 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %15, label %if.else [
    i32 2, label %if.end7.if.then28_crit_edge
    i32 10, label %if.end7.if.then28_crit_edge70
    i32 3, label %if.end7.if.then28_crit_edge71
    i32 8, label %if.end7.if.then28_crit_edge72
    i32 5, label %if.end7.if.then28_crit_edge73
    i32 7, label %if.end7.if.then28_crit_edge74
    i32 12, label %if.end7.if.then28_crit_edge75
    i32 14, label %if.end7.if.then28_crit_edge76
  ]

if.end7.if.then28_crit_edge76:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end7.if.then28_crit_edge75:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end7.if.then28_crit_edge74:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end7.if.then28_crit_edge73:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end7.if.then28_crit_edge72:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end7.if.then28_crit_edge71:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end7.if.then28_crit_edge70:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end7.if.then28_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %if.end7.if.then28_crit_edge, %if.end7.if.then28_crit_edge70, %if.end7.if.then28_crit_edge71, %if.end7.if.then28_crit_edge72, %if.end7.if.then28_crit_edge73, %if.end7.if.then28_crit_edge74, %if.end7.if.then28_crit_edge75, %if.end7.if.then28_crit_edge76
  %17 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %18, i32 0, i32 1, i32 10
  %19 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i60 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %20, i32 0, i32 8
  %call.i61 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i60) #6
  %tobool.not8.i = icmp eq ptr %call.i61, null
  br i1 %tobool.not8.i, label %if.then28.if.end29_crit_edge, label %cleanup.lr.ph.i

if.then28.if.end29_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

cleanup.lr.ph.i:                                  ; preds = %if.then28
  %ctrl_handler.i = getelementptr inbounds %struct.hantro_ctx, ptr %18, i32 0, i32 9
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %cleanup.lr.ph.i
  %call19.i = phi ptr [ %call.i61, %cleanup.lr.ph.i ], [ %call.i, %cleanup.i.cleanup.i_crit_edge ]
  %req.i = getelementptr inbounds %struct.vb2_buffer, ptr %call19.i, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %22, ptr noundef %ctrl_handler.i) #6
  tail call void @vb2_buffer_done(ptr noundef nonnull %call19.i, i32 noundef 6) #6
  %23 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %24, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.end29_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i.if.end29_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.else:                                          ; preds = %if.end7
  %25 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i49 = getelementptr inbounds %struct.hantro_ctx, ptr %26, i32 0, i32 1, i32 10
  %27 = ptrtoint ptr %m2m_ctx.i49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_ctx.i49, align 4
  %cap_q_ctx.i63 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %28, i32 0, i32 7
  %call.i64 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i63) #6
  %tobool.not8.i51 = icmp eq ptr %call.i64, null
  br i1 %tobool.not8.i51, label %if.else.if.end29_crit_edge, label %cleanup.lr.ph.i53

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

cleanup.lr.ph.i53:                                ; preds = %if.else
  %ctrl_handler.i52 = getelementptr inbounds %struct.hantro_ctx, ptr %26, i32 0, i32 9
  br label %cleanup.i58

cleanup.i58:                                      ; preds = %cleanup.i58.cleanup.i58_crit_edge, %cleanup.lr.ph.i53
  %call19.i54 = phi ptr [ %call.i64, %cleanup.lr.ph.i53 ], [ %call.i62, %cleanup.i58.cleanup.i58_crit_edge ]
  %req.i55 = getelementptr inbounds %struct.vb2_buffer, ptr %call19.i54, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %req.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req.i55, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %30, ptr noundef %ctrl_handler.i52) #6
  tail call void @vb2_buffer_done(ptr noundef nonnull %call19.i54, i32 noundef 6) #6
  %31 = ptrtoint ptr %m2m_ctx.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m2m_ctx.i49, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %32, i32 0, i32 7
  %call.i62 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #6
  %tobool.not.i57 = icmp eq ptr %call.i62, null
  br i1 %tobool.not.i57, label %cleanup.i58.if.end29_crit_edge, label %cleanup.i58.cleanup.i58_crit_edge

cleanup.i58.cleanup.i58_crit_edge:                ; preds = %cleanup.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i58

cleanup.i58.if.end29_crit_edge:                   ; preds = %cleanup.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29:                                         ; preds = %cleanup.i58.if.end29_crit_edge, %if.else.if.end29_crit_edge, %cleanup.i.if.end29_crit_edge, %if.then28.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hantro_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.hantro_ctx, ptr %3, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hantro_buf_request_complete(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %ctrl_handler = getelementptr inbounds %struct.hantro_ctx, ptr %3, i32 0, i32 9
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %ctrl_handler) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hantro_set_fmt_cap(ptr noundef %ctx, ptr noundef %pix_mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef 9) #6
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.end:                                           ; preds = %entry
  %is_encoder = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_encoder, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then2

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %call5 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %7, i32 noundef 10) #6
  %num_buffers.i90 = getelementptr inbounds %struct.vb2_queue, ptr %call5, i32 0, i32 21
  %8 = ptrtoint ptr %num_buffers.i90 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i91.not = icmp eq i32 %9, 0
  br i1 %cmp.i91.not, label %if.then2.if.end17_crit_edge, label %land.lhs.true

if.then2.if.end17_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then2
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %pixelformat, align 1
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %pixelformat7 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %pixelformat7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.cleanup58_crit_edge

land.lhs.true.cleanup58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

lor.lhs.false:                                    ; preds = %land.lhs.true
  %height = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %height, align 1
  %height9 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp10.not = icmp eq i32 %15, %17
  br i1 %cmp10.not, label %lor.lhs.false11, label %lor.lhs.false.cleanup58_crit_edge

lor.lhs.false.cleanup58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %pix_mp, align 1
  %20 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_fmt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp14.not = icmp eq i32 %19, %21
  br i1 %cmp14.not, label %lor.lhs.false11.if.end17_crit_edge, label %lor.lhs.false11.cleanup58_crit_edge

lor.lhs.false11.cleanup58_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

lor.lhs.false11.if.end17_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %lor.lhs.false11.if.end17_crit_edge, %if.then2.if.end17_crit_edge, %if.end.if.end17_crit_edge
  tail call fastcc void @hantro_try_fmt(ptr noundef %ctx, ptr noundef %pix_mp, i32 noundef 9)
  %pixelformat22 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 2
  %22 = ptrtoint ptr %pixelformat22 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %pixelformat22, align 1
  %24 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_encoder, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 8
  %variant4.i.i = getelementptr inbounds %struct.hantro_dev, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %variant4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %variant4.i.i, align 8
  %dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %29, i32 0, i32 4
  %num_dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %29, i32 0, i32 5
  %enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %29, i32 0, i32 2
  %num_enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %29, i32 0, i32 3
  %storemerge.in.i.i = select i1 %tobool.not.i.i, ptr %num_dec_fmts.i.i, ptr %num_enc_fmts.i.i
  %formats.0.in.i.i = select i1 %tobool.not.i.i, ptr %dec_fmts.i.i, ptr %enc_fmts.i.i
  %30 = ptrtoint ptr %formats.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %formats.0.i.i = load ptr, ptr %formats.0.in.i.i, align 4
  %31 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %storemerge.i.i = load i32, ptr %storemerge.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i)
  %cmp36.not.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %cmp36.not.i, label %if.end17.for.end.i_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.for.end.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end17.for.body.i_crit_edge ]
  %fourcc1.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.037.i, i32 1
  %32 = ptrtoint ptr %fourcc1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fourcc1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %23)
  %cmp2.i = icmp eq i32 %33, %23
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.037.i
  br label %hantro_find_format.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %storemerge.i.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end17.for.end.i_crit_edge
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %hantro_find_format.exit.thread115

hantro_find_format.exit.thread115:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_dst_fmt117 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %34 = ptrtoint ptr %vpu_dst_fmt117 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %vpu_dst_fmt117, align 4
  %dst_fmt24118 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %35 = call ptr @memcpy(ptr %dst_fmt24118, ptr %pix_mp, i32 192)
  br label %if.then27

lor.lhs.false.i.i:                                ; preds = %for.end.i
  %postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %29, i32 0, i32 6
  %36 = ptrtoint ptr %postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %postproc_fmts.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.hantro_find_format.exit.thread_crit_edge, label %hantro_get_postproc_formats.exit.i

lor.lhs.false.i.i.hantro_find_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_find_format.exit.thread

hantro_get_postproc_formats.exit.i:               ; preds = %lor.lhs.false.i.i
  %num_postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %29, i32 0, i32 7
  %38 = ptrtoint ptr %num_postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_postproc_fmts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp638.not.i = icmp eq i32 %39, 0
  br i1 %cmp638.not.i, label %hantro_get_postproc_formats.exit.i.hantro_find_format.exit.thread_crit_edge, label %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge

hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge: ; preds = %hantro_get_postproc_formats.exit.i
  br label %for.body7.i

hantro_get_postproc_formats.exit.i.hantro_find_format.exit.thread_crit_edge: ; preds = %hantro_get_postproc_formats.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_find_format.exit.thread

for.body7.i:                                      ; preds = %for.inc14.i.for.body7.i_crit_edge, %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge
  %i.139.i = phi i32 [ %inc15.i, %for.inc14.i.for.body7.i_crit_edge ], [ 0, %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge ]
  %fourcc9.i = getelementptr %struct.hantro_fmt, ptr %37, i32 %i.139.i, i32 1
  %40 = ptrtoint ptr %fourcc9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fourcc9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %23)
  %cmp10.i = icmp eq i32 %41, %23
  br i1 %cmp10.i, label %if.then11.i, label %for.inc14.i

if.then11.i:                                      ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.i = getelementptr %struct.hantro_fmt, ptr %37, i32 %i.139.i
  br label %hantro_find_format.exit

for.inc14.i:                                      ; preds = %for.body7.i
  %inc15.i = add nuw i32 %i.139.i, 1
  %exitcond42.not.i = icmp eq i32 %inc15.i, %39
  br i1 %exitcond42.not.i, label %for.inc14.i.hantro_find_format.exit_crit_edge, label %for.inc14.i.for.body7.i_crit_edge

for.inc14.i.for.body7.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

for.inc14.i.hantro_find_format.exit_crit_edge:    ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_find_format.exit

hantro_find_format.exit.thread:                   ; preds = %hantro_get_postproc_formats.exit.i.hantro_find_format.exit.thread_crit_edge, %lor.lhs.false.i.i.hantro_find_format.exit.thread_crit_edge
  %vpu_dst_fmt112 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %42 = ptrtoint ptr %vpu_dst_fmt112 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %vpu_dst_fmt112, align 4
  %dst_fmt24113 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %43 = call ptr @memcpy(ptr %dst_fmt24113, ptr %pix_mp, i32 192)
  br label %if.end28

hantro_find_format.exit:                          ; preds = %for.inc14.i.hantro_find_format.exit_crit_edge, %if.then11.i, %if.then.i
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx8.i, %if.then11.i ], [ null, %for.inc14.i.hantro_find_format.exit_crit_edge ]
  %vpu_dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %44 = ptrtoint ptr %vpu_dst_fmt to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %retval.0.i, ptr %vpu_dst_fmt, align 4
  %dst_fmt24 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %45 = call ptr @memcpy(ptr %dst_fmt24, ptr %pix_mp, i32 192)
  br i1 %tobool.not.i.i, label %hantro_find_format.exit.if.end28_crit_edge, label %hantro_find_format.exit.if.then27_crit_edge

hantro_find_format.exit.if.then27_crit_edge:      ; preds = %hantro_find_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

hantro_find_format.exit.if.end28_crit_edge:       ; preds = %hantro_find_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then27:                                        ; preds = %hantro_find_format.exit.if.then27_crit_edge, %hantro_find_format.exit.thread115
  %dst_fmt24120 = phi ptr [ %dst_fmt24118, %hantro_find_format.exit.thread115 ], [ %dst_fmt24, %hantro_find_format.exit.if.then27_crit_edge ]
  %vpu_dst_fmt119 = phi ptr [ %vpu_dst_fmt117, %hantro_find_format.exit.thread115 ], [ %vpu_dst_fmt, %hantro_find_format.exit.if.then27_crit_edge ]
  %46 = ptrtoint ptr %variant4.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant4.i.i, align 8
  %enc_fmts.i.i98 = getelementptr inbounds %struct.hantro_variant, ptr %47, i32 0, i32 2
  %num_enc_fmts.i.i99 = getelementptr inbounds %struct.hantro_variant, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %enc_fmts.i.i98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %formats.0.i.i102 = load ptr, ptr %enc_fmts.i.i98, align 4
  %49 = ptrtoint ptr %num_enc_fmts.i.i99 to i32
  call void @__asan_load4_noabort(i32 %49)
  %storemerge.i.i103 = load i32, ptr %num_enc_fmts.i.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i103)
  %cmp13.not.i = icmp eq i32 %storemerge.i.i103, 0
  br i1 %cmp13.not.i, label %if.then27.if.end.i_crit_edge, label %if.then27.for.body.i104_crit_edge

if.then27.for.body.i104_crit_edge:                ; preds = %if.then27
  br label %for.body.i104

if.then27.if.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.i104:                                    ; preds = %for.inc.i109.for.body.i104_crit_edge, %if.then27.for.body.i104_crit_edge
  %i.014.i = phi i32 [ %inc.i107, %for.inc.i109.for.body.i104_crit_edge ], [ 0, %if.then27.for.body.i104_crit_edge ]
  %codec_mode.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i102, i32 %i.014.i, i32 2
  %50 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp1.i = icmp eq i32 %51, -1
  br i1 %cmp1.i, label %if.then.i106, label %for.inc.i109

if.then.i106:                                     ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i105 = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i102, i32 %i.014.i
  br label %if.end.i

for.inc.i109:                                     ; preds = %for.body.i104
  %inc.i107 = add nuw i32 %i.014.i, 1
  %exitcond.not.i108 = icmp eq i32 %inc.i107, %storemerge.i.i103
  br i1 %exitcond.not.i108, label %for.inc.i109.if.end.i_crit_edge, label %for.inc.i109.for.body.i104_crit_edge

for.inc.i109.for.body.i104_crit_edge:             ; preds = %for.inc.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i104

for.inc.i109.if.end.i_crit_edge:                  ; preds = %for.inc.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i109.if.end.i_crit_edge, %if.then.i106, %if.then27.if.end.i_crit_edge
  %retval.0.i110 = phi ptr [ %arrayidx.i105, %if.then.i106 ], [ null, %if.then27.if.end.i_crit_edge ], [ null, %for.inc.i109.if.end.i_crit_edge ]
  %vpu_src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %52 = ptrtoint ptr %vpu_src_fmt.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %retval.0.i110, ptr %vpu_src_fmt.i, align 8
  %src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %53 = call ptr @memset(ptr %src_fmt.i, i32 0, i32 192)
  %fourcc.i = getelementptr inbounds %struct.hantro_fmt, ptr %retval.0.i110, i32 0, i32 1
  %54 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fourcc.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %pixelformat.i, align 1
  %field.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 3
  %57 = ptrtoint ptr %field.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 1, ptr %field.i, align 1
  %colorspace.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 4
  %58 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 7, ptr %colorspace.i, align 1
  %59 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %59, align 1
  %quantization.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 9
  %61 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %quantization.i, align 1
  %xfer_func.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 10
  %62 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %xfer_func.i, align 1
  %63 = ptrtoint ptr %dst_fmt24120 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %dst_fmt24120, align 1
  %65 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %src_fmt.i, align 1
  %height.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %66 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %height.i, align 1
  %height4.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %68 = ptrtoint ptr %height4.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %height4.i, align 1
  br i1 %tobool.not.i.i, label %if.else9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call fastcc i32 @hantro_set_fmt_out(ptr noundef %ctx, ptr noundef %src_fmt.i) #6
  br label %if.end28

if.else9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = tail call fastcc i32 @hantro_set_fmt_cap(ptr noundef %ctx, ptr noundef %src_fmt.i) #6
  br label %if.end28

if.end28:                                         ; preds = %if.else9.i, %if.then7.i, %hantro_find_format.exit.if.end28_crit_edge, %hantro_find_format.exit.thread
  %vpu_dst_fmt114 = phi ptr [ %vpu_dst_fmt112, %hantro_find_format.exit.thread ], [ %vpu_dst_fmt, %hantro_find_format.exit.if.end28_crit_edge ], [ %vpu_dst_fmt119, %if.then7.i ], [ %vpu_dst_fmt119, %if.else9.i ]
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 4
  %69 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %colorspace, align 1
  %colorspace29 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 4
  %71 = ptrtoint ptr %colorspace29 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %colorspace29, align 4
  %72 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %75 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %74, ptr %75, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 10
  %77 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %xfer_func, align 1
  %xfer_func32 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 10
  %79 = ptrtoint ptr %xfer_func32 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %xfer_func32, align 4
  %quantization = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 9
  %80 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %quantization, align 1
  %quantization34 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 9
  %82 = ptrtoint ptr %quantization34 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %quantization34, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %83 = load i32, ptr @hantro_debug, align 4
  %and = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end28.do.body43_crit_edge, label %do.end

if.end28.do.body43_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %vpu_dst_fmt114 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vpu_dst_fmt114, align 4
  %codec_mode = getelementptr inbounds %struct.hantro_fmt, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %codec_mode, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 536, i32 noundef %87) #9
  br label %do.body43

do.body43:                                        ; preds = %do.end, %if.end28.do.body43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %88 = load i32, ptr @hantro_debug, align 4
  %and44 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.do.end56_crit_edge, label %do.end49

do.body43.do.end56_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %pix_mp, align 1
  %height52 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 1
  %91 = ptrtoint ptr %height52 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %height52, align 1
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 538, i32 noundef %90, i32 noundef %92) #9
  br label %do.end56

do.end56:                                         ; preds = %do.end49, %do.body43.do.end56_crit_edge
  %93 = ptrtoint ptr %pixelformat22 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %pixelformat22, align 1
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %94, label %do.end56.cleanup58_crit_edge [
    i32 1195724874, label %sw.bb.i
    i32 1395803981, label %do.end56.sw.bb1.i_crit_edge
    i32 1178095702, label %do.end56.sw.bb1.i_crit_edge148
    i32 875967059, label %do.end56.sw.bb1.i_crit_edge149
    i32 892744275, label %do.end56.sw.bb1.i_crit_edge150
    i32 1178161238, label %do.end56.sw.bb1.i_crit_edge151
  ]

do.end56.sw.bb1.i_crit_edge151:                   ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

do.end56.sw.bb1.i_crit_edge150:                   ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

do.end56.sw.bb1.i_crit_edge149:                   ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

do.end56.sw.bb1.i_crit_edge148:                   ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

do.end56.sw.bb1.i_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

do.end56.cleanup58_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

sw.bb.i:                                          ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %m2m_ctx, align 4
  %requires_requests.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %97, i32 0, i32 8, i32 0, i32 4
  %98 = ptrtoint ptr %requires_requests.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load.i = load i16, ptr %requires_requests.i, align 4
  %bf.clear.i = and i16 %bf.load.i, -513
  store i16 %bf.clear.i, ptr %requires_requests.i, align 4
  br label %cleanup58

sw.bb1.i:                                         ; preds = %do.end56.sw.bb1.i_crit_edge, %do.end56.sw.bb1.i_crit_edge148, %do.end56.sw.bb1.i_crit_edge149, %do.end56.sw.bb1.i_crit_edge150, %do.end56.sw.bb1.i_crit_edge151
  %99 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %m2m_ctx, align 4
  %requires_requests6.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %100, i32 0, i32 8, i32 0, i32 4
  %101 = ptrtoint ptr %requires_requests6.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %bf.load7.i = load i16, ptr %requires_requests6.i, align 4
  %bf.set9.i = or i16 %bf.load7.i, 512
  store i16 %bf.set9.i, ptr %requires_requests6.i, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %sw.bb1.i, %sw.bb.i, %do.end56.cleanup58_crit_edge, %lor.lhs.false11.cleanup58_crit_edge, %lor.lhs.false.cleanup58_crit_edge, %land.lhs.true.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.1 = phi i32 [ -16, %entry.cleanup58_crit_edge ], [ -16, %land.lhs.true.cleanup58_crit_edge ], [ -16, %lor.lhs.false.cleanup58_crit_edge ], [ -16, %lor.lhs.false11.cleanup58_crit_edge ], [ 0, %do.end56.cleanup58_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb1.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hantro_set_fmt_out(ptr noundef %ctx, ptr noundef %pix_mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef 10) #6
  tail call fastcc void @hantro_try_fmt(ptr noundef %ctx, ptr noundef %pix_mp, i32 noundef 10)
  %is_encoder = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_encoder, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then3.cleanup53_crit_edge, label %lor.lhs.false

if.then3.cleanup53_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

lor.lhs.false:                                    ; preds = %if.then3
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %5 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %lor.lhs.false.if.end8_crit_edge, label %land.lhs.true

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %pixelformat, align 1
  %pixelformat6 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %pixelformat6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixelformat6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup53_crit_edge

land.lhs.true.cleanup53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 4
  %call11 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %12, i32 noundef 9) #6
  %num_buffers.i84 = getelementptr inbounds %struct.vb2_queue, ptr %call11, i32 0, i32 21
  %13 = ptrtoint ptr %num_buffers.i84 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_buffers.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i85.not = icmp eq i32 %14, 0
  br i1 %cmp.i85.not, label %if.end8.if.end18_crit_edge, label %if.end8.cleanup53_crit_edge

if.end8.cleanup53_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else:                                          ; preds = %entry
  %num_buffers.i86 = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %15 = ptrtoint ptr %num_buffers.i86 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_buffers.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i87.not = icmp eq i32 %16, 0
  br i1 %cmp.i87.not, label %if.else.if.end18_crit_edge, label %if.else.cleanup53_crit_edge

if.else.cleanup53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  %pixelformat19 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat19 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %pixelformat19, align 1
  %19 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_encoder, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 8
  %variant4.i.i = getelementptr inbounds %struct.hantro_dev, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %variant4.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant4.i.i, align 8
  %dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %24, i32 0, i32 4
  %num_dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %24, i32 0, i32 5
  %enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %24, i32 0, i32 2
  %num_enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %24, i32 0, i32 3
  %storemerge.in.i.i = select i1 %tobool.not.i.i, ptr %num_dec_fmts.i.i, ptr %num_enc_fmts.i.i
  %formats.0.in.i.i = select i1 %tobool.not.i.i, ptr %dec_fmts.i.i, ptr %enc_fmts.i.i
  %25 = ptrtoint ptr %formats.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %formats.0.i.i = load ptr, ptr %formats.0.in.i.i, align 4
  %26 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %storemerge.i.i = load i32, ptr %storemerge.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i)
  %cmp36.not.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %cmp36.not.i, label %if.end18.for.end.i_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.for.end.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %fourcc1.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.037.i, i32 1
  %27 = ptrtoint ptr %fourcc1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fourcc1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %18)
  %cmp2.i = icmp eq i32 %28, %18
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.037.i
  br label %hantro_find_format.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %storemerge.i.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end18.for.end.i_crit_edge
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %hantro_find_format.exit.thread94

hantro_find_format.exit.thread94:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_src_fmt96 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %29 = ptrtoint ptr %vpu_src_fmt96 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %vpu_src_fmt96, align 8
  %src_fmt2197 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %30 = call ptr @memcpy(ptr %src_fmt2197, ptr %pix_mp, i32 192)
  br label %if.end25

lor.lhs.false.i.i:                                ; preds = %for.end.i
  %postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %postproc_fmts.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.hantro_find_format.exit.thread_crit_edge, label %hantro_get_postproc_formats.exit.i

lor.lhs.false.i.i.hantro_find_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_find_format.exit.thread

hantro_get_postproc_formats.exit.i:               ; preds = %lor.lhs.false.i.i
  %num_postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %24, i32 0, i32 7
  %33 = ptrtoint ptr %num_postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_postproc_fmts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp638.not.i = icmp eq i32 %34, 0
  br i1 %cmp638.not.i, label %hantro_get_postproc_formats.exit.i.hantro_find_format.exit.thread_crit_edge, label %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge

hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge: ; preds = %hantro_get_postproc_formats.exit.i
  br label %for.body7.i

hantro_get_postproc_formats.exit.i.hantro_find_format.exit.thread_crit_edge: ; preds = %hantro_get_postproc_formats.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_find_format.exit.thread

for.body7.i:                                      ; preds = %for.inc14.i.for.body7.i_crit_edge, %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge
  %i.139.i = phi i32 [ %inc15.i, %for.inc14.i.for.body7.i_crit_edge ], [ 0, %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge ]
  %fourcc9.i = getelementptr %struct.hantro_fmt, ptr %32, i32 %i.139.i, i32 1
  %35 = ptrtoint ptr %fourcc9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fourcc9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %18)
  %cmp10.i = icmp eq i32 %36, %18
  br i1 %cmp10.i, label %if.then11.i, label %for.inc14.i

if.then11.i:                                      ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.i = getelementptr %struct.hantro_fmt, ptr %32, i32 %i.139.i
  br label %hantro_find_format.exit

for.inc14.i:                                      ; preds = %for.body7.i
  %inc15.i = add nuw i32 %i.139.i, 1
  %exitcond42.not.i = icmp eq i32 %inc15.i, %34
  br i1 %exitcond42.not.i, label %for.inc14.i.hantro_find_format.exit_crit_edge, label %for.inc14.i.for.body7.i_crit_edge

for.inc14.i.for.body7.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

for.inc14.i.hantro_find_format.exit_crit_edge:    ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_find_format.exit

hantro_find_format.exit.thread:                   ; preds = %hantro_get_postproc_formats.exit.i.hantro_find_format.exit.thread_crit_edge, %lor.lhs.false.i.i.hantro_find_format.exit.thread_crit_edge
  %vpu_src_fmt90 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %37 = ptrtoint ptr %vpu_src_fmt90 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %vpu_src_fmt90, align 8
  %src_fmt2191 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %38 = call ptr @memcpy(ptr %src_fmt2191, ptr %pix_mp, i32 192)
  br label %if.then24

hantro_find_format.exit:                          ; preds = %for.inc14.i.hantro_find_format.exit_crit_edge, %if.then11.i, %if.then.i
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx8.i, %if.then11.i ], [ null, %for.inc14.i.hantro_find_format.exit_crit_edge ]
  %vpu_src_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %39 = ptrtoint ptr %vpu_src_fmt to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i, ptr %vpu_src_fmt, align 8
  %src_fmt21 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %40 = call ptr @memcpy(ptr %src_fmt21, ptr %pix_mp, i32 192)
  br i1 %tobool.not.i.i, label %hantro_find_format.exit.if.then24_crit_edge, label %hantro_find_format.exit.if.end25_crit_edge

hantro_find_format.exit.if.end25_crit_edge:       ; preds = %hantro_find_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

hantro_find_format.exit.if.then24_crit_edge:      ; preds = %hantro_find_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %hantro_find_format.exit.if.then24_crit_edge, %hantro_find_format.exit.thread
  %vpu_src_fmt93 = phi ptr [ %vpu_src_fmt90, %hantro_find_format.exit.thread ], [ %vpu_src_fmt, %hantro_find_format.exit.if.then24_crit_edge ]
  tail call fastcc void @hantro_reset_raw_fmt(ptr noundef %ctx)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %hantro_find_format.exit.if.end25_crit_edge, %hantro_find_format.exit.thread94
  %vpu_src_fmt92 = phi ptr [ %vpu_src_fmt93, %if.then24 ], [ %vpu_src_fmt, %hantro_find_format.exit.if.end25_crit_edge ], [ %vpu_src_fmt96, %hantro_find_format.exit.thread94 ]
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 4
  %41 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %colorspace, align 1
  %colorspace26 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 4
  %43 = ptrtoint ptr %colorspace26 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %colorspace26, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %47 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %46, ptr %47, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 10
  %49 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %xfer_func, align 1
  %xfer_func29 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 10
  %51 = ptrtoint ptr %xfer_func29 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %xfer_func29, align 8
  %quantization = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 9
  %52 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %quantization, align 1
  %quantization31 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 9
  %54 = ptrtoint ptr %quantization31 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %quantization31, align 1
  %55 = ptrtoint ptr %pixelformat19 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %pixelformat19, align 1
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %56, label %if.end25.hantro_update_requires_request.exit_crit_edge [
    i32 1195724874, label %sw.bb.i
    i32 1395803981, label %if.end25.sw.bb1.i_crit_edge
    i32 1178095702, label %if.end25.sw.bb1.i_crit_edge116
    i32 875967059, label %if.end25.sw.bb1.i_crit_edge117
    i32 892744275, label %if.end25.sw.bb1.i_crit_edge118
    i32 1178161238, label %if.end25.sw.bb1.i_crit_edge119
  ]

if.end25.sw.bb1.i_crit_edge119:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end25.sw.bb1.i_crit_edge118:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end25.sw.bb1.i_crit_edge117:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end25.sw.bb1.i_crit_edge116:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end25.sw.bb1.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end25.hantro_update_requires_request.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_update_requires_request.exit

sw.bb.i:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %m2m_ctx, align 4
  %requires_requests.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %59, i32 0, i32 8, i32 0, i32 4
  %60 = ptrtoint ptr %requires_requests.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load.i88 = load i16, ptr %requires_requests.i, align 4
  %bf.clear.i = and i16 %bf.load.i88, -513
  store i16 %bf.clear.i, ptr %requires_requests.i, align 4
  br label %hantro_update_requires_request.exit

sw.bb1.i:                                         ; preds = %if.end25.sw.bb1.i_crit_edge, %if.end25.sw.bb1.i_crit_edge116, %if.end25.sw.bb1.i_crit_edge117, %if.end25.sw.bb1.i_crit_edge118, %if.end25.sw.bb1.i_crit_edge119
  %61 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %m2m_ctx, align 4
  %requires_requests6.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %62, i32 0, i32 8, i32 0, i32 4
  %63 = ptrtoint ptr %requires_requests6.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load7.i = load i16, ptr %requires_requests6.i, align 4
  %bf.set9.i = or i16 %bf.load7.i, 512
  store i16 %bf.set9.i, ptr %requires_requests6.i, align 4
  br label %hantro_update_requires_request.exit

hantro_update_requires_request.exit:              ; preds = %sw.bb1.i, %sw.bb.i, %if.end25.hantro_update_requires_request.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %64 = load i32, ptr @hantro_debug, align 4
  %and = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %hantro_update_requires_request.exit.do.body41_crit_edge, label %do.end

hantro_update_requires_request.exit.do.body41_crit_edge: ; preds = %hantro_update_requires_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body41

do.end:                                           ; preds = %hantro_update_requires_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %vpu_src_fmt92 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vpu_src_fmt92, align 8
  %codec_mode = getelementptr inbounds %struct.hantro_fmt, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %codec_mode, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 476, i32 noundef %68) #9
  br label %do.body41

do.body41:                                        ; preds = %do.end, %hantro_update_requires_request.exit.do.body41_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %69 = load i32, ptr @hantro_debug, align 4
  %and42 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.cleanup53_crit_edge, label %do.end47

do.body41.cleanup53_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %pix_mp, align 1
  %height = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 1
  %72 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %height, align 1
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef 478, i32 noundef %71, i32 noundef %73) #9
  br label %cleanup53

cleanup53:                                        ; preds = %do.end47, %do.body41.cleanup53_crit_edge, %if.else.cleanup53_crit_edge, %if.end8.cleanup53_crit_edge, %land.lhs.true.cleanup53_crit_edge, %if.then3.cleanup53_crit_edge
  %retval.1 = phi i32 [ -16, %if.end8.cleanup53_crit_edge ], [ -16, %if.else.cleanup53_crit_edge ], [ 0, %do.end47 ], [ 0, %do.body41.cleanup53_crit_edge ], [ -16, %land.lhs.true.cleanup53_crit_edge ], [ -16, %if.then3.cleanup53_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hantro_try_fmt(ptr noundef %ctx, ptr noundef %pix_mp, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 11
  br i1 %0, label %switch.hole_check, label %entry.lor.rhs_crit_edge

entry.lor.rhs_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %switch.hole_check.lor.rhs_crit_edge, %entry.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %type)
  %cmp12 = icmp ne i32 %type, 14
  %phi.cast = zext i1 %cmp12 to i32
  br label %lor.end

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1387, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs_crit_edge, label %switch.hole_check.lor.end_crit_edge

switch.hole_check.lor.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

switch.hole_check.lor.rhs_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.end:                                          ; preds = %switch.hole_check.lor.end_crit_edge, %lor.rhs
  %2 = phi i32 [ %phi.cast, %lor.rhs ], [ 0, %switch.hole_check.lor.end_crit_edge ]
  %is_encoder = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 2
  %3 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_encoder, align 4, !range !78
  %5 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp15 = icmp eq i32 %2, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %6 = load i32, ptr @hantro_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %lor.end.do.end30_crit_edge, label %do.end

lor.end.do.end30_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end:                                           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %pixelformat, align 1
  %and20 = and i32 %8, 127
  %shr = lshr i32 %8, 8
  %and22 = and i32 %shr, 127
  %shr24 = lshr i32 %8, 16
  %and25 = and i32 %shr24, 127
  %shr27 = lshr i32 %8, 24
  %and28 = and i32 %shr27, 127
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 249, i32 noundef %and20, i32 noundef %and22, i32 noundef %and25, i32 noundef %and28) #9
  br label %do.end30

do.end30:                                         ; preds = %do.end, %lor.end.do.end30_crit_edge
  %pixelformat31 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat31 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %pixelformat31, align 1
  %11 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_encoder, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 8
  %variant4.i.i = getelementptr inbounds %struct.hantro_dev, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %variant4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %variant4.i.i, align 8
  %dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %16, i32 0, i32 4
  %num_dec_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %16, i32 0, i32 5
  %enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %16, i32 0, i32 2
  %num_enc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %16, i32 0, i32 3
  %storemerge.in.i.i = select i1 %tobool.not.i.i, ptr %num_dec_fmts.i.i, ptr %num_enc_fmts.i.i
  %formats.0.in.i.i = select i1 %tobool.not.i.i, ptr %dec_fmts.i.i, ptr %enc_fmts.i.i
  %17 = ptrtoint ptr %formats.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %formats.0.i.i = load ptr, ptr %formats.0.in.i.i, align 4
  %18 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %storemerge.i.i = load i32, ptr %storemerge.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i)
  %cmp36.not.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %cmp36.not.i, label %do.end30.for.end.i_crit_edge, label %do.end30.for.body.i_crit_edge

do.end30.for.body.i_crit_edge:                    ; preds = %do.end30
  br label %for.body.i

do.end30.for.end.i_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end30.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end30.for.body.i_crit_edge ]
  %fourcc1.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.037.i, i32 1
  %19 = ptrtoint ptr %fourcc1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fourcc1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %10)
  %cmp2.i = icmp eq i32 %20, %10
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.037.i
  br label %hantro_find_format.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %storemerge.i.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end30.for.end.i_crit_edge
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %for.end.i.if.then34_crit_edge

for.end.i.if.then34_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

lor.lhs.false.i.i:                                ; preds = %for.end.i
  %postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %postproc_fmts.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.then34_crit_edge, label %hantro_get_postproc_formats.exit.i

lor.lhs.false.i.i.if.then34_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

hantro_get_postproc_formats.exit.i:               ; preds = %lor.lhs.false.i.i
  %num_postproc_fmts.i.i = getelementptr inbounds %struct.hantro_variant, ptr %16, i32 0, i32 7
  %23 = ptrtoint ptr %num_postproc_fmts.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_postproc_fmts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp638.not.i = icmp eq i32 %24, 0
  br i1 %cmp638.not.i, label %hantro_get_postproc_formats.exit.i.if.then34_crit_edge, label %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge

hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge: ; preds = %hantro_get_postproc_formats.exit.i
  br label %for.body7.i

hantro_get_postproc_formats.exit.i.if.then34_crit_edge: ; preds = %hantro_get_postproc_formats.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

for.body7.i:                                      ; preds = %for.inc14.i.for.body7.i_crit_edge, %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge
  %i.139.i = phi i32 [ %inc15.i, %for.inc14.i.for.body7.i_crit_edge ], [ 0, %hantro_get_postproc_formats.exit.i.for.body7.i_crit_edge ]
  %fourcc9.i = getelementptr %struct.hantro_fmt, ptr %22, i32 %i.139.i, i32 1
  %25 = ptrtoint ptr %fourcc9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fourcc9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %10)
  %cmp10.i = icmp eq i32 %26, %10
  br i1 %cmp10.i, label %if.then11.i, label %for.inc14.i

if.then11.i:                                      ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.i = getelementptr %struct.hantro_fmt, ptr %22, i32 %i.139.i
  br label %hantro_find_format.exit

for.inc14.i:                                      ; preds = %for.body7.i
  %inc15.i = add nuw i32 %i.139.i, 1
  %exitcond42.not.i = icmp eq i32 %inc15.i, %24
  br i1 %exitcond42.not.i, label %for.inc14.i.if.then34_crit_edge, label %for.inc14.i.for.body7.i_crit_edge

for.inc14.i.for.body7.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

for.inc14.i.if.then34_crit_edge:                  ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

hantro_find_format.exit:                          ; preds = %if.then11.i, %if.then.i
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx8.i, %if.then11.i ]
  %tobool33.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool33.not, label %hantro_find_format.exit.if.then34_crit_edge, label %hantro_find_format.exit.if.end38_crit_edge

hantro_find_format.exit.if.end38_crit_edge:       ; preds = %hantro_find_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

hantro_find_format.exit.if.then34_crit_edge:      ; preds = %hantro_find_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.then34:                                        ; preds = %hantro_find_format.exit.if.then34_crit_edge, %for.inc14.i.if.then34_crit_edge, %hantro_get_postproc_formats.exit.i.if.then34_crit_edge, %lor.lhs.false.i.i.if.then34_crit_edge, %for.end.i.if.then34_crit_edge
  br i1 %cmp36.not.i, label %if.then34.hantro_get_default_fmt.exit_crit_edge, label %if.then34.for.body.i12_crit_edge

if.then34.for.body.i12_crit_edge:                 ; preds = %if.then34
  br label %for.body.i12

if.then34.hantro_get_default_fmt.exit_crit_edge:  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_get_default_fmt.exit

for.body.i12:                                     ; preds = %for.inc.i17.for.body.i12_crit_edge, %if.then34.for.body.i12_crit_edge
  %i.014.i = phi i32 [ %inc.i15, %for.inc.i17.for.body.i12_crit_edge ], [ 0, %if.then34.for.body.i12_crit_edge ]
  %codec_mode.i = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.014.i, i32 2
  %27 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp1.i = icmp eq i32 %28, -1
  %cmp3.i = xor i1 %cmp15, %cmp1.i
  br i1 %cmp3.i, label %if.then.i14, label %for.inc.i17

if.then.i14:                                      ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i13 = getelementptr %struct.hantro_fmt, ptr %formats.0.i.i, i32 %i.014.i
  br label %hantro_get_default_fmt.exit

for.inc.i17:                                      ; preds = %for.body.i12
  %inc.i15 = add nuw i32 %i.014.i, 1
  %exitcond.not.i16 = icmp eq i32 %inc.i15, %storemerge.i.i
  br i1 %exitcond.not.i16, label %for.inc.i17.hantro_get_default_fmt.exit_crit_edge, label %for.inc.i17.for.body.i12_crit_edge

for.inc.i17.for.body.i12_crit_edge:               ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i12

for.inc.i17.hantro_get_default_fmt.exit_crit_edge: ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %hantro_get_default_fmt.exit

hantro_get_default_fmt.exit:                      ; preds = %for.inc.i17.hantro_get_default_fmt.exit_crit_edge, %if.then.i14, %if.then34.hantro_get_default_fmt.exit_crit_edge
  %retval.0.i18 = phi ptr [ %arrayidx.i13, %if.then.i14 ], [ null, %if.then34.hantro_get_default_fmt.exit_crit_edge ], [ null, %for.inc.i17.hantro_get_default_fmt.exit_crit_edge ]
  %fourcc = getelementptr inbounds %struct.hantro_fmt, ptr %retval.0.i18, i32 0, i32 1
  %29 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fourcc, align 4
  %31 = ptrtoint ptr %pixelformat31 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %pixelformat31, align 1
  br label %if.end38

if.end38:                                         ; preds = %hantro_get_default_fmt.exit, %hantro_find_format.exit.if.end38_crit_edge
  %fmt.0 = phi ptr [ %retval.0.i, %hantro_find_format.exit.if.end38_crit_edge ], [ %retval.0.i18, %hantro_get_default_fmt.exit ]
  br i1 %cmp15, label %if.else100, label %if.else

if.else:                                          ; preds = %if.end38
  %32 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_encoder, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool42.not = icmp eq i8 %33, 0
  br i1 %tobool42.not, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %34 = ptrtoint ptr %vpu_dst_fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vpu_dst_fmt, align 4
  br label %if.then53

if.else44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %vpu_src_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %36 = ptrtoint ptr %vpu_src_fmt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vpu_src_fmt, align 8
  %src_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %38 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_fmt, align 4
  %40 = ptrtoint ptr %pix_mp to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %pix_mp, align 1
  %height = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height, align 4
  %height47 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 1
  %43 = ptrtoint ptr %height47 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %height47, align 1
  br label %if.then53

if.then53:                                        ; preds = %if.else44, %if.then43
  %vpu_fmt.0.ph = phi ptr [ %37, %if.else44 ], [ %35, %if.then43 ]
  %field24 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 3
  %44 = ptrtoint ptr %field24 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 1, ptr %field24, align 1
  %height5125 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 1
  %frmsize26 = getelementptr inbounds %struct.hantro_fmt, ptr %vpu_fmt.0.ph, i32 0, i32 6
  tail call void @v4l2_apply_frmsize_constraints(ptr noundef %pix_mp, ptr noundef %height5125, ptr noundef %frmsize26) #6
  %fourcc54 = getelementptr inbounds %struct.hantro_fmt, ptr %fmt.0, i32 0, i32 1
  %45 = ptrtoint ptr %fourcc54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fourcc54, align 4
  %47 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %pix_mp, align 1
  %49 = ptrtoint ptr %height5125 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %height5125, align 1
  %call57 = tail call i32 @v4l2_fill_pixfmt_mp(ptr noundef %pix_mp, i32 noundef %46, i32 noundef %48, i32 noundef %50) #6
  %vpu_src_fmt58 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %51 = ptrtoint ptr %vpu_src_fmt58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vpu_src_fmt58, align 8
  %fourcc59 = getelementptr inbounds %struct.hantro_fmt, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %fourcc59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fourcc59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967059, i32 %54)
  %cmp60 = icmp eq i32 %54, 875967059
  br i1 %cmp60, label %land.lhs.true, label %if.then53.if.else67_crit_edge

if.then53.if.else67_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else67

land.lhs.true:                                    ; preds = %if.then53
  %call62 = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %fmt.0) #6
  br i1 %call62, label %land.lhs.true.if.else67_crit_edge, label %if.then63

land.lhs.true.if.else67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else67

if.then63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %pix_mp, align 1
  %57 = ptrtoint ptr %height5125 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %height5125, align 1
  %sub.i = shl i32 %56, 2
  %59 = add i32 %sub.i, 60
  %mul.i = and i32 %59, -64
  %sub2.i = add i32 %58, 15
  %div37.i = lshr i32 %sub2.i, 4
  %mul4.i = mul i32 %mul.i, %div37.i
  %plane_fmt = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 5
  %60 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %plane_fmt, align 1
  %add5.i = add i32 %61, 32
  %add = add i32 %add5.i, %mul4.i
  store i32 %add, ptr %plane_fmt, align 1
  br label %if.end114

if.else67:                                        ; preds = %land.lhs.true.if.else67_crit_edge, %if.then53.if.else67_crit_edge
  %62 = ptrtoint ptr %vpu_src_fmt58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vpu_src_fmt58, align 8
  %fourcc69 = getelementptr inbounds %struct.hantro_fmt, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %fourcc69 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fourcc69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1178161238, i32 %65)
  %cmp70 = icmp eq i32 %65, 1178161238
  br i1 %cmp70, label %land.lhs.true72, label %if.else67.if.else82_crit_edge

if.else67.if.else82_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else82

land.lhs.true72:                                  ; preds = %if.else67
  %call73 = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %fmt.0) #6
  br i1 %call73, label %land.lhs.true72.if.else82_crit_edge, label %if.then74

land.lhs.true72.if.else82_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else82

if.then74:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %pix_mp, align 1
  %68 = ptrtoint ptr %height5125 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %height5125, align 1
  %conv.i7.i = and i32 %69, 65535
  %add.i8.i = add nuw nsw i32 %conv.i7.i, 63
  %div2.i9.i = lshr i32 %add.i8.i, 6
  %conv.i.i = shl i32 %67, 4
  %add.i.i = and i32 %conv.i.i, 1048560
  %70 = add nuw nsw i32 %add.i.i, 1008
  %mul.i19 = and i32 %70, 2096128
  %mul6.i = mul nuw nsw i32 %mul.i19, %div2.i9.i
  %plane_fmt78 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 5
  %71 = ptrtoint ptr %plane_fmt78 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %plane_fmt78, align 1
  %add81 = add i32 %mul6.i, %72
  store i32 %add81, ptr %plane_fmt78, align 1
  br label %if.end114

if.else82:                                        ; preds = %land.lhs.true72.if.else82_crit_edge, %if.else67.if.else82_crit_edge
  %73 = ptrtoint ptr %vpu_src_fmt58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vpu_src_fmt58, align 8
  %fourcc84 = getelementptr inbounds %struct.hantro_fmt, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %fourcc84 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fourcc84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 892744275, i32 %76)
  %cmp85 = icmp eq i32 %76, 892744275
  br i1 %cmp85, label %land.lhs.true87, label %if.else82.if.end114_crit_edge

if.else82.if.end114_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

land.lhs.true87:                                  ; preds = %if.else82
  %call88 = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %fmt.0) #6
  br i1 %call88, label %land.lhs.true87.if.end114_crit_edge, label %if.then89

land.lhs.true87.if.end114_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then89:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %pix_mp, align 1
  %79 = ptrtoint ptr %height5125 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %height5125, align 1
  %mul.i20 = mul i32 %80, %78
  %div1.i = lshr i32 %mul.i20, 4
  %plane_fmt93 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 5
  %81 = ptrtoint ptr %plane_fmt93 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %plane_fmt93, align 1
  %add96 = add i32 %div1.i, %82
  store i32 %add96, ptr %plane_fmt93, align 1
  br label %if.end114

if.else100:                                       ; preds = %if.end38
  %num_planes = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 6
  %83 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %num_planes, align 1
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 3
  %84 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 1, ptr %field, align 1
  %height51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 1
  %frmsize = getelementptr inbounds %struct.hantro_fmt, ptr %fmt.0, i32 0, i32 6
  tail call void @v4l2_apply_frmsize_constraints(ptr noundef %pix_mp, ptr noundef %height51, ptr noundef %frmsize) #6
  %plane_fmt101 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix_mp, i32 0, i32 5
  %85 = ptrtoint ptr %plane_fmt101 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %plane_fmt101, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool104.not = icmp eq i32 %86, 0
  br i1 %tobool104.not, label %if.then105, label %if.else100.if.end114_crit_edge

if.else100.if.end114_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then105:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #8
  %header_size = getelementptr inbounds %struct.hantro_fmt, ptr %fmt.0, i32 0, i32 3
  %87 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %header_size, align 4
  %89 = ptrtoint ptr %pix_mp to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %pix_mp, align 1
  %91 = ptrtoint ptr %height51 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %height51, align 1
  %mul = mul i32 %92, %90
  %max_depth = getelementptr inbounds %struct.hantro_fmt, ptr %fmt.0, i32 0, i32 4
  %93 = ptrtoint ptr %max_depth to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_depth, align 4
  %mul108 = mul i32 %mul, %94
  %add109 = add i32 %mul108, %88
  %95 = ptrtoint ptr %plane_fmt101 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %add109, ptr %plane_fmt101, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then105, %if.else100.if.end114_crit_edge, %if.then89, %land.lhs.true87.if.end114_crit_edge, %if.else82.if.end114_crit_edge, %if.then74, %if.then63
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_apply_frmsize_constraints(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fill_pixfmt_mp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hantro_needs_postproc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_postproc_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_postproc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @hantro_ioctl_ops, !1, !"hantro_ioctl_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 557, i32 29}
!2 = !{ptr @hantro_queue_ops, !3, !"hantro_queue_ops", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 774, i32 22}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 536, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hantro_set_fmt_cap._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @hantro_set_fmt_cap._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 537, i32 2}
!12 = !{ptr @hantro_set_fmt_cap._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hantro_set_fmt_cap._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 245, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hantro_try_fmt._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @hantro_try_fmt._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 476, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hantro_set_fmt_out._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @hantro_set_fmt_out._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @hantro_set_fmt_out._entry.10, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 477, i32 2}
!26 = !{ptr @hantro_set_fmt_out._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 108, i32 49}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 228, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @vidioc_g_fmt_cap_mplane._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @vidioc_g_fmt_cap_mplane._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 215, i32 2}
!36 = !{ptr @vidioc_g_fmt_out_mplane._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vidioc_g_fmt_out_mplane._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 120, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vidioc_enum_framesizes._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @vidioc_enum_framesizes._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 127, i32 3}
!45 = !{ptr @vidioc_enum_framesizes._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @vidioc_enum_framesizes._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 602, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @hantro_queue_setup._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @hantro_queue_setup._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 630, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @hantro_buf_plane_check._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @hantro_buf_plane_check._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 633, i32 4}
!59 = !{ptr @hantro_buf_plane_check._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @hantro_buf_plane_check._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/hantro/hantro_v4l2.c", i32 698, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @hantro_start_streaming._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @hantro_start_streaming._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i8 0, i8 2}
!79 = !{!"branch_weights", i32 2000, i32 1}
