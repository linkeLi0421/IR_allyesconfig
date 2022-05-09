; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vdec_pic_info = type { i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mtk_vcodec_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [14 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, %struct.mutex, %struct.mutex, %struct.mtk_vcodec_pm, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mtk_vcodec_pm = type { %struct.mtk_vcodec_clk, ptr, %struct.mtk_vcodec_clk, ptr, ptr, ptr }
%struct.mtk_vcodec_clk = type { ptr, i32 }
%struct.mtk_vcodec_dec_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mtk_video_fmt = type { i32, i32, i32, i32 }
%struct.mtk_video_dec_buf = type { %struct.v4l2_m2m_buffer, i8, i8, i8, i8, %union.anon.121 }
%union.anon.121 = type { %struct.vdec_fb }
%struct.vdec_fb = type { %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, i32 }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.107, [2 x i32] }
%union.anon.107 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.mtk_codec_framesizes = type { i32, %struct.v4l2_frmsize_stepwise }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@mtk_vcodec_dec_set_default_params.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ctx->decode_work)\00", [59 x i8] zeroinitializer }, align 32
@vb2ops_vdec_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] vq->type=%d err\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vb2ops_vdec_queue_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c\00", [45 x i8] zeroinitializer }, align 32
@vb2ops_vdec_queue_setup._entry_ptr = internal global ptr @vb2ops_vdec_queue_setup._entry, section ".printk_index", align 4
@vb2ops_vdec_queue_setup.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_dec\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[%d]\09 type = %d, get %d plane(s), %d buffer(s) of size 0x%x 0x%x \00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s(),%d: [%d]\09 type = %d, get %d plane(s), %d buffer(s) of size 0x%x 0x%x \00", [53 x i8] zeroinitializer }, align 32
@vb2ops_vdec_buf_prepare.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vb2ops_vdec_buf_prepare\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%d] (%d) id=%d\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(),%d: [%d] (%d) id=%d\00", [39 x i8] zeroinitializer }, align 32
@vb2ops_vdec_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] data will not fit into plane %d (%lu < %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@vb2ops_vdec_buf_prepare._entry_ptr = internal global ptr @vb2ops_vdec_buf_prepare._entry, section ".printk_index", align 4
@vb2ops_vdec_buf_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Unrecoverable error on buffer.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vb2ops_vdec_buf_finish\00", [41 x i8] zeroinitializer }, align 32
@vb2ops_vdec_buf_finish._entry_ptr = internal global ptr @vb2ops_vdec_buf_finish._entry, section ".printk_index", align 4
@vb2ops_vdec_stop_streaming.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vb2ops_vdec_stop_streaming\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%d] (%d) state=(%x) ctx->decoded_frame_cnt=%d\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(),%d: [%d] (%d) state=(%x) ctx->decoded_frame_cnt=%d\00", [40 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stop_streaming.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.13, ptr @.str.3, ptr @.str.16, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%d]-> new(%d,%d), old(%d,%d), real(%d,%d)\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(),%d: [%d]-> new(%d,%d), old(%d,%d), real(%d,%d)\00", [44 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] DecodeFinal failed, ret=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@vb2ops_vdec_stop_streaming._entry_ptr = internal global ptr @vb2ops_vdec_stop_streaming._entry, section ".printk_index", align 4
@mtk_vdec_m2m_ops = dso_local constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @m2mops_vdec_device_run, ptr @m2mops_vdec_job_ready, ptr @m2mops_vdec_job_abort }, [20 x i8] zeroinitializer }, align 32
@mtk_vdec_ioctl_ops = dso_local constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_vdec_querycap, ptr @vidioc_vdec_enum_fmt_vid_cap, ptr null, ptr @vidioc_vdec_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_vdec_g_fmt, ptr @vidioc_vdec_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_vdec_s_fmt, ptr @vidioc_vdec_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap_mplane, ptr @vidioc_try_fmt_vid_out_mplane, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @vidioc_vdec_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @vidioc_vdec_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_vdec_g_selection, ptr @vidioc_vdec_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_decoder_cmd, ptr @vidioc_try_decoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_vdec_subscribe_evt, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_queue_init.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_vcodec_dec_queue_init\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[%d]\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(),%d: [%d]\00", [18 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@mtk_vcodec_dec_queue_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to initialize videobuf2 queue(output)\0A\00", [53 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_queue_init._entry_ptr = internal global ptr @mtk_vcodec_dec_queue_init._entry, section ".printk_index", align 4
@mtk_vcodec_dec_queue_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to initialize videobuf2 queue(capture)\0A\00", [52 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_queue_init._entry_ptr.25 = internal global ptr @mtk_vcodec_dec_queue_init._entry.23, section ".printk_index", align 4
@m2mops_vdec_job_ready.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.27, ptr @.str.3, ptr @.str.20, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"m2mops_vdec_job_ready\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk-vcodec-dec\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:mt8173\00", [16 x i8] zeroinitializer }, align 32
@vidioc_vdec_g_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] no vb2 queue for type=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_vdec_g_fmt\00", [46 x i8] zeroinitializer }, align 32
@vidioc_vdec_g_fmt._entry_ptr = internal global ptr @vidioc_vdec_g_fmt._entry, section ".printk_index", align 4
@vidioc_vdec_g_fmt.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[%d] type=%d state=%d Format information could not be read, not ready yet!\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s(),%d: [%d] type=%d state=%d Format information could not be read, not ready yet!\00", [44 x i8] zeroinitializer }, align 32
@vidioc_vdec_s_fmt.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.34, ptr @.str.3, ptr @.str.20, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_vdec_s_fmt\00", [46 x i8] zeroinitializer }, align 32
@vidioc_vdec_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.34, ptr @.str.3, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] out_q_ctx buffers already requested\0A\00", [62 x i8] zeroinitializer }, align 32
@vidioc_vdec_s_fmt._entry_ptr = internal global ptr @vidioc_vdec_s_fmt._entry, section ".printk_index", align 4
@vidioc_vdec_s_fmt._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.3, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] cap_q_ctx buffers already requested\0A\00", [62 x i8] zeroinitializer }, align 32
@vidioc_vdec_s_fmt._entry_ptr.38 = internal global ptr @vidioc_vdec_s_fmt._entry.36, section ".printk_index", align 4
@vidioc_vdec_s_fmt._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.3, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d]: vdec_if_init() fail ret=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@vidioc_vdec_s_fmt._entry_ptr.41 = internal global ptr @vidioc_vdec_s_fmt._entry.39, section ".printk_index", align 4
@vidioc_vdec_s_fmt._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.34, ptr @.str.3, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d]Error!! Get GET_PARAM_PICTURE_INFO Fail\0A\00", [54 x i8] zeroinitializer }, align 32
@vidioc_vdec_s_fmt._entry_ptr.44 = internal global ptr @vidioc_vdec_s_fmt._entry.42, section ".printk_index", align 4
@vidioc_vdec_s_fmt.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.34, ptr @.str.3, ptr @.str.45, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"[%d] vdec_if_init() num_plane = %d wxh=%dx%d pic wxh=%dx%d sz[0]=0x%x sz[1]=0x%x\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"%s(),%d: [%d] vdec_if_init() num_plane = %d wxh=%dx%d pic wxh=%dx%d sz[0]=0x%x sz[1]=0x%x\00", [38 x i8] zeroinitializer }, align 32
@vidioc_try_fmt.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_try_fmt\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"before resize width=%d, height=%d, after resize width=%d, height=%d, sizeimage=%d\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s(),%d: before resize width=%d, height=%d, after resize width=%d, height=%d, sizeimage=%d\00", [37 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_out_mplane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] sizeimage of output format must be given\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vidioc_try_fmt_vid_out_mplane\00", [34 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_out_mplane._entry_ptr = internal global ptr @vidioc_try_fmt_vid_out_mplane._entry, section ".printk_index", align 4
@vidioc_vdec_qbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] Call on QBUF after unrecoverable error\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vidioc_vdec_qbuf\00", [47 x i8] zeroinitializer }, align 32
@vidioc_vdec_qbuf._entry_ptr = internal global ptr @vidioc_vdec_qbuf._entry, section ".printk_index", align 4
@vidioc_vdec_dqbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] Call on DQBUF after unrecoverable error\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_vdec_dqbuf\00", [46 x i8] zeroinitializer }, align 32
@vidioc_vdec_dqbuf._entry_ptr = internal global ptr @vidioc_vdec_dqbuf._entry, section ".printk_index", align 4
@vidioc_decoder_cmd.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_decoder_cmd\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"decoder cmd=%u\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(),%d: decoder cmd=%u\00", [40 x i8] zeroinitializer }, align 32
@vidioc_decoder_cmd.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.3, ptr @.str.59, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Output stream is off. No need to flush.\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(),%d: Output stream is off. No need to flush.\00", [47 x i8] zeroinitializer }, align 32
@vidioc_decoder_cmd.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.3, ptr @.str.61, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Capture stream is off. No need to flush.\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: Capture stream is off. No need to flush.\00", [46 x i8] zeroinitializer }, align 32
@vidioc_enum_framesizes.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_enum_framesizes\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"4K is enabled\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(),%d: 4K is enabled\00", [41 x i8] zeroinitializer }, align 32
@vidioc_enum_framesizes.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.63, ptr @.str.3, ptr @.str.66, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%x, %d %d %d %d %d %d\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(),%d: %x, %d %d %d %d %d %d\00", [33 x i8] zeroinitializer }, align 32
@switch.table.vidioc_vdec_g_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 244, i32 196], [44 x i8] zeroinitializer }, align 32
@switch.table.vidioc_vdec_s_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 244, i32 196], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.68 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 131, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 696, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 715, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 729, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 736, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 763, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 799, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 826, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 836, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"mtk_vdec_m2m_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 883, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"mtk_vdec_ioctl_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 889, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 929, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 943, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 958, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 861, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 200, i32 23 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 201, i32 25 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 607, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 678, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 404, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 418, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 428, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 463, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 481, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 507, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 260, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 316, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 175, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 189, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 76, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 84, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 88, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 534, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private constant [54 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 540, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [31 x i8] c"switch.table.vidioc_vdec_g_fmt\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [31 x i8] c"switch.table.vidioc_vdec_s_fmt\00", align 1
@llvm.compiler.used = appending global [92 x ptr] [ptr @mtk_vcodec_dec_queue_init._entry, ptr @mtk_vcodec_dec_queue_init._entry.23, ptr @mtk_vcodec_dec_queue_init._entry_ptr, ptr @mtk_vcodec_dec_queue_init._entry_ptr.25, ptr @vb2ops_vdec_buf_finish._entry, ptr @vb2ops_vdec_buf_finish._entry_ptr, ptr @vb2ops_vdec_buf_prepare._entry, ptr @vb2ops_vdec_buf_prepare._entry_ptr, ptr @vb2ops_vdec_queue_setup._entry, ptr @vb2ops_vdec_queue_setup._entry_ptr, ptr @vb2ops_vdec_stop_streaming._entry, ptr @vb2ops_vdec_stop_streaming._entry_ptr, ptr @vidioc_try_fmt_vid_out_mplane._entry, ptr @vidioc_try_fmt_vid_out_mplane._entry_ptr, ptr @vidioc_vdec_dqbuf._entry, ptr @vidioc_vdec_dqbuf._entry_ptr, ptr @vidioc_vdec_g_fmt._entry, ptr @vidioc_vdec_g_fmt._entry_ptr, ptr @vidioc_vdec_qbuf._entry, ptr @vidioc_vdec_qbuf._entry_ptr, ptr @vidioc_vdec_s_fmt._entry, ptr @vidioc_vdec_s_fmt._entry.36, ptr @vidioc_vdec_s_fmt._entry.39, ptr @vidioc_vdec_s_fmt._entry.42, ptr @vidioc_vdec_s_fmt._entry_ptr, ptr @vidioc_vdec_s_fmt._entry_ptr.38, ptr @vidioc_vdec_s_fmt._entry_ptr.41, ptr @vidioc_vdec_s_fmt._entry_ptr.44, ptr @mtk_vcodec_dec_set_default_params.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mtk_vdec_m2m_ops, ptr @mtk_vdec_ioctl_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @switch.table.vidioc_vdec_g_fmt, ptr @switch.table.vidioc_vdec_s_fmt], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_set_default_params.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_vdec_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_vdec_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_vdec_buf_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_vdec_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdec_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_queue_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_queue_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_vdec_g_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_vdec_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_vdec_s_fmt._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_vdec_s_fmt._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_vdec_s_fmt._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_out_mplane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_vdec_qbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_vdec_dqbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_vdec_g_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_vdec_s_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vdec_unlock(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dec_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %dec_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vdec_lock(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dec_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %dec_mutex, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_dec_release(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vdec_if_deinit(ptr noundef %ctx) #8
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdec_if_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_dec_set_default_params(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdec_pdata, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %ctx) #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %7, i32 0, i32 19
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 4
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev_mutex, ptr %9, align 4
  %11 = load ptr, ptr %m2m_ctx, align 8
  %m2m_ctx3 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 3, i32 10
  %12 = ptrtoint ptr %m2m_ctx3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %m2m_ctx3, align 4
  %ctrl_hdl = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 19
  %ctrl_handler = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ctrl_hdl, ptr %ctrl_handler, align 4
  %decode_work = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 20
  tail call void @__init_work(ptr noundef %decode_work, i32 noundef 0) #8
  %14 = ptrtoint ptr %decode_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %decode_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mtk_vcodec_dec_set_default_params.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry8 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 20, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry8, ptr %prev.i, align 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %vdec_pdata10 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %vdec_pdata10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdec_pdata10, align 8
  %worker = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %worker, align 4
  %func = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 20, i32 2
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %func, align 4
  %colorspace = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 26
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %colorspace, align 8
  %ycbcr_enc = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 27
  %25 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 28
  %26 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %quantization, align 8
  %xfer_func = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 29
  %27 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %xfer_func, align 4
  %q_data12 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5
  %28 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 2
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %q_data12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 64, ptr %q_data12, align 4
  %visible_height = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %visible_height to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 64, ptr %visible_height, align 4
  %32 = load ptr, ptr %vdec_pdata10, align 8
  %default_out_fmt = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %default_out_fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %default_out_fmt, align 4
  %fmt = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 7
  %35 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %fmt, align 4
  %field = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 4
  %36 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %field, align 4
  %sizeimage = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 6
  %37 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4096, ptr %sizeimage, align 4
  %bytesperline = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 5
  %38 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bytesperline, align 4
  %arrayidx18 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1
  %39 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 32)
  %41 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 64, ptr %arrayidx18, align 4
  %visible_height20 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 1
  %42 = ptrtoint ptr %visible_height20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 64, ptr %visible_height20, align 4
  %coded_width = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 2
  %43 = ptrtoint ptr %coded_width to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 64, ptr %coded_width, align 4
  %coded_height = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 3
  %44 = ptrtoint ptr %coded_height to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 64, ptr %coded_height, align 4
  %45 = load ptr, ptr %vdec_pdata10, align 8
  %default_cap_fmt = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %default_cap_fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %default_cap_fmt, align 4
  %fmt23 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 7
  %48 = ptrtoint ptr %fmt23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %fmt23, align 4
  %field24 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 4
  %49 = ptrtoint ptr %field24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %field24, align 4
  tail call void @v4l_bound_align_image(ptr noundef %coded_width, i32 noundef 64, i32 noundef 2048, i32 noundef 4, ptr noundef %coded_height, i32 noundef 64, i32 noundef 1088, i32 noundef 5, i32 noundef 6) #8
  %50 = ptrtoint ptr %coded_width to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %coded_width, align 4
  %52 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %coded_height, align 4
  %mul = mul i32 %53, %51
  %sizeimage29 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 6
  %54 = ptrtoint ptr %sizeimage29 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul, ptr %sizeimage29, align 4
  %bytesperline32 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 5
  %55 = ptrtoint ptr %bytesperline32 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %51, ptr %bytesperline32, align 4
  %div86 = lshr i32 %mul, 1
  %arrayidx37 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 6, i32 1
  %56 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div86, ptr %arrayidx37, align 4
  %arrayidx40 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 5, i32 1
  %57 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %51, ptr %arrayidx40, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vb2ops_vdec_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readonly %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  switch i32 %3, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge76
    i32 3, label %entry.if.then.i_crit_edge77
    i32 8, label %entry.if.then.i_crit_edge78
    i32 5, label %entry.if.then.i_crit_edge79
    i32 7, label %entry.if.then.i_crit_edge80
    i32 12, label %entry.if.then.i_crit_edge81
    i32 14, label %entry.if.then.i_crit_edge82
  ]

entry.if.then.i_crit_edge82:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge81:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge80:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge79:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge78:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge77:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge76:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge76, %entry.if.then.i_crit_edge77, %entry.if.then.i_crit_edge78, %entry.if.then.i_crit_edge79, %entry.if.then.i_crit_edge80, %entry.if.then.i_crit_edge81, %entry.if.then.i_crit_edge82
  %q_data.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 5
  br label %mtk_vdec_get_q_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.i = getelementptr %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 5, i32 1
  br label %mtk_vdec_get_q_data.exit

mtk_vdec_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i63 = phi ptr [ %q_data.i, %if.then.i ], [ %arrayidx15.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i63, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %mtk_vdec_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 696, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %mtk_vdec_get_q_data.exit
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.cond.do.body25_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.do.body25_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.067
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.mtk_q_data, ptr %retval.0.i63, i32 0, i32 6, i32 %i.067
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp7 = icmp ult i32 %8, %10
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp11 = icmp eq i32 %3, 9
  br i1 %cmp11, label %if.end14, label %if.end14.thread

if.end14.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nplanes, align 4
  br label %for.body17.preheader

if.end14:                                         ; preds = %if.else
  %fmt = getelementptr inbounds %struct.mtk_q_data, ptr %retval.0.i63, i32 0, i32 7
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes, align 4
  %16 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1668.not = icmp eq i32 %15, 0
  br i1 %cmp1668.not, label %if.end14.do.body25_crit_edge, label %if.end14.for.body17.preheader_crit_edge

if.end14.for.body17.preheader_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.preheader

if.end14.do.body25_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.body17.preheader:                             ; preds = %if.end14.for.body17.preheader_crit_edge, %if.end14.thread
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body17.preheader
  %i.169 = phi i32 [ %inc22, %for.body17.for.body17_crit_edge ], [ 0, %for.body17.preheader ]
  %arrayidx19 = getelementptr %struct.mtk_q_data, ptr %retval.0.i63, i32 0, i32 6, i32 %i.169
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr i32, ptr %sizes, i32 %i.169
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx20, align 4
  %inc22 = add nuw i32 %i.169, 1
  %20 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nplanes, align 4
  %cmp16 = icmp ult i32 %inc22, %21
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.do.body25_crit_edge

for.body17.do.body25_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

do.body25:                                        ; preds = %for.body17.do.body25_crit_edge, %if.end14.do.body25_crit_edge, %for.cond.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_queue_setup.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_queue_setup, %if.then31)) #8
          to label %cleanup [label %if.then31], !srcloc !151

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %24 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vq, align 4
  %26 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nplanes, align 4
  %28 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nbuffers, align 4
  %30 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sizes, align 4
  %arrayidx34 = getelementptr i32, ptr %sizes, i32 1
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx34, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_queue_setup.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 718, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body25, %for.body.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then31 ], [ 0, %do.body25 ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vb2ops_vdec_buf_prepare(ptr nocapture noundef readonly %vb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_buf_prepare.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_buf_prepare, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vb, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_buf_prepare.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 730, i32 noundef %5, i32 noundef %9, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vb, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %15, label %if.end.i [
    i32 2, label %do.end.if.then.i_crit_edge
    i32 10, label %do.end.if.then.i_crit_edge52
    i32 3, label %do.end.if.then.i_crit_edge53
    i32 8, label %do.end.if.then.i_crit_edge54
    i32 5, label %do.end.if.then.i_crit_edge55
    i32 7, label %do.end.if.then.i_crit_edge56
    i32 12, label %do.end.if.then.i_crit_edge57
    i32 14, label %do.end.if.then.i_crit_edge58
  ]

do.end.if.then.i_crit_edge58:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.end.if.then.i_crit_edge57:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.end.if.then.i_crit_edge56:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.end.if.then.i_crit_edge55:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.end.if.then.i_crit_edge54:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.end.if.then.i_crit_edge53:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.end.if.then.i_crit_edge52:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %do.end.if.then.i_crit_edge, %do.end.if.then.i_crit_edge52, %do.end.if.then.i_crit_edge53, %do.end.if.then.i_crit_edge54, %do.end.if.then.i_crit_edge55, %do.end.if.then.i_crit_edge56, %do.end.if.then.i_crit_edge57, %do.end.if.then.i_crit_edge58
  %q_data.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 5
  br label %mtk_vdec_get_q_data.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.i = getelementptr %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 5, i32 1
  br label %mtk_vdec_get_q_data.exit

mtk_vdec_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i34 = phi ptr [ %q_data.i, %if.then.i ], [ %arrayidx15.i, %if.end.i ]
  %fmt = getelementptr inbounds %struct.mtk_q_data, ptr %retval.0.i34, i32 0, i32 7
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmt, align 4
  %num_planes47 = getelementptr inbounds %struct.mtk_video_fmt, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %num_planes47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_planes47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp48.not = icmp eq i32 %20, 0
  br i1 %cmp48.not, label %mtk_vdec_get_q_data.exit.for.end_crit_edge, label %for.body.lr.ph

mtk_vdec_get_q_data.exit.for.end_crit_edge:       ; preds = %mtk_vdec_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %mtk_vdec_get_q_data.exit
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %i.049)
  %cmp.i = icmp ugt i32 %22, %i.049
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.049, i32 4
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 8
  %arrayidx = getelementptr %struct.mtk_q_data, ptr %retval.0.i34, i32 0, i32 6, i32 %i.049
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp9 = icmp ult i32 %24, %26
  br i1 %cmp9, label %if.then.i40, label %vb2_plane_size.exit.for.inc_crit_edge

vb2_plane_size.exit.for.inc_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

vb2_plane_size.exit.thread:                       ; preds = %for.body
  %arrayidx45 = getelementptr %struct.mtk_q_data, ptr %retval.0.i34, i32 0, i32 6, i32 %i.049
  %27 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp946.not = icmp eq i32 %28, 0
  br i1 %cmp946.not, label %vb2_plane_size.exit.thread.for.inc_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit42_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit42_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit42

vb2_plane_size.exit.thread.for.inc_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i40:                                      ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit42

vb2_plane_size.exit42:                            ; preds = %if.then.i40, %vb2_plane_size.exit.thread.vb2_plane_size.exit42_crit_edge
  %31 = phi i32 [ %26, %if.then.i40 ], [ %28, %vb2_plane_size.exit.thread.vb2_plane_size.exit42_crit_edge ]
  %retval.0.i41 = phi i32 [ %30, %if.then.i40 ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit42_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, i32 noundef 738, i32 noundef %i.049, i32 noundef %retval.0.i41, i32 noundef %31) #11
  br label %for.inc

for.inc:                                          ; preds = %vb2_plane_size.exit42, %vb2_plane_size.exit.thread.for.inc_crit_edge, %vb2_plane_size.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.049, 1
  %32 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_planes, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mtk_vdec_get_q_data.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vb2ops_vdec_buf_finish(ptr nocapture noundef %vb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %lock = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vb, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp = icmp eq i32 %7, 9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %queued_in_v4l2 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb, i32 0, i32 3
  %8 = ptrtoint ptr %queued_in_v4l2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %queued_in_v4l2, align 2
  %queued_in_vb2 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb, i32 0, i32 2
  %9 = ptrtoint ptr %queued_in_vb2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %queued_in_vb2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb, i32 0, i32 4
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %error, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %do.end

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 763) #11
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %state, align 8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vb2ops_vdec_buf_init(ptr nocapture noundef %vb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp = icmp eq i32 %3, 9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %used = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb, i32 0, i32 1
  %4 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %used, align 8
  %queued_in_v4l2 = getelementptr inbounds %struct.mtk_video_dec_buf, ptr %vb, i32 0, i32 3
  %5 = ptrtoint ptr %queued_in_v4l2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %queued_in_v4l2, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vb2ops_vdec_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vb2ops_vdec_stop_streaming(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stop_streaming.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stop_streaming, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q, align 4
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  %decoded_frame_cnt = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %decoded_frame_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %decoded_frame_cnt, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stop_streaming.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 800, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp = icmp eq i32 %11, 10
  br i1 %cmp, label %while.cond.preheader, label %if.end15

while.cond.preheader:                             ; preds = %do.end
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i113 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 8
  %call.i114 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i113) #8
  %tobool7.not115 = icmp eq ptr %call.i114, null
  br i1 %tobool7.not115, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %empty_flush_buf = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 23
  %ctrl_hdl = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %call.i116 = phi ptr [ %call.i114, %while.body.lr.ph ], [ %call.i, %if.end14.while.body_crit_edge ]
  %cmp8.not = icmp eq ptr %call.i116, %empty_flush_buf
  br i1 %cmp8.not, label %while.body.if.end14_crit_edge, label %if.then9

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then9:                                         ; preds = %while.body
  %req10 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i116, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %req10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req10, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i116, i32 noundef 6) #8
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then12

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_request_complete(ptr noundef nonnull %15, ptr noundef %ctrl_hdl) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then9.if.end14_crit_edge, %while.body.if.end14_crit_edge
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %17, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #8
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end14.cleanup_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %state16 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %state16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp17 = icmp ugt i32 %19, 1
  br i1 %cmp17, label %if.then18, label %if.end15.if.end53_crit_edge

if.end15.if.end53_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then18:                                        ; preds = %if.end15
  %picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 13
  %last_decoded_picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 22
  %20 = call ptr @memcpy(ptr %picinfo, ptr %last_decoded_picinfo, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_vdec_stop_streaming.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_vdec_stop_streaming, %if.then31)) #8
          to label %do.end43 [label %if.then31], !srcloc !151

