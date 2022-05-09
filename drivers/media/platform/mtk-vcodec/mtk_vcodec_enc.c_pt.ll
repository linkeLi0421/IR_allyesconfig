; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.mtk_vcodec_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [14 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, %struct.mutex, %struct.mutex, %struct.mtk_vcodec_pm, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.106], %struct.media_entity_enum, i32 }
%struct.anon.106 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mtk_vcodec_pm = type { %struct.mtk_vcodec_clk, ptr, %struct.mtk_vcodec_clk, ptr, ptr, ptr }
%struct.mtk_vcodec_clk = type { ptr, i32 }
%struct.mtk_vcodec_enc_pdata = type { i32, i8, i32, i32, ptr, i32, ptr, i32, i32 }
%struct.mtk_video_fmt = type { i32, i32, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.86, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.86 = type { i8 }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.87, i32, i32, %union.anon.89 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%union.anon.87 = type { i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.100 }
%union.anon.100 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.102, [2 x i32] }
%union.anon.102 = type { %struct.v4l2_frmsize_stepwise }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vdec_pic_info = type { i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.119, i32 }
%union.anon.119 = type { i32 }
%struct.venc_frm_buf = type { [3 x %struct.mtk_vcodec_fb] }
%struct.mtk_vcodec_fb = type { i32, i32 }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }
%struct.venc_done_result = type { i32, i8 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
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
%struct.venc_enc_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_video_enc_buf = type { %struct.v4l2_m2m_buffer, i32, %struct.mtk_enc_params }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.112, %union.anon.113, i32, ptr, i32, %struct.anon.114, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { ptr }
%struct.anon.114 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@mtk_venc_ioctl_ops = dso_local constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_venc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_venc_g_fmt, ptr @vidioc_venc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_venc_s_fmt_cap, ptr @vidioc_venc_s_fmt_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap_mplane, ptr @vidioc_try_fmt_vid_out_mplane, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @vidioc_venc_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @vidioc_venc_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_venc_g_selection, ptr @vidioc_venc_s_selection, ptr null, ptr null, ptr null, ptr @vidioc_encoder_cmd, ptr @v4l2_m2m_ioctl_try_encoder_cmd, ptr null, ptr null, ptr @vidioc_venc_g_parm, ptr @vidioc_venc_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@mtk_venc_m2m_ops = dso_local constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @m2mops_venc_device_run, ptr @m2mops_venc_job_ready, ptr @m2mops_venc_job_abort }, [20 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_set_default_params.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ctx->encode_work)\00", [59 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vidioc_venc_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_ctrls_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mtk_vcodec_enc:1344:(handler)->_lock\00", [59 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_ctrls_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Init control handler fail %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_vcodec_enc_ctrls_setup\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c\00", [45 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_ctrls_setup._entry_ptr = internal global ptr @mtk_vcodec_enc_ctrls_setup._entry, section ".printk_index", align 4
@mtk_venc_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vb2ops_venc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @vb2ops_venc_buf_out_validate, ptr null, ptr @vb2ops_venc_buf_prepare, ptr null, ptr null, ptr @vb2ops_venc_start_streaming, ptr @vb2ops_venc_stop_streaming, ptr @vb2ops_venc_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@mtk_vcodec_enc_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] venc_if_deinit failed=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_vcodec_enc_release\00", [41 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_release._entry_ptr = internal global ptr @mtk_vcodec_enc_release._entry, section ".printk_index", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk-vcodec-enc\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:mt8173\00", [16 x i8] zeroinitializer }, align 32
@vidioc_venc_s_fmt_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] fail to get vq\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vidioc_venc_s_fmt_cap\00", [42 x i8] zeroinitializer }, align 32
@vidioc_venc_s_fmt_cap._entry_ptr = internal global ptr @vidioc_venc_s_fmt_cap._entry, section ".printk_index", align 4
@vidioc_venc_s_fmt_cap._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] queue busy\0A\00", [55 x i8] zeroinitializer }, align 32
@vidioc_venc_s_fmt_cap._entry_ptr.13 = internal global ptr @vidioc_venc_s_fmt_cap._entry.11, section ".printk_index", align 4
@vidioc_venc_s_fmt_cap._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.4, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] venc_if_init failed=%d, codec type=%x\0A\00", [60 x i8] zeroinitializer }, align 32
@vidioc_venc_s_fmt_cap._entry_ptr.16 = internal global ptr @vidioc_venc_s_fmt_cap._entry.14, section ".printk_index", align 4
@vidioc_venc_s_fmt_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.17, ptr @.str.4, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vidioc_venc_s_fmt_out\00", [42 x i8] zeroinitializer }, align 32
@vidioc_venc_s_fmt_out._entry_ptr = internal global ptr @vidioc_venc_s_fmt_out._entry, section ".printk_index", align 4
@vidioc_venc_s_fmt_out._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.17, ptr @.str.4, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_venc_s_fmt_out._entry_ptr.19 = internal global ptr @vidioc_venc_s_fmt_out._entry.18, section ".printk_index", align 4
@vidioc_try_fmt_out.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_vcodec_enc\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_try_fmt_out\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"before resize w=%d, h=%d, after resize w=%d, h=%d, sizeimage=%d %d\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s(),%d: before resize w=%d, h=%d, after resize w=%d, h=%d, sizeimage=%d %d\00", [52 x i8] zeroinitializer }, align 32
@vidioc_venc_qbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] Call on QBUF after unrecoverable error\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vidioc_venc_qbuf\00", [47 x i8] zeroinitializer }, align 32
@vidioc_venc_qbuf._entry_ptr = internal global ptr @vidioc_venc_qbuf._entry, section ".printk_index", align 4
@vidioc_venc_dqbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.4, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_venc_dqbuf\00", [46 x i8] zeroinitializer }, align 32
@vidioc_venc_dqbuf._entry_ptr = internal global ptr @vidioc_venc_dqbuf._entry, section ".printk_index", align 4
@vidioc_encoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] Call to CMD after unrecoverable error\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_encoder_cmd\00", [45 x i8] zeroinitializer }, align 32
@vidioc_encoder_cmd._entry_ptr = internal global ptr @vidioc_encoder_cmd._entry, section ".printk_index", align 4
@vidioc_encoder_cmd.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"encoder cmd=%u\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(),%d: encoder cmd=%u\00", [40 x i8] zeroinitializer }, align 32
@vidioc_encoder_cmd.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.4, ptr @.str.31, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Output stream is off. No need to flush.\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(),%d: Output stream is off. No need to flush.\00", [47 x i8] zeroinitializer }, align 32
@vidioc_encoder_cmd.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.4, ptr @.str.33, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Capture stream is off. No need to flush.\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: Capture stream is off. No need to flush.\00", [46 x i8] zeroinitializer }, align 32
@mtk_venc_4k_framesizes = internal constant { %struct.v4l2_frmsize_stepwise, [40 x i8] } { %struct.v4l2_frmsize_stepwise { i32 160, i32 3840, i32 16, i32 128, i32 2176, i32 16 }, [40 x i8] zeroinitializer }, align 32
@mtk_venc_hd_framesizes = internal constant { %struct.v4l2_frmsize_stepwise, [40 x i8] } { %struct.v4l2_frmsize_stepwise { i32 160, i32 1920, i32 16, i32 128, i32 1088, i32 16 }, [40 x i8] zeroinitializer }, align 32
@mtk_venc_encode_header.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 1, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_venc_encode_header\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No dst buffer\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(),%d: No dst buffer\00", [41 x i8] zeroinitializer }, align 32
@mtk_venc_encode_header.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.35, ptr @.str.4, ptr @.str.38, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%d] buf id=%d va=0x%p dma_addr=0x%llx size=%zu\00", [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s(),%d: [%d] buf id=%d va=0x%p dma_addr=0x%llx size=%zu\00", [39 x i8] zeroinitializer }, align 32
@mtk_venc_encode_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.4, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] venc_if_encode failed=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_venc_encode_header._entry_ptr = internal global ptr @mtk_venc_encode_header._entry, section ".printk_index", align 4
@mtk_venc_encode_header._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.4, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] No timestamp for the header buffer.\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_venc_encode_header._entry_ptr.43 = internal global ptr @mtk_venc_encode_header._entry.41, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@mtk_venc_param_change.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 1, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_venc_param_change\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%d] id=%d, change param br=%d\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(),%d: [%d] id=%d, change param br=%d\00", [56 x i8] zeroinitializer }, align 32
@mtk_venc_param_change.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.45, ptr @.str.4, ptr @.str.48, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%d] id=%d, change param fr=%d\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(),%d: [%d] id=%d, change param fr=%d\00", [56 x i8] zeroinitializer }, align 32
@mtk_venc_param_change.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.45, ptr @.str.4, ptr @.str.50, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"change param intra period=%d\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(),%d: change param intra period=%d\00", [58 x i8] zeroinitializer }, align 32
@mtk_venc_param_change.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.45, ptr @.str.4, ptr @.str.52, i8 1, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] id=%d, change param force I=%d\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(),%d: [%d] id=%d, change param force I=%d\00", [51 x i8] zeroinitializer }, align 32
@mtk_venc_param_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str.4, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] venc_if_set_param %d failed=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_venc_param_change._entry_ptr = internal global ptr @mtk_venc_param_change._entry, section ".printk_index", align 4
@m2mops_venc_job_ready.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 1, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"m2mops_venc_job_ready\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%d]Not ready: state=0x%x.\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(),%d: [%d]Not ready: state=0x%x.\00", [60 x i8] zeroinitializer }, align 32
@mtk_venc_worker.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 1, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_venc_worker\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Framebuf PA=%llx Size=0x%zx;PA=0x%llx Size=0x%zx;PA=0x%llx Size=%zu\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s(),%d: Framebuf PA=%llx Size=0x%zx;PA=0x%llx Size=0x%zx;PA=0x%llx Size=%zu\00", [51 x i8] zeroinitializer }, align 32
@mtk_venc_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.58, ptr @.str.4, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_venc_worker._entry_ptr = internal global ptr @mtk_venc_worker._entry, section ".printk_index", align 4
@mtk_venc_worker.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.58, ptr @.str.4, ptr @.str.61, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"venc_if_encode bs size=%d\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(),%d: venc_if_encode bs size=%d\00", [61 x i8] zeroinitializer }, align 32
@mtk_venc_worker.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.58, ptr @.str.4, ptr @.str.63, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"<=== src_buf[%d] dst_buf[%d] venc_if_encode ret=%d Size=%u===>\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s(),%d: <=== src_buf[%d] dst_buf[%d] venc_if_encode ret=%d Size=%u===>\00", [56 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.66, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_venc_s_ctrl\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"V4L2_CID_MPEG_VIDEO_BITRATE val = %d\00", [59 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_BITRATE val = %d\00", [50 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.68, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"V4L2_CID_MPEG_VIDEO_B_FRAMES val = %d\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_B_FRAMES val = %d\00", [49 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.70, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE val = %d\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE val = %d\00", [42 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.72, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"V4L2_CID_MPEG_VIDEO_H264_MAX_QP val = %d\00", [55 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_H264_MAX_QP val = %d\00", [46 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.74, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"V4L2_CID_MPEG_VIDEO_HEADER_MODE val = %d\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_HEADER_MODE val = %d\00", [46 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.76, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE val = %d\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE val = %d\00", [45 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.78, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"V4L2_CID_MPEG_VIDEO_H264_PROFILE val = %d\00", [54 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_H264_PROFILE val = %d\00", [45 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.80, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"V4L2_CID_MPEG_VIDEO_H264_LEVEL val = %d\00", [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_H264_LEVEL val = %d\00", [47 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.82, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"V4L2_CID_MPEG_VIDEO_H264_I_PERIOD val = %d\00", [53 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_H264_I_PERIOD val = %d\00", [44 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.84, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"V4L2_CID_MPEG_VIDEO_GOP_SIZE val = %d\00", [58 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_GOP_SIZE val = %d\00", [49 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.86, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"V4L2_CID_MPEG_VIDEO_VP8_PROFILE val = %d\00", [55 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_VP8_PROFILE val = %d\00", [46 x i8] zeroinitializer }, align 32
@vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.65, ptr @.str.4, ptr @.str.88, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(),%d: V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME\00", [51 x i8] zeroinitializer }, align 32
@vb2ops_venc_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] data will not fit into plane %d (%lu < %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vb2ops_venc_buf_prepare\00", [40 x i8] zeroinitializer }, align 32
@vb2ops_venc_buf_prepare._entry_ptr = internal global ptr @vb2ops_venc_buf_prepare._entry, section ".printk_index", align 4
@vb2ops_venc_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.4, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] pm_runtime_resume_and_get fail %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vb2ops_venc_start_streaming\00", [36 x i8] zeroinitializer }, align 32
@vb2ops_venc_start_streaming._entry_ptr = internal global ptr @vb2ops_venc_start_streaming._entry, section ".printk_index", align 4
@vb2ops_venc_start_streaming._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.4, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] venc_if_set_param failed=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@vb2ops_venc_start_streaming._entry_ptr.96 = internal global ptr @vb2ops_venc_start_streaming._entry.94, section ".printk_index", align 4
@vb2ops_venc_start_streaming._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.4, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vb2ops_venc_start_streaming._entry_ptr.98 = internal global ptr @vb2ops_venc_start_streaming._entry.97, section ".printk_index", align 4
@vb2ops_venc_start_streaming._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.93, ptr @.str.4, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] pm_runtime_put fail %d\0A\00", [43 x i8] zeroinitializer }, align 32
@vb2ops_venc_start_streaming._entry_ptr.101 = internal global ptr @vb2ops_venc_start_streaming._entry.99, section ".printk_index", align 4
@vb2ops_venc_start_streaming.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.93, ptr @.str.4, ptr @.str.102, i8 0, i8 -26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%d] id=%d, type=%d, %d -> VB2_BUF_STATE_QUEUED\00", [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s(),%d: [%d] id=%d, type=%d, %d -> VB2_BUF_STATE_QUEUED\00", [39 x i8] zeroinitializer }, align 32
@mtk_venc_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.4, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Unsupported fourcc =%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_venc_set_param\00", [45 x i8] zeroinitializer }, align 32
@mtk_venc_set_param._entry_ptr = internal global ptr @mtk_venc_set_param._entry, section ".printk_index", align 4
@mtk_venc_set_param.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.105, ptr @.str.4, ptr @.str.106, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"fmt 0x%x, P/L %d/%d, w/h %d/%d, buf %d/%d, fps/bps %d/%d, gop %d, i_period %d\00", [50 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s(),%d: fmt 0x%x, P/L %d/%d, w/h %d/%d, buf %d/%d, fps/bps %d/%d, gop %d, i_period %d\00", [41 x i8] zeroinitializer }, align 32
@vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.108, ptr @.str.4, ptr @.str.109, i8 0, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vb2ops_venc_stop_streaming\00", [37 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[%d]-> type=%d\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(),%d: [%d]-> type=%d\00", [40 x i8] zeroinitializer }, align 32
@vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.108, ptr @.str.4, ptr @.str.111, i8 0, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"STREAMOFF called while flushing\00", [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(),%d: STREAMOFF called while flushing\00", [55 x i8] zeroinitializer }, align 32
@vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.108, ptr @.str.4, ptr @.str.113, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%d]-> q type %d out=%d cap=%d\00", [33 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(),%d: [%d]-> q type %d out=%d cap=%d\00", [56 x i8] zeroinitializer }, align 32
@vb2ops_venc_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.108, ptr @.str.4, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vb2ops_venc_stop_streaming._entry_ptr = internal global ptr @vb2ops_venc_stop_streaming._entry, section ".printk_index", align 4
@vb2ops_venc_stop_streaming._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.108, ptr @.str.4, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vb2ops_venc_stop_streaming._entry_ptr.116 = internal global ptr @vb2ops_venc_stop_streaming._entry.115, section ".printk_index", align 4
@vb2ops_venc_buf_queue.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.117, ptr @.str.4, ptr @.str.118, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vb2ops_venc_buf_queue\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%d] Before id=%d encode parameter change %x\00", [51 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(),%d: [%d] Before id=%d encode parameter change %x\00", [42 x i8] zeroinitializer }, align 32
@switch.table.vidioc_venc_g_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 244, i32 196], [44 x i8] zeroinitializer }, align 32
@switch.table.vidioc_venc_s_fmt_cap = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 244, i32 196], [44 x i8] zeroinitializer }, align 32
@switch.table.vidioc_venc_s_fmt_out = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 244, i32 196], [44 x i8] zeroinitializer }, align 32
@switch.table.vidioc_venc_g_selection = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 244, i32 196], [44 x i8] zeroinitializer }, align 32
@switch.table.vidioc_venc_s_selection = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 196, i32 244, i32 196, i32 244, i32 196, i32 244, i32 196], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [14 x i64] [i64 12, i64 32, i64 10029514, i64 10029515, i64 10029519, i64 10029527, i64 10029528, i64 10029530, i64 10029541, i64 10029666, i64 10029670, i64 10029671, i64 10029675, i64 10029823]
@__sancov_gen_cov_switch_values.124 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.125 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.127 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 825380174, i64 825380185, i64 842091854, i64 842091865]
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c"mtk_venc_ioctl_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 743, i32 29 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"mtk_venc_m2m_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1266, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1279, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [24 x i8] c"mtk_vcodec_enc_ctrl_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 127, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1344, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1380, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"mtk_venc_vb2_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1007, i32 29 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1449, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 211, i32 23 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 212, i32 25 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 409, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 414, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 442, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 464, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 469, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 315, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 644, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 659, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 698, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 711, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 720, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 724, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [23 x i8] c"mtk_venc_4k_framesizes\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 42, i32 43 }
@___asan_gen_.268 = private unnamed_addr constant [23 x i8] c"mtk_venc_hd_framesizes\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 37, i32 43 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1028, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1036, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1051, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1059, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1163, i32 7 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1088, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1099, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1109, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1116, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1130, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1251, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1192, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1214, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1219, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1225, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 55, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 61, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 66, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 71, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 76, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 81, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 86, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 91, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 96, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 102, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 112, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 115, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 815, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 875, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 882, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 895, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 907, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 918, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 370, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 388, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 935, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 946, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 980, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 990, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 994, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.530 = private constant [54 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 837, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant [31 x i8] c"switch.table.vidioc_venc_g_fmt\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [35 x i8] c"switch.table.vidioc_venc_s_fmt_cap\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [35 x i8] c"switch.table.vidioc_venc_s_fmt_out\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [37 x i8] c"switch.table.vidioc_venc_g_selection\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [37 x i8] c"switch.table.vidioc_venc_s_selection\00", align 1
@llvm.compiler.used = appending global [161 x ptr] [ptr @mtk_vcodec_enc_ctrls_setup._entry, ptr @mtk_vcodec_enc_ctrls_setup._entry_ptr, ptr @mtk_vcodec_enc_release._entry, ptr @mtk_vcodec_enc_release._entry_ptr, ptr @mtk_venc_encode_header._entry, ptr @mtk_venc_encode_header._entry.41, ptr @mtk_venc_encode_header._entry_ptr, ptr @mtk_venc_encode_header._entry_ptr.43, ptr @mtk_venc_param_change._entry, ptr @mtk_venc_param_change._entry_ptr, ptr @mtk_venc_set_param._entry, ptr @mtk_venc_set_param._entry_ptr, ptr @mtk_venc_worker._entry, ptr @mtk_venc_worker._entry_ptr, ptr @vb2ops_venc_buf_prepare._entry, ptr @vb2ops_venc_buf_prepare._entry_ptr, ptr @vb2ops_venc_start_streaming._entry, ptr @vb2ops_venc_start_streaming._entry.94, ptr @vb2ops_venc_start_streaming._entry.97, ptr @vb2ops_venc_start_streaming._entry.99, ptr @vb2ops_venc_start_streaming._entry_ptr, ptr @vb2ops_venc_start_streaming._entry_ptr.101, ptr @vb2ops_venc_start_streaming._entry_ptr.96, ptr @vb2ops_venc_start_streaming._entry_ptr.98, ptr @vb2ops_venc_stop_streaming._entry, ptr @vb2ops_venc_stop_streaming._entry.115, ptr @vb2ops_venc_stop_streaming._entry_ptr, ptr @vb2ops_venc_stop_streaming._entry_ptr.116, ptr @vidioc_encoder_cmd._entry, ptr @vidioc_encoder_cmd._entry_ptr, ptr @vidioc_venc_dqbuf._entry, ptr @vidioc_venc_dqbuf._entry_ptr, ptr @vidioc_venc_qbuf._entry, ptr @vidioc_venc_qbuf._entry_ptr, ptr @vidioc_venc_s_fmt_cap._entry, ptr @vidioc_venc_s_fmt_cap._entry.11, ptr @vidioc_venc_s_fmt_cap._entry.14, ptr @vidioc_venc_s_fmt_cap._entry_ptr, ptr @vidioc_venc_s_fmt_cap._entry_ptr.13, ptr @vidioc_venc_s_fmt_cap._entry_ptr.16, ptr @vidioc_venc_s_fmt_out._entry, ptr @vidioc_venc_s_fmt_out._entry.18, ptr @vidioc_venc_s_fmt_out._entry_ptr, ptr @vidioc_venc_s_fmt_out._entry_ptr.19, ptr @mtk_venc_ioctl_ops, ptr @mtk_venc_m2m_ops, ptr @mtk_vcodec_enc_set_default_params.__key, ptr @.str, ptr @mtk_vcodec_enc_ctrl_ops, ptr @mtk_vcodec_enc_ctrls_setup._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mtk_venc_vb2_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @mtk_venc_4k_framesizes, ptr @mtk_venc_hd_framesizes, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @switch.table.vidioc_venc_g_fmt, ptr @switch.table.vidioc_venc_s_fmt_cap, ptr @switch.table.vidioc_venc_s_fmt_out, ptr @switch.table.vidioc_venc_g_selection, ptr @switch.table.vidioc_venc_s_selection], section "llvm.metadata"
@0 = internal global [139 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_enc_set_default_params.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_enc_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_enc_ctrls_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_enc_ctrls_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_enc_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_venc_s_fmt_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_venc_s_fmt_cap._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_venc_s_fmt_cap._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_venc_s_fmt_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_venc_s_fmt_out._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_venc_qbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_venc_dqbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_encoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_4k_framesizes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_hd_framesizes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_encode_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_encode_header._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_param_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_venc_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_venc_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_venc_start_streaming._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_venc_start_streaming._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_venc_start_streaming._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_venc_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_venc_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2ops_venc_stop_streaming._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_venc_g_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_venc_s_fmt_cap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_venc_s_fmt_out to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_venc_g_selection to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_venc_s_selection to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_venc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.7, i32 noundef 16) #11
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call2 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.8, i32 noundef 32) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.8, i32 noundef 32) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %venc_pdata, align 4
  %num_capture_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %num_capture_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_capture_formats, align 4
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not.i = icmp ult i32 %7, %5
  br i1 %cmp.not.i, label %if.end.i, label %entry.vidioc_enum_fmt.exit_crit_edge

