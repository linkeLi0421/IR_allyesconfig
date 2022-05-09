; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-isp-video.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-isp-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_is = type { ptr, ptr, ptr, %struct.fimc_is_firmware, %struct.fimc_is_memory, %struct.fimc_isp, [2 x %struct.fimc_is_sensor], %struct.fimc_is_setfile, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, [21 x ptr], ptr, ptr, i32, %struct.wait_queue_head, i8, i32, i32, %struct.i2h_cmd, %struct.h2i_cmd, %struct.is_fd_result_header, [4 x %struct.chain_config], i32, ptr, i32, ptr, %struct.is_af_info, ptr }
%struct.fimc_is_firmware = type { ptr, i32, ptr, i32, [32 x i8], [8 x i8], [40 x i8], i8 }
%struct.fimc_is_memory = type { i32, ptr, i32 }
%struct.fimc_isp = type { ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, ptr, %struct.fimc_isp_ctrls, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fimc_is_video }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.114, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.114 = type { ptr, ptr }
%struct.fimc_is_video = type { %struct.exynos_video_entity, i32, %struct.media_pad, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i32, [4 x ptr], ptr, %struct.v4l2_pix_format_mplane }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.fimc_is_sensor = type { ptr, i32, i8 }
%struct.fimc_is_setfile = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.i2h_cmd = type { i32, i32, i16, [12 x i32] }
%struct.h2i_cmd = type { i16, i32 }
%struct.is_fd_result_header = type { i32, i32, i32, i32, i32, i32 }
%struct.chain_config = type { %struct.global_param, %struct.sensor_param, %struct.isp_param, %struct.drc_param, %struct.fd_param, [2 x i32] }
%struct.global_param = type { %struct.param_global_shotmode }
%struct.param_global_shotmode = type { i32, i32, [13 x i32], i32 }
%struct.sensor_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_sensor_framerate }
%struct.param_control = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_otf_output = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.param_sensor_framerate = type { i32, [14 x i32], i32 }
%struct.isp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_dma_input, %struct.param_isp_aa, %struct.param_isp_flash, %struct.param_isp_awb, %struct.param_isp_imageeffect, %struct.param_isp_iso, %struct.param_isp_adjust, %struct.param_isp_metering, %struct.param_isp_afc, %struct.param_otf_output, %struct.param_dma_output, %struct.param_dma_output }
%struct.param_otf_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.param_dma_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_aa = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_flash = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_awb = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_imageeffect = type { i32, [14 x i32], i32 }
%struct.param_isp_iso = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_adjust = type { i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.param_isp_metering = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_isp_afc = type { i32, i32, [13 x i32], i32 }
%struct.param_dma_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32 }
%struct.drc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_otf_output }
%struct.fd_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_fd_config }
%struct.param_fd_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32 }
%struct.is_af_info = type { i16, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.isp_video_buf = type { %struct.vb2_v4l2_buffer, [1 x i32], i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.exynos_media_pipeline = type { %struct.media_pipeline, ptr }
%struct.exynos_media_pipeline_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.is_region = type { %struct.is_param_region, %struct.is_tune_region, [8 x %struct.is_frame_header], [16 x %struct.is_face_marker], [500 x i32] }
%struct.is_param_region = type { %struct.global_param, %struct.sensor_param, %struct.buffer_param, %struct.isp_param, %struct.drc_param, %struct.scalerc_param, %struct.odc_param, %struct.dis_param, %struct.tdnr_param, %struct.scalerp_param, %struct.fd_param }
%struct.buffer_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.scalerc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_imageeffect = type { i32, i32, i32, [12 x i32], i32 }
%struct.param_scaler_input_crop = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_scaler_output_crop = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.odc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.dis_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_otf_output }
%struct.tdnr_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_3dnr_1stframe, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_3dnr_1stframe = type { i32, [14 x i32], i32 }
%struct.scalerp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_scaler_rotation, %struct.param_scaler_flip, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_rotation = type { i32, [14 x i32], i32 }
%struct.param_scaler_flip = type { i32, [14 x i32], i32 }
%struct.is_tune_region = type { %struct.is_tune_sensor, %struct.is_tune_isp }
%struct.is_tune_sensor = type { i32, i32, i32, i32 }
%struct.is_tune_isp = type { i32, i32, i32, i32, [4 x %struct.is_tune_gammacurve], i32, i32, i32, i32, i32 }
%struct.is_tune_gammacurve = type { [32 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.is_frame_header = type { i32, i32, i32, i32, %struct.exif_attribute }
%struct.exif_attribute = type { %struct.rational, %struct.srational, i32, i32, %struct.srational }
%struct.rational = type { i32, i32 }
%struct.srational = type { i32, i32 }
%struct.is_face_marker = type { i32, %struct.is_fd_rect, %struct.is_fd_rect, %struct.is_fd_rect, %struct.is_fd_rect, i32, i32, i32, i32, i32 }
%struct.is_fd_rect = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@fimc_isp_video_device_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&isp->video_lock\00", [47 x i8] zeroinitializer }, align 32
@isp_video_capture_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @isp_video_capture_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @isp_video_capture_buffer_prepare, ptr null, ptr null, ptr @isp_video_capture_start_streaming, ptr @isp_video_capture_stop_streaming, ptr @isp_video_capture_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fimc-is-isp.capture\00", [44 x i8] zeroinitializer }, align 32
@isp_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @isp_video_open, ptr @isp_video_release }, [60 x i8] zeroinitializer }, align 32
@isp_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @isp_video_querycap, ptr @isp_video_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @isp_video_streamon, ptr @isp_video_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@fimc_isp_video_device_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fimc_isp_video_device_register\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/exynos4-is/fimc-isp-video.c\00", [45 x i8] zeroinitializer }, align 32
@fimc_isp_video_device_register._entry_ptr = internal global ptr @fimc_isp_video_device_register._entry, section ".printk_index", align 4
@isp_video_capture_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: User buffer too small (%ld < %ld)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"isp_video_capture_buffer_prepare\00", [63 x i8] zeroinitializer }, align 32
@isp_video_capture_buffer_prepare._entry_ptr = internal global ptr @isp_video_capture_buffer_prepare._entry, section ".printk_index", align 4
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@fimc_isp_debug = external dso_local local_unnamed_addr global i32, align 4
@isp_video_capture_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: buf_count: %d, planes: %d, dma addr table: %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"isp_video_capture_start_streaming\00", [62 x i8] zeroinitializer }, align 32
@isp_video_capture_start_streaming._entry_ptr = internal global ptr @isp_video_capture_start_streaming._entry, section ".printk_index", align 4
@isp_video_capture_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 141, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: DMA stop failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"isp_video_capture_stop_streaming\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isp_video_capture_stop_streaming._entry_ptr = internal global ptr @isp_video_capture_stop_streaming._entry, section ".printk_index", align 4
@isp_video_capture_buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: dma_buf %d (%d/%d/%d) addr: %pad\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"isp_video_capture_buffer_queue\00", [33 x i8] zeroinitializer }, align 32
@isp_video_capture_buffer_queue._entry_ptr = internal global ptr @isp_video_capture_buffer_queue._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 581, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"isp_video_capture_qops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 254, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 608, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"isp_video_fops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 335, i32 42 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"isp_video_ioctl_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 551, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 631, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 164, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1163, i32 7 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 97, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 141, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [54 x i8] c"../drivers/media/platform/exynos4-is/fimc-isp-video.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 213, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @fimc_isp_video_device_register._entry, ptr @fimc_isp_video_device_register._entry_ptr, ptr @isp_video_capture_buffer_prepare._entry, ptr @isp_video_capture_buffer_prepare._entry_ptr, ptr @isp_video_capture_buffer_queue._entry, ptr @isp_video_capture_buffer_queue._entry_ptr, ptr @isp_video_capture_start_streaming._entry, ptr @isp_video_capture_start_streaming._entry_ptr, ptr @isp_video_capture_stop_streaming._entry, ptr @isp_video_capture_stop_streaming._entry_ptr, ptr @fimc_isp_video_device_register.__key, ptr @.str, ptr @isp_video_capture_qops, ptr @.str.1, ptr @isp_video_fops, ptr @isp_video_ioctl_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_video_device_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_capture_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_isp_video_device_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_capture_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_capture_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_capture_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_video_capture_buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_isp_video_irq_handler(ptr noundef %is) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 5, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 19, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %4, -1
  %buf_count = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 5, i32 12, i32 7
  %5 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf_count, align 8
  %rem = urem i32 %sub, %6
  %arrayidx2 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 5, i32 12, i32 11, i32 %rem
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2, align 4
  %call.i = tail call i64 @ktime_get() #7
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i, ptr %timestamp, align 8
  tail call void @vb2_buffer_done(ptr noundef %8, i32 noundef 5) #7
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %buf_mask = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 5, i32 12, i32 8
  %10 = ptrtoint ptr %buf_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_mask, align 4
  %and = and i32 %11, %neg
  store i32 %and, ptr %buf_mask, align 4
  tail call void @fimc_is_hw_set_isp_buf_mask(ptr noundef %is, i32 noundef %and) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_set_isp_buf_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fimc_isp_video_device_register(ptr noundef %isp, ptr noundef %v4l2_dev, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %video_capture = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12
  %vb_queue = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %type)
  %cmp = icmp eq i32 %type, 9
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %video_lock = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %video_lock, ptr noundef nonnull @.str, ptr noundef nonnull @fimc_isp_video_device_register.__key) #7
  %pending_buf_q = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 3
  %0 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %pending_buf_q, ptr %pending_buf_q, align 4
  %prev.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pending_buf_q, ptr %prev.i, align 4
  %active_buf_q = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %active_buf_q, ptr %active_buf_q, align 4
  %prev.i91 = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %active_buf_q, ptr %prev.i91, align 4
  %call = tail call ptr @fimc_isp_find_format(ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %format = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 12
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %format, align 8
  %pixfmt = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 13
  %5 = ptrtoint ptr %pixfmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1280, ptr %pixfmt, align 4
  %height = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 13, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 720, ptr %height, align 4
  %fourcc = getelementptr inbounds %struct.fimc_fmt, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 13, i32 2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 13, i32 4
  %10 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %colorspace, align 4
  %11 = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5, i32 3
  %12 = call ptr @memset(ptr %11, i32 0, i32 504)
  %13 = ptrtoint ptr %vb_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %vb_queue, align 4
  %io_modes = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5, i32 1
  %14 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %io_modes, align 4
  %ops = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5, i32 7
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @isp_video_capture_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5, i32 8
  %16 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5, i32 12
  %17 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 744, ptr %buf_struct_size, align 4
  %drv_priv = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5, i32 10
  %18 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %isp, ptr %drv_priv, align 4
  %timestamp_flags = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5, i32 13
  %19 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5, i32 5
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %video_lock, ptr %lock, align 4
  %21 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %isp, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %dev8 = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 5, i32 2
  %23 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev8, align 4
  %call9 = tail call i32 @vb2_queue_init(ptr noundef %vb_queue) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.cleanup_crit_edge, label %if.end12

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.then
  %24 = call ptr @memset(ptr %video_capture, i32 0, i32 1352)
  %name = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 12
  %call14 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef 32) #7
  %queue = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 10
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vb_queue, ptr %queue, align 8
  %fops = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 3
  %26 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @isp_video_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 24
  %27 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @isp_video_ioctl_ops, ptr %ioctl_ops, align 4
  %v4l2_dev15 = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 7
  %28 = ptrtoint ptr %v4l2_dev15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %v4l2_dev, ptr %v4l2_dev15, align 4
  %minor = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 15
  %29 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %minor, align 8
  %release = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 23
  %30 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock17 = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 26
  %31 = ptrtoint ptr %lock17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %video_lock, ptr %lock17, align 8
  %device_caps = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 4
  %32 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 67112960, ptr %device_caps, align 8
  %pad = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 2
  %flags = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 2, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %flags, align 4
  %call19 = tail call i32 @media_entity_pads_init(ptr noundef %video_capture, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end12.cleanup_crit_edge, label %if.end22

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %driver_data.i.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 5, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %isp, ptr %driver_data.i.i, align 4
  %35 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fops, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %video_capture, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24 = icmp slt i32 %call.i, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %do.end30

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end30:                                         ; preds = %if.end22
  %name31 = getelementptr inbounds %struct.v4l2_device, ptr %v4l2_dev, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 5, i32 3
  %39 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end30.video_device_node_name.exit_crit_edge

do.end30.video_device_node_name.exit_crit_edge:   ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 5
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end30.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %42, %if.end.i.i ], [ %40, %do.end30.video_device_node_name.exit_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name31, ptr noundef %name, ptr noundef %retval.0.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %if.end22.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %video_device_node_name.exit ], [ -38, %entry.cleanup_crit_edge ], [ %call9, %if.then.cleanup_crit_edge ], [ %call19, %if.end12.cleanup_crit_edge ], [ %call.i, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_isp_find_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_isp_video_device_unregister(ptr noundef %isp, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %type)
  %cmp = icmp eq i32 %type, 9
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %video_lock = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %video_lock, i32 noundef 0) #7
  %flags.i = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 0, i32 17
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %video_capture = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12
  tail call void @video_unregister_device(ptr noundef %video_capture) #7
  %pipe = getelementptr inbounds %struct.fimc_isp, ptr %isp, i32 0, i32 12, i32 0, i32 1
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pipe, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %video_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_capture_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %pixfmt = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 13
  %format = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 12
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format, align 8
  %4 = ptrtoint ptr %pixfmt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pixfmt, align 1
  %height = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 13, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %height, align 1
  %mul = mul i32 %7, %5
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 2)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 32)
  %12 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_buffers, align 4
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %memplanes24 = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %memplanes24 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %memplanes24, align 4
  %conv25 = zext i16 %16 to i32
  br i1 %tobool.not, label %if.end23, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv25)
  %cmp10.not = icmp eq i32 %14, %conv25
  br i1 %cmp10.not, label %if.then9.for.body_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then9.for.body_crit_edge
  %i.075 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then9.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.075
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr %struct.fimc_fmt, ptr %3, i32 0, i32 6, i32 %i.075
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %20 to i32
  %mul18 = mul i32 %mul, %conv17
  %div72 = lshr i32 %mul18, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %div72)
  %cmp19 = icmp ult i32 %18, %div72
  br i1 %cmp19, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %21 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv25, ptr %num_planes, align 4
  %22 = ptrtoint ptr %memplanes24 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %memplanes24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp2978.not = icmp eq i16 %23, 0
  br i1 %cmp2978.not, label %if.end23.cleanup_crit_edge, label %if.end23.for.body31_crit_edge