if.then31:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %id32 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id32, align 4
  %23 = ptrtoint ptr %last_decoded_picinfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_decoded_picinfo, align 4
  %pic_h = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 22, i32 1
  %25 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pic_h, align 4
  %27 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %picinfo, align 8
  %pic_h38 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %pic_h38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pic_h38, align 4
  %buf_w = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 22, i32 2
  %31 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_w, align 4
  %buf_h = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 22, i32 3
  %33 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_h, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_vdec_stop_streaming.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13, i32 noundef 832, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then31, %if.then18
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vdec_pdata, align 8
  %flush_decoder = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %flush_decoder to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %flush_decoder, align 4
  %call44 = tail call i32 %40(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.end43.if.end53_crit_edge, label %do.end49

do.end43.if.end53_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end49:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef 836, i32 noundef %call44) #11
  br label %if.end53

if.end53:                                         ; preds = %do.end49, %do.end43.if.end53_crit_edge, %if.end15.if.end53_crit_edge
  %41 = ptrtoint ptr %state16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %state16, align 8
  %m2m_ctx56 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %m2m_ctx56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %m2m_ctx56, align 8
  %cap_q_ctx.i109 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %43, i32 0, i32 7
  %call.i100110 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i109) #8
  %tobool58.not111 = icmp eq ptr %call.i100110, null
  br i1 %tobool58.not111, label %if.end53.cleanup_crit_edge, label %while.body59.lr.ph

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body59.lr.ph:                               ; preds = %if.end53
  %fmt = getelementptr %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 5, i32 1, i32 7
  br label %while.body59