entry.vidioc_enum_fmt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidioc_enum_fmt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %capture_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %capture_formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %capture_formats, align 4
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %9, i32 %7
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat.i, align 4
  br label %vidioc_enum_fmt.exit

vidioc_enum_fmt.exit:                             ; preds = %if.end.i, %entry.vidioc_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %venc_pdata, align 4
  %num_output_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %num_output_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_output_formats, align 4
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not.i = icmp ult i32 %7, %5
  br i1 %cmp.not.i, label %if.end.i, label %entry.vidioc_enum_fmt.exit_crit_edge

entry.vidioc_enum_fmt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidioc_enum_fmt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %output_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %output_formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %output_formats, align 4
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %9, i32 %7
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat.i, align 4
  br label %vidioc_enum_fmt.exit

vidioc_enum_fmt.exit:                             ; preds = %if.end.i, %entry.vidioc_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.vidioc_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_venc_g_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.lookup, label %entry.mtk_venc_get_q_data.exit_crit_edge

entry.mtk_venc_get_q_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_get_q_data.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vidioc_venc_g_fmt, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_venc_get_q_data.exit

mtk_venc_get_q_data.exit:                         ; preds = %switch.lookup, %entry.mtk_venc_get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 244, %entry.mtk_venc_get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 8
  %call3 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %5, i32 noundef %1) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %mtk_venc_get_q_data.exit.cleanup_crit_edge, label %if.end

mtk_venc_get_q_data.exit.cleanup_crit_edge:       ; preds = %mtk_venc_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mtk_venc_get_q_data.exit
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %coded_width = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 2
  %6 = ptrtoint ptr %coded_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %coded_width, align 4
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %fmt, align 1
  %coded_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 3
  %9 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %coded_height, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %height, align 1
  %fmt4 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 7
  %12 = ptrtoint ptr %fmt4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt4, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %pixelformat, align 1
  %field = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 4
  %17 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %field, align 4
  %field5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field5 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %field5, align 1
  %20 = load ptr, ptr %fmt4, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_planes, align 4
  %conv = trunc i32 %22 to i8
  %num_planes7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %23 = ptrtoint ptr %num_planes7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %num_planes7, align 1
  %conv957 = and i32 %22, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv957)
  %cmp58.not = icmp eq i32 %conv957, 0
  br i1 %cmp58.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 5, i32 %i.059
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.059
  %bytesperline12 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.059, i32 1
  %26 = ptrtoint ptr %bytesperline12 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %bytesperline12, align 1
  %arrayidx13 = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 6, i32 %i.059
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx13, align 4
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %arrayidx11, align 1
  %inc = add nuw nsw i32 %i.059, 1
  %30 = ptrtoint ptr %num_planes7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_planes7, align 1
  %conv9 = zext i8 %31 to i32
  %cmp = icmp ult i32 %inc, %conv9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 7
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %flags, align 1
  %colorspace = getelementptr i8, ptr %priv, i32 1576
  %33 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %colorspace, align 8
  %colorspace17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %colorspace17 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %colorspace17, align 1
  %ycbcr_enc = getelementptr i8, ptr %priv, i32 1580
  %36 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ycbcr_enc, align 4
  %conv18 = trunc i32 %37 to i8
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv18, ptr %38, align 1
  %quantization = getelementptr i8, ptr %priv, i32 1584
  %40 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quantization, align 8
  %conv19 = trunc i32 %41 to i8
  %quantization20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %42 = ptrtoint ptr %quantization20 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv19, ptr %quantization20, align 1
  %xfer_func = getelementptr i8, ptr %priv, i32 1588
  %43 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xfer_func, align 4
  %conv21 = trunc i32 %44 to i8
  %xfer_func22 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %45 = ptrtoint ptr %xfer_func22 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv21, ptr %xfer_func22, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mtk_venc_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %mtk_venc_get_q_data.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_venc_s_fmt_cap(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -16
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %venc_pdata, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 13
  br i1 %6, label %switch.lookup, label %entry.mtk_venc_get_q_data.exit_crit_edge

entry.mtk_venc_get_q_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_get_q_data.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vidioc_venc_s_fmt_cap, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_venc_get_q_data.exit

mtk_venc_get_q_data.exit:                         ; preds = %switch.lookup, %entry.mtk_venc_get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 244, %entry.mtk_venc_get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 8
  %call3 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %9, i32 noundef %5) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %mtk_venc_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 409) #14
  br label %cleanup

if.end:                                           ; preds = %mtk_venc_get_q_data.exit
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call3, i32 0, i32 21
  %10 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 414) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %fmt13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat, align 4
  %num_capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %num_capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_capture_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28.not.i = icmp eq i32 %15, 0
  br i1 %cmp28.not.i, label %if.end12.for.cond3.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end12.for.cond3.preheader.i_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end12
  %capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %capture_formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.cond.i.for.cond3.preheader.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond.i.for.cond3.preheader.i_crit_edge, %if.end12.for.cond3.preheader.i_crit_edge
  %num_output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %num_output_formats.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_output_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp430.not.i = icmp eq i32 %19, 0
  br i1 %cmp430.not.i, label %for.cond3.preheader.i.if.then16_crit_edge, label %for.body5.lr.ph.i

for.cond3.preheader.i.if.then16_crit_edge:        ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

for.body5.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %output_formats.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %output_formats.i, align 4
  br label %for.body5.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %17, i32 %k.029.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %13)
  %cmp2.i = icmp eq i32 %23, %13
  br i1 %cmp2.i, label %for.body.i.mtk_venc_find_format.exit_crit_edge, label %for.cond.i

for.body.i.mtk_venc_find_format.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

for.cond3.i:                                      ; preds = %for.body5.i
  %inc12.i = add nuw i32 %k.131.i, 1
  %exitcond35.not.i = icmp eq i32 %inc12.i, %19
  br i1 %exitcond35.not.i, label %for.cond3.i.if.then16_crit_edge, label %for.cond3.i.for.body5.i_crit_edge

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.cond3.i.if.then16_crit_edge:                  ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %k.131.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc12.i, %for.cond3.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.mtk_video_fmt, ptr %21, i32 %k.131.i
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %13)
  %cmp8.i = icmp eq i32 %25, %13
  br i1 %cmp8.i, label %for.body5.i.mtk_venc_find_format.exit_crit_edge, label %for.cond3.i

for.body5.i.mtk_venc_find_format.exit_crit_edge:  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

mtk_venc_find_format.exit:                        ; preds = %for.body5.i.mtk_venc_find_format.exit_crit_edge, %for.body.i.mtk_venc_find_format.exit_crit_edge
  %retval.0.i91 = phi ptr [ %arrayidx6.i, %for.body5.i.mtk_venc_find_format.exit_crit_edge ], [ %arrayidx.i, %for.body.i.mtk_venc_find_format.exit_crit_edge ]
  %tobool15.not = icmp eq ptr %retval.0.i91, null
  br i1 %tobool15.not, label %mtk_venc_find_format.exit.if.then16_crit_edge, label %mtk_venc_find_format.exit.if.end21_crit_edge

mtk_venc_find_format.exit.if.end21_crit_edge:     ; preds = %mtk_venc_find_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

mtk_venc_find_format.exit.if.then16_crit_edge:    ; preds = %mtk_venc_find_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16:                                        ; preds = %mtk_venc_find_format.exit.if.then16_crit_edge, %for.cond3.i.if.then16_crit_edge, %for.cond3.preheader.i.if.then16_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %venc_pdata18 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %venc_pdata18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %venc_pdata18, align 4
  %capture_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %capture_formats to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %capture_formats, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %pixelformat, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %mtk_venc_find_format.exit.if.end21_crit_edge
  %fmt.0 = phi ptr [ %retval.0.i91, %mtk_venc_find_format.exit.if.end21_crit_edge ], [ %31, %if.then16 ]
  %fmt22 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 7
  %35 = ptrtoint ptr %fmt22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %fmt.0, ptr %fmt22, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %field.i, align 4
  %num_planes.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %num_planes.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %38 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bytesperline.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 7
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %flags.i, align 1
  %40 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fmt13, align 4
  %coded_width = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 2
  %42 = ptrtoint ptr %coded_width to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %coded_width, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  %coded_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 3
  %45 = ptrtoint ptr %coded_height to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %coded_height, align 4
  %46 = load i32, ptr %field.i, align 4
  %field26 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 4
  %47 = ptrtoint ptr %field26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %field26, align 4
  %48 = load i8, ptr %num_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp98.not = icmp eq i8 %48, 0
  br i1 %cmp98.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end21.for.body_crit_edge
  %i.099 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %arrayidx31 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.099
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.099, i32 1
  %49 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %bytesperline, align 1
  %arrayidx33 = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 5, i32 %i.099
  %51 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx33, align 4
  %52 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %arrayidx31, align 1
  %arrayidx35 = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 6, i32 %i.099
  %54 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx35, align 4
  %inc = add nuw nsw i32 %i.099, 1
  %55 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num_planes.i, align 4
  %conv = zext i8 %56 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end21.for.end_crit_edge
  %state = getelementptr i8, ptr %priv, i32 296
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp36 = icmp eq i32 %58, 0
  br i1 %cmp36, label %if.then38, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then38:                                        ; preds = %for.end
  %59 = ptrtoint ptr %fmt22 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fmt22, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %call41 = tail call i32 @venc_if_init(ptr noundef %add.ptr.i, i32 noundef %62) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end51, label %do.end46

do.end46:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %fmt22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fmt22, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef 443, i32 noundef %call41, i32 noundef %66) #14
  br label %cleanup