if.end23.for.body31_crit_edge:                    ; preds = %if.end23
  br label %for.body31

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %if.end23.for.body31_crit_edge
  %i.179 = phi i32 [ %inc39, %for.body31.for.body31_crit_edge ], [ 0, %if.end23.for.body31_crit_edge ]
  %arrayidx33 = getelementptr %struct.fimc_fmt, ptr %3, i32 0, i32 6, i32 %i.179
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %25 to i32
  %mul35 = mul i32 %mul, %conv34
  %div3671 = lshr i32 %mul35, 3
  %arrayidx37 = getelementptr i32, ptr %sizes, i32 %i.179
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div3671, ptr %arrayidx37, align 4
  %inc39 = add nuw nsw i32 %i.179, 1
  %27 = ptrtoint ptr %memplanes24 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %memplanes24, align 4
  %conv28 = zext i16 %28 to i32
  %cmp29 = icmp ult i32 %inc39, %conv28
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %for.body31.cleanup_crit_edge

for.body31.cleanup_crit_edge:                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31

cleanup:                                          ; preds = %for.body31.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %for.body31.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_capture_buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %format = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 12
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup32_crit_edge, label %for.cond.preheader

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format, align 8
  %memplanes71 = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %memplanes71 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %memplanes71, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp273.not = icmp eq i16 %9, 0
  br i1 %cmp273.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 13, i32 5, i32 %i.074
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %i.074)
  %cmp.i = icmp ugt i32 %11, %i.074
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.074, i32 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp5 = icmp ult i32 %15, %13
  br i1 %cmp5, label %vb2_plane_size.exit.vb2_plane_size.exit59_crit_edge, label %if.end42.i