while.body59:                                     ; preds = %if.end64.while.body59_crit_edge, %while.body59.lr.ph
  %call.i100112 = phi ptr [ %call.i100110, %while.body59.lr.ph ], [ %call.i100, %if.end64.while.body59_crit_edge ]
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i100112, i32 0, i32 4
  %44 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.not = icmp eq i32 %45, 0
  br i1 %cmp.i.not, label %while.body59.vb2_set_plane_payload.exit_crit_edge, label %if.end42.i

while.body59.vb2_set_plane_payload.exit_crit_edge: ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

if.end42.i:                                       ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #10
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %call.i100112, i32 0, i32 10, i32 0, i32 3
  %46 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %while.body59.vb2_set_plane_payload.exit_crit_edge
  %47 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp61 = icmp eq i32 %50, 2
  br i1 %cmp61, label %if.then62, label %vb2_set_plane_payload.exit.if.end64_crit_edge

vb2_set_plane_payload.exit.if.end64_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then62:                                        ; preds = %vb2_set_plane_payload.exit
  %51 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i102 = icmp ugt i32 %52, 1
  br i1 %cmp.i102, label %if.end42.i104, label %if.then62.if.end64_crit_edge

if.then62.if.end64_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end42.i104:                                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %bytesused.i103 = getelementptr %struct.vb2_buffer, ptr %call.i100112, i32 0, i32 10, i32 1, i32 3
  %53 = ptrtoint ptr %bytesused.i103 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %bytesused.i103, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end42.i104, %if.then62.if.end64_crit_edge, %vb2_set_plane_payload.exit.if.end64_crit_edge
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i100112, i32 noundef 6) #8
  %54 = ptrtoint ptr %m2m_ctx56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %m2m_ctx56, align 8
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %55, i32 0, i32 7
  %call.i100 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #8
  %tobool58.not = icmp eq ptr %call.i100, null
  br i1 %tobool58.not, label %if.end64.cleanup_crit_edge, label %if.end64.while.body59_crit_edge

if.end64.while.body59_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body59

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end64.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m2mops_vdec_device_run(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %decode_workqueue = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %decode_workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decode_workqueue, align 8
  %decode_work = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 20
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %decode_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m2mops_vdec_job_ready(ptr nocapture noundef readonly %m2m_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m2mops_vdec_job_ready.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m2mops_vdec_job_ready, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %m2m_priv, i32 0, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @m2mops_vdec_job_ready.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.27, i32 noundef 861, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %m2m_priv, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %last_decoded_picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %m2m_priv, i32 0, i32 22
  %4 = ptrtoint ptr %last_decoded_picinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_decoded_picinfo, align 4
  %picinfo = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %m2m_priv, i32 0, i32 13
  %6 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %picinfo, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6.not = icmp eq i32 %5, %7
  br i1 %cmp6.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %pic_h = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %m2m_priv, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pic_h, align 4
  %pic_h9 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %m2m_priv, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %pic_h9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pic_h9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp10.not = icmp eq i32 %9, %11
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp14.not = icmp eq i32 %3, 2
  %. = zext i1 %cmp14.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @m2mops_vdec_job_abort(ptr nocapture noundef writeonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_vdec_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.28, i32 noundef 16) #8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call2 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.29, i32 noundef 32) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.29, i32 noundef 32) #8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_vdec_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %vdec_pdata.i = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vdec_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdec_pdata.i, align 8
  %num_formats.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp39.i = icmp sgt i32 %5, 0
  br i1 %cmp39.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %vdec_formats4.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %vdec_formats4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdec_formats4.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %j.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc13.i, %for.inc.i.for.body.i_crit_edge ]
  %type.i = getelementptr %struct.mtk_video_fmt, ptr %7, i32 %i.040.i, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp7.not.i = icmp eq i32 %9, 2
  br i1 %cmp7.not.i, label %if.end9.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.042.i, i32 %11)
  %cmp10.i = icmp eq i32 %j.042.i, %11
  br i1 %cmp10.i, label %if.end9.i.for.end.i_crit_edge, label %if.end12.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end12.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i32 %j.042.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %for.body.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %inc.i, %if.end12.i ], [ %j.042.i, %for.body.i.for.inc.i_crit_edge ]
  %inc13.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.vidioc_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.vidioc_enum_fmt.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidioc_enum_fmt.exit