if.end51:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end46, %for.end.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -16, %do.end9 ], [ -16, %do.end46 ], [ -22, %do.end ], [ 0, %if.end51 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_venc_s_fmt_out(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -16
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %venc_pdata, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 13
  br i1 %6, label %switch.lookup, label %entry.mtk_venc_get_q_data.exit_crit_edge

entry.mtk_venc_get_q_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_get_q_data.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vidioc_venc_s_fmt_out, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_venc_get_q_data.exit

mtk_venc_get_q_data.exit:                         ; preds = %switch.lookup, %entry.mtk_venc_get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 244, %entry.mtk_venc_get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 8
  %call3 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %9, i32 noundef %5) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %mtk_venc_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17, i32 noundef 464) #14
  br label %cleanup

if.end:                                           ; preds = %mtk_venc_get_q_data.exit
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call3, i32 0, i32 21
  %10 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, i32 noundef 469) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %fmt13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat, align 4
  %num_capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %num_capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_capture_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28.not.i = icmp eq i32 %15, 0
  br i1 %cmp28.not.i, label %if.end12.for.cond3.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end12.for.cond3.preheader.i_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end12
  %capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %capture_formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.cond.i.for.cond3.preheader.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond.i.for.cond3.preheader.i_crit_edge, %if.end12.for.cond3.preheader.i_crit_edge
  %num_output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %num_output_formats.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_output_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp430.not.i = icmp eq i32 %19, 0
  br i1 %cmp430.not.i, label %for.cond3.preheader.i.if.then16_crit_edge, label %for.body5.lr.ph.i

for.cond3.preheader.i.if.then16_crit_edge:        ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

for.body5.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %output_formats.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %output_formats.i, align 4
  br label %for.body5.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %17, i32 %k.029.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %13)
  %cmp2.i = icmp eq i32 %23, %13
  br i1 %cmp2.i, label %for.body.i.mtk_venc_find_format.exit_crit_edge, label %for.cond.i

for.body.i.mtk_venc_find_format.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

for.cond3.i:                                      ; preds = %for.body5.i
  %inc12.i = add nuw i32 %k.131.i, 1
  %exitcond35.not.i = icmp eq i32 %inc12.i, %19
  br i1 %exitcond35.not.i, label %for.cond3.i.if.then16_crit_edge, label %for.cond3.i.for.body5.i_crit_edge

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.cond3.i.if.then16_crit_edge:                  ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %k.131.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc12.i, %for.cond3.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.mtk_video_fmt, ptr %21, i32 %k.131.i
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %13)
  %cmp8.i = icmp eq i32 %25, %13
  br i1 %cmp8.i, label %for.body5.i.mtk_venc_find_format.exit_crit_edge, label %for.cond3.i

for.body5.i.mtk_venc_find_format.exit_crit_edge:  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

mtk_venc_find_format.exit:                        ; preds = %for.body5.i.mtk_venc_find_format.exit_crit_edge, %for.body.i.mtk_venc_find_format.exit_crit_edge
  %retval.0.i100 = phi ptr [ %arrayidx6.i, %for.body5.i.mtk_venc_find_format.exit_crit_edge ], [ %arrayidx.i, %for.body.i.mtk_venc_find_format.exit_crit_edge ]
  %tobool15.not = icmp eq ptr %retval.0.i100, null
  br i1 %tobool15.not, label %mtk_venc_find_format.exit.if.then16_crit_edge, label %mtk_venc_find_format.exit.if.end21_crit_edge

mtk_venc_find_format.exit.if.end21_crit_edge:     ; preds = %mtk_venc_find_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

mtk_venc_find_format.exit.if.then16_crit_edge:    ; preds = %mtk_venc_find_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16:                                        ; preds = %mtk_venc_find_format.exit.if.then16_crit_edge, %for.cond3.i.if.then16_crit_edge, %for.cond3.preheader.i.if.then16_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %venc_pdata18 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %venc_pdata18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %venc_pdata18, align 4
  %output_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %output_formats to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %output_formats, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %pixelformat, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %mtk_venc_find_format.exit.if.end21_crit_edge
  %fmt.0 = phi ptr [ %retval.0.i100, %mtk_venc_find_format.exit.if.end21_crit_edge ], [ %31, %if.then16 ]
  tail call fastcc void @vidioc_try_fmt_out(ptr noundef %add.ptr.i, ptr noundef %f, ptr noundef %fmt.0)
  %fmt26 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 7
  %35 = ptrtoint ptr %fmt26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %fmt.0, ptr %fmt26, align 4
  %36 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fmt13, align 4
  %38 = ptrtoint ptr %q_data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %q_data.i, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height, align 4
  %visible_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 1
  %41 = ptrtoint ptr %visible_height to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %visible_height, align 4
  %42 = load i32, ptr %fmt13, align 4
  %coded_width = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 2
  %43 = ptrtoint ptr %coded_width to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %coded_width, align 4
  %44 = load i32, ptr %height, align 4
  %coded_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 3
  %45 = ptrtoint ptr %coded_height to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %coded_height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %46 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %field, align 4
  %field34 = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 4
  %48 = ptrtoint ptr %field34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %field34, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %49 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %colorspace, align 4
  %colorspace36 = getelementptr i8, ptr %priv, i32 1576
  %51 = ptrtoint ptr %colorspace36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %colorspace36, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 2
  %conv = zext i8 %54 to i32
  %ycbcr_enc = getelementptr i8, ptr %priv, i32 1580
  %55 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %56 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %quantization, align 1
  %conv39 = zext i8 %57 to i32
  %quantization40 = getelementptr i8, ptr %priv, i32 1584
  %58 = ptrtoint ptr %quantization40 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv39, ptr %quantization40, align 8
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %59 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %xfer_func, align 4
  %conv42 = zext i8 %60 to i32
  %xfer_func43 = getelementptr i8, ptr %priv, i32 1588
  %61 = ptrtoint ptr %xfer_func43 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv42, ptr %xfer_func43, align 4
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %62 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp107.not = icmp eq i8 %63, 0
  br i1 %cmp107.not, label %if.end21.cleanup_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end21.for.body_crit_edge
  %i.0108 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %arrayidx49 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0108
  %bytesperline = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.0108, i32 1
  %64 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %bytesperline, align 1
  %arrayidx51 = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 5, i32 %i.0108
  %66 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx51, align 4
  %67 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %arrayidx49, align 1
  %arrayidx53 = getelementptr %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 6, i32 %i.0108
  %69 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx53, align 4
  %inc = add nuw nsw i32 %i.0108, 1
  %70 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_planes, align 4
  %conv45 = zext i8 %71 to i32
  %cmp = icmp ult i32 %inc, %conv45
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -16, %do.end9 ], [ -22, %do.end ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %venc_pdata, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %num_capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %num_capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_capture_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28.not.i = icmp eq i32 %7, 0
  br i1 %cmp28.not.i, label %entry.for.cond3.preheader.i_crit_edge, label %for.body.lr.ph.i

entry.for.cond3.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.body.lr.ph.i:                                 ; preds = %entry
  %capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %capture_formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.for.cond3.preheader.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond.i.for.cond3.preheader.i_crit_edge, %entry.for.cond3.preheader.i_crit_edge
  %num_output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %num_output_formats.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_output_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp430.not.i = icmp eq i32 %11, 0
  br i1 %cmp430.not.i, label %for.cond3.preheader.i.if.then_crit_edge, label %for.body5.lr.ph.i

for.cond3.preheader.i.if.then_crit_edge:          ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body5.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %output_formats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %output_formats.i, align 4
  br label %for.body5.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %9, i32 %k.029.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp2.i = icmp eq i32 %15, %5
  br i1 %cmp2.i, label %for.body.i.mtk_venc_find_format.exit_crit_edge, label %for.cond.i

for.body.i.mtk_venc_find_format.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

for.cond3.i:                                      ; preds = %for.body5.i
  %inc12.i = add nuw i32 %k.131.i, 1
  %exitcond35.not.i = icmp eq i32 %inc12.i, %11
  br i1 %exitcond35.not.i, label %for.cond3.i.if.then_crit_edge, label %for.cond3.i.for.body5.i_crit_edge

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.cond3.i.if.then_crit_edge:                    ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %k.131.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc12.i, %for.cond3.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.mtk_video_fmt, ptr %13, i32 %k.131.i
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %5)
  %cmp8.i = icmp eq i32 %17, %5
  br i1 %cmp8.i, label %for.body5.i.mtk_venc_find_format.exit_crit_edge, label %for.cond3.i

for.body5.i.mtk_venc_find_format.exit_crit_edge:  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

mtk_venc_find_format.exit:                        ; preds = %for.body5.i.mtk_venc_find_format.exit_crit_edge, %for.body.i.mtk_venc_find_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx6.i, %for.body5.i.mtk_venc_find_format.exit_crit_edge ], [ %arrayidx.i, %for.body.i.mtk_venc_find_format.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %mtk_venc_find_format.exit.if.then_crit_edge, label %mtk_venc_find_format.exit.if.end_crit_edge

mtk_venc_find_format.exit.if.end_crit_edge:       ; preds = %mtk_venc_find_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mtk_venc_find_format.exit.if.then_crit_edge:      ; preds = %mtk_venc_find_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %mtk_venc_find_format.exit.if.then_crit_edge, %for.cond3.i.if.then_crit_edge, %for.cond3.preheader.i.if.then_crit_edge
  %capture_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %capture_formats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %capture_formats, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %mtk_venc_find_format.exit.if.end_crit_edge
  %colorspace = getelementptr i8, ptr %priv, i32 1576
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %colorspace, align 8
  %colorspace8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %colorspace8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %colorspace8, align 4
  %ycbcr_enc = getelementptr i8, ptr %priv, i32 1580
  %26 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ycbcr_enc, align 4
  %conv = trunc i32 %27 to i8
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %28, align 2
  %quantization = getelementptr i8, ptr %priv, i32 1584
  %30 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quantization, align 8
  %conv10 = trunc i32 %31 to i8
  %quantization12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %32 = ptrtoint ptr %quantization12 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv10, ptr %quantization12, align 1
  %xfer_func = getelementptr i8, ptr %priv, i32 1588
  %33 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xfer_func, align 4
  %conv13 = trunc i32 %34 to i8
  %xfer_func15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %35 = ptrtoint ptr %xfer_func15 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv13, ptr %xfer_func15, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %field.i, align 4
  %num_planes.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %num_planes.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %38 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bytesperline.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 7
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %flags.i, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_out_mplane(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %priv, i32 -12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %venc_pdata, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %num_capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %num_capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_capture_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28.not.i = icmp eq i32 %7, 0
  br i1 %cmp28.not.i, label %entry.for.cond3.preheader.i_crit_edge, label %for.body.lr.ph.i

entry.for.cond3.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.body.lr.ph.i:                                 ; preds = %entry
  %capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %capture_formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.for.cond3.preheader.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond.i.for.cond3.preheader.i_crit_edge, %entry.for.cond3.preheader.i_crit_edge
  %num_output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %num_output_formats.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_output_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp430.not.i = icmp eq i32 %11, 0
  br i1 %cmp430.not.i, label %for.cond3.preheader.i.if.then_crit_edge, label %for.body5.lr.ph.i

for.cond3.preheader.i.if.then_crit_edge:          ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body5.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %output_formats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %output_formats.i, align 4
  br label %for.body5.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %9, i32 %k.029.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp2.i = icmp eq i32 %15, %5
  br i1 %cmp2.i, label %for.body.i.mtk_venc_find_format.exit_crit_edge, label %for.cond.i

for.body.i.mtk_venc_find_format.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

for.cond3.i:                                      ; preds = %for.body5.i
  %inc12.i = add nuw i32 %k.131.i, 1
  %exitcond35.not.i = icmp eq i32 %inc12.i, %11
  br i1 %exitcond35.not.i, label %for.cond3.i.if.then_crit_edge, label %for.cond3.i.for.body5.i_crit_edge

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.cond3.i.if.then_crit_edge:                    ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %k.131.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc12.i, %for.cond3.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.mtk_video_fmt, ptr %13, i32 %k.131.i
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %5)
  %cmp8.i = icmp eq i32 %17, %5
  br i1 %cmp8.i, label %for.body5.i.mtk_venc_find_format.exit_crit_edge, label %for.cond3.i

for.body5.i.mtk_venc_find_format.exit_crit_edge:  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

mtk_venc_find_format.exit:                        ; preds = %for.body5.i.mtk_venc_find_format.exit_crit_edge, %for.body.i.mtk_venc_find_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx6.i, %for.body5.i.mtk_venc_find_format.exit_crit_edge ], [ %arrayidx.i, %for.body.i.mtk_venc_find_format.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %mtk_venc_find_format.exit.if.then_crit_edge, label %mtk_venc_find_format.exit.if.end_crit_edge

mtk_venc_find_format.exit.if.end_crit_edge:       ; preds = %mtk_venc_find_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mtk_venc_find_format.exit.if.then_crit_edge:      ; preds = %mtk_venc_find_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %mtk_venc_find_format.exit.if.then_crit_edge, %for.cond3.i.if.then_crit_edge, %for.cond3.preheader.i.if.then_crit_edge
  %output_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %output_formats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %output_formats, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %mtk_venc_find_format.exit.if.end_crit_edge
  %fmt.0 = phi ptr [ %retval.0.i, %mtk_venc_find_format.exit.if.end_crit_edge ], [ %19, %if.then ]
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not = icmp eq i32 %24, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %colorspace, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %26, align 2
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %28 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %quantization, align 1
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %29 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %xfer_func, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end.if.end15_crit_edge
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -16
  tail call fastcc void @vidioc_try_fmt_out(ptr noundef %add.ptr.i, ptr noundef %f, ptr noundef %fmt.0)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_venc_qbuf(ptr noundef %file, ptr nocapture noundef readonly %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %priv, i32 296
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr i8, ptr %priv, i32 292
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 645, i32 noundef %3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 8
  %call2 = tail call i32 @v4l2_m2m_qbuf(ptr noundef %file, ptr noundef %5, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_venc_dqbuf(ptr noundef %file, ptr nocapture noundef %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %priv, i32 296
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr i8, ptr %priv, i32 292
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 660, i32 noundef %3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 8
  %call2 = tail call i32 @v4l2_m2m_dqbuf(ptr noundef %file, ptr noundef %5, ptr noundef %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 13
  br i1 %8, label %switch.hole_check, label %if.end4.land.lhs.true_crit_edge

if.end4.land.lhs.true_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %switch.hole_check.land.lhs.true_crit_edge, %if.end4.land.lhs.true_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true27

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true27:                                  ; preds = %land.lhs.true
  %m = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 9
  %11 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp28 = icmp eq i32 %14, 0
  br i1 %cmp28, label %land.lhs.true29, label %land.lhs.true27.cleanup_crit_edge

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %is_flushing = getelementptr i8, ptr %priv, i32 1568
  %15 = ptrtoint ptr %is_flushing to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_flushing, align 8, !range !263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool30.not = icmp eq i8 %16, 0
  br i1 %tobool30.not, label %land.lhs.true29.cleanup_crit_edge, label %if.then31

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %is_flushing to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_flushing, align 8
  br label %cleanup

switch.hole_check:                                ; preds = %if.end4
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 5483, %switch.maskindex
  %18 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %switch.lobit.not = icmp eq i16 %18, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.lhs.true_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.hole_check.land.lhs.true_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.then31, %land.lhs.true29.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %land.lhs.true29.cleanup_crit_edge ], [ 0, %land.lhs.true27.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_venc_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %s) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.lookup, label %entry.mtk_venc_get_q_data.exit_crit_edge

entry.mtk_venc_get_q_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_get_q_data.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vidioc_venc_g_selection, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_venc_get_q_data.exit

mtk_venc_get_q_data.exit:                         ; preds = %switch.lookup, %entry.mtk_venc_get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 244, %entry.mtk_venc_get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %mtk_venc_get_q_data.exit.cleanup_crit_edge

mtk_venc_get_q_data.exit.cleanup_crit_edge:       ; preds = %mtk_venc_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mtk_venc_get_q_data.exit
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge30
    i32 0, label %sw.bb6
  ]

if.end.sw.bb_crit_edge30:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge30
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %top, align 4
  %8 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %r, align 4
  %coded_width = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 2
  %9 = ptrtoint ptr %coded_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %coded_width, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width, align 4
  %coded_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 3
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %r7 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top8 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %top8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %top8, align 4
  %13 = ptrtoint ptr %r7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %r7, align 4
  %14 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q_data.i, align 4
  %width12 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %width12, align 4
  %visible_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb6, %sw.bb
  %coded_height.sink = phi ptr [ %coded_height, %sw.bb ], [ %visible_height, %sw.bb6 ]
  %17 = ptrtoint ptr %coded_height.sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %coded_height.sink, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %mtk_venc_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mtk_venc_get_q_data.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_venc_s_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %s) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.lookup, label %entry.mtk_venc_get_q_data.exit_crit_edge

entry.mtk_venc_get_q_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_get_q_data.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.vidioc_venc_s_selection, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_venc_get_q_data.exit

mtk_venc_get_q_data.exit:                         ; preds = %switch.lookup, %entry.mtk_venc_get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 244, %entry.mtk_venc_get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %mtk_venc_get_q_data.exit.cleanup_crit_edge

mtk_venc_get_q_data.exit.cleanup_crit_edge:       ; preds = %mtk_venc_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mtk_venc_get_q_data.exit
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond22 = icmp eq i32 %5, 0
  br i1 %cond22, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %top, align 4
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %coded_width = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 2
  %10 = ptrtoint ptr %coded_width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %coded_width, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %13 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %coded_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 3
  %16 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %coded_height, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %17)
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height, align 4
  %20 = ptrtoint ptr %q_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %12, ptr %q_data.i, align 4
  %21 = load i32, ptr %height, align 4
  %visible_height = getelementptr inbounds %struct.mtk_q_data, ptr %q_data.i, i32 0, i32 1
  %22 = ptrtoint ptr %visible_height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %visible_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %mtk_venc_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %mtk_venc_get_q_data.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_encoder_cmd(ptr noundef %file, ptr noundef %priv, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %priv, i32 296
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr i8, ptr %priv, i32 292
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 699, i32 noundef %3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef %file, ptr noundef %priv, ptr noundef %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %is_flushing = getelementptr i8, ptr %priv, i32 1568
  %4 = ptrtoint ptr %is_flushing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_flushing, align 8, !range !263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %do.body8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body8:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_encoder_cmd.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_encoder_cmd, %if.then14)) #11
          to label %do.end18 [label %if.then14], !srcloc !264

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_encoder_cmd.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 711, i32 noundef %7) #11
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body8
  %m2m_ctx = getelementptr i8, ptr %priv, i32 192
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 8
  %call19 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %9, i32 noundef 9) #11
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %11, label %do.end18.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb64
  ]

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end18
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 8
  %call22 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %14, i32 noundef 10) #11
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call22, i32 0, i32 28
  %15 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end41, label %do.body25