vb2_plane_size.exit.vb2_plane_size.exit59_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_plane_size.exit59

vb2_plane_size.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp565.not = icmp eq i32 %13, 0
  br i1 %cmp565.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit59_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit59_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_plane_size.exit59

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit59:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit59_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit59_crit_edge
  %retval.0.i58 = phi i32 [ %15, %vb2_plane_size.exit.vb2_plane_size.exit59_crit_edge ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit59_crit_edge ]
  %name67 = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 0, i32 0, i32 12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name67, i32 noundef %retval.0.i58, i32 noundef %13) #10
  br label %cleanup32

if.end42.i:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.074, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.074, 1
  %17 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %format, align 8
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %memplanes, align 4
  %conv = zext i16 %20 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.for.end_crit_edge

vb2_set_plane_payload.exit.for.end_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %vb2_set_plane_payload.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %state = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.end.cleanup32_crit_edge, label %if.then12

for.end.cleanup32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

if.then12:                                        ; preds = %for.end
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #7
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i, align 4
  %buf_count = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 7
  %25 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1676.not = icmp eq i32 %26, 0
  br i1 %cmp1676.not, label %if.then12.cleanup32_crit_edge, label %if.then12.for.body18_crit_edge

if.then12.for.body18_crit_edge:                   ; preds = %if.then12
  br label %for.body18

if.then12.cleanup32_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

for.cond15:                                       ; preds = %for.body18
  %inc27 = add nuw i32 %i14.077, 1
  %exitcond.not = icmp eq i32 %inc27, %26
  br i1 %exitcond.not, label %for.cond15.cleanup32_crit_edge, label %for.cond15.for.body18_crit_edge

for.cond15.for.body18_crit_edge:                  ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.cond15.cleanup32_crit_edge:                   ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

for.body18:                                       ; preds = %for.cond15.for.body18_crit_edge, %if.then12.for.body18_crit_edge
  %i14.077 = phi i32 [ %inc27, %for.cond15.for.body18_crit_edge ], [ 0, %if.then12.for.body18_crit_edge ]
  %arrayidx19 = getelementptr %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 11, i32 %i14.077
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx19, align 4
  %dma_addr20 = getelementptr inbounds %struct.isp_video_buf, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %dma_addr20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_addr20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %24)
  %cmp22 = icmp eq i32 %30, %24
  br i1 %cmp22, label %for.body18.cleanup32_crit_edge, label %for.cond15

for.body18.cleanup32_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