for.end.i:                                        ; preds = %if.end9.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %i.040.i, %if.end9.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %5)
  %cmp15.i = icmp eq i32 %i.0.lcssa.i, %5
  br i1 %cmp15.i, label %for.end.i.vidioc_enum_fmt.exit_crit_edge, label %if.end17.i

for.end.i.vidioc_enum_fmt.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidioc_enum_fmt.exit

if.end17.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %vdec_formats18.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %vdec_formats18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdec_formats18.i, align 4
  %arrayidx19.i = getelementptr %struct.mtk_video_fmt, ptr %13, i32 %i.0.lcssa.i
  %14 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %16 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pixelformat.i, align 4
  %flags.i = getelementptr %struct.mtk_video_fmt, ptr %13, i32 %i.0.lcssa.i, i32 3
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %flags20.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 2
  %19 = ptrtoint ptr %flags20.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %flags20.i, align 4
  br label %vidioc_enum_fmt.exit

vidioc_enum_fmt.exit:                             ; preds = %if.end17.i, %for.end.i.vidioc_enum_fmt.exit_crit_edge, %for.inc.i.vidioc_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end17.i ], [ -22, %for.end.i.vidioc_enum_fmt.exit_crit_edge ], [ -22, %for.inc.i.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_vdec_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %vdec_pdata.i = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vdec_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdec_pdata.i, align 8
  %num_formats.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp39.i = icmp sgt i32 %5, 0
  br i1 %cmp39.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %vdec_formats4.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %vdec_formats4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdec_formats4.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %j.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc13.i, %for.inc.i.for.body.i_crit_edge ]
  %type.i = getelementptr %struct.mtk_video_fmt, ptr %7, i32 %i.040.i, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.not.i = icmp eq i32 %9, 0
  br i1 %cmp1.not.i, label %if.end9.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.042.i, i32 %11)
  %cmp10.i = icmp eq i32 %j.042.i, %11
  br i1 %cmp10.i, label %if.end9.i.for.end.i_crit_edge, label %if.end12.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end12.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i32 %j.042.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %for.body.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %j.042.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end12.i ]
  %inc13.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.vidioc_enum_fmt.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.vidioc_enum_fmt.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidioc_enum_fmt.exit

for.end.i:                                        ; preds = %if.end9.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %i.040.i, %if.end9.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %5)
  %cmp15.i = icmp eq i32 %i.0.lcssa.i, %5
  br i1 %cmp15.i, label %for.end.i.vidioc_enum_fmt.exit_crit_edge, label %if.end17.i

for.end.i.vidioc_enum_fmt.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidioc_enum_fmt.exit

if.end17.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %vdec_formats18.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %vdec_formats18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdec_formats18.i, align 4
  %arrayidx19.i = getelementptr %struct.mtk_video_fmt, ptr %13, i32 %i.0.lcssa.i
  %14 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %16 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pixelformat.i, align 4
  %flags.i = getelementptr %struct.mtk_video_fmt, ptr %13, i32 %i.0.lcssa.i, i32 3
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %flags20.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 2
  %19 = ptrtoint ptr %flags20.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %flags20.i, align 4
  br label %vidioc_enum_fmt.exit

vidioc_enum_fmt.exit:                             ; preds = %if.end17.i, %for.end.i.vidioc_enum_fmt.exit_crit_edge, %for.inc.i.vidioc_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end17.i ], [ -22, %for.end.i.vidioc_enum_fmt.exit_crit_edge ], [ -22, %for.inc.i.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_vdec_g_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 8
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call1 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #8
  %tobool.not = icmp eq ptr %call1, null
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 607, i32 noundef %5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 13
  br i1 %6, label %switch.lookup, label %if.end.mtk_vdec_get_q_data.exit_crit_edge

if.end.mtk_vdec_get_q_data.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_vdec_get_q_data.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vidioc_vdec_g_fmt, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_vdec_get_q_data.exit

mtk_vdec_get_q_data.exit:                         ; preds = %switch.lookup, %if.end.mtk_vdec_get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 244, %if.end.mtk_vdec_get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 1, ptr %field, align 1
  %colorspace = getelementptr i8, ptr %priv, i32 1576
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %colorspace, align 8
  %colorspace6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %colorspace6 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %colorspace6, align 1
  %ycbcr_enc = getelementptr i8, ptr %priv, i32 1580
  %12 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ycbcr_enc, align 4
  %conv = trunc i32 %13 to i8
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %14, align 1
  %quantization = getelementptr i8, ptr %priv, i32 1584
  %16 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quantization, align 8
  %conv7 = trunc i32 %17 to i8
  %quantization8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %18 = ptrtoint ptr %quantization8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7, ptr %quantization8, align 1
  %xfer_func = getelementptr i8, ptr %priv, i32 1588
  %19 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xfer_func, align 4
  %conv9 = trunc i32 %20 to i8
  %xfer_func10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %21 = ptrtoint ptr %xfer_func10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv9, ptr %xfer_func10, align 1
  %22 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %5, label %mtk_vdec_get_q_data.exit.if.else81_crit_edge [
    i32 9, label %land.lhs.true
    i32 10, label %if.then61
  ]

mtk_vdec_get_q_data.exit.if.else81_crit_edge:     ; preds = %mtk_vdec_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else81

land.lhs.true:                                    ; preds = %mtk_vdec_get_q_data.exit
  %state = getelementptr i8, ptr %priv, i32 296
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp13 = icmp ugt i32 %24, 1
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.else81_crit_edge

land.lhs.true.if.else81_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else81

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %fb_sz = getelementptr i8, ptr %priv, i32 384
  %25 = ptrtoint ptr %fb_sz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fb_sz, align 8
  %sizeimage = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 6
  %27 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sizeimage, align 4
  %arrayidx19 = getelementptr i8, ptr %priv, i32 388
  %28 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx21, align 4
  %buf_w = getelementptr i8, ptr %priv, i32 772
  %31 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_w, align 4
  %bytesperline = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 5
  %33 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %bytesperline, align 4
  %arrayidx26 = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %arrayidx26, align 4
  %buf_w28 = getelementptr i8, ptr %priv, i32 376
  %35 = ptrtoint ptr %buf_w28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_w28, align 8
  %coded_width = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 2
  %37 = ptrtoint ptr %coded_width to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %coded_width, align 4
  %buf_h = getelementptr i8, ptr %priv, i32 380
  %38 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_h, align 4
  %coded_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 3
  %40 = ptrtoint ptr %coded_height to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %coded_height, align 4
  %fmt30 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 7
  %41 = ptrtoint ptr %fmt30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fmt30, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %cap_fourcc = getelementptr i8, ptr %priv, i32 812
  %45 = ptrtoint ptr %cap_fourcc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %cap_fourcc, align 4
  %46 = load i32, ptr %coded_width, align 4
  %47 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %fmt, align 1
  %48 = load i32, ptr %coded_height, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %height, align 1
  %50 = load ptr, ptr %fmt30, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_planes, align 4
  %conv35 = trunc i32 %52 to i8
  %num_planes36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %53 = ptrtoint ptr %num_planes36 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv35, ptr %num_planes36, align 1
  %54 = load ptr, ptr %fmt30, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %57 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %pixelformat, align 1
  %58 = load i32, ptr %bytesperline, align 4
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %bytesperline42 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %59 = ptrtoint ptr %bytesperline42 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %bytesperline42, align 1
  %60 = load i32, ptr %sizeimage, align 4
  %61 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %plane_fmt, align 1
  %62 = load i32, ptr %arrayidx26, align 4
  %arrayidx51 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %bytesperline52 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %63 = ptrtoint ptr %bytesperline52 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %bytesperline52, align 1
  %64 = load i32, ptr %arrayidx21, align 4
  %65 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %arrayidx51, align 1
  br label %cleanup

if.then61:                                        ; preds = %mtk_vdec_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %q_data.i, align 4
  %68 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %fmt, align 1
  %visible_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 1
  %69 = ptrtoint ptr %visible_height to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %visible_height, align 4
  %height63 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %71 = ptrtoint ptr %height63 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %height63, align 1
  %bytesperline64 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 5
  %72 = ptrtoint ptr %bytesperline64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bytesperline64, align 4
  %plane_fmt66 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %bytesperline68 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %74 = ptrtoint ptr %bytesperline68 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %bytesperline68, align 1
  %sizeimage69 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 6
  %75 = ptrtoint ptr %sizeimage69 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sizeimage69, align 4
  %77 = ptrtoint ptr %plane_fmt66 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %plane_fmt66, align 1
  %fmt74 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 7
  %78 = ptrtoint ptr %fmt74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fmt74, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %pixelformat76 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %82 = ptrtoint ptr %pixelformat76 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %81, ptr %pixelformat76, align 1
  %83 = load ptr, ptr %fmt74, align 4
  %num_planes78 = getelementptr inbounds %struct.mtk_video_fmt, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %num_planes78 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_planes78, align 4
  %conv79 = trunc i32 %85 to i8
  %num_planes80 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %86 = ptrtoint ptr %num_planes80 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv79, ptr %num_planes80, align 1
  br label %cleanup

if.else81:                                        ; preds = %land.lhs.true.if.else81_crit_edge, %mtk_vdec_get_q_data.exit.if.else81_crit_edge
  %coded_width82 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 2
  %87 = ptrtoint ptr %coded_width82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %coded_width82, align 4
  %89 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %fmt, align 1
  %coded_height84 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 3
  %90 = ptrtoint ptr %coded_height84 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %coded_height84, align 4
  %height85 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %92 = ptrtoint ptr %height85 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %height85, align 1
  %fmt86 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 7
  %93 = ptrtoint ptr %fmt86 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fmt86, align 4
  %num_planes87 = getelementptr inbounds %struct.mtk_video_fmt, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %num_planes87 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_planes87, align 4
  %conv88 = trunc i32 %96 to i8
  %num_planes89 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %97 = ptrtoint ptr %num_planes89 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv88, ptr %num_planes89, align 1
  %98 = load ptr, ptr %fmt86, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %pixelformat92 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %101 = ptrtoint ptr %pixelformat92 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %100, ptr %pixelformat92, align 1
  %bytesperline93 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 5
  %102 = ptrtoint ptr %bytesperline93 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bytesperline93, align 4
  %plane_fmt95 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %bytesperline97 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %104 = ptrtoint ptr %bytesperline97 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %103, ptr %bytesperline97, align 1
  %sizeimage98 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 6
  %105 = ptrtoint ptr %sizeimage98 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sizeimage98, align 4
  %107 = ptrtoint ptr %plane_fmt95 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %106, ptr %plane_fmt95, align 1
  %arrayidx104 = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 5, i32 1
  %108 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx104, align 4
  %arrayidx106 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %bytesperline107 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %110 = ptrtoint ptr %bytesperline107 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %109, ptr %bytesperline107, align 1
  %arrayidx109 = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 6, i32 1
  %111 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx109, align 4
  %113 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %arrayidx106, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_vdec_g_fmt.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_vdec_g_fmt, %if.then119)) #8
          to label %cleanup [label %if.then119], !srcloc !151