do.body25:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_encoder_cmd.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_encoder_cmd, %if.then37)) #11
          to label %cleanup [label %if.then37], !srcloc !264

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_encoder_cmd.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef 720) #11
  br label %cleanup

if.end41:                                         ; preds = %sw.bb
  %streaming.i87 = getelementptr inbounds %struct.vb2_queue, ptr %call19, i32 0, i32 28
  %16 = ptrtoint ptr %streaming.i87 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i88 = load i16, ptr %streaming.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i88)
  %tobool.i89 = icmp slt i16 %bf.load.i88, 0
  br i1 %tobool.i89, label %if.end60, label %do.body44

do.body44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_encoder_cmd.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_encoder_cmd, %if.then56)) #11
          to label %cleanup [label %if.then56], !srcloc !264

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_encoder_cmd.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.28, i32 noundef 724) #11
  br label %cleanup

if.end60:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %is_flushing to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %is_flushing, align 8
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx, align 8
  %empty_flush_buf = getelementptr i8, ptr %priv, i32 824
  tail call void @v4l2_m2m_buf_queue(ptr noundef %19, ptr noundef %empty_flush_buf) #11
  %20 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_try_schedule(ptr noundef %21) #11
  br label %cleanup

sw.bb64:                                          ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  %last_buffer_dequeued.i = getelementptr inbounds %struct.vb2_queue, ptr %call19, i32 0, i32 28
  %22 = ptrtoint ptr %last_buffer_dequeued.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i90 = load i16, ptr %last_buffer_dequeued.i, align 4
  %bf.clear.i = and i16 %bf.load.i90, -129
  store i16 %bf.clear.i, ptr %last_buffer_dequeued.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb64, %if.end60, %if.then56, %do.body44, %if.then37, %do.body25, %do.end18.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.then56 ], [ -22, %do.end18.cleanup_crit_edge ], [ 0, %sw.bb64 ], [ 0, %if.end60 ], [ 0, %do.body25 ], [ 0, %do.body44 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_venc_g_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %a) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.not = icmp eq i32 %1, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %framerate_num = getelementptr i8, ptr %priv, i32 332
  %3 = ptrtoint ptr %framerate_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %framerate_num, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %denominator, align 4
  %framerate_denom = getelementptr i8, ptr %priv, i32 336
  %6 = ptrtoint ptr %framerate_denom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %framerate_denom, align 8
  %8 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_venc_s_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %a) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %timeperframe1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.not = icmp eq i32 %1, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %timeperframe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeperframe1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.if.end7_crit_edge

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %6 = ptrtoint ptr %timeperframe1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1001, ptr %timeperframe1, align 4
  %denominator6 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %denominator6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 30000, ptr %denominator6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %lor.lhs.false.if.end7_crit_edge
  %denominator8 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %denominator8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %denominator8, align 4
  %framerate_num = getelementptr i8, ptr %priv, i32 332
  %10 = ptrtoint ptr %framerate_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %framerate_num, align 4
  %11 = ptrtoint ptr %timeperframe1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeperframe1, align 4
  %framerate_denom = getelementptr i8, ptr %priv, i32 336
  %13 = ptrtoint ptr %framerate_denom to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %framerate_denom, align 8
  %param_change = getelementptr i8, ptr %priv, i32 300
  %14 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param_change, align 4
  %or = or i32 %15, 2
  store i32 %or, ptr %param_change, align 4
  %16 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %parm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fsize) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %dev = getelementptr i8, ptr %fh, i32 -12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %venc_pdata, align 4
  %num_capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %num_capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_capture_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp28.not.i = icmp eq i32 %9, 0
  br i1 %cmp28.not.i, label %if.end.for.cond3.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end.for.cond3.preheader.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %capture_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %capture_formats.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %capture_formats.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.for.cond3.preheader.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond.i.for.cond3.preheader.i_crit_edge, %if.end.for.cond3.preheader.i_crit_edge
  %num_output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %num_output_formats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_output_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp430.not.i = icmp eq i32 %13, 0
  br i1 %cmp430.not.i, label %for.cond3.preheader.i.cleanup_crit_edge, label %for.body5.lr.ph.i

for.cond3.preheader.i.cleanup_crit_edge:          ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body5.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %output_formats.i = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %output_formats.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output_formats.i, align 4
  br label %for.body5.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_video_fmt, ptr %11, i32 %k.029.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %3)
  %cmp2.i = icmp eq i32 %17, %3
  br i1 %cmp2.i, label %for.body.i.mtk_venc_find_format.exit_crit_edge, label %for.cond.i

for.body.i.mtk_venc_find_format.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

for.cond3.i:                                      ; preds = %for.body5.i
  %inc12.i = add nuw i32 %k.131.i, 1
  %exitcond35.not.i = icmp eq i32 %inc12.i, %13
  br i1 %exitcond35.not.i, label %for.cond3.i.cleanup_crit_edge, label %for.cond3.i.for.body5.i_crit_edge

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.cond3.i.cleanup_crit_edge:                    ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %k.131.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc12.i, %for.cond3.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.mtk_video_fmt, ptr %15, i32 %k.131.i
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %3)
  %cmp8.i = icmp eq i32 %19, %3
  br i1 %cmp8.i, label %for.body5.i.mtk_venc_find_format.exit_crit_edge, label %for.cond3.i

for.body5.i.mtk_venc_find_format.exit_crit_edge:  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_venc_find_format.exit

mtk_venc_find_format.exit:                        ; preds = %for.body5.i.mtk_venc_find_format.exit_crit_edge, %for.body.i.mtk_venc_find_format.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx6.i, %for.body5.i.mtk_venc_find_format.exit_crit_edge ], [ %arrayidx.i, %for.body.i.mtk_venc_find_format.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %mtk_venc_find_format.exit.cleanup_crit_edge, label %if.end3

mtk_venc_find_format.exit.cleanup_crit_edge:      ; preds = %mtk_venc_find_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %mtk_venc_find_format.exit
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %type, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %enc_capability = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %enc_capability to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enc_capability, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %25 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %26 = call ptr @memcpy(ptr %25, ptr @mtk_venc_4k_framesizes, i32 24)
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %27 = call ptr @memcpy(ptr %25, ptr @mtk_venc_hd_framesizes, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %mtk_venc_find_format.exit.cleanup_crit_edge, %for.cond3.i.cleanup_crit_edge, %for.cond3.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %mtk_venc_find_format.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then6 ], [ -22, %for.cond3.preheader.i.cleanup_crit_edge ], [ -22, %for.cond3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m2mops_venc_device_run(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 5, i32 1, i32 7
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %3)
  %cmp = icmp eq i32 %3, 875967048
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1.not = icmp eq i32 %5, 2
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mtk_venc_encode_header(ptr noundef %priv)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @mtk_venc_param_change(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %dev4 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %encode_workqueue5 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %encode_workqueue5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encode_workqueue5, align 4
  %encode_work6 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 21
  %call.i15 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %encode_work6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m2mops_venc_job_ready(ptr nocapture noundef readonly %m2m_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %m2m_priv, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 4, label %entry.do.body_crit_edge
    i32 0, label %entry.do.body_crit_edge12
  ]

entry.do.body_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m2mops_venc_job_ready.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m2mops_venc_job_ready, %if.then5)) #11
          to label %cleanup [label %if.then5], !srcloc !264

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %m2m_priv, i32 0, i32 6
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @m2mops_venc_job_ready.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef 1252, i32 noundef %4, i32 noundef %6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @m2mops_venc_job_abort(ptr nocapture noundef writeonly %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_enc_set_default_params(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 19
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev_mutex, ptr %3, align 4
  %5 = load ptr, ptr %m2m_ctx, align 8
  %m2m_ctx2 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %m2m_ctx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %m2m_ctx2, align 4
  %ctrl_hdl = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 19
  %ctrl_handler = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ctrl_hdl, ptr %ctrl_handler, align 4
  %encode_work = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 21
  tail call void @__init_work(ptr noundef %encode_work, i32 noundef 0) #11
  %8 = ptrtoint ptr %encode_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %encode_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mtk_vcodec_enc_set_default_params.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry7 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 21, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 21, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mtk_venc_worker, ptr %func, align 4
  %colorspace = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 26
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %colorspace, align 8
  %ycbcr_enc = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 27
  %13 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 28
  %14 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %quantization, align 8
  %xfer_func = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 29
  %15 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %xfer_func, align 4
  %q_data9 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5
  %16 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 5
  %17 = call ptr @memset(ptr %16, i32 0, i32 28)
  %18 = ptrtoint ptr %q_data9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 160, ptr %q_data9, align 4
  %visible_height = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %visible_height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %visible_height, align 4
  %coded_width = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 2
  %20 = ptrtoint ptr %coded_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 160, ptr %coded_width, align 4
  %coded_height = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 3
  %21 = ptrtoint ptr %coded_height to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %coded_height, align 4
  %field = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 4
  %22 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %field, align 4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %venc_pdata, align 4
  %output_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %output_formats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %output_formats, align 4
  %fmt = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 7
  %29 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %fmt, align 4
  tail call void @v4l_bound_align_image(ptr noundef %coded_width, i32 noundef 160, i32 noundef 1920, i32 noundef 4, ptr noundef %coded_height, i32 noundef 128, i32 noundef 1088, i32 noundef 5, i32 noundef 6) #11
  %30 = ptrtoint ptr %coded_width to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %coded_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %31)
  %cmp = icmp ult i32 %31, 160
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw nsw i32 %31, 16
  %32 = ptrtoint ptr %coded_width to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %coded_width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %33 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %coded_height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %34)
  %cmp20 = icmp ult i32 %34, 128
  br i1 %cmp20, label %if.then25, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add23 = add nuw nsw i32 %34, 32
  %35 = ptrtoint ptr %coded_height to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add23, ptr %coded_height, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end.if.end28_crit_edge
  %36 = ptrtoint ptr %coded_width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %coded_width, align 4
  %38 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %coded_height, align 4
  %mul = mul i32 %39, %37
  %add32 = shl i32 %37, 5
  %mul33 = add i32 %add32, 480
  %mul34 = and i32 %mul33, -512
  %add35 = add i32 %mul34, %mul
  %sizeimage = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 6
  %40 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add35, ptr %sizeimage, align 4
  %bytesperline = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 5
  %41 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %bytesperline, align 4
  %div124 = lshr i32 %mul, 1
  %add43 = shl i32 %37, 4
  %and44 = add i32 %add43, 240
  %mul45 = and i32 %and44, -256
  %add46 = add i32 %div124, %mul45
  %arrayidx48 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add46, ptr %arrayidx48, align 4
  %arrayidx51 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %37, ptr %arrayidx51, align 4
  %arrayidx53 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1
  %44 = call ptr @memset(ptr %arrayidx53, i32 0, i32 48)
  %coded_width54 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 2
  %45 = ptrtoint ptr %coded_width54 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 160, ptr %coded_width54, align 4
  %coded_height55 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 3
  %46 = ptrtoint ptr %coded_height55 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 128, ptr %coded_height55, align 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %venc_pdata57 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %venc_pdata57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %venc_pdata57, align 4
  %capture_formats = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %capture_formats to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %capture_formats, align 4
  %fmt59 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 7
  %53 = ptrtoint ptr %fmt59 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %fmt59, align 4
  %field60 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 4
  %54 = ptrtoint ptr %field60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %field60, align 4
  %sizeimage63 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 6
  %55 = ptrtoint ptr %sizeimage63 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 20480, ptr %sizeimage63, align 4
  %bytesperline67 = getelementptr %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 1, i32 5
  %56 = ptrtoint ptr %bytesperline67 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %bytesperline67, align 4
  %framerate_num = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 9, i32 7
  %57 = ptrtoint ptr %framerate_num to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1001, ptr %framerate_num, align 4
  %framerate_denom = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 9, i32 8
  %58 = ptrtoint ptr %framerate_denom to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 30000, ptr %framerate_denom, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_venc_worker(ptr noundef %work) #0 align 64 {
entry:
  %frm_buf = alloca %struct.venc_frm_buf, align 4
  %bs_buf = alloca %struct.mtk_vcodec_mem, align 4
  %enc_result = alloca %struct.venc_done_result, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -736
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %frm_buf) #11
  %0 = getelementptr inbounds %struct.mtk_vcodec_fb, ptr %frm_buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.mtk_vcodec_fb], ptr %frm_buf, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.mtk_vcodec_fb], ptr %frm_buf, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.mtk_vcodec_fb], ptr %frm_buf, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.mtk_vcodec_fb], ptr %frm_buf, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bs_buf) #11
  %5 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_result) #11
  %7 = ptrtoint ptr %enc_result to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %enc_result, align 8, !annotation !265
  %m2m_ctx = getelementptr i8, ptr %work, i32 -528
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %work, i32 -732
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %m2m_dev_enc = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %m2m_dev_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_dev_enc, align 8
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_job_finish(ptr noundef %13, ptr noundef %15) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %17, i32 0, i32 8
  %call.i165 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #11
  %empty_flush_buf = getelementptr i8, ptr %work, i32 104
  %cmp = icmp eq ptr %call.i165, %empty_flush_buf
  br i1 %cmp, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.then4.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.then4.vb2_set_plane_payload.exit_crit_edge:    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then.i, %if.then4.vb2_set_plane_payload.exit_crit_edge
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %or = or i32 %22, 1048576
  store i32 %or, ptr %flags, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef 5) #11
  %dev5 = getelementptr i8, ptr %work, i32 -732
  %23 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev5, align 4
  %m2m_dev_enc6 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %m2m_dev_enc6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_dev_enc6, align 8
  %27 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_job_finish(ptr noundef %26, ptr noundef %28) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %29 = call ptr @memset(ptr %frm_buf, i32 0, i32 24)
  %num_planes = getelementptr inbounds %struct.vb2_buffer, ptr %call.i165, i32 0, i32 4
  %30 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp10183.not = icmp eq i32 %31, 0
  br i1 %cmp10183.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.0184 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %call.i166 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i165, i32 noundef %i.0184) #11
  %32 = ptrtoint ptr %call.i166 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call.i166, align 4
  %arrayidx = getelementptr [3 x %struct.mtk_vcodec_fb], ptr %frm_buf, i32 0, i32 %i.0184
  %dma_addr = getelementptr [3 x %struct.mtk_vcodec_fb], ptr %frm_buf, i32 0, i32 %i.0184, i32 1
  %34 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dma_addr, align 4
  %length = getelementptr %struct.vb2_buffer, ptr %call.i165, i32 0, i32 10, i32 %i.0184, i32 4
  %35 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length, align 8
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0184, 1
  %38 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_planes, align 8
  %cmp10 = icmp ult i32 %inc, %39
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %call18 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %call.i, i32 noundef 0) #11
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call18, ptr %5, align 4
  %call.i167 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i, i32 noundef 0) #11
  %41 = ptrtoint ptr %call.i167 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i167, align 4
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %6, align 4
  %length25 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %44 = ptrtoint ptr %length25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length25, align 8
  %46 = ptrtoint ptr %bs_buf to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %bs_buf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_worker.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_worker, %if.then32)) #11
          to label %do.end [label %if.then32], !srcloc !264

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %0, align 4
  %conv = zext i32 %48 to i64
  %49 = ptrtoint ptr %frm_buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %frm_buf, align 4
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  %conv42 = zext i32 %52 to i64
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 4
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %4, align 4
  %conv49 = zext i32 %56 to i64
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_worker.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 1199, i64 noundef %conv, i32 noundef %50, i64 noundef %conv42, i32 noundef %54, i64 noundef %conv49, i32 noundef %58) #11
  br label %do.end