cleanup32:                                        ; preds = %for.body18.cleanup32_crit_edge, %for.cond15.cleanup32_crit_edge, %if.then12.cleanup32_crit_edge, %for.end.cleanup32_crit_edge, %vb2_plane_size.exit59, %entry.cleanup32_crit_edge
  %retval.3 = phi i32 [ -22, %entry.cleanup32_crit_edge ], [ -22, %vb2_plane_size.exit59 ], [ 0, %for.end.cleanup32_crit_edge ], [ -6, %if.then12.cleanup32_crit_edge ], [ -6, %for.cond15.cleanup32_crit_edge ], [ 0, %for.body18.cleanup32_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_capture_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %config_index.i.i = getelementptr i8, ptr %1, i32 10552
  %2 = ptrtoint ptr %config_index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_index.i.i, align 8
  %dma2_output.i = getelementptr %struct.fimc_is, ptr %add.ptr.i, i32 0, i32 22, i32 %3, i32 2, i32 14
  %video_capture = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12
  %state = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %dma2_output.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %dma2_output.i, align 4
  %notify_dma_done = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 9
  %10 = ptrtoint ptr %notify_dma_done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %notify_dma_done, align 4
  %is_dma_p_region = getelementptr i8, ptr %1, i32 10560
  %11 = ptrtoint ptr %is_dma_p_region to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %is_dma_p_region, align 8
  %add = add i32 %12, 7668
  %buffer_address = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 8
  %13 = ptrtoint ptr %buffer_address to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %buffer_address, align 4
  %reqbufs_count = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reqbufs_count, align 4
  %buffer_number = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 7
  %16 = ptrtoint ptr %buffer_number to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buffer_number, align 4
  %buf_mask = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 8
  %17 = ptrtoint ptr %buf_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf_mask, align 4
  %dma_out_mask = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 10
  %19 = ptrtoint ptr %dma_out_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dma_out_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fimc_isp_debug to i32))
  %20 = load i32, ptr @fimc_isp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp sgt i32 %20, 1
  br i1 %cmp, label %do.end, label %if.end.do.end13_crit_edge

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 12
  %buf_count = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 7
  %21 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_count, align 8
  %format = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 12
  %23 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format, align 8
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %memplanes, align 4
  %conv = zext i16 %26 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %22, i32 noundef %conv, i32 noundef %add) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end.do.end13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %config_index.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config_index.i.i, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %add.ptr.i, i32 0, i32 22, i32 %28, i32 5
  tail call void @_set_bit(i32 noundef 21, ptr noundef %p_region_index.i) #7
  %call14 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %add.ptr.i, i32 noundef 21) #7
  %call15 = tail call i32 @fimc_is_itf_s_param(ptr noundef %add.ptr.i, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end13.cleanup_crit_edge, label %if.end19

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %do.end13
  %tobool21.not = icmp eq ptr %video_capture, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %lor.lhs.false22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22:                                  ; preds = %if.end19
  %pipe = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 0, i32 1
  %29 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pipe, align 8
  %tobool24.not = icmp eq ptr %30, null
  br i1 %tobool24.not, label %lor.lhs.false22.cleanup_crit_edge, label %cond.false

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false22
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %tobool27.not = icmp eq ptr %32, null
  br i1 %tobool27.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false
  %set_stream = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %set_stream to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_stream, align 4
  %tobool31.not = icmp eq ptr %34, null
  br i1 %tobool31.not, label %land.lhs.true.cleanup_crit_edge, label %cond.end41

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end41:                                       ; preds = %land.lhs.true
  %call39 = tail call i32 %34(ptr noundef nonnull %30, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp43 = icmp slt i32 %call39, 0
  br i1 %cmp43, label %cond.end41.cleanup_crit_edge, label %if.end46

cond.end41.cleanup_crit_edge:                     ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %cond.end41.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end46 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call15, %do.end13.cleanup_crit_edge ], [ %call39, %cond.end41.cleanup_crit_edge ], [ -515, %cond.false.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -2, %if.end19.cleanup_crit_edge ], [ -2, %lor.lhs.false22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp_video_capture_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %config_index.i.i = getelementptr i8, ptr %1, i32 10552
  %2 = ptrtoint ptr %config_index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_index.i.i, align 8
  %dma2_output.i = getelementptr %struct.fimc_is, ptr %add.ptr.i, i32 0, i32 22, i32 %3, i32 2, i32 14
  %video_capture = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12
  %tobool.not = icmp eq ptr %video_capture, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pipe = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 0, i32 1
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %cond.false

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false
  %set_stream = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %set_stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_stream, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %cond.true15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true15:                                      ; preds = %land.lhs.true
  %call24 = tail call i32 %9(ptr noundef nonnull %5, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %phi.cmp = icmp slt i32 %call24, 0
  br i1 %phi.cmp, label %cond.true15.cleanup_crit_edge, label %if.end

cond.true15.cleanup_crit_edge:                    ; preds = %cond.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.true15
  %10 = ptrtoint ptr %dma2_output.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dma2_output.i, align 4
  %buffer_number = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 7
  %11 = call ptr @memset(ptr %buffer_number, i32 0, i32 16)
  %12 = ptrtoint ptr %config_index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config_index.i.i, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %add.ptr.i, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 21, ptr noundef %p_region_index.i) #7
  %call28 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %add.ptr.i, i32 noundef 21) #7
  %call29 = tail call i32 @fimc_is_itf_s_param(ptr noundef %add.ptr.i, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end.if.end32_crit_edge
  tail call void @fimc_is_hw_set_isp_buf_mask(ptr noundef %add.ptr.i, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #7
  %buf_count = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 7
  %16 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buf_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %cond.true15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp_video_capture_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %state = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.else, label %do.body6

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %slock = getelementptr i8, ptr %3, i32 3312
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %index = getelementptr inbounds %struct.isp_video_buf, ptr %vb, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %7
  %buf_mask = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 8
  %8 = ptrtoint ptr %buf_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_mask, align 4
  %or = or i32 %9, %shl
  store i32 %or, ptr %buf_mask, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call9) #7
  br label %if.end50

if.else:                                          ; preds = %entry
  %format = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 12
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 8
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %memplanes, align 4
  %conv13 = zext i16 %13 to i32
  %buf_count = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 7
  %14 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_count, align 8
  %index14 = getelementptr inbounds %struct.isp_video_buf, ptr %vb, i32 0, i32 2
  %16 = ptrtoint ptr %index14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %index14, align 4
  %arrayidx = getelementptr %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 11, i32 %15
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vb, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp16103.not = icmp eq i16 %13, 0
  br i1 %cmp16103.not, label %if.else.for.end_crit_edge, label %for.body.lr.ph

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %is_p_region = getelementptr i8, ptr %3, i32 10556
  %name = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 0, i32 0, i32 12
  %index34 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end39.for.body_crit_edge, %for.body.lr.ph
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end39.for.body_crit_edge ]
  %18 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index14, align 4
  %mul = mul i32 %19, %conv13
  %add = add i32 %mul, %i.0104
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef %i.0104) #7
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i, align 4
  %arrayidx20 = getelementptr %struct.isp_video_buf, ptr %vb, i32 0, i32 1, i32 %i.0104
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx20, align 4
  %23 = ptrtoint ptr %is_p_region to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %is_p_region, align 4
  %add23 = add i32 %add, 32
  %arrayidx24 = getelementptr %struct.is_region, ptr %24, i32 0, i32 4, i32 %add23
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %21, ptr %arrayidx24, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fimc_isp_debug to i32))
  %26 = load i32, ptr @fimc_isp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp26 = icmp sgt i32 %26, 1
  br i1 %cmp26, label %do.end31, label %for.body.do.end39_crit_edge