if.then119:                                       ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr i8, ptr %priv, i32 292
  %114 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %id, align 4
  %116 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %f, align 4
  %state121 = getelementptr i8, ptr %priv, i32 296
  %118 = ptrtoint ptr %state121 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %state121, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_vdec_g_fmt.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 679, i32 noundef %115, i32 noundef %117, i32 noundef %119) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %if.else81, %if.then61, %if.then15, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then61 ], [ 0, %if.then119 ], [ 0, %if.then15 ], [ 0, %if.else81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_vdec_s_fmt(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -16
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdec_pdata, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_vdec_s_fmt.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_vdec_s_fmt, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr i8, ptr %priv, i32 292
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_vdec_s_fmt.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.34, i32 noundef 404, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 13
  br i1 %8, label %switch.lookup, label %do.end.mtk_vdec_get_q_data.exit_crit_edge

do.end.mtk_vdec_get_q_data.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_vdec_get_q_data.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vidioc_vdec_s_fmt, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_vdec_get_q_data.exit

mtk_vdec_get_q_data.exit:                         ; preds = %switch.lookup, %do.end.mtk_vdec_get_q_data.exit_crit_edge
  %.sink345 = phi i32 [ %switch.load, %switch.lookup ], [ 244, %do.end.mtk_vdec_get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink345
  %tobool5.not = icmp eq ptr %q_data.i, null
  br i1 %tobool5.not, label %mtk_vdec_get_q_data.exit.cleanup_crit_edge, label %if.end7

mtk_vdec_get_q_data.exit.cleanup_crit_edge:       ; preds = %mtk_vdec_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %mtk_vdec_get_q_data.exit
  %fmt8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %uses_stateless_api = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %uses_stateless_api to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %uses_stateless_api, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp = icmp eq i32 %7, 10
  %or.cond = select i1 %tobool9.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true11, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true11:                                  ; preds = %if.end7
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %12 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx, align 8
  %num_buffers.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 8, i32 0, i32 21
  %14 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.not = icmp eq i32 %15, 0
  br i1 %cmp.i.not, label %land.lhs.true11.if.end19_crit_edge, label %do.end16

land.lhs.true11.if.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end16:                                         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef 418) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %land.lhs.true11.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %16 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp21 = icmp eq i32 %17, 9
  br i1 %cmp21, label %land.lhs.true22, label %if.end19.if.end32_crit_edge

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true22:                                  ; preds = %if.end19
  %m2m_ctx23 = getelementptr i8, ptr %priv, i32 192
  %18 = ptrtoint ptr %m2m_ctx23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx23, align 8
  %num_buffers.i288 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %19, i32 0, i32 7, i32 0, i32 21
  %20 = ptrtoint ptr %num_buffers.i288 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_buffers.i288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i289.not = icmp eq i32 %21, 0
  br i1 %cmp.i289.not, label %land.lhs.true22.if.end32_crit_edge, label %do.end29

land.lhs.true22.if.end32_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end29:                                         ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34, i32 noundef 428) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %land.lhs.true22.if.end32_crit_edge, %if.end19.if.end32_crit_edge
  %num_formats.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp8.not.i = icmp eq i32 %23, 0
  br i1 %cmp8.not.i, label %if.end32.if.then35_crit_edge, label %for.body.lr.ph.i

if.end32.if.then35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

for.body.lr.ph.i:                                 ; preds = %if.end32
  %vdec_formats.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %vdec_formats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdec_formats.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixelformat.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not.i, label %for.cond.i.if.then35_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.then35_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %25, i32 %k.09.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp2.i = icmp eq i32 %29, %27
  br i1 %cmp2.i, label %mtk_vdec_find_format.exit, label %for.cond.i

mtk_vdec_find_format.exit:                        ; preds = %for.body.i
  %cmp34 = icmp eq ptr %arrayidx.i, null
  br i1 %cmp34, label %mtk_vdec_find_format.exit.if.then35_crit_edge, label %mtk_vdec_find_format.exit.if.end53_crit_edge

mtk_vdec_find_format.exit.if.end53_crit_edge:     ; preds = %mtk_vdec_find_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

mtk_vdec_find_format.exit.if.then35_crit_edge:    ; preds = %mtk_vdec_find_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %mtk_vdec_find_format.exit.if.then35_crit_edge, %for.cond.i.if.then35_crit_edge, %if.end32.if.then35_crit_edge
  %30 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %31, label %if.then35.cleanup_crit_edge [
    i32 10, label %if.then38
    i32 9, label %if.then43
  ]

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %if.then35
  %default_out_fmt = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 7
  %33 = ptrtoint ptr %default_out_fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %default_out_fmt, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %pixelformat, align 4
  %38 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp8.not.i292 = icmp eq i32 %39, 0
  br i1 %cmp8.not.i292, label %if.then38.cleanup_crit_edge, label %for.body.lr.ph.i295

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i295:                              ; preds = %if.then38
  %vdec_formats.i293 = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %40 = ptrtoint ptr %vdec_formats.i293 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vdec_formats.i293, align 4
  br label %for.body.i302

for.cond.i298:                                    ; preds = %for.body.i302
  %inc.i296 = add nuw i32 %k.09.i299, 1
  %exitcond.not.i297 = icmp eq i32 %inc.i296, %39
  br i1 %exitcond.not.i297, label %for.cond.i298.cleanup_crit_edge, label %for.cond.i298.for.body.i302_crit_edge

for.cond.i298.for.body.i302_crit_edge:            ; preds = %for.cond.i298
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i302

for.cond.i298.cleanup_crit_edge:                  ; preds = %for.cond.i298
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i302:                                    ; preds = %for.cond.i298.for.body.i302_crit_edge, %for.body.lr.ph.i295
  %k.09.i299 = phi i32 [ 0, %for.body.lr.ph.i295 ], [ %inc.i296, %for.cond.i298.for.body.i302_crit_edge ]
  %arrayidx.i300 = getelementptr %struct.mtk_video_fmt, ptr %41, i32 %k.09.i299
  %42 = ptrtoint ptr %arrayidx.i300 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i300, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %36)
  %cmp2.i301 = icmp eq i32 %43, %36
  br i1 %cmp2.i301, label %for.body.i302.if.end50_crit_edge, label %for.cond.i298

for.body.i302.if.end50_crit_edge:                 ; preds = %for.body.i302
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then43:                                        ; preds = %if.then35
  %default_cap_fmt = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %default_cap_fmt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %default_cap_fmt, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %pixelformat46 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %pixelformat46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %pixelformat46, align 4
  %49 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp8.not.i306 = icmp eq i32 %50, 0
  br i1 %cmp8.not.i306, label %if.then43.cleanup_crit_edge, label %for.body.lr.ph.i309

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i309:                              ; preds = %if.then43
  %vdec_formats.i307 = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %51 = ptrtoint ptr %vdec_formats.i307 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vdec_formats.i307, align 4
  br label %for.body.i316

for.cond.i312:                                    ; preds = %for.body.i316
  %inc.i310 = add nuw i32 %k.09.i313, 1
  %exitcond.not.i311 = icmp eq i32 %inc.i310, %50
  br i1 %exitcond.not.i311, label %for.cond.i312.cleanup_crit_edge, label %for.cond.i312.for.body.i316_crit_edge

for.cond.i312.for.body.i316_crit_edge:            ; preds = %for.cond.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i316

for.cond.i312.cleanup_crit_edge:                  ; preds = %for.cond.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i316:                                    ; preds = %for.cond.i312.for.body.i316_crit_edge, %for.body.lr.ph.i309
  %k.09.i313 = phi i32 [ 0, %for.body.lr.ph.i309 ], [ %inc.i310, %for.cond.i312.for.body.i316_crit_edge ]
  %arrayidx.i314 = getelementptr %struct.mtk_video_fmt, ptr %52, i32 %k.09.i313
  %53 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i314, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %47)
  %cmp2.i315 = icmp eq i32 %54, %47
  br i1 %cmp2.i315, label %for.body.i316.if.end50_crit_edge, label %for.cond.i312

for.body.i316.if.end50_crit_edge:                 ; preds = %for.body.i316
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end50:                                         ; preds = %for.body.i316.if.end50_crit_edge, %for.body.i302.if.end50_crit_edge
  %fmt.0 = phi ptr [ %arrayidx.i300, %for.body.i302.if.end50_crit_edge ], [ %arrayidx.i314, %for.body.i316.if.end50_crit_edge ]
  %cmp51 = icmp eq ptr %fmt.0, null
  br i1 %cmp51, label %if.end50.cleanup_crit_edge, label %if.end50.if.end53_crit_edge

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end50.if.end53_crit_edge, %mtk_vdec_find_format.exit.if.end53_crit_edge
  %fmt.0327 = phi ptr [ %fmt.0, %if.end50.if.end53_crit_edge ], [ %arrayidx.i, %mtk_vdec_find_format.exit.if.end53_crit_edge ]
  %fmt54 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 7
  %55 = ptrtoint ptr %fmt54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %fmt.0327, ptr %fmt54, align 4
  tail call fastcc void @vidioc_try_fmt(ptr noundef %f, ptr noundef nonnull %fmt.0327)
  %56 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %57)
  %cmp58 = icmp eq i32 %57, 10
  br i1 %cmp58, label %if.then59, label %if.end53.if.end85_crit_edge