do.end:                                           ; preds = %if.then32, %for.end
  %call54 = call i32 @venc_if_encode(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %frm_buf, ptr noundef nonnull %bs_buf, ptr noundef nonnull %enc_result) #11
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i165, i32 0, i32 5
  %59 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %timestamp, align 8
  %timestamp57 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %61 = ptrtoint ptr %timestamp57 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %timestamp57, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %timecode58 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i165, i32 0, i32 3
  %62 = call ptr @memcpy(ptr %timecode, ptr %timecode58, i32 16)
  %is_key_frm = getelementptr inbounds %struct.venc_done_result, ptr %enc_result, i32 0, i32 1
  %63 = ptrtoint ptr %is_key_frm to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %is_key_frm, align 4, !range !263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool59.not = icmp eq i8 %64, 0
  br i1 %tobool59.not, label %do.end.if.end63_crit_edge, label %if.then60

do.end.if.end63_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then60:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags61 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %65 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags61, align 8
  %or62 = or i32 %66, 8
  store i32 %or62, ptr %flags61, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %do.end.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool64.not = icmp eq i32 %call54, 0
  br i1 %tobool64.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %if.end63
  call void @vb2_buffer_done(ptr noundef %call.i165, i32 noundef 6) #11
  %num_planes.i168 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %67 = ptrtoint ptr %num_planes.i168 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_planes.i168, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.not.i169 = icmp eq i32 %68, 0
  br i1 %cmp.not.i169, label %if.then65.vb2_set_plane_payload.exit173_crit_edge, label %if.then.i171

if.then65.vb2_set_plane_payload.exit173_crit_edge: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit173

if.then.i171:                                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %bytesused.i172 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %69 = ptrtoint ptr %bytesused.i172 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %bytesused.i172, align 4
  br label %vb2_set_plane_payload.exit173

vb2_set_plane_payload.exit173:                    ; preds = %if.then.i171, %if.then65.vb2_set_plane_payload.exit173_crit_edge
  call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef 6) #11
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.58, i32 noundef 1214, i32 noundef %call54) #14
  br label %if.end90

if.else:                                          ; preds = %if.end63
  call void @vb2_buffer_done(ptr noundef %call.i165, i32 noundef 5) #11
  %num_planes.i174 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %70 = ptrtoint ptr %num_planes.i174 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_planes.i174, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.not.i175 = icmp eq i32 %71, 0
  br i1 %cmp.not.i175, label %if.else.vb2_set_plane_payload.exit179_crit_edge, label %if.then.i177

if.else.vb2_set_plane_payload.exit179_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit179

if.then.i177:                                     ; preds = %if.else
  %72 = ptrtoint ptr %enc_result to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %enc_result, align 8
  %74 = ptrtoint ptr %length25 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length25, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %73)
  %cmp1.i = icmp ult i32 %75, %73
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i177.if.end42.i_crit_edge

if.then.i177.if.end42.i_crit_edge:                ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i177
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !266

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %76 = ptrtoint ptr %length25 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %length25, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i177.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %77, %if.then38.i ], [ %73, %if.then.i177.if.end42.i_crit_edge ]
  %bytesused.i178 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %78 = ptrtoint ptr %bytesused.i178 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %size.addr.0.i, ptr %bytesused.i178, align 4
  br label %vb2_set_plane_payload.exit179

vb2_set_plane_payload.exit179:                    ; preds = %if.end42.i, %if.else.vb2_set_plane_payload.exit179_crit_edge
  call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef 5) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_worker.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_worker, %if.then85)) #11
          to label %if.end90 [label %if.then85], !srcloc !264

if.then85:                                        ; preds = %vb2_set_plane_payload.exit179
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %enc_result to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %enc_result, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_worker.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58, i32 noundef 1220, i32 noundef %80) #11
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %vb2_set_plane_payload.exit179, %vb2_set_plane_payload.exit173
  %dev91 = getelementptr i8, ptr %work, i32 -732
  %81 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev91, align 4
  %m2m_dev_enc92 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %m2m_dev_enc92 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %m2m_dev_enc92, align 8
  %85 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %m2m_ctx, align 8
  call void @v4l2_m2m_job_finish(ptr noundef %84, ptr noundef %86) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_worker.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_worker, %if.then106)) #11
          to label %cleanup [label %if.then106], !srcloc !264

if.then106:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %call.i165, i32 0, i32 1
  %87 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %index, align 4
  %index109 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %89 = ptrtoint ptr %index109 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %index109, align 4
  %91 = ptrtoint ptr %enc_result to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %enc_result, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_worker.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.58, i32 noundef 1227, i32 noundef %88, i32 noundef %90, i32 noundef %call54, i32 noundef %92) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then106, %if.end90, %vb2_set_plane_payload.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_result) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bs_buf) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %frm_buf) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_vcodec_enc_ctrls_setup(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_hdl = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 19
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %enc_capability = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %enc_capability to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enc_capability, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i8 13, i8 15
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl, i32 noundef 20, ptr noundef nonnull @mtk_vcodec_enc_ctrls_setup._key, ptr noundef nonnull @.str.1) #11
  %call1 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 9963816, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %venc_pdata = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %venc_pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %venc_pdata, align 4
  %min_bitrate = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %min_bitrate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_bitrate, align 4
  %conv = zext i32 %9 to i64
  %max_bitrate = getelementptr inbounds %struct.mtk_vcodec_enc_pdata, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %max_bitrate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_bitrate, align 4
  %conv5 = zext i32 %11 to i64
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029519, i64 noundef %conv, i64 noundef %conv5, i64 noundef 1, i64 noundef 4000000) #11
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029514, i64 noundef 0, i64 noundef 2, i64 noundef 1, i64 noundef 0) #11
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029527, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029666, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 51) #11
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029670, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #11
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029515, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #11
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029530, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029541, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #11
  %call14 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029528, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #11
  %call15 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029675, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 4) #11
  %call16 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029671, i8 noundef zeroext %., i64 noundef 0, i8 noundef zeroext 11) #11
  %call17 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_hdl, ptr noundef nonnull @mtk_vcodec_enc_ctrl_ops, i32 noundef 10029823, i8 noundef zeroext 0, i64 noundef 0, i8 noundef zeroext 0) #11
  %error = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 19, i32 9
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  br i1 %tobool18.not, label %if.end24, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1381, i32 noundef %13) #14
  %14 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error, align 4
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ %15, %do.end ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_vcodec_enc_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %3 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 800, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mtk_venc_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %8, i32 0, i32 19
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev_mutex, ptr %lock, align 4
  %10 = load ptr, ptr %dev, align 4
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat_dev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev2, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 19, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %16 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %drv_priv6, align 4
  %buf_struct_size7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %17 = ptrtoint ptr %buf_struct_size7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 744, ptr %buf_struct_size7, align 4
  %ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %18 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mtk_venc_vb2_ops, ptr %ops8, align 4
  %mem_ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %19 = ptrtoint ptr %mem_ops9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags10, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %dev_mutex12 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %22, i32 0, i32 19
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %23 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev_mutex12, ptr %lock13, align 4
  %24 = load ptr, ptr %dev, align 4
  %plat_dev15 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %plat_dev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %plat_dev15, align 4
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %dev17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev16, ptr %dev17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_venc_unlock(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %enc_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 24
  tail call void @mutex_unlock(ptr noundef %enc_mutex) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_venc_lock(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %enc_mutex = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %enc_mutex, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_enc_release(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @venc_if_deinit(ptr noundef %ctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1449, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venc_if_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venc_if_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vidioc_try_fmt_out(ptr nocapture noundef readonly %ctx, ptr noundef %f, ptr nocapture noundef readonly %fmt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1, ptr %field, align 1
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %enc_capability = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %enc_capability to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enc_capability, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1088, i32 2176
  %.5 = select i1 %tobool.not, i32 1920, i32 3840
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %height, align 1
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 128)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %.)
  %9 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %height, align 1
  %10 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %fmt1, align 1
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 160)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %.5)
  %14 = ptrtoint ptr %fmt1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %fmt1, align 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt1, i32 noundef 160, i32 noundef %.5, i32 noundef 4, ptr noundef %height, i32 noundef 128, i32 noundef %., i32 noundef 5, i32 noundef 6) #11
  %15 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %fmt1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %13)
  %cmp27 = icmp ult i32 %16, %13
  br i1 %cmp27, label %land.lhs.true, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true:                                    ; preds = %entry
  %add = add i32 %16, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %.5)
  %cmp29.not = icmp ugt i32 %add, %.5
  br i1 %cmp29.not, label %land.lhs.true.if.end33_crit_edge, label %if.then30

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %fmt1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %add, ptr %fmt1, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true.if.end33_crit_edge, %entry.if.end33_crit_edge
  %18 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %height, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %8)
  %cmp35 = icmp ult i32 %19, %8
  br i1 %cmp35, label %land.lhs.true36, label %if.end33.do.body_crit_edge

if.end33.do.body_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true36:                                  ; preds = %if.end33
  %add38 = add i32 %19, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %.)
  %cmp39.not = icmp ugt i32 %add38, %.
  br i1 %cmp39.not, label %land.lhs.true36.do.body_crit_edge, label %if.then40

land.lhs.true36.do.body_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then40:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %add38, ptr %height, align 1
  br label %do.body

do.body:                                          ; preds = %if.then40, %land.lhs.true36.do.body_crit_edge, %if.end33.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_try_fmt_out.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_try_fmt_out, %if.then48)) #11
          to label %do.end [label %if.then48], !srcloc !264

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %fmt1, align 1
  %23 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %height, align 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %plane_fmt, align 1
  %arrayidx52 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %arrayidx52, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_try_fmt_out.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 319, i32 noundef %13, i32 noundef %8, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28) #11
  br label %do.end

do.end:                                           ; preds = %if.then48, %do.body
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %fmt, i32 0, i32 2
  %29 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_planes, align 4
  %conv = trunc i32 %30 to i8
  %num_planes55 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %31 = ptrtoint ptr %num_planes55 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %num_planes55, align 1
  %32 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %fmt1, align 1
  %34 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %height, align 1
  %mul = mul i32 %35, %33
  %add59 = shl i32 %33, 5
  %mul61 = add i32 %add59, 480
  %mul62 = and i32 %mul61, -512
  %add63 = add i32 %mul62, %mul
  %plane_fmt64 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %36 = ptrtoint ptr %plane_fmt64 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %add63, ptr %plane_fmt64, align 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %37 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %33, ptr %bytesperline, align 1
  %38 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %conv, label %do.end.if.end127_crit_edge [
    i8 2, label %if.then74
    i8 3, label %if.then101
  ]

do.end.if.end127_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.then74:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %div4 = lshr i32 %mul, 1
  %add79 = shl i32 %33, 4
  %and80 = add i32 %add79, 240
  %mul81 = and i32 %and80, -256
  %add82 = add i32 %div4, %mul81
  %arrayidx84 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %add82, ptr %arrayidx84, align 1
  %arrayidx87 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %arrayidx87, align 1
  %bytesperline92 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %41 = ptrtoint ptr %bytesperline92 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %33, ptr %bytesperline92, align 1
  %bytesperline95 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 2, i32 1
  %42 = ptrtoint ptr %bytesperline95 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 0, ptr %bytesperline95, align 1
  br label %if.end127

if.then101:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %div1051 = lshr i32 %mul, 2
  %add107 = shl i32 %33, 3
  %43 = add i32 %add107, 120
  %mul110 = and i32 %43, -128
  %add111 = add i32 %div1051, %mul110
  %arrayidx113 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %add111, ptr %arrayidx113, align 1
  %arrayidx116 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %add111, ptr %arrayidx116, align 1
  %div1193 = lshr i32 %33, 1
  %bytesperline122 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 2, i32 1
  %46 = ptrtoint ptr %bytesperline122 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %div1193, ptr %bytesperline122, align 1
  %bytesperline125 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %47 = ptrtoint ptr %bytesperline125 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %div1193, ptr %bytesperline125, align 1
  br label %if.end127

if.end127:                                        ; preds = %if.then101, %if.then74, %do.end.if.end127_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 7
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %flags, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_dqbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_try_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_venc_encode_header(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %bs_buf = alloca %struct.mtk_vcodec_mem, align 4
  %enc_result = alloca %struct.venc_done_result, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bs_buf) #11
  %0 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs_buf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_result) #11
  %2 = ptrtoint ptr %enc_result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %enc_result, align 8, !annotation !265
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_encode_header.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_encode_header, %if.then5)) #11
          to label %cleanup [label %if.then5], !srcloc !264

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_encode_header.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef 1028) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %call.i, i32 noundef 0) #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %0, align 4
  %call.i4 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i, i32 noundef 0) #11
  %6 = ptrtoint ptr %call.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i4, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %length = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 8
  %11 = ptrtoint ptr %bs_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bs_buf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_encode_header.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_encode_header, %if.then23)) #11
          to label %do.end30 [label %if.then23], !srcloc !264

if.then23:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 6
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %conv = zext i32 %19 to i64
  %20 = ptrtoint ptr %bs_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bs_buf, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_encode_header.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef 1041, i32 noundef %13, i32 noundef %15, ptr noundef %17, i64 noundef %conv, i32 noundef %21) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then23, %if.end6
  %call31 = call i32 @venc_if_encode(ptr noundef %priv, i32 noundef 0, ptr noundef null, ptr noundef nonnull %bs_buf, ptr noundef nonnull %enc_result) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end40, label %if.then33

if.then33:                                        ; preds = %do.end30
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 0
  br i1 %cmp.not.i, label %if.then33.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.then33.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %24 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then.i, %if.then33.vb2_set_plane_payload.exit_crit_edge
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 7
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %state, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef 6) #11
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35, i32 noundef 1051, i32 noundef %call31) #14
  br label %cleanup

if.end40:                                         ; preds = %do.end30
  %26 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %27, i32 0, i32 8
  %call.i5 = call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #11
  %tobool43.not = icmp eq ptr %call.i5, null
  br i1 %tobool43.not, label %do.end51, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i5, i32 0, i32 5
  %28 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %timestamp, align 8
  %timestamp47 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %timestamp47 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %timestamp47, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %timecode48 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i5, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %timecode, ptr %timecode48, i32 16)
  br label %if.end54

do.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.35, i32 noundef 1059) #14
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.then44
  %state55 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %priv, i32 0, i32 7
  %32 = ptrtoint ptr %state55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %state55, align 8
  %num_planes.i6 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %num_planes.i6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_planes.i6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i7 = icmp eq i32 %34, 0
  br i1 %cmp.not.i7, label %if.end54.vb2_set_plane_payload.exit11_crit_edge, label %if.then.i9