for.body.do.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end31:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index14, align 4
  %29 = ptrtoint ptr %index34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index34, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %add, i32 noundef %28, i32 noundef %i.0104, i32 noundef %30, ptr noundef %arrayidx20) #10
  br label %do.end39

do.end39:                                         ; preds = %do.end31, %for.body.do.end39_crit_edge
  %inc = add nuw nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, %conv13
  br i1 %exitcond.not, label %do.end39.for.end_crit_edge, label %do.end39.for.body_crit_edge

do.end39.for.body_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do.end39.for.end_crit_edge, %if.else.for.end_crit_edge
  %31 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_count, align 8
  %inc41 = add i32 %32, 1
  store i32 %inc41, ptr %buf_count, align 8
  %reqbufs_count = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 6
  %33 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reqbufs_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc41, i32 %34)
  %cmp42 = icmp ult i32 %inc41, %34
  br i1 %cmp42, label %for.end.cleanup58_crit_edge, label %if.end45

for.end.cleanup58_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %notmask = shl nsw i32 -1, %inc41
  %sub = xor i32 %notmask, -1
  %buf_mask48 = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 8
  %35 = ptrtoint ptr %buf_mask48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %buf_mask48, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #7
  br label %if.end50

if.end50:                                         ; preds = %if.end45, %do.body6
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool53.not = icmp eq i32 %38, 0
  br i1 %tobool53.not, label %if.then54, label %if.end50.cleanup58_crit_edge

if.end50.cleanup58_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vb, align 8
  %call56 = tail call i32 @isp_video_capture_start_streaming(ptr noundef %40, i32 noundef 0)
  br label %cleanup58