if.end53.if.end85_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then59:                                        ; preds = %if.end53
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %58 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %plane_fmt, align 1
  %sizeimage60 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 6
  %60 = ptrtoint ptr %sizeimage60 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %sizeimage60, align 4
  %61 = ptrtoint ptr %fmt8 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %fmt8, align 1
  %coded_width = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 2
  %63 = ptrtoint ptr %coded_width to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %coded_width, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %64 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %height, align 1
  %coded_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 3
  %66 = ptrtoint ptr %coded_height to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %coded_height, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %67 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %colorspace, align 1
  %colorspace62 = getelementptr i8, ptr %priv, i32 1576
  %69 = ptrtoint ptr %colorspace62 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %colorspace62, align 8
  %70 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %conv = zext i8 %72 to i32
  %ycbcr_enc = getelementptr i8, ptr %priv, i32 1580
  %73 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %74 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %quantization, align 1
  %conv63 = zext i8 %75 to i32
  %quantization64 = getelementptr i8, ptr %priv, i32 1584
  %76 = ptrtoint ptr %quantization64 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv63, ptr %quantization64, align 8
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %77 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %xfer_func, align 1
  %conv65 = zext i8 %78 to i32
  %xfer_func66 = getelementptr i8, ptr %priv, i32 1588
  %79 = ptrtoint ptr %xfer_func66 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv65, ptr %xfer_func66, align 4
  %80 = ptrtoint ptr %fmt.0327 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fmt.0327, align 4
  %current_codec = getelementptr i8, ptr %priv, i32 1572
  %82 = ptrtoint ptr %current_codec to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %current_codec, align 4
  %state = getelementptr i8, ptr %priv, i32 296
  %83 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp68 = icmp eq i32 %84, 0
  br i1 %cmp68, label %if.then70, label %if.then59.if.end85_crit_edge

if.then59.if.end85_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then70:                                        ; preds = %if.then59
  %85 = ptrtoint ptr %fmt54 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fmt54, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %call73 = tail call i32 @vdec_if_init(ptr noundef %add.ptr.i, i32 noundef %88) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end82, label %do.end78

do.end78:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %id80 = getelementptr i8, ptr %priv, i32 292
  %89 = ptrtoint ptr %id80 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id80, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef 464, i32 noundef %90, i32 noundef %call73) #11
  br label %cleanup

if.end82:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %state, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.end82, %if.then59.if.end85_crit_edge, %if.end53.if.end85_crit_edge
  %92 = ptrtoint ptr %uses_stateless_api to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %uses_stateless_api, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool87.not = icmp eq i8 %93, 0
  br i1 %tobool87.not, label %if.end85.cleanup_crit_edge, label %if.then88

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then88:                                        ; preds = %if.end85
  %94 = ptrtoint ptr %fmt8 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %fmt8, align 1
  %picinfo = getelementptr i8, ptr %priv, i32 368
  %96 = ptrtoint ptr %picinfo to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %picinfo, align 8
  %height90 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %height90 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %height90, align 1
  %pic_h = getelementptr i8, ptr %priv, i32 372
  %99 = ptrtoint ptr %pic_h to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %pic_h, align 4
  %call93 = tail call i32 @vdec_if_get_param(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef %picinfo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end102, label %do.end98

do.end98:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  %id100 = getelementptr i8, ptr %priv, i32 292
  %100 = ptrtoint ptr %id100 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %id100, align 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.34, i32 noundef 482, i32 noundef %101) #11
  br label %cleanup

if.end102:                                        ; preds = %if.then88
  %last_decoded_picinfo = getelementptr i8, ptr %priv, i32 764
  %102 = call ptr @memcpy(ptr %last_decoded_picinfo, ptr %picinfo, i32 56)
  %fmt106 = getelementptr i8, ptr %priv, i32 288
  %103 = ptrtoint ptr %fmt106 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fmt106, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp107 = icmp eq i32 %106, 1
  %fb_sz = getelementptr i8, ptr %priv, i32 384
  %107 = ptrtoint ptr %fb_sz to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fb_sz, align 8
  br i1 %cmp107, label %if.then109, label %if.else123

if.then109:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx114 = getelementptr i8, ptr %priv, i32 388
  %109 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx114, align 4
  %add = add i32 %110, %108
  %buf_w = getelementptr i8, ptr %priv, i32 376
  %111 = ptrtoint ptr %buf_w to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %buf_w, align 8
  br label %if.end150

if.else123:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %buf_w132 = getelementptr i8, ptr %priv, i32 376
  %113 = ptrtoint ptr %buf_w132 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %buf_w132, align 8
  %arrayidx139 = getelementptr i8, ptr %priv, i32 388
  %115 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx139, align 4
  %arrayidx143 = getelementptr i8, ptr %priv, i32 280
  %117 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx143, align 4
  %arrayidx149 = getelementptr i8, ptr %priv, i32 268
  %118 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %114, ptr %arrayidx149, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.else123, %if.then109
  %.sink339 = phi i32 [ %add, %if.then109 ], [ %108, %if.else123 ]
  %.sink = phi i32 [ %112, %if.then109 ], [ %114, %if.else123 ]
  %119 = getelementptr i8, ptr %priv, i32 276
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink339, ptr %119, align 4
  %121 = getelementptr i8, ptr %priv, i32 264
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %.sink, ptr %121, align 4
  %buf_w152 = getelementptr i8, ptr %priv, i32 376
  %123 = ptrtoint ptr %buf_w152 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buf_w152, align 8
  %coded_width155 = getelementptr i8, ptr %priv, i32 252
  %125 = ptrtoint ptr %coded_width155 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %coded_width155, align 4
  %buf_h = getelementptr i8, ptr %priv, i32 380
  %126 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %buf_h, align 4
  %coded_height159 = getelementptr i8, ptr %priv, i32 256
  %128 = ptrtoint ptr %coded_height159 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %coded_height159, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_vdec_s_fmt.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_vdec_s_fmt, %if.then172)) #8
          to label %cleanup [label %if.then172], !srcloc !151