if.end54.vb2_set_plane_payload.exit11_crit_edge:  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit11

if.then.i9:                                       ; preds = %if.end54
  %35 = ptrtoint ptr %enc_result to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %enc_result, align 8
  %37 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp1.i = icmp ult i32 %38, %36
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i9.if.end42.i_crit_edge

if.then.i9.if.end42.i_crit_edge:                  ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i9
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !266

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i9.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %40, %if.then38.i ], [ %36, %if.then.i9.if.end42.i_crit_edge ]
  %bytesused.i10 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %41 = ptrtoint ptr %bytesused.i10 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %size.addr.0.i, ptr %bytesused.i10, align 4
  br label %vb2_set_plane_payload.exit11

vb2_set_plane_payload.exit11:                     ; preds = %if.end42.i, %if.end54.vb2_set_plane_payload.exit11_crit_edge
  call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit11, %vb2_set_plane_payload.exit, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_result) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bs_buf) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_venc_param_change(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %enc_prm = alloca %struct.venc_enc_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %enc_prm) #11
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #11
  %empty_flush_buf = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 23
  %cmp = icmp eq ptr %call.i, %empty_flush_buf
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %enc_prm, i32 0, i32 44)
  %param_change = getelementptr inbounds %struct.mtk_video_enc_buf, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %param_change, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3.land.lhs.true_crit_edge, label %if.then5

if.end3.land.lhs.true_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then5:                                         ; preds = %if.end3
  %enc_params = getelementptr inbounds %struct.mtk_video_enc_buf, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %enc_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enc_params, align 4
  %bitrate6 = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 9
  %7 = ptrtoint ptr %bitrate6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bitrate6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_param_change.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_param_change, %if.then12)) #11
          to label %if.end16 [label %if.then12], !srcloc !264

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %12 = ptrtoint ptr %bitrate6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bitrate6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_param_change.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 1091, i32 noundef %9, i32 noundef %11, i32 noundef %13) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then5
  %call15 = call i32 @venc_if_set_param(ptr noundef %ctx, i32 noundef 2, ptr noundef nonnull %enc_prm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end16.land.lhs.true_crit_edge, label %if.end16.if.end108.thread29_crit_edge

if.end16.if.end108.thread29_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.thread29

if.end16.land.lhs.true_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16.land.lhs.true_crit_edge, %if.end3.land.lhs.true_crit_edge
  %14 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param_change, align 8
  %and19 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true.land.lhs.true48_crit_edge, label %if.then21

land.lhs.true.land.lhs.true48_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48

if.then21:                                        ; preds = %land.lhs.true
  %framerate_num = getelementptr inbounds %struct.mtk_video_enc_buf, ptr %call.i, i32 0, i32 2, i32 7
  %16 = ptrtoint ptr %framerate_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %framerate_num, align 4
  %framerate_denom = getelementptr inbounds %struct.mtk_video_enc_buf, ptr %call.i, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %framerate_denom to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %framerate_denom, align 4
  %div = udiv i32 %17, %19
  %frm_rate = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 7
  %20 = ptrtoint ptr %frm_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div, ptr %frm_rate, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_param_change.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_param_change, %if.then36)) #11
          to label %if.end46 [label %if.then36], !srcloc !264

if.then36:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %id37 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %21 = ptrtoint ptr %id37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id37, align 4
  %index39 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %index39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index39, align 4
  %25 = ptrtoint ptr %frm_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frm_rate, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_param_change.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 1102, i32 noundef %22, i32 noundef %24, i32 noundef %26) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then36, %if.then21
  %call44 = call i32 @venc_if_set_param(ptr noundef %ctx, i32 noundef 3, ptr noundef nonnull %enc_prm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool47.not = icmp eq i32 %call44, 0
  br i1 %tobool47.not, label %if.end46.land.lhs.true48_crit_edge, label %if.end46.if.end108.thread29_crit_edge

if.end46.if.end108.thread29_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.thread29

if.end46.land.lhs.true48_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.end46.land.lhs.true48_crit_edge, %land.lhs.true.land.lhs.true48_crit_edge
  %27 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %param_change, align 8
  %and50 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %land.lhs.true48.land.lhs.true76_crit_edge, label %if.then52

land.lhs.true48.land.lhs.true76_crit_edge:        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true76

if.then52:                                        ; preds = %land.lhs.true48
  %gop_size = getelementptr inbounds %struct.mtk_video_enc_buf, ptr %call.i, i32 0, i32 2, i32 6
  %29 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gop_size, align 4
  %gop_size54 = getelementptr inbounds %struct.venc_enc_param, ptr %enc_prm, i32 0, i32 10
  %31 = ptrtoint ptr %gop_size54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %gop_size54, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_param_change.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_param_change, %if.then67)) #11
          to label %if.end74 [label %if.then67], !srcloc !264

if.then67:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %gop_size54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gop_size54, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_param_change.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.45, i32 noundef 1110, i32 noundef %33) #11
  br label %if.end74

if.end74:                                         ; preds = %if.then67, %if.then52
  %call72 = call i32 @venc_if_set_param(ptr noundef %ctx, i32 noundef 4, ptr noundef nonnull %enc_prm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool75.not = icmp eq i32 %call72, 0
  br i1 %tobool75.not, label %if.end74.land.lhs.true76_crit_edge, label %if.end74.if.end108.thread29_crit_edge

if.end74.if.end108.thread29_crit_edge:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.thread29

if.end74.land.lhs.true76_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.end74.land.lhs.true76_crit_edge, %land.lhs.true48.land.lhs.true76_crit_edge
  %34 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %param_change, align 8
  %and78 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %land.lhs.true76.if.end108.thread_crit_edge, label %do.body81

land.lhs.true76.if.end108.thread_crit_edge:       ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.thread

do.body81:                                        ; preds = %land.lhs.true76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_param_change.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_param_change, %if.then93)) #11
          to label %do.end100 [label %if.then93], !srcloc !264

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  %id94 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %36 = ptrtoint ptr %id94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id94, align 4
  %index96 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %index96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index96, align 4
  %force_intra = getelementptr inbounds %struct.mtk_video_enc_buf, ptr %call.i, i32 0, i32 2, i32 12
  %40 = ptrtoint ptr %force_intra to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %force_intra, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_param_change.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.45, i32 noundef 1119, i32 noundef %37, i32 noundef %39, i32 noundef %41) #11
  br label %do.end100

do.end100:                                        ; preds = %if.then93, %do.body81
  %force_intra102 = getelementptr inbounds %struct.mtk_video_enc_buf, ptr %call.i, i32 0, i32 2, i32 12
  %42 = ptrtoint ptr %force_intra102 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %force_intra102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool103.not = icmp eq i32 %43, 0
  br i1 %tobool103.not, label %do.end100.if.end108.thread_crit_edge, label %if.end108

do.end100.if.end108.thread_crit_edge:             ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.thread

if.end108.thread:                                 ; preds = %do.end100.if.end108.thread_crit_edge, %land.lhs.true76.if.end108.thread_crit_edge
  %44 = ptrtoint ptr %param_change to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %param_change, align 8
  br label %cleanup

if.end108.thread29:                               ; preds = %if.end74.if.end108.thread29_crit_edge, %if.end46.if.end108.thread29_crit_edge, %if.end16.if.end108.thread29_crit_edge
  %ret.3.ph = phi i32 [ %call72, %if.end74.if.end108.thread29_crit_edge ], [ %call44, %if.end46.if.end108.thread29_crit_edge ], [ %call15, %if.end16.if.end108.thread29_crit_edge ]
  %45 = ptrtoint ptr %param_change to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %param_change, align 8
  br label %if.then111

if.end108:                                        ; preds = %do.end100
  %call105 = call i32 @venc_if_set_param(ptr noundef %ctx, i32 noundef 1, ptr noundef null) #11
  %46 = ptrtoint ptr %param_change to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %param_change, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool110.not = icmp eq i32 %call105, 0
  br i1 %tobool110.not, label %if.end108.cleanup_crit_edge, label %if.end108.if.then111_crit_edge

if.end108.if.then111_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then111

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then111:                                       ; preds = %if.end108.if.then111_crit_edge, %if.end108.thread29
  %ret.332 = phi i32 [ %ret.3.ph, %if.end108.thread29 ], [ %call105, %if.end108.if.then111_crit_edge ]
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 7
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %state, align 8
  %48 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %param_change, align 8
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.45, i32 noundef 1131, i32 noundef %49, i32 noundef %ret.332) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %if.end108.cleanup_crit_edge, %if.end108.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %enc_prm) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venc_if_encode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venc_if_set_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_venc_s_ctrl(ptr noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %enc_params = getelementptr i8, ptr %1, i32 -188
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 10029519, label %do.body
    i32 10029514, label %do.body6
    i32 10029527, label %do.body25
    i32 10029666, label %do.body44
    i32 10029528, label %do.body63
    i32 10029530, label %do.body82
    i32 10029675, label %do.body101
    i32 10029671, label %do.body120
    i32 10029670, label %do.body139
    i32 10029515, label %do.body160
    i32 10029823, label %do.body181
    i32 10029541, label %do.body199
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !264

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef 56, i32 noundef %6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val4, align 4
  %9 = ptrtoint ptr %enc_params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %enc_params, align 4
  %param_change = getelementptr i8, ptr %1, i32 -192
  %10 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %param_change, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %param_change, align 4
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then18)) #11
          to label %do.end22 [label %if.then18], !srcloc !264

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val19, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.65, i32 noundef 62, i32 noundef %13) #11
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body6
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val23, align 4
  %num_b_frame = getelementptr i8, ptr %1, i32 -184
  %16 = ptrtoint ptr %num_b_frame to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_b_frame, align 4
  br label %sw.epilog

do.body25:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then37)) #11
          to label %do.end41 [label %if.then37], !srcloc !264

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val38, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.65, i32 noundef 67, i32 noundef %18) #11
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body25
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val42, align 4
  %rc_frame = getelementptr i8, ptr %1, i32 -180
  %21 = ptrtoint ptr %rc_frame to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rc_frame, align 4
  br label %sw.epilog

do.body44:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then56)) #11
          to label %do.end60 [label %if.then56], !srcloc !264

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  %val57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val57, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.65, i32 noundef 72, i32 noundef %23) #11
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.body44
  %val61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val61, align 4
  %h264_max_qp = getelementptr i8, ptr %1, i32 -152
  %26 = ptrtoint ptr %h264_max_qp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %h264_max_qp, align 4
  br label %sw.epilog

do.body63:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then75)) #11
          to label %do.end79 [label %if.then75], !srcloc !264

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  %val76 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val76, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.65, i32 noundef 77, i32 noundef %28) #11
  br label %do.end79

do.end79:                                         ; preds = %if.then75, %do.body63
  %val80 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val80, align 4
  %seq_hdr_mode = getelementptr i8, ptr %1, i32 -172
  %31 = ptrtoint ptr %seq_hdr_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %seq_hdr_mode, align 4
  br label %sw.epilog

do.body82:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then94)) #11
          to label %do.end98 [label %if.then94], !srcloc !264

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  %val95 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val95, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.65, i32 noundef 82, i32 noundef %33) #11
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %do.body82
  %val99 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %34 = ptrtoint ptr %val99 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val99, align 4
  %rc_mb = getelementptr i8, ptr %1, i32 -176
  %36 = ptrtoint ptr %rc_mb to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rc_mb, align 4
  br label %sw.epilog

do.body101:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then113)) #11
          to label %do.end117 [label %if.then113], !srcloc !264

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  %val114 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val114 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val114, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.65, i32 noundef 87, i32 noundef %38) #11
  br label %do.end117

do.end117:                                        ; preds = %if.then113, %do.body101
  %val118 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %39 = ptrtoint ptr %val118 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val118, align 4
  %h264_profile = getelementptr i8, ptr %1, i32 -148
  %41 = ptrtoint ptr %h264_profile to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %h264_profile, align 4
  br label %sw.epilog

do.body120:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then132)) #11
          to label %do.end136 [label %if.then132], !srcloc !264

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #13
  %val133 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %42 = ptrtoint ptr %val133 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val133, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.65, i32 noundef 92, i32 noundef %43) #11
  br label %do.end136

do.end136:                                        ; preds = %if.then132, %do.body120
  %val137 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val137 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val137, align 4
  %h264_level = getelementptr i8, ptr %1, i32 -144
  %46 = ptrtoint ptr %h264_level to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %h264_level, align 4
  br label %sw.epilog

do.body139:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then151)) #11
          to label %do.end155 [label %if.then151], !srcloc !264

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #13
  %val152 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val152 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val152, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.65, i32 noundef 97, i32 noundef %48) #11
  br label %do.end155

do.end155:                                        ; preds = %if.then151, %do.body139
  %val156 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %49 = ptrtoint ptr %val156 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val156, align 4
  %intra_period = getelementptr i8, ptr %1, i32 -168
  %51 = ptrtoint ptr %intra_period to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %intra_period, align 4
  %param_change157 = getelementptr i8, ptr %1, i32 -192
  %52 = ptrtoint ptr %param_change157 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %param_change157, align 4
  %or158 = or i32 %53, 4
  store i32 %or158, ptr %param_change157, align 4
  br label %sw.epilog

do.body160:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then172)) #11
          to label %do.end176 [label %if.then172], !srcloc !264

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #13
  %val173 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %54 = ptrtoint ptr %val173 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val173, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.65, i32 noundef 103, i32 noundef %55) #11
  br label %do.end176

do.end176:                                        ; preds = %if.then172, %do.body160
  %val177 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %56 = ptrtoint ptr %val177 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val177, align 4
  %gop_size = getelementptr i8, ptr %1, i32 -164
  %58 = ptrtoint ptr %gop_size to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %gop_size, align 4
  %param_change178 = getelementptr i8, ptr %1, i32 -192
  %59 = ptrtoint ptr %param_change178 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %param_change178, align 4
  %or179 = or i32 %60, 16
  store i32 %or179, ptr %param_change178, align 4
  br label %sw.epilog

do.body181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then193)) #11
          to label %sw.epilog [label %if.then193], !srcloc !264

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #13
  %val194 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %61 = ptrtoint ptr %val194 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val194, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.65, i32 noundef 112, i32 noundef %62) #11
  br label %sw.epilog

do.body199:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidioc_venc_s_ctrl, %if.then211)) #11
          to label %do.end214 [label %if.then211], !srcloc !264

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.65, i32 noundef 115) #11
  br label %do.end214

do.end214:                                        ; preds = %if.then211, %do.body199
  %force_intra = getelementptr i8, ptr %1, i32 -140
  %63 = ptrtoint ptr %force_intra to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %force_intra, align 4
  %param_change215 = getelementptr i8, ptr %1, i32 -192
  %64 = ptrtoint ptr %param_change215 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %param_change215, align 4
  %or216 = or i32 %65, 8
  store i32 %or216, ptr %param_change215, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end214, %if.then193, %do.body181, %do.end176, %do.end155, %do.end136, %do.end117, %do.end98, %do.end79, %do.end60, %do.end41, %do.end22, %do.end, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %do.end214 ], [ 0, %if.then193 ], [ 0, %do.end176 ], [ 0, %do.end155 ], [ 0, %do.end136 ], [ 0, %do.end117 ], [ 0, %do.end98 ], [ 0, %do.end79 ], [ 0, %do.end60 ], [ 0, %do.end41 ], [ 0, %do.end22 ], [ 0, %do.end ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %do.body181 ]
  ret i32 %ret.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2ops_venc_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %3, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge45
    i32 3, label %entry.if.then.i_crit_edge46
    i32 8, label %entry.if.then.i_crit_edge47
    i32 5, label %entry.if.then.i_crit_edge48
    i32 7, label %entry.if.then.i_crit_edge49
    i32 12, label %entry.if.then.i_crit_edge50
    i32 14, label %entry.if.then.i_crit_edge51
  ]

entry.if.then.i_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge45, %entry.if.then.i_crit_edge46, %entry.if.then.i_crit_edge47, %entry.if.then.i_crit_edge48, %entry.if.then.i_crit_edge49, %entry.if.then.i_crit_edge50, %entry.if.then.i_crit_edge51
  %q_data.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 5
  br label %mtk_venc_get_q_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i = getelementptr %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 5, i32 1
  br label %mtk_venc_get_q_data.exit