cleanup58:                                        ; preds = %if.then54, %if.end50.cleanup58_crit_edge, %for.end.cleanup58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fimc_is_hw_update_param(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_itf_s_param(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_capture = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12
  %video_lock = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %video_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @v4l2_fh_open(ptr noundef %file) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.unlock_crit_edge, label %if.end5

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i65 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i = icmp slt i32 %call.i65, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9

if.then.i:                                        ; preds = %if.end5
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.rel_fh_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.rel_fh_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rel_fh

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  br label %rel_fh

if.end9:                                          ; preds = %if.end5
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data.i, align 4
  %call.i66 = tail call i32 @v4l2_fh_is_singular(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool11.not = icmp eq i32 %call.i66, 0
  br i1 %tobool11.not, label %if.end9.unlock_crit_edge, label %if.then12

if.end9.unlock_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then12:                                        ; preds = %if.end9
  %7 = ptrtoint ptr %video_capture to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video_capture, align 4
  %graph_mutex = getelementptr inbounds %struct.media_device, ptr %8, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #7
  %tobool13.not = icmp eq ptr %video_capture, null
  br i1 %tobool13.not, label %if.then12.if.end35_crit_edge, label %lor.lhs.false

if.then12.if.end35_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

lor.lhs.false:                                    ; preds = %if.then12
  %pipe = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 0, i32 1
  %9 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe, align 8
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %lor.lhs.false.if.end35_crit_edge, label %cond.false

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %cond.false.if.end35_crit_edge, label %land.lhs.true

cond.false.if.end35_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %cond.false
  %open = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %open, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %land.lhs.true.if.end35_crit_edge, label %cond.end27

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

cond.end27:                                       ; preds = %land.lhs.true
  %call25 = tail call i32 %14(ptr noundef nonnull %10, ptr noundef nonnull %video_capture, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp29 = icmp eq i32 %call25, 0
  br i1 %cmp29, label %if.then30, label %cond.end27.if.end35_crit_edge

cond.end27.if.end35_crit_edge:                    ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then30:                                        ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #9
  %use_count = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 13
  %15 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %use_count, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %use_count, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %cond.end27.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %cond.false.if.end35_crit_edge, %lor.lhs.false.if.end35_crit_edge, %if.then12.if.end35_crit_edge
  %cond2871 = phi i32 [ 0, %if.then30 ], [ %call25, %cond.end27.if.end35_crit_edge ], [ -515, %cond.false.if.end35_crit_edge ], [ -515, %land.lhs.true.if.end35_crit_edge ], [ -2, %if.then12.if.end35_crit_edge ], [ -2, %lor.lhs.false.if.end35_crit_edge ]
  %17 = ptrtoint ptr %video_capture to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %video_capture, align 4
  %graph_mutex34 = getelementptr inbounds %struct.media_device, ptr %18, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond2871)
  %tobool36.not = icmp eq i32 %cond2871, 0
  br i1 %tobool36.not, label %if.end35.unlock_crit_edge, label %if.end35.rel_fh_crit_edge

if.end35.rel_fh_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rel_fh

if.end35.unlock_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

rel_fh:                                           ; preds = %if.end35.rel_fh_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.rel_fh_crit_edge
  %ret.1 = phi i32 [ %cond2871, %if.end35.rel_fh_crit_edge ], [ %call.i65, %if.then.i.rel_fh_crit_edge ], [ %call.i65, %do.end11.i.i.i.i.i ]
  %call39 = tail call i32 @v4l2_fh_release(ptr noundef %file) #7
  br label %unlock

unlock:                                           ; preds = %rel_fh, %if.end35.unlock_crit_edge, %if.end9.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.2 = phi i32 [ %call3, %if.end.unlock_crit_edge ], [ %ret.1, %rel_fh ], [ 0, %if.end35.unlock_crit_edge ], [ 0, %if.end9.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %video_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %unlock ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_capture = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %video_capture to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video_capture, align 4
  %video_lock = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %video_lock, i32 noundef 0) #7
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %call.i59 = tail call i32 @v4l2_fh_is_singular(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not = icmp eq i32 %call.i59, 0
  br i1 %tobool.not, label %if.end34.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %streaming = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 10
  %6 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %land.lhs.true.if.then9_crit_edge, label %if.then

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @media_pipeline_stop(ptr noundef %video_capture) #7
  %8 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %streaming, align 4
  br label %if.then9

if.then9:                                         ; preds = %if.then, %land.lhs.true.if.then9_crit_edge
  %call7.c57 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #7
  %tobool11.not = icmp eq ptr %video_capture, null
  br i1 %tobool11.not, label %if.then9.cond.end31_crit_edge, label %lor.lhs.false

if.then9.cond.end31_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end31

lor.lhs.false:                                    ; preds = %if.then9
  %pipe = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 0, i32 1
  %9 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe, align 8
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %lor.lhs.false.cond.end31_crit_edge, label %cond.false

lor.lhs.false.cond.end31_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end31

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %cond.false.cond.end31_crit_edge, label %land.lhs.true17

cond.false.cond.end31_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end31

land.lhs.true17:                                  ; preds = %cond.false
  %close = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %close, align 4
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %land.lhs.true17.cond.end31_crit_edge, label %cond.true22

land.lhs.true17.cond.end31_crit_edge:             ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end31

cond.true22:                                      ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 %14(ptr noundef nonnull %10) #7
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true22, %land.lhs.true17.cond.end31_crit_edge, %cond.false.cond.end31_crit_edge, %lor.lhs.false.cond.end31_crit_edge, %if.then9.cond.end31_crit_edge
  %graph_mutex = getelementptr inbounds %struct.media_device, ptr %3, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #7
  %use_count = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 13
  %15 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %use_count, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %use_count, align 4
  tail call void @mutex_unlock(ptr noundef %graph_mutex) #7
  br label %if.end34

if.end34.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7.c58 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #7
  br label %if.end34

if.end34:                                         ; preds = %if.end34.critedge, %cond.end31
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %call.i60 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  tail call void @mutex_unlock(ptr noundef %video_lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @__fimc_vidioc_querycap(ptr noundef %dev, ptr noundef %cap) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @fimc_isp_find_format(ptr noundef null, ptr noundef null, i32 noundef %1) #7
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %do.end, label %if.end25, !prof !55

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 365, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fourcc = getelementptr inbounds %struct.fimc_fmt, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end25 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_g_fmt_mplane(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixfmt = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 13
  %2 = call ptr @memcpy(ptr %fmt, ptr %pixfmt, i32 192)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_s_fmt_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %config_index.i.i = getelementptr i8, ptr %1, i32 10552
  %2 = ptrtoint ptr %config_index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_index.i.i, align 8
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %call.i45 = tail call ptr @fimc_isp_find_format(ptr noundef %pixelformat.i, ptr noundef null, i32 noundef 2) #7
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 8, ptr %colorspace.i, align 1
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %field.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 1, ptr %field.i, align 1
  %memplanes.i = getelementptr inbounds %struct.fimc_fmt, ptr %call.i45, i32 0, i32 3
  %6 = ptrtoint ptr %memplanes.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %memplanes.i, align 4
  %conv.i = trunc i16 %7 to i8
  %num_planes.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %num_planes.i, align 1
  %fourcc.i = getelementptr inbounds %struct.fimc_fmt, ptr %call.i45, i32 0, i32 1
  %9 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fourcc.i, align 4
  %11 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %pixelformat.i, align 1
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 8, i32 noundef 4000, i32 noundef 3, ptr noundef %height.i, i32 noundef 8, i32 noundef 4000, i32 noundef 0, i32 noundef 0) #7
  %cmp = icmp eq ptr %call.i45, null
  br i1 %cmp, label %do.end, label %if.end23, !prof !55

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 427, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %dma2_output.i = getelementptr %struct.fimc_is, ptr %add.ptr.i, i32 0, i32 22, i32 %3, i32 2, i32 14
  %format = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 3
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %format, align 4
  %order = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 6
  %13 = ptrtoint ptr %order to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 15, ptr %order, align 4
  %14 = ptrtoint ptr %memplanes.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %memplanes.i, align 4
  %conv = zext i16 %15 to i32
  %plane = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 5
  %16 = ptrtoint ptr %plane to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %plane, align 4
  %depth = getelementptr inbounds %struct.fimc_fmt, ptr %call.i45, i32 0, i32 6
  %17 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %depth, align 1
  %conv24 = zext i8 %18 to i32
  %bitwidth = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 4
  %19 = ptrtoint ptr %bitwidth to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv24, ptr %bitwidth, align 4
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %fmt, align 1
  %width25 = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 1
  %22 = ptrtoint ptr %width25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width25, align 4
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %height.i, align 1
  %height26 = getelementptr inbounds %struct.param_dma_output, ptr %dma2_output.i, i32 0, i32 2
  %25 = ptrtoint ptr %height26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %format27 = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 12
  %26 = ptrtoint ptr %format27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i45, ptr %format27, align 8
  %pixfmt = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 13
  %27 = call ptr @memcpy(ptr %pixfmt, ptr %fmt, i32 192)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_try_fmt_mplane(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %call.i1 = tail call ptr @fimc_isp_find_format(ptr noundef %pixelformat.i, ptr noundef null, i32 noundef 2) #7
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 8, ptr %colorspace.i, align 1
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %1 = ptrtoint ptr %field.i to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 1, ptr %field.i, align 1
  %memplanes.i = getelementptr inbounds %struct.fimc_fmt, ptr %call.i1, i32 0, i32 3
  %2 = ptrtoint ptr %memplanes.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %memplanes.i, align 4
  %conv.i = trunc i16 %3 to i8
  %num_planes.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %num_planes.i, align 1
  %fourcc.i = getelementptr inbounds %struct.fimc_fmt, ptr %call.i1, i32 0, i32 1
  %5 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fourcc.i, align 4
  %7 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %pixelformat.i, align 1
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 8, i32 noundef 4000, i32 noundef 3, ptr noundef %height.i, i32 noundef 8, i32 noundef 4000, i32 noundef 0, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %rb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %rb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rb, align 4
  %call6 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %rb) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ -12, %if.then4 ], [ %call1, %if.end.if.end7_crit_edge ]
  %5 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rb, align 4
  %reqbufs_count = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reqbufs_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end7 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_streamon(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #0 align 64 {
entry:
  %sink_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %src_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_capture = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12
  %pipe = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 0, i32 1
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe, align 8
  %call2 = tail call i32 @media_pipeline_start(ptr noundef %video_capture, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %subdev.i = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sink_fmt.i) #7
  %4 = call ptr @memset(ptr %sink_fmt.i, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %src_fmt.i) #7
  %5 = call ptr @memset(ptr %src_fmt.i, i32 255, i32 88)
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2, i32 1
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2, i32 2
  %pad1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 1
  %pad43.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 1
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2
  %format83.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 2
  %height90.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 2, i32 1
  %code96.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 2, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false93.i.while.cond.i_crit_edge, %if.end
  %sd.0.i = phi ptr [ %subdev.i, %if.end ], [ %24, %lor.lhs.false93.i.while.cond.i_crit_edge ]
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %sd.0.i, i32 0, i32 9
  %6 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pads.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end6_crit_edge, label %if.end.i

while.cond.i.if.end6_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i:                                         ; preds = %while.cond.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %pad1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %pad1.i, align 4
  %13 = ptrtoint ptr %sink_fmt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %sink_fmt.i, align 4
  %tobool2.not.i = icmp eq ptr %sd.0.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end24.i_crit_edge, label %if.else.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd.0.i, i32 0, i32 6
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %pad4.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %pad4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pad4.i, align 4
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %if.else.i.if.end30.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end30.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_fmt.i, align 4
  %tobool8.not.i = icmp eq ptr %19, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end30.i_crit_edge, label %if.else10.i

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.else10.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool11.not.i = icmp eq ptr %20, null
  br i1 %tobool11.not.i, label %if.else10.i.if.else17.i_crit_edge, label %land.lhs.true12.i

if.else10.i.if.else17.i_crit_edge:                ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

land.lhs.true12.i:                                ; preds = %if.else10.i
  %get_fmt13.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %get_fmt13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_fmt13.i, align 4
  %tobool14.not.i = icmp eq ptr %22, null
  br i1 %tobool14.not.i, label %land.lhs.true12.i.if.else17.i_crit_edge, label %land.lhs.true12.i.if.end24.sink.split.i_crit_edge

land.lhs.true12.i.if.end24.sink.split.i_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.sink.split.i

land.lhs.true12.i.if.else17.i_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17.i

if.else17.i:                                      ; preds = %land.lhs.true12.i.if.else17.i_crit_edge, %if.else10.i.if.else17.i_crit_edge
  br label %if.end24.sink.split.i

if.end24.sink.split.i:                            ; preds = %if.else17.i, %land.lhs.true12.i.if.end24.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %19, %if.else17.i ], [ %22, %land.lhs.true12.i.if.end24.sink.split.i_crit_edge ]
  %call21.i = call i32 %.sink.i(ptr noundef nonnull %sd.0.i, ptr noundef null, ptr noundef nonnull %sink_fmt.i) #7
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.sink.split.i, %if.end.i.if.end24.i_crit_edge
  %__result.0.i = phi i32 [ -19, %if.end.i.if.end24.i_crit_edge ], [ %call21.i, %if.end24.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.i)
  %cmp.i = icmp sgt i32 %__result.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0.i)
  %cmp27.not.i = icmp eq i32 %__result.0.i, -515
  %or.cond.i = or i1 %cmp.i, %cmp27.not.i
  br i1 %or.cond.i, label %if.end24.i.if.end30.i_crit_edge, label %if.end24.i.isp_video_pipeline_validate.exit.thread_crit_edge

if.end24.i.isp_video_pipeline_validate.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp_video_pipeline_validate.exit.thread

if.end24.i.if.end30.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end24.i.if.end30.i_crit_edge, %land.lhs.true.i.if.end30.i_crit_edge, %if.else.i.if.end30.i_crit_edge
  %call31.i = call ptr @media_entity_remote_pad(ptr noundef %7) #7
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %if.end30.i.if.end6_crit_edge, label %lor.lhs.false.i

if.end30.i.if.end6_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

lor.lhs.false.i:                                  ; preds = %if.end30.i
  %entity33.i = getelementptr inbounds %struct.media_pad, ptr %call31.i, i32 0, i32 1
  %23 = ptrtoint ptr %entity33.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entity33.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.if.end6_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.if.end6_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 2
  br i1 %cmp.i.i, label %if.else49.i, label %is_media_entity_v4l2_subdev.exit.i.if.end6_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.end6_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else49.i:                                      ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index41.i = getelementptr inbounds %struct.media_pad, ptr %call31.i, i32 0, i32 2
  %27 = ptrtoint ptr %index41.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %index41.i, align 4
  %conv42.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %pad43.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv42.i, ptr %pad43.i, align 4
  %30 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %src_fmt.i, align 4
  %ops50.i = getelementptr inbounds %struct.v4l2_subdev, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %ops50.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops50.i, align 4
  %pad51.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %pad51.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pad51.i, align 4
  %tobool52.not.i = icmp eq ptr %34, null
  br i1 %tobool52.not.i, label %if.else49.i.if.end82.i_crit_edge, label %land.lhs.true53.i

if.else49.i.if.end82.i_crit_edge:                 ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i

land.lhs.true53.i:                                ; preds = %if.else49.i
  %get_fmt56.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %get_fmt56.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_fmt56.i, align 4
  %tobool57.not.i = icmp eq ptr %36, null
  br i1 %tobool57.not.i, label %land.lhs.true53.i.if.end82.i_crit_edge, label %if.else59.i

land.lhs.true53.i.if.end82.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i

if.else59.i:                                      ; preds = %land.lhs.true53.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool60.not.i = icmp eq ptr %37, null
  br i1 %tobool60.not.i, label %if.else59.i.if.else67.i_crit_edge, label %land.lhs.true61.i

if.else59.i.if.else67.i_crit_edge:                ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else67.i

land.lhs.true61.i:                                ; preds = %if.else59.i
  %get_fmt62.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %get_fmt62.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_fmt62.i, align 4
  %tobool63.not.i = icmp eq ptr %39, null
  br i1 %tobool63.not.i, label %land.lhs.true61.i.if.else67.i_crit_edge, label %land.lhs.true61.i.if.end74.i_crit_edge

land.lhs.true61.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

land.lhs.true61.i.if.else67.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else67.i

if.else67.i:                                      ; preds = %land.lhs.true61.i.if.else67.i_crit_edge, %if.else59.i.if.else67.i_crit_edge
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else67.i, %land.lhs.true61.i.if.end74.i_crit_edge
  %.sink142.i = phi ptr [ %36, %if.else67.i ], [ %39, %land.lhs.true61.i.if.end74.i_crit_edge ]
  %call71.i = call i32 %.sink142.i(ptr noundef nonnull %24, ptr noundef null, ptr noundef nonnull %src_fmt.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call71.i)
  %cmp76.i = icmp sgt i32 %call71.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call71.i)
  %cmp79.not.i = icmp eq i32 %call71.i, -515
  %or.cond133.i = or i1 %cmp76.i, %cmp79.not.i
  br i1 %or.cond133.i, label %if.end74.i.if.end82.i_crit_edge, label %if.end74.i.isp_video_pipeline_validate.exit.thread_crit_edge

if.end74.i.isp_video_pipeline_validate.exit.thread_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp_video_pipeline_validate.exit.thread

if.end74.i.if.end82.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.end74.i.if.end82.i_crit_edge, %land.lhs.true53.i.if.end82.i_crit_edge, %if.else49.i.if.end82.i_crit_edge
  %40 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %format.i, align 4
  %42 = ptrtoint ptr %format83.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %format83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp85.not.i = icmp eq i32 %41, %43
  br i1 %cmp85.not.i, label %lor.lhs.false87.i, label %if.end82.i.isp_video_pipeline_validate.exit.thread_crit_edge

if.end82.i.isp_video_pipeline_validate.exit.thread_crit_edge: ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp_video_pipeline_validate.exit.thread

lor.lhs.false87.i:                                ; preds = %if.end82.i
  %44 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height.i, align 4
  %46 = ptrtoint ptr %height90.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height90.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp91.not.i = icmp eq i32 %45, %47
  br i1 %cmp91.not.i, label %lor.lhs.false93.i, label %lor.lhs.false87.i.isp_video_pipeline_validate.exit.thread_crit_edge

lor.lhs.false87.i.isp_video_pipeline_validate.exit.thread_crit_edge: ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp_video_pipeline_validate.exit.thread

lor.lhs.false93.i:                                ; preds = %lor.lhs.false87.i
  %48 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %code.i, align 4
  %50 = ptrtoint ptr %code96.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %code96.i, align 4
  %cmp97.not.i = icmp eq i32 %49, %51
  br i1 %cmp97.not.i, label %lor.lhs.false93.i.while.cond.i_crit_edge, label %lor.lhs.false93.i.isp_video_pipeline_validate.exit.thread_crit_edge

lor.lhs.false93.i.isp_video_pipeline_validate.exit.thread_crit_edge: ; preds = %lor.lhs.false93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp_video_pipeline_validate.exit.thread

lor.lhs.false93.i.while.cond.i_crit_edge:         ; preds = %lor.lhs.false93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

isp_video_pipeline_validate.exit.thread:          ; preds = %lor.lhs.false93.i.isp_video_pipeline_validate.exit.thread_crit_edge, %lor.lhs.false87.i.isp_video_pipeline_validate.exit.thread_crit_edge, %if.end82.i.isp_video_pipeline_validate.exit.thread_crit_edge, %if.end74.i.isp_video_pipeline_validate.exit.thread_crit_edge, %if.end24.i.isp_video_pipeline_validate.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %src_fmt.i) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sink_fmt.i) #7
  br label %p_stop