if.then172:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  %id173 = getelementptr i8, ptr %priv, i32 292
  %129 = ptrtoint ptr %id173 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %id173, align 4
  %num_planes174 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %131 = ptrtoint ptr %num_planes174 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %num_planes174, align 1
  %conv175 = zext i8 %132 to i32
  %133 = ptrtoint ptr %buf_w152 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %buf_w152, align 8
  %135 = ptrtoint ptr %buf_h to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %buf_h, align 4
  %137 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %picinfo, align 8
  %139 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pic_h, align 4
  %141 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %119, align 4
  %arrayidx191 = getelementptr i8, ptr %priv, i32 280
  %143 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx191, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_vdec_s_fmt.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.34, i32 noundef 511, i32 noundef %130, i32 noundef %conv175, i32 noundef %134, i32 noundef %136, i32 noundef %138, i32 noundef %140, i32 noundef %142, i32 noundef %144) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then172, %if.end150, %do.end98, %if.end85.cleanup_crit_edge, %do.end78, %if.end50.cleanup_crit_edge, %for.cond.i312.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %for.cond.i298.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %mtk_vdec_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end78 ], [ -22, %do.end98 ], [ -22, %mtk_vdec_get_q_data.exit.cleanup_crit_edge ], [ -22, %if.end50.cleanup_crit_edge ], [ 0, %if.then172 ], [ 0, %if.end85.cleanup_crit_edge ], [ 0, %if.end150 ], [ -22, %if.then35.cleanup_crit_edge ], [ -22, %if.then38.cleanup_crit_edge ], [ -22, %if.then43.cleanup_crit_edge ], [ -22, %for.cond.i298.cleanup_crit_edge ], [ -22, %for.cond.i312.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdec_pdata, align 8
  %num_formats.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not.i = icmp eq i32 %5, 0
  br i1 %cmp8.not.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %vdec_formats.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %vdec_formats.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdec_formats.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.if.then_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %7, i32 %k.09.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp2.i = icmp eq i32 %11, %9
  br i1 %cmp2.i, label %mtk_vdec_find_format.exit, label %for.cond.i

mtk_vdec_find_format.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mtk_vdec_find_format.exit.if.then_crit_edge, label %mtk_vdec_find_format.exit.if.end_crit_edge

mtk_vdec_find_format.exit.if.end_crit_edge:       ; preds = %mtk_vdec_find_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mtk_vdec_find_format.exit.if.then_crit_edge:      ; preds = %mtk_vdec_find_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %mtk_vdec_find_format.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %fmt2 = getelementptr i8, ptr %priv, i32 288
  %12 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt2, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pixelformat, align 4
  %17 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.not.i13 = icmp eq i32 %18, 0
  br i1 %cmp8.not.i13, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i16

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i16:                               ; preds = %if.then
  %vdec_formats.i14 = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %vdec_formats.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdec_formats.i14, align 4
  br label %for.body.i23

for.cond.i19:                                     ; preds = %for.body.i23
  %inc.i17 = add nuw i32 %k.09.i20, 1
  %exitcond.not.i18 = icmp eq i32 %inc.i17, %18
  br i1 %exitcond.not.i18, label %for.cond.i19.if.end_crit_edge, label %for.cond.i19.for.body.i23_crit_edge

for.cond.i19.for.body.i23_crit_edge:              ; preds = %for.cond.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i23

for.cond.i19.if.end_crit_edge:                    ; preds = %for.cond.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i23:                                     ; preds = %for.cond.i19.for.body.i23_crit_edge, %for.body.lr.ph.i16
  %k.09.i20 = phi i32 [ 0, %for.body.lr.ph.i16 ], [ %inc.i17, %for.cond.i19.for.body.i23_crit_edge ]
  %arrayidx.i21 = getelementptr %struct.mtk_video_fmt, ptr %20, i32 %k.09.i20
  %21 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp2.i22 = icmp eq i32 %22, %15
  br i1 %cmp2.i22, label %for.body.i23.if.end_crit_edge, label %for.cond.i19

for.body.i23.if.end_crit_edge:                    ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.i23.if.end_crit_edge, %for.cond.i19.if.end_crit_edge, %if.then.if.end_crit_edge, %mtk_vdec_find_format.exit.if.end_crit_edge
  %fmt.0 = phi ptr [ %arrayidx.i, %mtk_vdec_find_format.exit.if.end_crit_edge ], [ null, %if.then.if.end_crit_edge ], [ %arrayidx.i21, %for.body.i23.if.end_crit_edge ], [ null, %for.cond.i19.if.end_crit_edge ]
  tail call fastcc void @vidioc_try_fmt(ptr noundef %f, ptr noundef %fmt.0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_out_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdec_pdata, align 8
  %num_formats.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not.i = icmp eq i32 %5, 0
  br i1 %cmp8.not.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %vdec_formats.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %vdec_formats.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdec_formats.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.if.then_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %7, i32 %k.09.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp2.i = icmp eq i32 %11, %9
  br i1 %cmp2.i, label %mtk_vdec_find_format.exit, label %for.cond.i

mtk_vdec_find_format.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %mtk_vdec_find_format.exit.if.then_crit_edge, label %mtk_vdec_find_format.exit.if.end_crit_edge

mtk_vdec_find_format.exit.if.end_crit_edge:       ; preds = %mtk_vdec_find_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mtk_vdec_find_format.exit.if.then_crit_edge:      ; preds = %mtk_vdec_find_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %mtk_vdec_find_format.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %fmt3 = getelementptr i8, ptr %priv, i32 240
  %12 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pixelformat, align 4
  %17 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.not.i22 = icmp eq i32 %18, 0
  br i1 %cmp8.not.i22, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i25

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i25:                               ; preds = %if.then
  %vdec_formats.i23 = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %vdec_formats.i23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdec_formats.i23, align 4
  br label %for.body.i32

for.cond.i28:                                     ; preds = %for.body.i32
  %inc.i26 = add nuw i32 %k.09.i29, 1
  %exitcond.not.i27 = icmp eq i32 %inc.i26, %18
  br i1 %exitcond.not.i27, label %for.cond.i28.if.end_crit_edge, label %for.cond.i28.for.body.i32_crit_edge

for.cond.i28.for.body.i32_crit_edge:              ; preds = %for.cond.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i32

for.cond.i28.if.end_crit_edge:                    ; preds = %for.cond.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i32:                                     ; preds = %for.cond.i28.for.body.i32_crit_edge, %for.body.lr.ph.i25
  %k.09.i29 = phi i32 [ 0, %for.body.lr.ph.i25 ], [ %inc.i26, %for.cond.i28.for.body.i32_crit_edge ]
  %arrayidx.i30 = getelementptr %struct.mtk_video_fmt, ptr %20, i32 %k.09.i29
  %21 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp2.i31 = icmp eq i32 %22, %15
  br i1 %cmp2.i31, label %for.body.i32.if.end_crit_edge, label %for.cond.i28

for.body.i32.if.end_crit_edge:                    ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.i32.if.end_crit_edge, %for.cond.i28.if.end_crit_edge, %if.then.if.end_crit_edge, %mtk_vdec_find_format.exit.if.end_crit_edge
  %fmt1.0 = phi ptr [ %arrayidx.i, %mtk_vdec_find_format.exit.if.end_crit_edge ], [ null, %if.then.if.end_crit_edge ], [ %arrayidx.i30, %for.body.i32.if.end_crit_edge ], [ null, %for.cond.i28.if.end_crit_edge ]
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %plane_fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 316) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vidioc_try_fmt(ptr noundef %f, ptr noundef %fmt1.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_vdec_qbuf(ptr noundef %file, ptr nocapture noundef readonly %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %priv, i32 296
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr i8, ptr %priv, i32 292
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 176, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 8
  %call2 = tail call i32 @v4l2_m2m_qbuf(ptr noundef %file, ptr noundef %5, ptr noundef %buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_vdec_dqbuf(ptr noundef %file, ptr nocapture noundef readonly %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %priv, i32 296
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr i8, ptr %priv, i32 292
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 190, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 8
  %call2 = tail call i32 @v4l2_m2m_dqbuf(ptr noundef %file, ptr noundef %5, ptr noundef %buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_vdec_g_selection(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -16
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %priv, i32 244
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 257, label %sw.bb
    i32 258, label %sw.bb6
    i32 256, label %sw.bb17
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %5 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %top, align 4
  %picinfo = getelementptr i8, ptr %priv, i32 368
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %r7 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %7 = ptrtoint ptr %r7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r7, align 4
  %top10 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %top10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %top10, align 4
  %buf_w = getelementptr i8, ptr %priv, i32 376
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end
  %r18 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %call19 = tail call i32 @vdec_if_get_param(ptr noundef %add.ptr.i, i32 noundef 3, ptr noundef %r18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %sw.bb17.sw.epilog_crit_edge, label %if.then20

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %r18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r18, align 4
  %top24 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %top24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top24, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then20, %sw.bb6, %sw.bb
  %.sink71.in = phi ptr [ %arrayidx, %if.then20 ], [ %buf_w, %sw.bb6 ], [ %picinfo, %sw.bb ]
  %.sink = phi i32 [ 248, %if.then20 ], [ 380, %sw.bb6 ], [ 372, %sw.bb ]
  %11 = ptrtoint ptr %.sink71.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.sink71 = load i32, ptr %.sink71.in, align 4
  %width26 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %width26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink71, ptr %width26, align 4
  %visible_height = getelementptr i8, ptr %priv, i32 %.sink
  %13 = ptrtoint ptr %visible_height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %visible_height, align 4
  %height28 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %height28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height28, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb17.sw.epilog_crit_edge
  %state = getelementptr i8, ptr %priv, i32 296
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp30 = icmp ult i32 %17, 2
  br i1 %cmp30, label %if.then31, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %r32 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %18 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %r32, align 4
  %top35 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %top35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %top35, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %width38 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %width38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width38, align 4
  %visible_height39 = getelementptr i8, ptr %priv, i32 248
  %23 = ptrtoint ptr %visible_height39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %visible_height39, align 4
  %height41 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %height41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_vdec_s_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cond = icmp eq i32 %3, 256
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %top, align 4
  %picinfo = getelementptr i8, ptr %priv, i32 368
  %6 = ptrtoint ptr %picinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %picinfo, align 8
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %width, align 4
  %pic_h = getelementptr i8, ptr %priv, i32 372
  %9 = ptrtoint ptr %pic_h to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pic_h, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_decoder_cmd(ptr noundef %file, ptr noundef %priv, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %vdec_pdata.i = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vdec_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdec_pdata.i, align 8
  %uses_stateless_api.i = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %uses_stateless_api.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %uses_stateless_api.i, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @v4l2_m2m_ioctl_stateless_try_decoder_cmd(ptr noundef %file, ptr noundef %priv, ptr noundef %cmd) #8
  br label %vidioc_try_decoder_cmd.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef %file, ptr noundef %priv, ptr noundef %cmd) #8
  br label %vidioc_try_decoder_cmd.exit

vidioc_try_decoder_cmd.exit:                      ; preds = %if.else.i, %if.then.i
  %retval.0.i80 = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i80)
  %tobool.not = icmp eq i32 %retval.0.i80, 0
  br i1 %tobool.not, label %if.end, label %vidioc_try_decoder_cmd.exit.cleanup_crit_edge

vidioc_try_decoder_cmd.exit.cleanup_crit_edge:    ; preds = %vidioc_try_decoder_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %vidioc_try_decoder_cmd.exit
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdec_pdata, align 8
  %uses_stateless_api = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %uses_stateless_api to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %uses_stateless_api, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @v4l2_m2m_ioctl_stateless_decoder_cmd(ptr noundef %file, ptr noundef %priv, ptr noundef %cmd) #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_decoder_cmd.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_decoder_cmd, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !151

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_decoder_cmd.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef 76, i32 noundef %13) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 8
  %call13 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %15, i32 noundef 9) #8
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %17, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb57
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %19 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_ctx, align 8
  %call16 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %20, i32 noundef 10) #8
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call16, i32 0, i32 28
  %21 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end35, label %do.body19

do.body19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_decoder_cmd.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_decoder_cmd, %if.then31)) #8
          to label %cleanup [label %if.then31], !srcloc !151

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_decoder_cmd.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56, i32 noundef 84) #8
  br label %cleanup

if.end35:                                         ; preds = %sw.bb
  %streaming.i81 = getelementptr inbounds %struct.vb2_queue, ptr %call13, i32 0, i32 28
  %22 = ptrtoint ptr %streaming.i81 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i82 = load i16, ptr %streaming.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i82)
  %tobool.i83 = icmp slt i16 %bf.load.i82, 0
  br i1 %tobool.i83, label %if.end54, label %do.body38

do.body38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_decoder_cmd.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_decoder_cmd, %if.then50)) #8
          to label %cleanup [label %if.then50], !srcloc !151

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_decoder_cmd.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.56, i32 noundef 88) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_ctx, align 8
  %empty_flush_buf = getelementptr i8, ptr %priv, i32 824
  tail call void @v4l2_m2m_buf_queue(ptr noundef %24, ptr noundef %empty_flush_buf) #8
  %25 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_try_schedule(ptr noundef %26) #8
  br label %cleanup

sw.bb57:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %last_buffer_dequeued.i = getelementptr inbounds %struct.vb2_queue, ptr %call13, i32 0, i32 28
  %27 = ptrtoint ptr %last_buffer_dequeued.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i84 = load i16, ptr %last_buffer_dequeued.i, align 4
  %bf.clear.i = and i16 %bf.load.i84, -129
  store i16 %bf.clear.i, ptr %last_buffer_dequeued.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb57, %if.end54, %if.then50, %do.body38, %if.then31, %do.body19, %do.end.cleanup_crit_edge, %if.then3, %vidioc_try_decoder_cmd.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %retval.0.i80, %vidioc_try_decoder_cmd.exit.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %if.then50 ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %sw.bb57 ], [ 0, %if.end54 ], [ 0, %do.body19 ], [ 0, %do.body38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_decoder_cmd(ptr noundef %file, ptr noundef %priv, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdec_pdata, align 8
  %uses_stateless_api = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %uses_stateless_api to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %uses_stateless_api, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @v4l2_m2m_ioctl_stateless_try_decoder_cmd(ptr noundef %file, ptr noundef %priv, ptr noundef %cmd) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef %file, ptr noundef %priv, ptr noundef %cmd) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdec_pdata, align 8
  %4 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_framesizes = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %num_framesizes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_framesizes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp162 = icmp sgt i32 %7, 0
  br i1 %cmp162, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %8 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_format, align 4
  %vdec_framesizes = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %vdec_framesizes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdec_framesizes, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_codec_framesizes, ptr %11, i32 %i.063
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp2.not = icmp eq i32 %9, %13
  br i1 %cmp2.not, label %if.end4, label %for.inc

if.end4:                                          ; preds = %for.body
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %type, align 4
  %15 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %16 = ptrtoint ptr %vdec_framesizes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdec_framesizes, align 4
  %stepwise = getelementptr %struct.mtk_codec_framesizes, ptr %17, i32 %i.063, i32 1
  %18 = call ptr @memcpy(ptr %15, ptr %stepwise, i32 24)
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dec_capability = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %dec_capability to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dec_capability, align 8
  %and = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end4.do.body16_crit_edge

if.end4.do.body16_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_enum_framesizes.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_enum_framesizes, %if.then13)) #8
          to label %do.end [label %if.then13], !srcloc !151

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_enum_framesizes.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 534) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4096, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %24 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2304, ptr %max_height, align 4
  br label %do.body16