mtk_venc_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %q_data.i, %if.then.i ], [ %arrayidx15.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %mtk_venc_get_q_data.exit.cleanup_crit_edge, label %if.end

mtk_venc_get_q_data.exit.cleanup_crit_edge:       ; preds = %mtk_venc_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mtk_venc_get_q_data.exit
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.037
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.mtk_q_data, ptr %retval.0.i, i32 0, i32 6, i32 %i.037
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp5 = icmp ult i32 %8, %10
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %fmt = getelementptr inbounds %struct.mtk_q_data, ptr %retval.0.i, i32 0, i32 7
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes, align 4
  %15 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp939.not = icmp eq i32 %14, 0
  br i1 %cmp939.not, label %if.else.cleanup_crit_edge, label %if.else.for.body10_crit_edge

if.else.for.body10_crit_edge:                     ; preds = %if.else
  br label %for.body10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %if.else.for.body10_crit_edge
  %i.140 = phi i32 [ %inc15, %for.body10.for.body10_crit_edge ], [ 0, %if.else.for.body10_crit_edge ]
  %arrayidx12 = getelementptr %struct.mtk_q_data, ptr %retval.0.i, i32 0, i32 6, i32 %i.140
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %sizes, i32 %i.140
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx13, align 4
  %inc15 = add nuw i32 %i.140, 1
  %19 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nplanes, align 4
  %cmp9 = icmp ult i32 %inc15, %20
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.cleanup_crit_edge

for.body10.cleanup_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10

cleanup:                                          ; preds = %for.body10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %mtk_venc_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mtk_venc_get_q_data.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %for.body10.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vb2ops_venc_buf_out_validate(ptr nocapture noundef writeonly %vb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2ops_venc_buf_prepare(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %5, label %if.end.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge60
    i32 3, label %entry.if.then.i_crit_edge61
    i32 8, label %entry.if.then.i_crit_edge62
    i32 5, label %entry.if.then.i_crit_edge63
    i32 7, label %entry.if.then.i_crit_edge64
    i32 12, label %entry.if.then.i_crit_edge65
    i32 14, label %entry.if.then.i_crit_edge66
  ]

entry.if.then.i_crit_edge66:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge65:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge64:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge63:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge62:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge61:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge60:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge60, %entry.if.then.i_crit_edge61, %entry.if.then.i_crit_edge62, %entry.if.then.i_crit_edge63, %entry.if.then.i_crit_edge64, %entry.if.then.i_crit_edge65, %entry.if.then.i_crit_edge66
  %q_data.i = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 5
  br label %mtk_venc_get_q_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i = getelementptr %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 5, i32 1
  br label %mtk_venc_get_q_data.exit

mtk_venc_get_q_data.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %q_data.i, %if.then.i ], [ %arrayidx15.i, %if.end.i ]
  %fmt = getelementptr inbounds %struct.mtk_q_data, ptr %retval.0.i, i32 0, i32 7
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt, align 4
  %num_planes = getelementptr inbounds %struct.mtk_video_fmt, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp37.not = icmp eq i32 %10, 0
  br i1 %cmp37.not, label %mtk_venc_get_q_data.exit.cleanup_crit_edge, label %for.body.lr.ph

mtk_venc_get_q_data.exit.cleanup_crit_edge:       ; preds = %mtk_venc_get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %mtk_venc_get_q_data.exit
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %11 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %i.038)
  %cmp.i = icmp ugt i32 %12, %i.038
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.038, i32 4
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  %arrayidx = getelementptr %struct.mtk_q_data, ptr %retval.0.i, i32 0, i32 6, i32 %i.038
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp4 = icmp ult i32 %14, %16
  br i1 %cmp4, label %if.then.i27, label %vb2_plane_size.exit.for.inc_crit_edge

vb2_plane_size.exit.for.inc_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

vb2_plane_size.exit.thread:                       ; preds = %for.body
  %arrayidx31 = getelementptr %struct.mtk_q_data, ptr %retval.0.i, i32 0, i32 6, i32 %i.038
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp432.not = icmp eq i32 %18, 0
  br i1 %cmp432.not, label %vb2_plane_size.exit.thread.for.inc_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit29_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit29_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit29

vb2_plane_size.exit.thread.for.inc_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i27:                                      ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit29

vb2_plane_size.exit29:                            ; preds = %if.then.i27, %vb2_plane_size.exit.thread.vb2_plane_size.exit29_crit_edge
  %21 = phi i32 [ %16, %if.then.i27 ], [ %18, %vb2_plane_size.exit.thread.vb2_plane_size.exit29_crit_edge ]
  %retval.0.i28 = phi i32 [ %20, %if.then.i27 ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit29_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 817, i32 noundef %i.038, i32 noundef %retval.0.i28, i32 noundef %21) #14
  br label %cleanup

for.inc:                                          ; preds = %vb2_plane_size.exit.thread.for.inc_crit_edge, %vb2_plane_size.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %vb2_plane_size.exit29, %mtk_venc_get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit29 ], [ 0, %mtk_venc_get_q_data.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2ops_venc_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  %param = alloca %struct.venc_enc_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %param) #11
  %2 = call ptr @memset(ptr %param, i32 255, i32 44)
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %4, label %if.end [
    i32 4, label %entry.err_start_stream_crit_edge
    i32 0, label %entry.err_start_stream_crit_edge156
  ]

entry.err_start_stream_crit_edge156:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_start_stream

entry.err_start_stream_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_start_stream

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %7, label %if.else [
    i32 2, label %if.end.if.then25_crit_edge
    i32 10, label %if.end.if.then25_crit_edge157
    i32 3, label %if.end.if.then25_crit_edge158
    i32 8, label %if.end.if.then25_crit_edge159
    i32 5, label %if.end.if.then25_crit_edge160
    i32 7, label %if.end.if.then25_crit_edge161
    i32 12, label %if.end.if.then25_crit_edge162
    i32 14, label %if.end.if.then25_crit_edge163
  ]

if.end.if.then25_crit_edge163:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.if.then25_crit_edge162:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.if.then25_crit_edge161:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.if.then25_crit_edge160:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.if.then25_crit_edge159:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.if.then25_crit_edge158:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.if.then25_crit_edge157:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.if.then25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then25:                                        ; preds = %if.end.if.then25_crit_edge, %if.end.if.then25_crit_edge157, %if.end.if.then25_crit_edge158, %if.end.if.then25_crit_edge159, %if.end.if.then25_crit_edge160, %if.end.if.then25_crit_edge161, %if.end.if.then25_crit_edge162, %if.end.if.then25_crit_edge163
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx, align 8
  %start_streaming_called.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 7, i32 0, i32 28
  %11 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %12 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not = icmp eq i16 %12, 0
  br i1 %tobool.i.not, label %if.then25.cleanup_crit_edge, label %if.then25.if.end35_crit_edge

if.then25.if.end35_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %m2m_ctx30 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %m2m_ctx30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx30, align 8
  %start_streaming_called.i140 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 8, i32 0, i32 28
  %15 = ptrtoint ptr %start_streaming_called.i140 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i141 = load i16, ptr %start_streaming_called.i140, align 4
  %16 = and i16 %bf.load.i141, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.i142.not = icmp eq i16 %16, 0
  br i1 %tobool.i142.not, label %if.else.cleanup_crit_edge, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.then25.if.end35_crit_edge
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %plat_dev, align 4
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev36, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end41

if.then.i:                                        ; preds = %if.end35
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !267
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !268
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !269
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, i32 noundef 875, i32 noundef %call.i) #14
  br label %err_start_stream

if.end41:                                         ; preds = %if.end35
  call fastcc void @mtk_venc_set_param(ptr noundef %1, ptr noundef nonnull %param)
  %call42 = call i32 @venc_if_set_param(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %param) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool.not = icmp eq i32 %call42, 0
  br i1 %tobool.not, label %if.end50, label %do.end46

do.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef 882, i32 noundef %call42) #14
  br label %err_set_param

if.end50:                                         ; preds = %if.end41
  %param_change = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %param_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %param_change, align 4
  %fmt = getelementptr %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 5, i32 1, i32 7
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fmt, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %26)
  %cmp51 = icmp eq i32 %26, 875967048
  br i1 %cmp51, label %land.lhs.true, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end50
  %seq_hdr_mode = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 9, i32 4
  %27 = ptrtoint ptr %seq_hdr_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seq_hdr_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp52.not = icmp eq i32 %28, 0
  br i1 %cmp52.not, label %land.lhs.true.cleanup_crit_edge, label %if.then53

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then53:                                        ; preds = %land.lhs.true
  %call54 = call i32 @venc_if_set_param(ptr noundef %1, i32 noundef 7, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end63, label %do.end59

do.end59:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef 895, i32 noundef %call54) #14
  br label %err_set_param

if.end63:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %state, align 8
  br label %cleanup

err_set_param:                                    ; preds = %do.end59, %do.end46
  %ret.0 = phi i32 [ %call42, %do.end46 ], [ %call54, %do.end59 ]
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %state, align 8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %plat_dev67 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %plat_dev67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %plat_dev67, align 4
  %dev68 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %call.i144 = call i32 @__pm_runtime_idle(ptr noundef %dev68, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp70 = icmp slt i32 %call.i144, 0
  br i1 %cmp70, label %do.end74, label %err_set_param.err_start_stream_crit_edge

err_set_param.err_start_stream_crit_edge:         ; preds = %err_set_param
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_start_stream

do.end74:                                         ; preds = %err_set_param
  call void @__sanitizer_cov_trace_pc() #13
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.93, i32 noundef 907, i32 noundef %call.i144) #14
  br label %err_start_stream

err_start_stream:                                 ; preds = %do.end74, %err_set_param.err_start_stream_crit_edge, %do.end, %entry.err_start_stream_crit_edge, %entry.err_start_stream_crit_edge156
  %ret.1 = phi i32 [ %call.i, %do.end ], [ %ret.0, %do.end74 ], [ %ret.0, %err_set_param.err_start_stream_crit_edge ], [ -5, %entry.err_start_stream_crit_edge ], [ -5, %entry.err_start_stream_crit_edge156 ]
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 21
  %35 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp78152.not = icmp eq i32 %36, 0
  br i1 %cmp78152.not, label %err_start_stream.cleanup_crit_edge, label %vb2_get_buffer.exit.lr.ph

err_start_stream.cleanup_crit_edge:               ; preds = %err_start_stream
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

vb2_get_buffer.exit.lr.ph:                        ; preds = %err_start_stream
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  br label %vb2_get_buffer.exit

vb2_get_buffer.exit:                              ; preds = %if.end96.vb2_get_buffer.exit_crit_edge, %vb2_get_buffer.exit.lr.ph
  %i.0153 = phi i32 [ 0, %vb2_get_buffer.exit.lr.ph ], [ %inc, %if.end96.vb2_get_buffer.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.vb2_queue, ptr %q, i32 0, i32 20, i32 %i.0153
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %state80 = getelementptr inbounds %struct.vb2_buffer, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %state80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp81 = icmp eq i32 %40, 4
  br i1 %cmp81, label %do.body83, label %vb2_get_buffer.exit.if.end96_crit_edge

vb2_get_buffer.exit.if.end96_crit_edge:           ; preds = %vb2_get_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

do.body83:                                        ; preds = %vb2_get_buffer.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_venc_start_streaming.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_venc_start_streaming, %if.then89)) #11
          to label %do.end94 [label %if.then89], !srcloc !264

if.then89:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  %43 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %q, align 4
  %45 = ptrtoint ptr %state80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state80, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_venc_start_streaming.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.93, i32 noundef 920, i32 noundef %42, i32 noundef %i.0153, i32 noundef %44, i32 noundef %46) #11
  br label %do.end94

do.end94:                                         ; preds = %if.then89, %do.body83
  call void @vb2_buffer_done(ptr noundef %38, i32 noundef 3) #11
  br label %if.end96

if.end96:                                         ; preds = %do.end94, %vb2_get_buffer.exit.if.end96_crit_edge
  %inc = add nuw i32 %i.0153, 1
  %47 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_buffers, align 4
  %cmp78 = icmp ult i32 %inc, %48
  br i1 %cmp78, label %if.end96.vb2_get_buffer.exit_crit_edge, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end96.vb2_get_buffer.exit_crit_edge:           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_get_buffer.exit

cleanup:                                          ; preds = %if.end96.cleanup_crit_edge, %err_start_stream.cleanup_crit_edge, %if.end63, %land.lhs.true.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then25.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then25.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end63 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ %ret.1, %err_start_stream.cleanup_crit_edge ], [ %ret.1, %if.end96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %param) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2ops_venc_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_venc_stop_streaming, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !264

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, i32 noundef 935, i32 noundef %3, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp = icmp eq i32 %7, 9
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 8
  br i1 %cmp, label %while.cond.preheader, label %while.cond50.preheader

while.cond50.preheader:                           ; preds = %do.end
  %out_q_ctx.i174191 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 8
  %call.i175192 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i174191) #11
  %tobool53.not193 = icmp eq ptr %call.i175192, null
  br i1 %tobool53.not193, label %while.cond50.preheader.while.end60_crit_edge, label %while.body54.lr.ph

while.cond50.preheader.while.end60_crit_edge:     ; preds = %while.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end60

while.body54.lr.ph:                               ; preds = %while.cond50.preheader
  %empty_flush_buf55 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 23
  br label %while.body54

while.cond.preheader:                             ; preds = %do.end
  %cap_q_ctx.i195 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7
  %call.i196 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i195) #11
  %tobool7.not197 = icmp eq ptr %call.i196, null
  br i1 %tobool7.not197, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %vb2_set_plane_payload.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call.i198 = phi ptr [ %call.i, %vb2_set_plane_payload.exit.while.body_crit_edge ], [ %call.i196, %while.cond.preheader.while.body_crit_edge ]
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i198, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %while.body.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

while.body.vb2_set_plane_payload.exit_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i198, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then.i, %while.body.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i198, i32 noundef 6) #11
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 8
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #11
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %vb2_set_plane_payload.exit.while.end_crit_edge, label %vb2_set_plane_payload.exit.while.body_crit_edge

vb2_set_plane_payload.exit.while.body_crit_edge:  ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

vb2_set_plane_payload.exit.while.end_crit_edge:   ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %vb2_set_plane_payload.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %is_flushing = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %is_flushing to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_flushing, align 8, !range !263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  br i1 %tobool8.not, label %while.end.if.end68_crit_edge, label %if.then9

while.end.if.end68_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then9:                                         ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_venc_stop_streaming, %if.then22)) #11
          to label %do.end25 [label %if.then22], !srcloc !264

if.then22:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.108, i32 noundef 946) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %if.then9
  %17 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_ctx, align 8
  %rdy_queue = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 8, i32 1
  %empty_flush_buf = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 23
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end25
  %.pn.in.in = phi ptr [ %rdy_queue, %do.end25 ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %19 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp36.not = icmp eq ptr %.pn.in, %rdy_queue
  br i1 %cmp36.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %b.0 = getelementptr i8, ptr %.pn.in, i32 -736
  %cmp39 = icmp eq ptr %b.0, %empty_flush_buf
  br i1 %cmp39, label %if.then40, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 8
  tail call void @v4l2_m2m_buf_remove_by_buf(ptr noundef %out_q_ctx.i, ptr noundef %empty_flush_buf) #11
  br label %for.end

for.end:                                          ; preds = %if.then40, %for.cond.for.end_crit_edge
  %20 = ptrtoint ptr %is_flushing to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %is_flushing, align 8
  br label %if.end68

while.body54:                                     ; preds = %if.end59.while.body54_crit_edge, %while.body54.lr.ph
  %call.i175194 = phi ptr [ %call.i175192, %while.body54.lr.ph ], [ %call.i175, %if.end59.while.body54_crit_edge ]
  %cmp57.not = icmp eq ptr %call.i175194, %empty_flush_buf55
  br i1 %cmp57.not, label %while.body54.if.end59_crit_edge, label %if.then58

while.body54.if.end59_crit_edge:                  ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then58:                                        ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i175194, i32 noundef 6) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %while.body54.if.end59_crit_edge
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx, align 8
  %out_q_ctx.i174 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %22, i32 0, i32 8
  %call.i175 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i174) #11
  %tobool53.not = icmp eq ptr %call.i175, null
  br i1 %tobool53.not, label %if.end59.while.end60_crit_edge, label %if.end59.while.body54_crit_edge

if.end59.while.body54_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body54

if.end59.while.end60_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end60