if.end6:                                          ; preds = %is_media_entity_v4l2_subdev.exit.i.if.end6_crit_edge, %lor.lhs.false.i.if.end6_crit_edge, %if.end30.i.if.end6_crit_edge, %while.cond.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %src_fmt.i) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sink_fmt.i) #7
  %call7 = call i32 @vb2_ioctl_streamon(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.p_stop_crit_edge, label %if.end10

if.end6.p_stop_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %p_stop

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %streaming = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 10
  %52 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %streaming, align 4
  br label %cleanup

p_stop:                                           ; preds = %if.end6.p_stop_crit_edge, %isp_video_pipeline_validate.exit.thread
  %ret.0 = phi i32 [ %call7, %if.end6.p_stop_crit_edge ], [ -32, %isp_video_pipeline_validate.exit.thread ]
  call void @media_pipeline_stop(ptr noundef %video_capture) #7
  br label %cleanup

cleanup:                                          ; preds = %p_stop, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %p_stop ], [ 0, %if.end10 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp_video_streamoff(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @vb2_ioctl_streamoff(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %video_capture = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12
  tail call void @media_pipeline_stop(ptr noundef %video_capture) #7
  %streaming = getelementptr inbounds %struct.fimc_isp, ptr %1, i32 0, i32 12, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %streaming, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_vidioc_querycap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @fimc_isp_video_device_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 581, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 608, i32 22}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 631, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @fimc_isp_video_device_register._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @fimc_isp_video_device_register._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @isp_video_capture_qops, !12, !"isp_video_capture_qops", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 254, i32 29}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 164, i32 4}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @isp_video_capture_buffer_prepare._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @isp_video_capture_buffer_prepare._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 97, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @isp_video_capture_start_streaming._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @isp_video_capture_start_streaming._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 141, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @isp_video_capture_stop_streaming._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @isp_video_capture_stop_streaming._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 213, i32 4}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @isp_video_capture_buffer_queue._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @isp_video_capture_buffer_queue._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @isp_video_fops, !39, !"isp_video_fops", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 335, i32 42}
!40 = !{ptr @isp_video_ioctl_ops, !41, !"isp_video_ioctl_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/exynos4-is/fimc-isp-video.c", i32 551, i32 36}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2156764153}
!52 = !{i64 2148177141}
!53 = !{i64 661964, i64 661989, i64 662011, i64 662027, i64 662039, i64 662059, i64 662083, i64 662099, i64 662111}
!54 = !{i64 2148177329}
!55 = !{!"branch_weights", i32 1, i32 2000}