do.body16:                                        ; preds = %do.end, %if.end4.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_enum_framesizes.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_enum_framesizes, %if.then28)) #8
          to label %cleanup [label %if.then28], !srcloc !151

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %dec_capability30 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %26, i32 0, i32 26
  %27 = ptrtoint ptr %dec_capability30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dec_capability30, align 8
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %15, align 4
  %max_width31 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %max_width31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_width31, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %33 = ptrtoint ptr %step_width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %step_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %35 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %min_height, align 4
  %max_height32 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %37 = ptrtoint ptr %max_height32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_height32, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %39 = ptrtoint ptr %step_height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %step_height, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_enum_framesizes.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.63, i32 noundef 547, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then28, %do.body16, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %do.body16 ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_vdec_subscribe_evt(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 5, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 2, ptr noundef null) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %fh, ptr noundef %sub) #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call3, %sw.default ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_vcodec_dec_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_dec_queue_init.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_dec_queue_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_dec_queue_init.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 929, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 776, ptr %buf_struct_size, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %vdec_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %vdec_pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdec_pdata, align 8
  %vdec_vb2_ops = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %vdec_vb2_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdec_vb2_ops, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %13 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %14 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16384, ptr %timestamp_flags, align 4
  %15 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %15, i32 0, i32 19
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev_mutex, ptr %lock, align 4
  %17 = load ptr, ptr %dev, align 4
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %plat_dev, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %dev6 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %20 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev5, ptr %dev6, align 4
  %call7 = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, i32 noundef 943) #11
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %21 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 9, ptr %dst_vq, align 4
  %io_modes17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %22 = ptrtoint ptr %io_modes17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 17, ptr %io_modes17, align 4
  %drv_priv18 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %23 = ptrtoint ptr %drv_priv18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %priv, ptr %drv_priv18, align 4
  %buf_struct_size19 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %24 = ptrtoint ptr %buf_struct_size19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 776, ptr %buf_struct_size19, align 4
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %vdec_pdata21 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %vdec_pdata21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdec_pdata21, align 8
  %vdec_vb2_ops22 = getelementptr inbounds %struct.mtk_vcodec_dec_pdata, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %vdec_vb2_ops22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdec_vb2_ops22, align 4
  %ops23 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %31 = ptrtoint ptr %ops23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %ops23, align 4
  %mem_ops24 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %32 = ptrtoint ptr %mem_ops24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops24, align 4
  %timestamp_flags25 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %33 = ptrtoint ptr %timestamp_flags25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16384, ptr %timestamp_flags25, align 4
  %34 = load ptr, ptr %dev, align 4
  %dev_mutex27 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %34, i32 0, i32 19
  %lock28 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %35 = ptrtoint ptr %lock28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev_mutex27, ptr %lock28, align 4
  %36 = load ptr, ptr %dev, align 4
  %plat_dev30 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %plat_dev30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %plat_dev30, align 4
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %dev32 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %39 = ptrtoint ptr %dev32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev31, ptr %dev32, align 4
  %call33 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end15.cleanup_crit_edge, label %do.end38

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end38:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef 958) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end15.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ %call33, %do.end38 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vidioc_try_fmt(ptr noundef %f, ptr nocapture noundef readonly %fmt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1, ptr %field, align 1
  %1 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %fmt1, align 1
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 64)
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 2048)
  %5 = ptrtoint ptr %fmt1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %fmt1, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %height, align 1
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 64)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 1088)
  %10 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %height, align 1
  %11 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %12, label %entry.if.end84_crit_edge [
    i32 10, label %if.then
    i32 9, label %if.then25
  ]

entry.if.end84_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %num_planes, align 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %bytesperline, align 1
  br label %if.end84

if.then25:                                        ; preds = %entry
  tail call void @v4l_bound_align_image(ptr noundef %fmt1, i32 noundef 64, i32 noundef 2048, i32 noundef 6, ptr noundef %height, i32 noundef 64, i32 noundef 1088, i32 noundef 6, i32 noundef 9) #8
  %16 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %fmt1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %4)
  %cmp31 = icmp ult i32 %17, %4
  br i1 %cmp31, label %land.lhs.true, label %if.then25.if.end_crit_edge

if.then25.if.end_crit_edge:                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %if.then25
  %add = add i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %add)
  %cmp33 = icmp ult i32 %add, 2049
  br i1 %cmp33, label %if.then34, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %fmt1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %add, ptr %fmt1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then34, %land.lhs.true.if.end_crit_edge, %if.then25.if.end_crit_edge
  %19 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %height, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %9)
  %cmp38 = icmp ult i32 %20, %9
  br i1 %cmp38, label %land.lhs.true39, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true39:                                  ; preds = %if.end
  %add41 = add i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1089, i32 %add41)
  %cmp42 = icmp ult i32 %add41, 1089
  br i1 %cmp42, label %if.then43, label %land.lhs.true39.do.body_crit_edge

land.lhs.true39.do.body_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then43:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %add41, ptr %height, align 1
  br label %do.body

do.body:                                          ; preds = %if.then43, %land.lhs.true39.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt, %if.then50)) #8
          to label %do.end [label %if.then50], !srcloc !151

if.then50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %fmt1, align 1
  %24 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %height, align 1
  %mul = mul i32 %25, %23
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef 264, i32 noundef %4, i32 noundef %9, i32 noundef %23, i32 noundef %25, i32 noundef %mul) #8
  br label %do.end

do.end:                                           ; preds = %if.then50, %do.body
  %num_planes56 = getelementptr inbounds %struct.mtk_video_fmt, ptr %fmt, i32 0, i32 2
  %26 = ptrtoint ptr %num_planes56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_planes56, align 4
  %conv = trunc i32 %27 to i8
  %num_planes57 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %28 = ptrtoint ptr %num_planes57 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %num_planes57, align 1
  %29 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %fmt1, align 1
  %31 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %height, align 1
  %mul60 = mul i32 %32, %30
  %plane_fmt61 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %plane_fmt61 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %mul60, ptr %plane_fmt61, align 1
  %bytesperline66 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %bytesperline66 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %30, ptr %bytesperline66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv)
  %cmp69 = icmp eq i8 %conv, 2
  br i1 %cmp69, label %if.then71, label %do.end.if.end84_crit_edge

do.end.if.end84_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then71:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %div1 = lshr i32 %mul60, 1
  %arrayidx76 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %div1, ptr %arrayidx76, align 1
  %bytesperline81 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %36 = ptrtoint ptr %bytesperline81 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %30, ptr %bytesperline81, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then71, %do.end.if.end84_crit_edge, %if.then, %entry.if.end84_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 7
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %flags, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdec_if_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdec_if_get_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_dqbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_stateless_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_try_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_stateless_try_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @mtk_vcodec_dec_set_default_params.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 131, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 696, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vb2ops_vdec_queue_setup._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @vb2ops_vdec_queue_setup._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 715, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vb2ops_vdec_queue_setup.__UNIQUE_ID_ddebug315, !10, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 729, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vb2ops_vdec_buf_prepare.__UNIQUE_ID_ddebug316, !15, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 736, i32 4}
!21 = !{ptr @vb2ops_vdec_buf_prepare._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @vb2ops_vdec_buf_prepare._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 763, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vb2ops_vdec_buf_finish._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @vb2ops_vdec_buf_finish._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 799, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vb2ops_vdec_stop_streaming.__UNIQUE_ID_ddebug317, !29, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!32 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 826, i32 3}
!35 = !{ptr @vb2ops_vdec_stop_streaming.__UNIQUE_ID_ddebug318, !34, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!36 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 836, i32 4}
!39 = !{ptr @vb2ops_vdec_stop_streaming._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vb2ops_vdec_stop_streaming._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mtk_vdec_m2m_ops, !42, !"mtk_vdec_m2m_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 883, i32 27}
!43 = !{ptr @mtk_vdec_ioctl_ops, !44, !"mtk_vdec_ioctl_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 889, i32 29}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 929, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mtk_vcodec_dec_queue_init.__UNIQUE_ID_ddebug320, !46, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!49 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 943, i32 3}
!52 = !{ptr @mtk_vcodec_dec_queue_init._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mtk_vcodec_dec_queue_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 958, i32 3}
!56 = !{ptr @mtk_vcodec_dec_queue_init._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mtk_vcodec_dec_queue_init._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!60 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 861, i32 2}
!63 = !{ptr @m2mops_vdec_job_ready.__UNIQUE_ID_ddebug319, !62, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 200, i32 23}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 201, i32 25}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 607, i32 3}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vidioc_vdec_g_fmt._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @vidioc_vdec_g_fmt._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 678, i32 3}
!75 = !{ptr @vidioc_vdec_g_fmt.__UNIQUE_ID_ddebug314, !74, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!76 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 404, i32 2}
!79 = !{ptr @vidioc_vdec_s_fmt.__UNIQUE_ID_ddebug310, !78, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 418, i32 3}
!82 = !{ptr @vidioc_vdec_s_fmt._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @vidioc_vdec_s_fmt._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 428, i32 3}
!86 = !{ptr @vidioc_vdec_s_fmt._entry.36, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @vidioc_vdec_s_fmt._entry_ptr.38, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 463, i32 5}
!90 = !{ptr @vidioc_vdec_s_fmt._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @vidioc_vdec_s_fmt._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 481, i32 4}
!94 = !{ptr @vidioc_vdec_s_fmt._entry.42, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @vidioc_vdec_s_fmt._entry_ptr.44, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 507, i32 3}
!98 = !{ptr @vidioc_vdec_s_fmt.__UNIQUE_ID_ddebug311, !97, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!99 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 260, i32 3}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @vidioc_try_fmt.__UNIQUE_ID_ddebug309, !101, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!104 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 316, i32 3}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @vidioc_try_fmt_vid_out_mplane._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @vidioc_try_fmt_vid_out_mplane._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 175, i32 3}
!112 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vidioc_vdec_qbuf._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @vidioc_vdec_qbuf._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 189, i32 3}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vidioc_vdec_dqbuf._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @vidioc_vdec_dqbuf._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 76, i32 2}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @vidioc_decoder_cmd.__UNIQUE_ID_ddebug298, !121, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!124 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 84, i32 4}
!127 = !{ptr @vidioc_decoder_cmd.__UNIQUE_ID_ddebug299, !126, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!128 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 88, i32 4}
!131 = !{ptr @vidioc_decoder_cmd.__UNIQUE_ID_ddebug300, !130, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!132 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 534, i32 4}
!135 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @vidioc_enum_framesizes.__UNIQUE_ID_ddebug312, !134, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!137 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c", i32 540, i32 3}
!140 = !{ptr @vidioc_enum_framesizes.__UNIQUE_ID_ddebug313, !139, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!141 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i64 2148788655, i64 2148788660, i64 2148788673, i64 2148788717, i64 2148788751, i64 2148788772}
!152 = !{i8 0, i8 2}