while.end60:                                      ; preds = %if.end59.while.end60_crit_edge, %while.cond50.preheader.while.end60_crit_edge
  %is_flushing61 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 24
  %23 = ptrtoint ptr %is_flushing61 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_flushing61, align 8, !range !263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool62.not = icmp eq i8 %24, 0
  br i1 %tobool62.not, label %while.end60.if.end68_crit_edge, label %if.then63

while.end60.if.end68_crit_edge:                   ; preds = %while.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then63:                                        ; preds = %while.end60
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx, align 8
  %empty_flush_buf65 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 23
  tail call void @v4l2_m2m_buf_queue(ptr noundef %26, ptr noundef %empty_flush_buf65) #11
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %while.end60.if.end68_crit_edge, %for.end, %while.end.if.end68_crit_edge
  %27 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %q, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %28, label %if.end68.if.end109_crit_edge [
    i32 9, label %land.lhs.true
    i32 10, label %land.lhs.true77
  ]

if.end68.if.end109_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

land.lhs.true:                                    ; preds = %if.end68
  %m2m_ctx71 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %m2m_ctx71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m2m_ctx71, align 8
  %streaming.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %31, i32 0, i32 8, i32 0, i32 28
  %32 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true.do.body82_crit_edge, label %land.lhs.true.if.end109_crit_edge

land.lhs.true.if.end109_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

land.lhs.true.do.body82_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

land.lhs.true77:                                  ; preds = %if.end68
  %m2m_ctx78 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %m2m_ctx78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m2m_ctx78, align 8
  %streaming.i176 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %34, i32 0, i32 7, i32 0, i32 28
  %35 = ptrtoint ptr %streaming.i176 to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i177 = load i16, ptr %streaming.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i177)
  %tobool.i178 = icmp slt i16 %bf.load.i177, 0
  br i1 %tobool.i178, label %land.lhs.true77.do.body82_crit_edge, label %land.lhs.true77.if.end109_crit_edge

land.lhs.true77.if.end109_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

land.lhs.true77.do.body82_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

do.body82:                                        ; preds = %land.lhs.true77.do.body82_crit_edge, %land.lhs.true.do.body82_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_venc_stop_streaming, %if.then94)) #11
          to label %cleanup [label %if.then94], !srcloc !264

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  %id95 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %id95 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id95, align 4
  %38 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %q, align 4
  %m2m_ctx97 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %m2m_ctx97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %m2m_ctx97, align 8
  %streaming.i179 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %41, i32 0, i32 8, i32 0, i32 28
  %42 = ptrtoint ptr %streaming.i179 to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i180 = load i16, ptr %streaming.i179, align 4
  %bf.load.i180.lobit = lshr i16 %bf.load.i180, 15
  %43 = zext i16 %bf.load.i180.lobit to i32
  %streaming.i182 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %41, i32 0, i32 7, i32 0, i32 28
  %44 = ptrtoint ptr %streaming.i182 to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i183 = load i16, ptr %streaming.i182, align 4
  %bf.load.i183.lobit = lshr i16 %bf.load.i183, 15
  %45 = zext i16 %bf.load.i183.lobit to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.108, i32 noundef 983, i32 noundef %37, i32 noundef %39, i32 noundef %43, i32 noundef %45) #11
  br label %cleanup

if.end109:                                        ; preds = %land.lhs.true77.if.end109_crit_edge, %land.lhs.true.if.end109_crit_edge, %if.end68.if.end109_crit_edge
  %call110 = tail call i32 @venc_if_deinit(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end109.if.end118_crit_edge, label %do.end115

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

do.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.108, i32 noundef 990, i32 noundef %call110) #14
  br label %if.end118

if.end118:                                        ; preds = %do.end115, %if.end109.if.end118_crit_edge
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %plat_dev, align 4
  %dev119 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  %call.i185 = tail call i32 @__pm_runtime_idle(ptr noundef %dev119, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp121 = icmp slt i32 %call.i185, 0
  br i1 %cmp121, label %do.end126, label %if.end118.if.end129_crit_edge

if.end118.if.end129_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

do.end126:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.108, i32 noundef 994, i32 noundef %call.i185) #14
  br label %if.end129

if.end129:                                        ; preds = %do.end126, %if.end118.if.end129_crit_edge
  %state = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.then94, %do.body82
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2ops_venc_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp = icmp eq i32 %5, 10
  br i1 %cmp, label %land.lhs.true, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %param_change = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not = icmp eq i32 %7, 0
  br i1 %cmp5.not, label %land.lhs.true.if.end16_crit_edge, label %do.body

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2ops_venc_buf_queue.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2ops_venc_buf_queue, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !264

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %12 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %param_change, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2ops_venc_buf_queue.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117, i32 noundef 840, i32 noundef %9, i32 noundef %11, i32 noundef %13) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %14 = ptrtoint ptr %param_change to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param_change, align 4
  %param_change13 = getelementptr inbounds %struct.mtk_video_enc_buf, ptr %vb, i32 0, i32 1
  %16 = ptrtoint ptr %param_change13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %param_change13, align 8
  %enc_params = getelementptr inbounds %struct.mtk_video_enc_buf, ptr %vb, i32 0, i32 2
  %enc_params14 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 9
  %17 = call ptr @memcpy(ptr %enc_params, ptr %enc_params14, i32 52)
  store i32 0, ptr %param_change, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_buf_queue(ptr noundef %19, ptr noundef %vb) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_venc_set_param(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %q_data = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5
  %enc_params1 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 9
  %fmt = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 7
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %3, label %do.end [
    i32 842091865, label %sw.bb
    i32 825380185, label %sw.bb2
    i32 842091854, label %sw.bb4
    i32 825380174, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %param, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %param, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %param, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %param, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, i32 noundef 370, i32 noundef %3) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %h264_profile = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %h264_profile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %h264_profile, align 4
  %h264_profile10 = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 1
  %11 = ptrtoint ptr %h264_profile10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h264_profile10, align 4
  %h264_level = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 9, i32 11
  %12 = ptrtoint ptr %h264_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h264_level, align 4
  %h264_level11 = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 2
  %14 = ptrtoint ptr %h264_level11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %h264_level11, align 4
  %15 = ptrtoint ptr %q_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %q_data, align 4
  %width = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 3
  %17 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %width, align 4
  %visible_height = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %visible_height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %visible_height, align 4
  %height = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 4
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height, align 4
  %coded_width = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 2
  %21 = ptrtoint ptr %coded_width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %coded_width, align 4
  %buf_width = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 5
  %23 = ptrtoint ptr %buf_width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %buf_width, align 4
  %coded_height = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 5, i32 0, i32 3
  %24 = ptrtoint ptr %coded_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %coded_height, align 4
  %buf_height = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 6
  %26 = ptrtoint ptr %buf_height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buf_height, align 4
  %framerate_num = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 9, i32 7
  %27 = ptrtoint ptr %framerate_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %framerate_num, align 4
  %framerate_denom = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 9, i32 8
  %29 = ptrtoint ptr %framerate_denom to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %framerate_denom, align 4
  %div = udiv i32 %28, %30
  %frm_rate = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 7
  %31 = ptrtoint ptr %frm_rate to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div, ptr %frm_rate, align 4
  %intra_period = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 9, i32 5
  %32 = ptrtoint ptr %intra_period to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %intra_period, align 4
  %intra_period12 = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 8
  %34 = ptrtoint ptr %intra_period12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %intra_period12, align 4
  %gop_size = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 9, i32 6
  %35 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gop_size, align 4
  %gop_size13 = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 10
  %37 = ptrtoint ptr %gop_size13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %gop_size13, align 4
  %38 = ptrtoint ptr %enc_params1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %enc_params1, align 4
  %bitrate14 = getelementptr inbounds %struct.venc_enc_param, ptr %param, i32 0, i32 9
  %40 = ptrtoint ptr %bitrate14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %bitrate14, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_venc_set_param.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_venc_set_param, %if.then)) #11
          to label %do.end32 [label %if.then], !srcloc !264

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %param, align 4
  %43 = ptrtoint ptr %h264_profile10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %h264_profile10, align 4
  %45 = ptrtoint ptr %h264_level11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %h264_level11, align 4
  %47 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height, align 4
  %51 = ptrtoint ptr %buf_width to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_width, align 4
  %53 = ptrtoint ptr %buf_height to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf_height, align 4
  %55 = ptrtoint ptr %frm_rate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frm_rate, align 4
  %57 = ptrtoint ptr %bitrate14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bitrate14, align 4
  %59 = ptrtoint ptr %gop_size13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %gop_size13, align 4
  %61 = ptrtoint ptr %intra_period12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %intra_period12, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_venc_set_param.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105, i32 noundef 394, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #11
  br label %do.end32

do.end32:                                         ; preds = %if.then, %sw.epilog
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_remove_by_buf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !253}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @mtk_venc_ioctl_ops, !1, !"mtk_venc_ioctl_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 743, i32 29}
!2 = !{ptr @mtk_venc_m2m_ops, !3, !"mtk_venc_m2m_ops", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1266, i32 27}
!4 = !{ptr @mtk_vcodec_enc_set_default_params.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1279, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mtk_vcodec_enc_ctrls_setup._key, !8, !"_key", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1344, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1380, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mtk_vcodec_enc_ctrls_setup._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_vcodec_enc_ctrls_setup._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1449, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mtk_vcodec_enc_release._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mtk_vcodec_enc_release._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 211, i32 23}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 212, i32 25}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 409, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vidioc_venc_s_fmt_cap._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @vidioc_venc_s_fmt_cap._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 414, i32 3}
!32 = !{ptr @vidioc_venc_s_fmt_cap._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vidioc_venc_s_fmt_cap._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 442, i32 4}
!36 = !{ptr @vidioc_venc_s_fmt_cap._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vidioc_venc_s_fmt_cap._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 464, i32 3}
!40 = !{ptr @vidioc_venc_s_fmt_out._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @vidioc_venc_s_fmt_out._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @vidioc_venc_s_fmt_out._entry.18, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 469, i32 3}
!44 = !{ptr @vidioc_venc_s_fmt_out._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 315, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vidioc_try_fmt_out.__UNIQUE_ID_ddebug319, !46, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!50 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 644, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @vidioc_venc_qbuf._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @vidioc_venc_qbuf._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 659, i32 3}
!58 = !{ptr @vidioc_venc_dqbuf._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @vidioc_venc_dqbuf._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 698, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @vidioc_encoder_cmd._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @vidioc_encoder_cmd._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 711, i32 2}
!67 = !{ptr @vidioc_encoder_cmd.__UNIQUE_ID_ddebug325, !66, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!68 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 720, i32 4}
!71 = !{ptr @vidioc_encoder_cmd.__UNIQUE_ID_ddebug326, !70, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!72 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 724, i32 4}
!75 = !{ptr @vidioc_encoder_cmd.__UNIQUE_ID_ddebug327, !74, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!76 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mtk_venc_4k_framesizes, !78, !"mtk_venc_4k_framesizes", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 42, i32 43}
!79 = !{ptr @mtk_venc_hd_framesizes, !80, !"mtk_venc_hd_framesizes", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 37, i32 43}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1028, i32 3}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mtk_venc_encode_header.__UNIQUE_ID_ddebug333, !82, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!85 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1036, i32 2}
!88 = !{ptr @mtk_venc_encode_header.__UNIQUE_ID_ddebug334, !87, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!89 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1051, i32 3}
!92 = !{ptr @mtk_venc_encode_header._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mtk_venc_encode_header._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1059, i32 3}
!96 = !{ptr @mtk_venc_encode_header._entry.41, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mtk_venc_encode_header._entry_ptr.43, !95, !"_entry_ptr", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1088, i32 3}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mtk_venc_param_change.__UNIQUE_ID_ddebug335, !102, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!105 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1099, i32 3}
!108 = !{ptr @mtk_venc_param_change.__UNIQUE_ID_ddebug336, !107, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!109 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1109, i32 3}
!112 = !{ptr @mtk_venc_param_change.__UNIQUE_ID_ddebug337, !111, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!113 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1116, i32 3}
!116 = !{ptr @mtk_venc_param_change.__UNIQUE_ID_ddebug338, !115, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!117 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1130, i32 3}
!120 = !{ptr @mtk_venc_param_change._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mtk_venc_param_change._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1251, i32 3}
!124 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @m2mops_venc_job_ready.__UNIQUE_ID_ddebug342, !123, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!126 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1192, i32 2}
!129 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mtk_venc_worker.__UNIQUE_ID_ddebug339, !128, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!131 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @mtk_venc_worker._entry, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1214, i32 3}
!134 = !{ptr @mtk_venc_worker._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1219, i32 3}
!137 = !{ptr @mtk_venc_worker.__UNIQUE_ID_ddebug340, !136, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!138 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1225, i32 2}
!141 = !{ptr @mtk_venc_worker.__UNIQUE_ID_ddebug341, !140, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!142 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mtk_vcodec_enc_ctrl_ops, !144, !"mtk_vcodec_enc_ctrl_ops", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 127, i32 35}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 55, i32 3}
!147 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug299, !146, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!149 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 61, i32 3}
!152 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug300, !151, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!153 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 66, i32 3}
!156 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug301, !155, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!157 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 71, i32 3}
!160 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug302, !159, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!161 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 76, i32 3}
!164 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug303, !163, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!165 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 81, i32 3}
!168 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug304, !167, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!169 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 86, i32 3}
!172 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug305, !171, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!173 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 91, i32 3}
!176 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug306, !175, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!177 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 96, i32 3}
!180 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug307, !179, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!181 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 102, i32 3}
!184 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug308, !183, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!185 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 112, i32 3}
!188 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug309, !187, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!189 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 115, i32 3}
!192 = !{ptr @vidioc_venc_s_ctrl.__UNIQUE_ID_ddebug310, !191, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!193 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @mtk_venc_vb2_ops, !195, !"mtk_venc_vb2_ops", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 1007, i32 29}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 815, i32 4}
!198 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @vb2ops_venc_buf_prepare._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @vb2ops_venc_buf_prepare._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 875, i32 3}
!203 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @vb2ops_venc_start_streaming._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @vb2ops_venc_start_streaming._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 882, i32 3}
!208 = !{ptr @vb2ops_venc_start_streaming._entry.94, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @vb2ops_venc_start_streaming._entry_ptr.96, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @vb2ops_venc_start_streaming._entry.97, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 895, i32 4}
!212 = !{ptr @vb2ops_venc_start_streaming._entry_ptr.98, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 907, i32 3}
!215 = !{ptr @vb2ops_venc_start_streaming._entry.99, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @vb2ops_venc_start_streaming._entry_ptr.101, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 918, i32 4}
!219 = !{ptr @vb2ops_venc_start_streaming.__UNIQUE_ID_ddebug329, !218, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!220 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 370, i32 3}
!223 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @mtk_venc_set_param._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @mtk_venc_set_param._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 388, i32 2}
!228 = !{ptr @mtk_venc_set_param.__UNIQUE_ID_ddebug320, !227, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!229 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 935, i32 2}
!232 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug330, !231, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!234 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 946, i32 4}
!237 = !{ptr @vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug331, !236, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!238 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 980, i32 3}
!241 = !{ptr @vb2ops_venc_stop_streaming.__UNIQUE_ID_ddebug332, !240, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!242 = !{ptr @.str.114, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @vb2ops_venc_stop_streaming._entry, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 990, i32 3}
!245 = !{ptr @vb2ops_venc_stop_streaming._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @vb2ops_venc_stop_streaming._entry.115, !247, !"_entry", i1 false, i1 false}
!247 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 994, i32 3}
!248 = !{ptr @vb2ops_venc_stop_streaming._entry_ptr.116, !247, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c", i32 837, i32 3}
!251 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @vb2ops_venc_buf_queue.__UNIQUE_ID_ddebug328, !250, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!253 = !{ptr @.str.119, !250, !"<string literal>", i1 false, i1 false}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!263 = !{i8 0, i8 2}
!264 = !{i64 2148803589, i64 2148803594, i64 2148803607, i64 2148803651, i64 2148803685, i64 2148803706}
!265 = !{!"auto-init"}
!266 = !{!"branch_weights", i32 2000, i32 1}
!267 = !{i64 2148248364}
!268 = !{i64 733984, i64 734009, i64 734031, i64 734047, i64 734059, i64 734079, i64 734103, i64 734119, i64 734131}
!269 = !{i64 2148248552}
