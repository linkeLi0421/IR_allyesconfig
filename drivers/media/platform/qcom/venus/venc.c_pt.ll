; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/venc.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/venc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hfi_inst_ops = type { ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.venus_format = type { i32, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.venus_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], [2 x ptr], [2 x ptr], ptr, ptr, i8, [3 x ptr], ptr, ptr, [2 x ptr], ptr, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, %struct.video_firmware, %struct.mutex, %struct.list_head, %struct.atomic_t, i32, %struct.completion, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, %struct.delayed_work, [32 x %struct.hfi_plat_caps], i32, i32, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_firmware = type { ptr, ptr, i32, i32, i32 }
%struct.hfi_plat_caps = type { i32, i32, i8, i32, [32 x %struct.hfi_capability], i32, [16 x %struct.hfi_profile_level], i32, [32 x %struct.raw_formats], i8 }
%struct.hfi_capability = type { i32, i32, i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.raw_formats = type { i32, i32 }
%struct.venus_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.venus_inst = type { %struct.list_head, %struct.mutex, ptr, %struct.clock_data, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i8, %struct.v4l2_ctrl_handler, %union.anon.120, %struct.v4l2_fh, i32, i32, i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i8, i8, i8, i32, %struct.wait_queue_head, i32, i32, [32 x %struct.venus_ts_metadata], [32 x i32], i64, %struct.v4l2_fract, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, i32, %struct.completion, i32, i8, ptr, i32, %union.hfi_get_property, i8, i32, i32, i8, i8, i32, %struct.ida }
%struct.clock_data = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%union.anon.120 = type { %struct.vdec_controls, [224 x i8] }
%struct.vdec_controls = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.venus_ts_metadata = type { i8, i64, i64, i32, %struct.v4l2_timecode }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_fract = type { i32, i32 }
%union.hfi_get_property = type { [11 x %struct.hfi_buffer_requirements] }
%struct.hfi_buffer_requirements = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.venus_resources = type { i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [4 x ptr], i32, [2 x ptr], [2 x ptr], i32, [3 x ptr], i32, ptr, i32, [2 x ptr], i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.venus_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32, %struct.list_head, i32, %struct.list_head }
%struct.hfi_intra_period = type { i32, i32 }
%struct.hfi_framerate = type { i32, i32 }
%struct.hfi_bitrate = type { i32, i32 }
%struct.hfi_idr_period = type { i32 }
%struct.hfi_quantization = type { i32, i32, i32, i32 }
%struct.hfi_quantization_range = type { i32, i32, i32 }
%struct.hfi_enable = type { i32 }
%struct.hfi_ltr_mode = type { i32, i32, i32 }
%struct.hfi_intra_refresh = type { i32, i32, i32, i32 }
%struct.hfi_h264_vui_timing_info = type { i32, i32, i32 }
%struct.hfi_h264_entropy_control = type { i32, i32 }
%struct.hfi_h264_db_control = type { i32, i32, i32 }
%struct.hfi_h264_8x8_transform = type { i32 }
%struct.hfi_hdr10_pq_sei = type { %struct.hfi_mastering_display_colour_sei_payload, %struct.hfi_content_light_level_sei_payload }
%struct.hfi_mastering_display_colour_sei_payload = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.hfi_content_light_level_sei_payload = type { i32, i32 }
%struct.hfi_heic_frame_quality = type { i32, [3 x i32] }
%struct.venc_controls = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.anon.121, %struct.anon.122, i32, i32, %struct.v4l2_ctrl_hdr10_cll_info, %struct.v4l2_ctrl_hdr10_mastering_display }
%struct.anon.121 = type { i32, i32, i32, i32, i32 }
%struct.anon.122 = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_hdr10_cll_info = type { i16, i16 }
%struct.v4l2_ctrl_hdr10_mastering_display = type { [3 x i16], [3 x i16], i16, i16, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.117 }
%union.anon.117 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.118, [2 x i32] }
%union.anon.118 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.119, [2 x i32] }
%union.anon.119 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@__initcall__kmod_venus_enc__317_1536_qcom_venus_enc_driver_init6 = internal global ptr @qcom_venus_enc_driver_init, section ".initcall6.init", align 4
@qcom_venus_enc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @venc_probe, ptr @venc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @venc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_venus_enc_driver_exit = internal global ptr @qcom_venus_enc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias318 = internal constant [44 x i8] c"venus_enc.alias=platform:qcom-venus-encoder\00", section ".modinfo", align 1
@__UNIQUE_ID_description319 = internal constant [58 x i8] c"venus_enc.description=Qualcomm Venus video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file320 = internal constant [59 x i8] c"venus_enc.file=drivers/media/platform/qcom/venus/venus-enc\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [25 x i8] c"venus_enc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom-venus-encoder\00", [45 x i8] zeroinitializer }, align 32
@venc_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"venus-encoder\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@venc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_runtime_suspend, ptr @venc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@venc_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @venc_open, ptr @venc_close }, [60 x i8] zeroinitializer }, align 32
@venc_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @venc_querycap, ptr @venc_enum_fmt, ptr null, ptr @venc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_g_fmt, ptr @venc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_s_fmt, ptr @venc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_try_fmt, ptr @venc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_g_selection, ptr @venc_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_g_parm, ptr @venc_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_enum_framesizes, ptr @venc_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@venc_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&inst->lock\00", [20 x i8] zeroinitializer }, align 32
@venc_hfi_ops = internal constant { %struct.hfi_inst_ops, [20 x i8] } { %struct.hfi_inst_ops { ptr @venc_buf_done, ptr @venc_event_notify, ptr null }, [20 x i8] zeroinitializer }, align 32
@venc_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @venus_helper_m2m_device_run, ptr null, ptr @venus_helper_m2m_job_abort }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@venc_event_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1263, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enc: event session error %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venc_event_notify\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/platform/qcom/venus/venc.c\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@venc_event_notify._entry_ptr = internal global ptr @venc_event_notify._entry, section ".printk_index", align 4
@venc_formats = internal constant { [6 x %struct.venus_format], [32 x i8] } { [6 x %struct.venus_format] [%struct.venus_format { i32 842094158, i32 1, i32 10, i32 0 }, %struct.venus_format { i32 877088845, i32 1, i32 9, i32 0 }, %struct.venus_format { i32 859189832, i32 1, i32 9, i32 0 }, %struct.venus_format { i32 875967048, i32 1, i32 9, i32 0 }, %struct.venus_format { i32 808996950, i32 1, i32 9, i32 0 }, %struct.venus_format { i32 1129727304, i32 1, i32 9, i32 0 }], [32 x i8] zeroinitializer }, align 32
@venc_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @venc_queue_setup, ptr null, ptr null, ptr null, ptr @venc_buf_init, ptr @venus_helper_vb2_buf_prepare, ptr null, ptr @venc_buf_cleanup, ptr @venc_start_streaming, ptr @venus_helper_vb2_stop_streaming, ptr @venc_vb2_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-venus\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Qualcomm Venus video encoder\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"platform:qcom-venus\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 64]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 32, i64 4096, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 32, i64 808996950, i64 842094158, i64 859189832, i64 875967048, i64 877088845, i64 1129727304]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 32, i64 808996950, i64 842094158, i64 859189832, i64 875967048, i64 877088845, i64 1129727304]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 808996950, i64 842094158, i64 859189832, i64 875967048, i64 877088845, i64 1129727304]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 808996950, i64 842094158, i64 859189832, i64 875967048, i64 877088845, i64 1129727304]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 808996950, i64 842094158, i64 859189832, i64 875967048, i64 877088845, i64 1129727304]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"qcom_venus_enc_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1527, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1531, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"venc_dt_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1521, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"venc_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1515, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"venc_fops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1416, i32 42 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"venc_ioctl_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 512, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1340, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"venc_hfi_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1267, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"venc_m2m_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1272, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1163, i32 7 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1263, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"venc_formats\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 34, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"venc_vb2_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1209, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 142, i32 23 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 143, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [44 x i8] c"../drivers/media/platform/qcom/venus/venc.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 144, i32 25 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias318, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__exitcall_qcom_venus_enc_driver_exit, ptr @__initcall__kmod_venus_enc__317_1536_qcom_venus_enc_driver_init6, ptr @qcom_venus_enc_driver_exit, ptr @venc_event_notify._entry, ptr @venc_event_notify._entry_ptr, ptr @qcom_venus_enc_driver, ptr @.str, ptr @venc_dt_match, ptr @venc_pm_ops, ptr @venc_fops, ptr @venc_ioctl_ops, ptr @venc_open.__key, ptr @.str.1, ptr @venc_hfi_ops, ptr @venc_m2m_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @venc_formats, ptr @venc_vb2_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_venus_enc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_hfi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_event_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_formats to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_venus_enc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_venus_enc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_venus_enc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_venus_enc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %driver_data.i.i, align 4
  %pm_ops = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 37
  %5 = ptrtoint ptr %pm_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pm_ops, align 4
  %venc_get = getelementptr inbounds %struct.venus_pm_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %venc_get to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %venc_get, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %if.then7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  %call10 = tail call i32 %8(ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.if.end14_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %call15 = tail call ptr @video_device_alloc() #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %name = getelementptr inbounds %struct.video_device, ptr %call15, i32 0, i32 12
  %call19 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #10
  %release = getelementptr inbounds %struct.video_device, ptr %call15, i32 0, i32 23
  %9 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @video_device_release, ptr %release, align 8
  %fops = getelementptr inbounds %struct.video_device, ptr %call15, i32 0, i32 3
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @venc_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %call15, i32 0, i32 24
  %11 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @venc_ioctl_ops, ptr %ioctl_ops, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call15, i32 0, i32 14
  %12 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %vfl_dir, align 4
  %v4l2_dev = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 21
  %v4l2_dev20 = getelementptr inbounds %struct.video_device, ptr %call15, i32 0, i32 7
  %13 = ptrtoint ptr %v4l2_dev20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %v4l2_dev, ptr %v4l2_dev20, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call15, i32 0, i32 4
  %14 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 67125248, ptr %device_caps, align 8
  %call.i = tail call i32 @__video_register_device(ptr noundef nonnull %call15, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end24, label %err_vdev_release

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %vdev_enc = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 20
  %15 = ptrtoint ptr %vdev_enc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call15, ptr %vdev_enc, align 4
  %dev_enc = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 25
  %16 = ptrtoint ptr %dev_enc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev_enc, align 4
  %driver_data.i.i57 = getelementptr inbounds %struct.video_device, ptr %call15, i32 0, i32 5, i32 8
  %17 = ptrtoint ptr %driver_data.i.i57 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %driver_data.i.i57, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  br label %cleanup

err_vdev_release:                                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @video_device_release(ptr noundef nonnull %call15) #10
  br label %cleanup

cleanup:                                          ; preds = %err_vdev_release, %if.end24, %if.end14.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err_vdev_release ], [ 0, %if.end24 ], [ -517, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ], [ %call10, %if.then7.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %vdev_enc = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %vdev_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev_enc, align 4
  tail call void @video_unregister_device(ptr noundef %5) #10
  %dev_enc = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %dev_enc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_enc, align 4
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #10
  %pm_ops = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 37
  %8 = ptrtoint ptr %pm_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pm_ops, align 4
  %venc_put = getelementptr inbounds %struct.venus_pm_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %venc_put to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %venc_put, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_enc, align 4
  tail call void %11(ptr noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3208) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpbbufs = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %dpbbufs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %dpbbufs, ptr %dpbbufs, align 4
  %prev.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dpbbufs, ptr %prev.i, align 8
  %registeredbufs = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %registeredbufs to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %registeredbufs, ptr %registeredbufs, align 4
  %prev.i75 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %registeredbufs, ptr %prev.i75, align 8
  %internalbufs = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %internalbufs to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %internalbufs, ptr %internalbufs, align 4
  %prev.i76 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %internalbufs, ptr %prev.i76, align 8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i77 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i77, align 4
  %lock = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @venc_open.__key) #10
  %core2 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %core2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %core2, align 4
  %session_type = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 55
  %12 = ptrtoint ptr %session_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %session_type, align 4
  %clk_data = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %clk_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %clk_data, align 8
  %core_acquired = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 57
  %14 = ptrtoint ptr %core_acquired to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %core_acquired, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %core_acquired, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %nonblock = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 9
  %and = lshr i32 %16, 11
  %17 = trunc i32 %and to i8
  %18 = and i8 %17, 1
  %19 = ptrtoint ptr %nonblock to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %nonblock, align 8
  tail call void @venus_helper_init_instance(ptr noundef nonnull %call7.i.i) #10
  %call4 = tail call i32 @venc_ctrl_init(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @hfi_session_create(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @venc_hfi_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_ctrl_deinit_crit_edge

if.end7.err_ctrl_deinit_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ctrl_deinit

if.end11:                                         ; preds = %if.end7
  %fmt_cap.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 34
  %20 = ptrtoint ptr %fmt_cap.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr getelementptr inbounds ([6 x %struct.venus_format], ptr @venc_formats, i32 0, i32 3), ptr %fmt_cap.i, align 4
  %fmt_out.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 33
  %21 = ptrtoint ptr %fmt_out.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @venc_formats, ptr %fmt_out.i, align 8
  %width.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 15
  %22 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1280, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 736, ptr %height.i, align 4
  %out_width.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %out_width.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1280, ptr %out_width.i, align 4
  %out_height.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 20
  %25 = ptrtoint ptr %out_height.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 720, ptr %out_height.i, align 8
  %fps.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 31
  %26 = ptrtoint ptr %fps.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 15, ptr %fps.i, align 8
  %timeperframe.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 32
  %27 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %timeperframe.i, align 8
  %denominator.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 32, i32 1
  %28 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 15, ptr %denominator.i, align 4
  %hfi_codec.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 45
  %29 = ptrtoint ptr %hfi_codec.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %hfi_codec.i, align 8
  %call12 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @venc_m2m_ops) #10
  %m2m_dev = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 48
  %30 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call12, ptr %m2m_dev, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end11.err_session_destroy_crit_edge, label %if.end18

if.end11.err_session_destroy_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_session_destroy

if.end18:                                         ; preds = %if.end11
  %call20 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %call12, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @m2m_queue_init) #10
  %m2m_ctx = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 49
  %31 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call20, ptr %m2m_ctx, align 8
  %cmp.i78 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %33) #10
  br label %err_session_destroy

if.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %fh = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 12
  %vdev_enc = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 20
  %34 = ptrtoint ptr %vdev_enc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdev_enc, align 4
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %35) #10
  %ctrl_handler = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 10
  %ctrl_handler28 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 12, i32 2
  %36 = ptrtoint ptr %ctrl_handler28 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ctrl_handler, ptr %ctrl_handler28, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #10
  %37 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m2m_ctx, align 8
  %m2m_ctx32 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 12, i32 10
  %39 = ptrtoint ptr %m2m_ctx32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %m2m_ctx32, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %40 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %fh, ptr %private_data, align 4
  br label %cleanup

err_session_destroy:                              ; preds = %if.then23, %if.end11.err_session_destroy_crit_edge
  %ret.0.in = phi ptr [ %call20, %if.then23 ], [ %call12, %if.end11.err_session_destroy_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  tail call void @hfi_session_destroy(ptr noundef nonnull %call7.i.i) #10
  br label %err_ctrl_deinit

err_ctrl_deinit:                                  ; preds = %err_session_destroy, %if.end7.err_ctrl_deinit_crit_edge
  %ret.1 = phi i32 [ %call8, %if.end7.err_ctrl_deinit_crit_edge ], [ %ret.0, %err_session_destroy ]
  tail call void @venc_ctrl_deinit(ptr noundef nonnull %call7.i.i) #10
  br label %err_free

err_free:                                         ; preds = %err_ctrl_deinit, %if.end.err_free_crit_edge
  %ret.2 = phi i32 [ %call4, %if.end.err_free_crit_edge ], [ %ret.1, %err_ctrl_deinit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_free ], [ 0, %if.end26 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_close(ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %core1.i = getelementptr i8, ptr %1, i32 -548
  %2 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1.i, align 4
  %dev_enc.i = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %dev_enc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_enc.i, align 4
  %pm_lock.i = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i, i32 noundef 0) #10
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.venc_pm_get.exit_crit_edge

entry.venc_pm_get.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_pm_get.exit

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.venc_pm_get.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.venc_pm_get.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_pm_get.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  br label %venc_pm_get.exit

venc_pm_get.exit:                                 ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.venc_pm_get.exit_crit_edge, %entry.venc_pm_get.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  tail call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  %m2m_ctx = getelementptr i8, ptr %1, i32 2056
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_ctx_release(ptr noundef %8) #10
  %m2m_dev = getelementptr i8, ptr %1, i32 2052
  %9 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %10) #10
  tail call void @venc_ctrl_deinit(ptr noundef %add.ptr.i) #10
  tail call void @hfi_session_destroy(ptr noundef %add.ptr.i) #10
  %lock = getelementptr i8, ptr %1, i32 -640
  tail call void @mutex_destroy(ptr noundef %lock) #10
  tail call void @v4l2_fh_del(ptr noundef %1) #10
  tail call void @v4l2_fh_exit(ptr noundef %1) #10
  %11 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core1.i, align 4
  %dev_enc.i14 = getelementptr inbounds %struct.venus_core, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %dev_enc.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_enc.i14, align 4
  %pm_lock.i15 = getelementptr inbounds %struct.venus_core, ptr %12, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i15, i32 noundef 0) #10
  %call.i8.i = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #10
  tail call void @mutex_unlock(ptr noundef %pm_lock.i15) #10
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_init_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venc_ctrl_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m2m_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 19, ptr %io_modes, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %2 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16384, ptr %timestamp_flags, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @venc_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %4 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %5 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %6 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 776, ptr %buf_struct_size, align 4
  %allow_zero_bytesused = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 4
  %7 = ptrtoint ptr %allow_zero_bytesused to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %allow_zero_bytesused, align 4
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %allow_zero_bytesused, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 15
  %8 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %min_buffers_needed, align 4
  %core = getelementptr inbounds %struct.venus_inst, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.venus_core, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev1, align 4
  %14 = load ptr, ptr %core, align 4
  %res = getelementptr inbounds %struct.venus_core, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set5 = or i16 %bf.load, -28672
  %19 = ptrtoint ptr %allow_zero_bytesused to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.set5, ptr %allow_zero_bytesused, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 9, ptr %dst_vq, align 4
  %io_modes9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %21 = ptrtoint ptr %io_modes9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 19, ptr %io_modes9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %22 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16384, ptr %timestamp_flags10, align 4
  %ops11 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %23 = ptrtoint ptr %ops11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @venc_vb2_ops, ptr %ops11, align 4
  %mem_ops12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %24 = ptrtoint ptr %mem_ops12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops12, align 4
  %drv_priv13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %25 = ptrtoint ptr %drv_priv13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %priv, ptr %drv_priv13, align 4
  %buf_struct_size14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %26 = ptrtoint ptr %buf_struct_size14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 776, ptr %buf_struct_size14, align 4
  %allow_zero_bytesused15 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 4
  %27 = ptrtoint ptr %allow_zero_bytesused15 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load16 = load i16, ptr %allow_zero_bytesused15, align 4
  %bf.set18 = or i16 %bf.load16, 4096
  store i16 %bf.set18, ptr %allow_zero_bytesused15, align 4
  %min_buffers_needed19 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 15
  %28 = ptrtoint ptr %min_buffers_needed19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %min_buffers_needed19, align 4
  %29 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core, align 4
  %dev21 = getelementptr inbounds %struct.venus_core, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev21, align 4
  %dev22 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %33 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %dev22, align 4
  %call23 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end7 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfi_session_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venc_ctrl_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venc_buf_done(ptr noundef %inst, i32 noundef %buf_type, i32 noundef %tag, i32 noundef %bytesused, i32 noundef %data_offset, i32 noundef %flags, i32 noundef %hfi_flags, i64 noundef %timestamp_us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i, align 4
  %dev_enc.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %dev_enc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_enc.i, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %buf_type)
  %cmp = icmp eq i32 %buf_type, 1
  %. = select i1 %cmp, i32 10, i32 9
  %call = tail call ptr @venus_helper_find_buf(ptr noundef %inst, i32 noundef %., i32 noundef %tag) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %flags3 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags3, align 8
  br i1 %cmp, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.end2
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.then5.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.then5.vb2_set_plane_payload.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.then5
  %add = add i32 %data_offset, %bytesused
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp1.i = icmp ult i32 %9, %add
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !62

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %11, %if.then38.i ], [ %add, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.then5.vb2_set_plane_payload.exit_crit_edge
  %data_offset6 = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 10, i32 0, i32 7
  %13 = ptrtoint ptr %data_offset6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %data_offset, ptr %data_offset6, align 4
  %mul = mul i64 %timestamp_us, 1000
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %mul, ptr %timestamp, align 8
  %sequence_cap = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 46
  %15 = ptrtoint ptr %sequence_cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sequence_cap, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %sequence_cap, align 4
  br label %if.end10

if.else7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %sequence_out = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 47
  %17 = ptrtoint ptr %sequence_out to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sequence_out, align 8
  %inc8 = add i32 %18, 1
  store i32 %inc8, ptr %sequence_out, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %vb2_set_plane_payload.exit
  %.sink = phi i32 [ %18, %if.else7 ], [ %16, %vb2_set_plane_payload.exit ]
  %sequence9 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %sequence9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %sequence9, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %call, i32 noundef 5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venc_event_notify(ptr noundef %inst, i32 noundef %event, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev_enc = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %dev_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_enc, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %event)
  %cmp = icmp eq i32 %event, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %session_error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 53
  %5 = ptrtoint ptr %session_error to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %session_error, align 4
  tail call void @venus_helper_vb2_queue_error(ptr noundef %inst) #10
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @venus_helper_find_buf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_vb2_queue_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_m2m_device_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_m2m_job_abort(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  %bufreq.i = alloca %struct.hfi_buffer_requirements, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %core1 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end25, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then.if.end24_crit_edge [
    i32 10, label %land.lhs.true
    i32 9, label %land.lhs.true7
  ]

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then
  %fmt_out = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fmt_out, align 8
  %num_planes2 = getelementptr inbounds %struct.venus_format, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %num_planes2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %12)
  %cmp3.not = icmp eq i32 %5, %12
  br i1 %cmp3.not, label %land.lhs.true14, label %land.lhs.true.cleanup114_crit_edge

land.lhs.true.cleanup114_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup114

land.lhs.true7:                                   ; preds = %if.then
  %fmt_cap = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fmt_cap, align 4
  %num_planes8 = getelementptr inbounds %struct.venus_format, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %num_planes8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_planes8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %16)
  %cmp9.not = icmp eq i32 %5, %16
  br i1 %cmp9.not, label %land.lhs.true20, label %land.lhs.true7.cleanup114_crit_edge

land.lhs.true7.cleanup114_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup114

land.lhs.true14:                                  ; preds = %land.lhs.true
  %17 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizes, align 4
  %input_buf_size = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 37
  %19 = ptrtoint ptr %input_buf_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %input_buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp15 = icmp ult i32 %18, %20
  br i1 %cmp15, label %land.lhs.true14.cleanup114_crit_edge, label %land.lhs.true14.if.end24_crit_edge

land.lhs.true14.if.end24_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true14.cleanup114_crit_edge:             ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup114

land.lhs.true20:                                  ; preds = %land.lhs.true7
  %21 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sizes, align 4
  %output_buf_size = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 38
  %23 = ptrtoint ptr %output_buf_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %output_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp22 = icmp ult i32 %22, %24
  br i1 %cmp22, label %land.lhs.true20.cleanup114_crit_edge, label %land.lhs.true20.if.end24_crit_edge

land.lhs.true20.if.end24_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true20.cleanup114_crit_edge:             ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup114

if.end24:                                         ; preds = %land.lhs.true20.if.end24_crit_edge, %land.lhs.true14.if.end24_crit_edge, %if.then.if.end24_crit_edge
  br label %cleanup114

if.end25:                                         ; preds = %entry
  %sys_error = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 34
  %25 = ptrtoint ptr %sys_error to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %sys_error, align 4
  %and1.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool27.not = icmp eq i32 %and1.i, 0
  br i1 %tobool27.not, label %if.end25.if.end55_crit_edge, label %if.then28

if.end25.if.end55_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then28:                                        ; preds = %if.end25
  %nonblock = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %nonblock to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nonblock, align 8, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool29.not = icmp eq i8 %28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then28.cleanup114_crit_edge

if.then28.cleanup114_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup114

if.end31:                                         ; preds = %if.then28
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 998) #10
  %29 = ptrtoint ptr %sys_error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %sys_error, align 4
  %and1.i193 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i193)
  %tobool37.not = icmp eq i32 %and1.i193, 0
  br i1 %tobool37.not, label %if.end31.if.end55_crit_edge, label %if.then38

if.end31.if.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then38:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %31 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %sys_err_done = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 35
  %call40229 = call i32 @prepare_to_wait_event(ptr noundef %sys_err_done, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %32 = ptrtoint ptr %sys_error to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %sys_error, align 4
  %and1.i194230 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i194230)
  %tobool43.not231 = icmp eq i32 %and1.i194230, 0
  br i1 %tobool43.not231, label %if.then38.if.end50.thread219_crit_edge, label %if.then38.if.end45_crit_edge

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  br label %if.end45

if.then38.if.end50.thread219_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.thread219

if.end45:                                         ; preds = %cleanup.if.end45_crit_edge, %if.then38.if.end45_crit_edge
  %call40232 = phi i32 [ %call40, %cleanup.if.end45_crit_edge ], [ %call40229, %if.then38.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40232)
  %tobool46.not = icmp eq i32 %call40232, 0
  br i1 %tobool46.not, label %cleanup, label %if.end50

cleanup:                                          ; preds = %if.end45
  call void @schedule() #10
  %call40 = call i32 @prepare_to_wait_event(ptr noundef %sys_err_done, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %34 = ptrtoint ptr %sys_error to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %sys_error, align 4
  %and1.i194 = and i32 %35, 1
  %tobool43.not = icmp eq i32 %and1.i194, 0
  br i1 %tobool43.not, label %cleanup.if.end50.thread219_crit_edge, label %cleanup.if.end45_crit_edge

cleanup.if.end45_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

cleanup.if.end50.thread219_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.thread219

if.end50.thread219:                               ; preds = %cleanup.if.end50.thread219_crit_edge, %if.then38.if.end50.thread219_crit_edge
  call void @finish_wait(ptr noundef %sys_err_done, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end55

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup114

if.end55:                                         ; preds = %if.end50.thread219, %if.end31.if.end55_crit_edge, %if.end25.if.end55_crit_edge
  %36 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core1, align 4
  %dev_enc.i = getelementptr inbounds %struct.venus_core, ptr %37, i32 0, i32 25
  %38 = ptrtoint ptr %dev_enc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_enc.i, align 4
  %pm_lock.i = getelementptr inbounds %struct.venus_core, ptr %37, i32 0, i32 38
  call void @mutex_lock_nested(ptr noundef %pm_lock.i, i32 noundef 0) #10
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %39, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end59

if.then.i.i:                                      ; preds = %if.end55
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.venc_pm_get.exit.thread_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.venc_pm_get.exit.thread_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_pm_get.exit.thread

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  br label %venc_pm_get.exit.thread

venc_pm_get.exit.thread:                          ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.venc_pm_get.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  br label %cleanup114

if.end59:                                         ; preds = %if.end55
  call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  %lock = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call.i = call i32 @venus_helper_session_init(ptr noundef %1) #10
  %41 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call.i, label %if.end59.put_power_crit_edge [
    i32 -114, label %if.end59.if.end64_crit_edge
    i32 0, label %if.end2.i
  ]

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.end59.put_power_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_power

if.end2.i:                                        ; preds = %if.end59
  %out_width.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %out_width.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %out_width.i, align 4
  %out_height.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 20
  %44 = ptrtoint ptr %out_height.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %out_height.i, align 8
  %call3.i = call i32 @venus_helper_set_stride(ptr noundef %1, i32 noundef %43, i32 noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end2.i.deinit.i_crit_edge

if.end2.i.deinit.i_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %deinit.i

if.end6.i:                                        ; preds = %if.end2.i
  %width.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 16
  %48 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height.i, align 4
  %call7.i = call i32 @venus_helper_set_input_resolution(ptr noundef %1, i32 noundef %47, i32 noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.deinit.i_crit_edge

if.end6.i.deinit.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %deinit.i

if.end10.i:                                       ; preds = %if.end6.i
  %50 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %width.i, align 8
  %52 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height.i, align 4
  %call13.i = call i32 @venus_helper_set_output_resolution(ptr noundef %1, i32 noundef %51, i32 noundef %53, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end10.i.deinit.i_crit_edge

if.end10.i.deinit.i_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %deinit.i

if.end16.i:                                       ; preds = %if.end10.i
  %fmt_out.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 33
  %54 = ptrtoint ptr %fmt_out.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fmt_out.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %call17.i = call i32 @venus_helper_set_color_format(ptr noundef %1, i32 noundef %57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.deinit.i_crit_edge

if.end16.i.deinit.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %deinit.i

if.end20.i:                                       ; preds = %if.end16.i
  %call21.i = call fastcc i32 @venc_set_properties(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end64_crit_edge, label %if.end20.i.deinit.i_crit_edge

if.end20.i.deinit.i_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %deinit.i

if.end20.i.if.end64_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

deinit.i:                                         ; preds = %if.end20.i.deinit.i_crit_edge, %if.end16.i.deinit.i_crit_edge, %if.end10.i.deinit.i_crit_edge, %if.end6.i.deinit.i_crit_edge, %if.end2.i.deinit.i_crit_edge
  %ret.0.i = phi i32 [ %call3.i, %if.end2.i.deinit.i_crit_edge ], [ %call7.i, %if.end6.i.deinit.i_crit_edge ], [ %call13.i, %if.end10.i.deinit.i_crit_edge ], [ %call17.i, %if.end16.i.deinit.i_crit_edge ], [ %call21.i, %if.end20.i.deinit.i_crit_edge ]
  %call25.i = call i32 @hfi_session_deinit(ptr noundef %1) #10
  br label %put_power

if.end64:                                         ; preds = %if.end20.i.if.end64_crit_edge, %if.end59.if.end64_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  %58 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %core1, align 4
  %dev_enc.i196 = getelementptr inbounds %struct.venus_core, ptr %59, i32 0, i32 25
  %60 = ptrtoint ptr %dev_enc.i196 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_enc.i196, align 4
  %pm_lock.i197 = getelementptr inbounds %struct.venus_core, ptr %59, i32 0, i32 38
  call void @mutex_lock_nested(ptr noundef %pm_lock.i197, i32 noundef 0) #10
  %call.i8.i = call i32 @__pm_runtime_idle(ptr noundef %61, i32 noundef 4) #10
  call void @mutex_unlock(ptr noundef %pm_lock.i197) #10
  %62 = call i32 @llvm.smin.i32(i32 %call.i8.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i8.i)
  %tobool66.not = icmp sgt i32 %call.i8.i, -1
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup114_crit_edge

if.end64.cleanup114_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup114

if.end68:                                         ; preds = %if.end64
  %63 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %q, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %64, label %if.end68.cleanup114_crit_edge [
    i32 10, label %sw.bb
    i32 9, label %sw.bb89
  ]

if.end68.cleanup114_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup114

sw.bb:                                            ; preds = %if.end68
  %fmt_out70 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 33
  %66 = ptrtoint ptr %fmt_out70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fmt_out70, align 8
  %num_planes71 = getelementptr inbounds %struct.venus_format, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %num_planes71 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_planes71, align 4
  %70 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %num_planes, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bufreq.i) #10
  %71 = call ptr @memset(ptr %bufreq.i, i32 255, i32 32)
  %call.i199 = call i32 @venus_helper_get_bufreq(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %bufreq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i, label %if.end75, label %venc_out_num_buffers.exit

venc_out_num_buffers.exit:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bufreq.i) #10
  br label %cleanup114

if.end75:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %72 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq.i, i32 0, i32 5
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bufreq.i) #10
  %75 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_buffers, align 4
  %77 = call i32 @llvm.umax.i32(i32 %74, i32 %76)
  %78 = call i32 @llvm.umax.i32(i32 %77, i32 4)
  %79 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %num_buffers, align 4
  %num_input_bufs = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 35
  %80 = ptrtoint ptr %num_input_bufs to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %78, ptr %num_input_bufs, align 8
  %81 = ptrtoint ptr %fmt_out70 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fmt_out70, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %out_width = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 19
  %85 = ptrtoint ptr %out_width to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %out_width, align 4
  %out_height = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 20
  %87 = ptrtoint ptr %out_height to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %out_height, align 8
  %call85 = call i32 @venus_helper_get_framesz(i32 noundef %84, i32 noundef %86, i32 noundef %88) #10
  %89 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call85, ptr %sizes, align 4
  %input_buf_size88 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 37
  %90 = ptrtoint ptr %input_buf_size88 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call85, ptr %input_buf_size88, align 8
  br label %cleanup114

sw.bb89:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_cap90 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 34
  %91 = ptrtoint ptr %fmt_cap90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fmt_cap90, align 4
  %num_planes91 = getelementptr inbounds %struct.venus_format, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %num_planes91 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_planes91, align 4
  %95 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %num_planes, align 4
  %96 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_buffers, align 4
  %98 = call i32 @llvm.umax.i32(i32 %97, i32 4)
  %99 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %num_buffers, align 4
  %num_output_bufs = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 36
  %100 = ptrtoint ptr %num_output_bufs to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %98, ptr %num_output_bufs, align 4
  %101 = ptrtoint ptr %fmt_cap90 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fmt_cap90, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %width = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 15
  %105 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 16
  %107 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %height, align 4
  %call100 = call i32 @venus_helper_get_framesz(i32 noundef %104, i32 noundef %106, i32 noundef %108) #10
  %109 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call100, ptr %sizes, align 4
  %output_buf_size103 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 38
  %110 = ptrtoint ptr %output_buf_size103 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %output_buf_size103, align 4
  %112 = call i32 @llvm.umax.i32(i32 %call100, i32 %111)
  %113 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %sizes, align 4
  %114 = ptrtoint ptr %output_buf_size103 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %112, ptr %output_buf_size103, align 4
  br label %cleanup114

put_power:                                        ; preds = %deinit.i, %if.end59.put_power_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %deinit.i ], [ %call.i, %if.end59.put_power_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  %115 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %core1, align 4
  %dev_enc.i201 = getelementptr inbounds %struct.venus_core, ptr %116, i32 0, i32 25
  %117 = ptrtoint ptr %dev_enc.i201 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_enc.i201, align 4
  %pm_lock.i202 = getelementptr inbounds %struct.venus_core, ptr %116, i32 0, i32 38
  call void @mutex_lock_nested(ptr noundef %pm_lock.i202, i32 noundef 0) #10
  %call.i8.i203 = call i32 @__pm_runtime_idle(ptr noundef %118, i32 noundef 4) #10
  call void @mutex_unlock(ptr noundef %pm_lock.i202) #10
  br label %cleanup114

cleanup114:                                       ; preds = %put_power, %sw.bb89, %if.end75, %venc_out_num_buffers.exit, %if.end68.cleanup114_crit_edge, %if.end64.cleanup114_crit_edge, %venc_pm_get.exit.thread, %if.end50, %if.then28.cleanup114_crit_edge, %if.end24, %land.lhs.true20.cleanup114_crit_edge, %land.lhs.true14.cleanup114_crit_edge, %land.lhs.true7.cleanup114_crit_edge, %land.lhs.true.cleanup114_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %retval.0.i, %put_power ], [ -22, %land.lhs.true.cleanup114_crit_edge ], [ -22, %land.lhs.true7.cleanup114_crit_edge ], [ -22, %land.lhs.true14.cleanup114_crit_edge ], [ -22, %land.lhs.true20.cleanup114_crit_edge ], [ -11, %if.then28.cleanup114_crit_edge ], [ %call40232, %if.end50 ], [ %62, %if.end64.cleanup114_crit_edge ], [ 0, %sw.bb89 ], [ %call.i199, %venc_out_num_buffers.exit ], [ 0, %if.end75 ], [ -22, %if.end68.cleanup114_crit_edge ], [ %call.i.i, %venc_pm_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_buf_init(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %buf_count = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_count, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %buf_count, align 8
  %call1 = tail call i32 @venus_helper_vb2_buf_init(ptr noundef %vb) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_vb2_buf_prepare(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venc_buf_cleanup(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %lock = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %type = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp = icmp eq i32 %5, 9
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %registeredbufs = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %registeredbufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %registeredbufs, align 4
  %cmp.i.not = icmp eq ptr %7, %registeredbufs
  br i1 %cmp.i.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.then
  %reg_list = getelementptr inbounds %struct.venus_buffer, ptr %vb, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %reg_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then5.list_del_init.exit_crit_edge

if.then5.list_del_init.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.venus_buffer, ptr %vb, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %reg_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then5.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %reg_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %reg_list, ptr %reg_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.venus_buffer, ptr %vb, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reg_list, ptr %prev.i3.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %list_del_init.exit, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %buf_count = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 28
  %16 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_count, align 8
  %dec = add i32 %17, -1
  store i32 %dec, ptr %buf_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %if.then10, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  %core1.i.i = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %core1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core1.i.i, align 4
  %dev_enc.i.i = getelementptr inbounds %struct.venus_core, ptr %19, i32 0, i32 25
  %20 = ptrtoint ptr %dev_enc.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_enc.i.i, align 4
  %pm_lock.i.i = getelementptr inbounds %struct.venus_core, ptr %19, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i.i, i32 noundef 0) #10
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then10.venc_pm_get.exit.i_crit_edge

if.then10.venc_pm_get.exit.i_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_pm_get.exit.i

if.then.i.i.i:                                    ; preds = %if.then10
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #10, !srcloc !60
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.venc_pm_get.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.venc_pm_get.exit.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_pm_get.exit.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  br label %venc_pm_get.exit.i

venc_pm_get.exit.i:                               ; preds = %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.venc_pm_get.exit.i_crit_edge, %if.then10.venc_pm_get.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm_lock.i.i) #10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call1.i = tail call i32 @hfi_session_deinit(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %venc_pm_get.exit.i.if.then.i_crit_edge

venc_pm_get.exit.i.if.then.i_crit_edge:           ; preds = %venc_pm_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %venc_pm_get.exit.i
  %session_error.i = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 53
  %23 = ptrtoint ptr %session_error.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %session_error.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool2.not.i = icmp eq i8 %24, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %venc_pm_get.exit.i.if.then.i_crit_edge
  %call3.i = tail call i32 @hfi_session_abort(ptr noundef %3) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %25 = ptrtoint ptr %core1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core1.i.i, align 4
  %pm_ops.i.i = getelementptr inbounds %struct.venus_core, ptr %26, i32 0, i32 37
  %27 = ptrtoint ptr %pm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pm_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.venus_pm_load_scale.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.venus_pm_load_scale.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venus_pm_load_scale.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %load_scale.i.i = getelementptr inbounds %struct.venus_pm_ops, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %load_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %load_scale.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %30, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.venus_pm_load_scale.exit.i_crit_edge, label %if.end.i.i20

lor.lhs.false.i.i.venus_pm_load_scale.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venus_pm_load_scale.exit.i

if.end.i.i20:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i19 = tail call i32 %30(ptr noundef %3) #10
  br label %venus_pm_load_scale.exit.i

venus_pm_load_scale.exit.i:                       ; preds = %if.end.i.i20, %lor.lhs.false.i.i.venus_pm_load_scale.exit.i_crit_edge, %if.end.i.venus_pm_load_scale.exit.i_crit_edge
  %registeredbufs.i = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %registeredbufs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %registeredbufs.i, ptr %registeredbufs.i, align 4
  %prev.i.i21 = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %registeredbufs.i, ptr %prev.i.i21, align 4
  %33 = ptrtoint ptr %core1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core1.i.i, align 4
  %pm_ops2.i.i = getelementptr inbounds %struct.venus_core, ptr %34, i32 0, i32 37
  %35 = ptrtoint ptr %pm_ops2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pm_ops2.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %36, null
  br i1 %tobool.not.i19.i, label %venus_pm_load_scale.exit.i.venc_release_session.exit_crit_edge, label %land.lhs.true.i.i

venus_pm_load_scale.exit.i.venc_release_session.exit_crit_edge: ; preds = %venus_pm_load_scale.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_release_session.exit

land.lhs.true.i.i:                                ; preds = %venus_pm_load_scale.exit.i
  %coreid_power.i.i = getelementptr inbounds %struct.venus_pm_ops, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %coreid_power.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %coreid_power.i.i, align 4
  %tobool3.not.i20.i = icmp eq ptr %38, null
  br i1 %tobool3.not.i20.i, label %land.lhs.true.i.i.venc_release_session.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.venc_release_session.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_release_session.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i21.i = tail call i32 %38(ptr noundef %3, i32 noundef 0) #10
  br label %venc_release_session.exit

venc_release_session.exit:                        ; preds = %if.then.i.i, %land.lhs.true.i.i.venc_release_session.exit_crit_edge, %venus_pm_load_scale.exit.i.venc_release_session.exit_crit_edge
  %39 = ptrtoint ptr %core1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core1.i.i, align 4
  %dev_enc.i24.i = getelementptr inbounds %struct.venus_core, ptr %40, i32 0, i32 25
  %41 = ptrtoint ptr %dev_enc.i24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_enc.i24.i, align 4
  %pm_lock.i25.i = getelementptr inbounds %struct.venus_core, ptr %40, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i25.i, i32 noundef 0) #10
  %call.i8.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 4) #10
  tail call void @mutex_unlock(ptr noundef %pm_lock.i25.i) #10
  br label %if.end11

if.end11:                                         ; preds = %venc_release_session.exit, %if.end6.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %lock = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %streamon_out = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %streamon_out to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %streamon_out, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %streamon_cap = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %streamon_cap, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %streamon_out1 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %streamon_out1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %streamon_out1, align 4
  %streamon_cap2 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %streamon_cap2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %streamon_cap2, align 8
  %and = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @venus_helper_init_instance(ptr noundef %1) #10
  %sequence_cap = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 46
  %10 = ptrtoint ptr %sequence_cap to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sequence_cap, align 4
  %sequence_out = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 47
  %11 = ptrtoint ptr %sequence_out to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sequence_out, align 8
  %core1.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core1.i, align 4
  %dev_enc.i = getelementptr inbounds %struct.venus_core, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %dev_enc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_enc.i, align 4
  %pm_lock.i = getelementptr inbounds %struct.venus_core, ptr %13, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i, i32 noundef 0) #10
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end9

if.then.i.i:                                      ; preds = %if.end5
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.error.sink.split_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.error.sink.split_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.sink.split

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  br label %error.sink.split

if.end9:                                          ; preds = %if.end5
  tail call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  %17 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core1.i, align 4
  %pm_ops2.i = getelementptr inbounds %struct.venus_core, ptr %18, i32 0, i32 37
  %19 = ptrtoint ptr %pm_ops2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pm_ops2.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end9.if.end13_crit_edge, label %land.lhs.true.i

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true.i:                                  ; preds = %if.end9
  %coreid_power.i = getelementptr inbounds %struct.venus_pm_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %coreid_power.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %coreid_power.i, align 4
  %tobool3.not.i = icmp eq ptr %22, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end13_crit_edge, label %venus_pm_acquire_core.exit

land.lhs.true.i.if.end13_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

venus_pm_acquire_core.exit:                       ; preds = %land.lhs.true.i
  %call.i = tail call i32 %22(ptr noundef %1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %venus_pm_acquire_core.exit.if.end13_crit_edge, label %put_power

venus_pm_acquire_core.exit.if.end13_crit_edge:    ; preds = %venus_pm_acquire_core.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %venus_pm_acquire_core.exit.if.end13_crit_edge, %land.lhs.true.i.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %23 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core1.i, align 4
  %dev_enc.i81 = getelementptr inbounds %struct.venus_core, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %dev_enc.i81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_enc.i81, align 4
  %pm_lock.i82 = getelementptr inbounds %struct.venus_core, ptr %24, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i82, i32 noundef 0) #10
  %call.i.i83 = tail call i32 @__pm_runtime_suspend(ptr noundef %26, i32 noundef 13) #10
  tail call void @mutex_unlock(ptr noundef %pm_lock.i82) #10
  %27 = tail call i32 @llvm.smin.i32(i32 %call.i.i83, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i83)
  %tobool15.not = icmp sgt i32 %call.i.i83, -1
  br i1 %tobool15.not, label %if.end17, label %if.end13.error_crit_edge

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc i32 @venc_set_properties(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.error_crit_edge

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end21:                                         ; preds = %if.end17
  %call22 = tail call fastcc i32 @venc_verify_conf(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.error_crit_edge

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end25:                                         ; preds = %if.end21
  %num_input_bufs = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 35
  %28 = ptrtoint ptr %num_input_bufs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_input_bufs, align 8
  %num_output_bufs = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 36
  %30 = ptrtoint ptr %num_output_bufs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_output_bufs, align 4
  %call26 = tail call i32 @venus_helper_set_num_bufs(ptr noundef %1, i32 noundef %29, i32 noundef %31, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.error_crit_edge

if.end25.error_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @venus_helper_vb2_start_streaming(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end29.error_crit_edge

if.end29.error_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

put_power:                                        ; preds = %venus_pm_acquire_core.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core1.i, align 4
  %dev_enc.i87 = getelementptr inbounds %struct.venus_core, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %dev_enc.i87 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_enc.i87, align 4
  %pm_lock.i88 = getelementptr inbounds %struct.venus_core, ptr %33, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i88, i32 noundef 0) #10
  %call.i8.i = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 4) #10
  br label %error.sink.split

error.sink.split:                                 ; preds = %put_power, %do.end11.i.i.i.i.i.i, %if.then.i.i.error.sink.split_crit_edge
  %pm_lock.i.sink = phi ptr [ %pm_lock.i88, %put_power ], [ %pm_lock.i, %if.then.i.i.error.sink.split_crit_edge ], [ %pm_lock.i, %do.end11.i.i.i.i.i.i ]
  %ret.0.ph = phi i32 [ %call.i, %put_power ], [ %call.i.i, %if.then.i.i.error.sink.split_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %pm_lock.i.sink) #10
  br label %error

error:                                            ; preds = %error.sink.split, %if.end29.error_crit_edge, %if.end25.error_crit_edge, %if.end21.error_crit_edge, %if.end17.error_crit_edge, %if.end13.error_crit_edge
  %ret.0 = phi i32 [ %27, %if.end13.error_crit_edge ], [ %call18, %if.end17.error_crit_edge ], [ %call22, %if.end21.error_crit_edge ], [ %call26, %if.end25.error_crit_edge ], [ %call30, %if.end29.error_crit_edge ], [ %ret.0.ph, %error.sink.split ]
  %36 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %q, align 4
  tail call void @venus_helper_buffers_done(ptr noundef %1, i32 noundef %37, i32 noundef 3) #10
  %38 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %39)
  %cmp38 = icmp eq i32 %39, 10
  br i1 %cmp38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %streamon_out1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %streamon_out1, align 4
  br label %cleanup

if.else41:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %streamon_cap2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %streamon_cap2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else41, %if.then39, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ %ret.0, %if.else41 ], [ %ret.0, %if.then39 ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_vb2_stop_streaming(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venc_vb2_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %core1.i = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core1.i, align 4
  %dev_enc.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %dev_enc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_enc.i, align 4
  %pm_lock.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i, i32 noundef 0) #10
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %entry.venc_pm_get_put.exit_crit_edge

entry.venc_pm_get_put.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_pm_get_put.exit

pm_runtime_suspended.exit.i:                      ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 15
  %10 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i, label %pm_runtime_suspended.exit.i.venc_pm_get_put.exit_crit_edge

pm_runtime_suspended.exit.i.venc_pm_get_put.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_pm_get_put.exit

if.then.i:                                        ; preds = %pm_runtime_suspended.exit.i
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i1.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.venc_pm_get_put.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.venc_pm_get_put.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venc_pm_get_put.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  br label %venc_pm_get_put.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i2.i = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #10
  br label %venc_pm_get_put.exit

venc_pm_get_put.exit:                             ; preds = %if.end.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.venc_pm_get_put.exit_crit_edge, %pm_runtime_suspended.exit.i.venc_pm_get_put.exit_crit_edge, %entry.venc_pm_get_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  %lock = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  tail call void @venus_helper_vb2_buf_queue(ptr noundef %vb) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_framesz(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_session_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_stride(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_input_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_output_resolution(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_color_format(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @venc_set_properties(ptr noundef %inst) unnamed_addr #2 align 64 {
entry:
  %intra_period = alloca %struct.hfi_intra_period, align 4
  %frate = alloca %struct.hfi_framerate, align 4
  %brate = alloca %struct.hfi_bitrate, align 4
  %idrp = alloca %struct.hfi_idr_period, align 4
  %quant = alloca %struct.hfi_quantization, align 4
  %quant_range = alloca %struct.hfi_quantization_range, align 4
  %en = alloca %struct.hfi_enable, align 4
  %ltr_mode = alloca %struct.hfi_ltr_mode, align 4
  %intra_refresh = alloca %struct.hfi_intra_refresh, align 4
  %rate_control = alloca i32, align 4
  %info = alloca %struct.hfi_h264_vui_timing_info, align 4
  %entropy = alloca %struct.hfi_h264_entropy_control, align 4
  %deblock = alloca %struct.hfi_h264_db_control, align 4
  %h264_transform = alloca %struct.hfi_h264_8x8_transform, align 4
  %hdr10 = alloca %struct.hfi_hdr10_pq_sei, align 4
  %max_num_b_frames = alloca i32, align 4
  %quality = alloca %struct.hfi_heic_frame_quality, align 4
  %en267 = alloca %struct.hfi_enable, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controls = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %intra_period) #10
  %0 = ptrtoint ptr %intra_period to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %intra_period, align 4, !annotation !64
  %1 = getelementptr inbounds %struct.hfi_intra_period, ptr %intra_period, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %frate) #10
  %3 = ptrtoint ptr %frate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %frate, align 4, !annotation !64
  %4 = getelementptr inbounds %struct.hfi_framerate, ptr %frate, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %brate) #10
  %6 = ptrtoint ptr %brate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %brate, align 4, !annotation !64
  %7 = getelementptr inbounds %struct.hfi_bitrate, ptr %brate, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idrp) #10
  %9 = ptrtoint ptr %idrp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %idrp, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %quant) #10
  %10 = getelementptr inbounds %struct.hfi_quantization, ptr %quant, i32 0, i32 1
  %11 = getelementptr inbounds %struct.hfi_quantization, ptr %quant, i32 0, i32 2
  %12 = getelementptr inbounds %struct.hfi_quantization, ptr %quant, i32 0, i32 3
  %13 = call ptr @memset(ptr %quant, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %quant_range) #10
  %14 = ptrtoint ptr %quant_range to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %quant_range, align 4, !annotation !64
  %15 = getelementptr inbounds %struct.hfi_quantization_range, ptr %quant_range, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !64
  %17 = getelementptr inbounds %struct.hfi_quantization_range, ptr %quant_range, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en) #10
  %19 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %en, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ltr_mode) #10
  %20 = ptrtoint ptr %ltr_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %ltr_mode, align 4, !annotation !64
  %21 = getelementptr inbounds %struct.hfi_ltr_mode, ptr %ltr_mode, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4, !annotation !64
  %23 = getelementptr inbounds %struct.hfi_ltr_mode, ptr %ltr_mode, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %intra_refresh) #10
  %25 = call ptr @memset(ptr %intra_refresh, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_control) #10
  %26 = ptrtoint ptr %rate_control to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %rate_control, align 4, !annotation !64
  %call = tail call i32 @venus_helper_set_work_mode(ptr noundef %inst) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup311_crit_edge

entry.cleanup311_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end:                                           ; preds = %entry
  %27 = ptrtoint ptr %frate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %frate, align 4
  %fps = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 31
  %28 = ptrtoint ptr %fps to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fps, align 8
  %.tr = trunc i64 %29 to i32
  %conv = shl i32 %.tr, 16
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %4, align 4
  %call1 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 8193, ptr noundef nonnull %frate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup311_crit_edge

if.end.cleanup311_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end4:                                          ; preds = %if.end
  %fmt_cap = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 34
  %31 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fmt_cap, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %34)
  %cmp = icmp eq i32 %34, 875967048
  br i1 %cmp, label %if.then6, label %if.end4.if.end38_crit_edge

if.end4.if.end38_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #10
  %35 = getelementptr inbounds %struct.hfi_h264_vui_timing_info, ptr %info, i32 0, i32 1
  %36 = getelementptr inbounds %struct.hfi_h264_vui_timing_info, ptr %info, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entropy) #10
  %37 = ptrtoint ptr %entropy to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %entropy, align 4, !annotation !64
  %38 = getelementptr inbounds %struct.hfi_h264_entropy_control, ptr %entropy, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %38, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %deblock) #10
  %40 = ptrtoint ptr %deblock to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %deblock, align 4, !annotation !64
  %41 = getelementptr inbounds %struct.hfi_h264_db_control, ptr %deblock, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %41, align 4, !annotation !64
  %43 = getelementptr inbounds %struct.hfi_h264_db_control, ptr %deblock, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %43, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h264_transform) #10
  %45 = ptrtoint ptr %h264_transform to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %h264_transform, align 4, !annotation !64
  %46 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %info, align 4
  %47 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %35, align 4
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1000000000, ptr %36, align 4
  %call7 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574942, ptr noundef nonnull %info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then6.cleanup.thread_crit_edge

if.then6.cleanup.thread_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end10:                                         ; preds = %if.then6
  %h264_entropy_mode = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 8
  %49 = ptrtoint ptr %h264_entropy_mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %h264_entropy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cond.i = icmp eq i32 %50, 1
  %..i = select i1 %cond.i, i32 2, i32 1
  %51 = ptrtoint ptr %entropy to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %..i, ptr %entropy, align 4
  %52 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %38, align 4
  %call12 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574914, ptr noundef nonnull %entropy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup.thread_crit_edge

if.end10.cleanup.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end15:                                         ; preds = %if.end10
  %h264_loop_filter_mode = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 56
  %53 = ptrtoint ptr %h264_loop_filter_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %h264_loop_filter_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %switch.selectcmp.i = icmp eq i32 %54, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %switch.selectcmp9.i = icmp eq i32 %54, 2
  %switch.select10.i = select i1 %switch.selectcmp9.i, i32 2, i32 %switch.select.i
  %55 = ptrtoint ptr %deblock to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %switch.select10.i, ptr %deblock, align 4
  %h264_loop_filter_alpha = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 60
  %56 = ptrtoint ptr %h264_loop_filter_alpha to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %h264_loop_filter_alpha, align 4
  %58 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %41, align 4
  %h264_loop_filter_beta = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 64
  %59 = ptrtoint ptr %h264_loop_filter_beta to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %h264_loop_filter_beta, align 4
  %61 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %43, align 4
  %call17 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574915, ptr noundef nonnull %deblock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup.thread_crit_edge

if.end15.cleanup.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end15
  %62 = ptrtoint ptr %h264_transform to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %h264_transform, align 4
  %profile21 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 148
  %63 = ptrtoint ptr %profile21 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %profile21, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %64, label %if.end20.cleanup_crit_edge [
    i32 4, label %if.end20.if.then28_crit_edge
    i32 64, label %if.end20.if.then28_crit_edge510
  ]

if.end20.if.then28_crit_edge510:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end20.if.then28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %if.end20.if.then28_crit_edge, %if.end20.if.then28_crit_edge510
  %h264_8x8_transform = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 68
  %66 = ptrtoint ptr %h264_8x8_transform to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %h264_8x8_transform, align 4
  %68 = ptrtoint ptr %h264_transform to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %h264_transform, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end15.cleanup.thread_crit_edge, %if.end10.cleanup.thread_crit_edge, %if.then6.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call17, %if.end15.cleanup.thread_crit_edge ], [ %call12, %if.end10.cleanup.thread_crit_edge ], [ %call7, %if.then6.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h264_transform) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %deblock) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entropy) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #10
  br label %cleanup311

cleanup:                                          ; preds = %if.then28, %if.end20.cleanup_crit_edge
  %call31 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574949, ptr noundef nonnull %h264_transform) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h264_transform) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %deblock) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entropy) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #10
  br i1 %tobool32.not, label %cleanup.if.end38_crit_edge, label %cleanup.cleanup311_crit_edge

cleanup.cleanup311_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

cleanup.if.end38_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end38:                                         ; preds = %cleanup.if.end38_crit_edge, %if.end4.if.end38_crit_edge
  %69 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fmt_cap, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %72, label %if.end38.if.end53_crit_edge [
    i32 875967048, label %if.end38.if.then48_crit_edge
    i32 1129727304, label %if.end38.if.then48_crit_edge511
  ]

if.end38.if.then48_crit_edge511:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

if.end38.if.then48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then48:                                        ; preds = %if.end38.if.then48_crit_edge, %if.end38.if.then48_crit_edge511
  %74 = ptrtoint ptr %idrp to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %idrp, align 4
  %call49 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33579010, ptr noundef nonnull %idrp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.end53_crit_edge, label %if.then48.cleanup311_crit_edge

if.then48.cleanup311_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end53:                                         ; preds = %if.then48.if.end53_crit_edge, %if.end38.if.end53_crit_edge
  %75 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fmt_cap, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %78)
  %cmp56 = icmp eq i32 %78, 1129727304
  br i1 %cmp56, label %if.then58, label %if.end53.if.end98_crit_edge

if.end53.if.end98_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then58:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %hdr10) #10
  %mastering = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 196
  %display_primaries_y = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 202
  %79 = ptrtoint ptr %mastering to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %mastering, align 2
  %conv61 = zext i16 %80 to i32
  %81 = ptrtoint ptr %hdr10 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv61, ptr %hdr10, align 4
  %82 = ptrtoint ptr %display_primaries_y to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %display_primaries_y, align 2
  %conv67 = zext i16 %83 to i32
  %arrayidx70 = getelementptr inbounds %struct.hfi_mastering_display_colour_sei_payload, ptr %hdr10, i32 0, i32 1, i32 0
  %84 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv67, ptr %arrayidx70, align 4
  %arrayidx.1 = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 198
  %85 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.1, align 2
  %conv61.1 = zext i16 %86 to i32
  %arrayidx64.1 = getelementptr inbounds [3 x i32], ptr %hdr10, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv61.1, ptr %arrayidx64.1, align 4
  %arrayidx66.1 = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 204
  %88 = ptrtoint ptr %arrayidx66.1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx66.1, align 2
  %conv67.1 = zext i16 %89 to i32
  %arrayidx70.1 = getelementptr inbounds %struct.hfi_mastering_display_colour_sei_payload, ptr %hdr10, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv67.1, ptr %arrayidx70.1, align 4
  %arrayidx.2 = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 200
  %91 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx.2, align 2
  %conv61.2 = zext i16 %92 to i32
  %arrayidx64.2 = getelementptr inbounds [3 x i32], ptr %hdr10, i32 0, i32 2
  %93 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv61.2, ptr %arrayidx64.2, align 4
  %arrayidx66.2 = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 206
  %94 = ptrtoint ptr %arrayidx66.2 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx66.2, align 2
  %conv67.2 = zext i16 %95 to i32
  %arrayidx70.2 = getelementptr inbounds %struct.hfi_mastering_display_colour_sei_payload, ptr %hdr10, i32 0, i32 1, i32 2
  %96 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv67.2, ptr %arrayidx70.2, align 4
  %white_point_x = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 208
  %97 = ptrtoint ptr %white_point_x to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %white_point_x, align 4
  %conv72 = zext i16 %98 to i32
  %white_point_x74 = getelementptr inbounds %struct.hfi_mastering_display_colour_sei_payload, ptr %hdr10, i32 0, i32 2
  %99 = ptrtoint ptr %white_point_x74 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv72, ptr %white_point_x74, align 4
  %white_point_y = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 210
  %100 = ptrtoint ptr %white_point_y to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %white_point_y, align 2
  %conv76 = zext i16 %101 to i32
  %white_point_y78 = getelementptr inbounds %struct.hfi_mastering_display_colour_sei_payload, ptr %hdr10, i32 0, i32 3
  %102 = ptrtoint ptr %white_point_y78 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv76, ptr %white_point_y78, align 4
  %max_display_mastering_luminance = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 212
  %103 = ptrtoint ptr %max_display_mastering_luminance to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_display_mastering_luminance, align 4
  %max_display_mastering_luminance81 = getelementptr inbounds %struct.hfi_mastering_display_colour_sei_payload, ptr %hdr10, i32 0, i32 4
  %105 = ptrtoint ptr %max_display_mastering_luminance81 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %max_display_mastering_luminance81, align 4
  %min_display_mastering_luminance = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 216
  %106 = ptrtoint ptr %min_display_mastering_luminance to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %min_display_mastering_luminance, align 4
  %min_display_mastering_luminance84 = getelementptr inbounds %struct.hfi_mastering_display_colour_sei_payload, ptr %hdr10, i32 0, i32 5
  %108 = ptrtoint ptr %min_display_mastering_luminance84 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %min_display_mastering_luminance84, align 4
  %cll = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 192
  %109 = ptrtoint ptr %cll to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %cll, align 4
  %conv85 = zext i16 %110 to i32
  %cll86 = getelementptr inbounds %struct.hfi_hdr10_pq_sei, ptr %hdr10, i32 0, i32 1
  %111 = ptrtoint ptr %cll86 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv85, ptr %cll86, align 4
  %max_pic_average_light_level = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 194
  %112 = ptrtoint ptr %max_pic_average_light_level to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %max_pic_average_light_level, align 2
  %conv88 = zext i16 %113 to i32
  %max_pic_average_light = getelementptr inbounds %struct.hfi_hdr10_pq_sei, ptr %hdr10, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %max_pic_average_light to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv88, ptr %max_pic_average_light, align 4
  %call90 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574966, ptr noundef nonnull %hdr10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hdr10) #10
  br i1 %tobool91.not, label %if.then58.if.end98_crit_edge, label %if.then58.cleanup311_crit_edge

if.then58.cleanup311_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.then58.if.end98_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.end98:                                         ; preds = %if.then58.if.end98_crit_edge, %if.end53.if.end98_crit_edge
  %num_b_frames = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 0, i32 2
  %115 = ptrtoint ptr %num_b_frames to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_b_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool99.not = icmp eq i32 %116, 0
  br i1 %tobool99.not, label %if.end98.if.end108_crit_edge, label %if.then100

if.end98.if.end108_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then100:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_num_b_frames) #10
  %117 = ptrtoint ptr %max_num_b_frames to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 4, ptr %max_num_b_frames, align 4
  %call101 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574944, ptr noundef nonnull %max_num_b_frames) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_num_b_frames) #10
  br i1 %tobool102.not, label %if.then100.if.end108_crit_edge, label %if.then100.cleanup311_crit_edge

if.then100.cleanup311_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.then100.if.end108_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.end108:                                        ; preds = %if.then100.if.end108_crit_edge, %if.end98.if.end108_crit_edge
  %num_p_frames = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 0, i32 1
  %118 = ptrtoint ptr %num_p_frames to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_p_frames, align 4
  %120 = ptrtoint ptr %intra_period to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %intra_period, align 4
  %121 = ptrtoint ptr %num_b_frames to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_b_frames, align 4
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %1, align 4
  %call110 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33579011, ptr noundef nonnull %intra_period) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end108.cleanup311_crit_edge

if.end108.cleanup311_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end113:                                        ; preds = %if.end108
  %rc_enable = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 0, i32 5
  %124 = ptrtoint ptr %rc_enable to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rc_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool114.not = icmp eq i32 %125, 0
  br i1 %tobool114.not, label %if.then115, label %if.else

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %rate_control to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 16777217, ptr %rate_control, align 4
  br label %if.end136

if.else:                                          ; preds = %if.end113
  %bitrate_mode = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 0, i32 3
  %127 = ptrtoint ptr %bitrate_mode to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bitrate_mode, align 4
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %128, label %if.else.if.end136_crit_edge [
    i32 0, label %if.then118
    i32 1, label %if.then124
    i32 2, label %if.then132
  ]

if.else.if.end136_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then118:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %frame_skip_mode = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1
  %130 = ptrtoint ptr %frame_skip_mode to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %frame_skip_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool119.not = icmp eq i32 %131, 0
  %cond = select i1 %tobool119.not, i32 16777219, i32 16777218
  %132 = ptrtoint ptr %rate_control to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %cond, ptr %rate_control, align 4
  br label %if.end136

if.then124:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %frame_skip_mode125 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1
  %133 = ptrtoint ptr %frame_skip_mode125 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %frame_skip_mode125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool126.not = icmp eq i32 %134, 0
  %cond127 = select i1 %tobool126.not, i32 16777221, i32 16777220
  %135 = ptrtoint ptr %rate_control to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %cond127, ptr %rate_control, align 4
  br label %if.end136

if.then132:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %rate_control to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 16777224, ptr %rate_control, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %if.then124, %if.then118, %if.else.if.end136_crit_edge, %if.then115
  %call137 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574916, ptr noundef nonnull %rate_control) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end136.cleanup311_crit_edge

if.end136.cleanup311_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end140:                                        ; preds = %if.end136
  %137 = ptrtoint ptr %rate_control to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rate_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777224, i32 %138)
  %cmp141 = icmp eq i32 %138, 16777224
  br i1 %cmp141, label %land.lhs.true, label %if.end140.if.end153_crit_edge

if.end140.if.end153_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

land.lhs.true:                                    ; preds = %if.end140
  %const_quality = getelementptr inbounds %struct.venc_controls, ptr %controls, i32 0, i32 7
  %139 = ptrtoint ptr %const_quality to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %const_quality, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool143.not = icmp eq i32 %140, 0
  br i1 %tobool143.not, label %land.lhs.true.if.end153_crit_edge, label %if.then144

land.lhs.true.if.end153_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then144:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %quality) #10
  %141 = getelementptr inbounds i8, ptr %quality, i32 4
  %142 = call ptr @memset(ptr %141, i32 0, i32 12)
  %143 = ptrtoint ptr %quality to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %140, ptr %quality, align 4
  %call146 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33579028, ptr noundef nonnull %quality) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %quality) #10
  br i1 %tobool147.not, label %if.then144.if.end153_crit_edge, label %if.then144.cleanup311_crit_edge

if.then144.cleanup311_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.then144.if.end153_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.end153:                                        ; preds = %if.then144.if.end153_crit_edge, %land.lhs.true.if.end153_crit_edge, %if.end140.if.end153_crit_edge
  %bitrate154 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 0, i32 4
  %144 = ptrtoint ptr %bitrate154 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %bitrate154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool155.not = icmp eq i32 %145, 0
  %.505 = select i1 %tobool155.not, i32 64000, i32 %145
  %146 = ptrtoint ptr %brate to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %.505, ptr %brate, align 4
  %147 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %7, align 4
  %call161 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33579009, ptr noundef nonnull %brate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.end153.cleanup311_crit_edge

if.end153.cleanup311_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end164:                                        ; preds = %if.end153
  %148 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fmt_cap, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %152 = zext i32 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %151, label %if.end164.if.end186_crit_edge [
    i32 875967048, label %if.end164.if.then174_crit_edge
    i32 1129727304, label %if.end164.if.then174_crit_edge512
  ]

if.end164.if.then174_crit_edge512:                ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then174

if.end164.if.then174_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then174

if.end164.if.end186_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then174:                                       ; preds = %if.end164.if.then174_crit_edge, %if.end164.if.then174_crit_edge512
  %header_mode = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 136
  %153 = ptrtoint ptr %header_mode to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %header_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp175 = icmp ne i32 %154, 0
  %.506 = zext i1 %cmp175 to i32
  %155 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %.506, ptr %en, align 4
  %call182 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33579016, ptr noundef nonnull %en) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.then174.if.end186_crit_edge, label %if.then174.cleanup311_crit_edge

if.then174.cleanup311_crit_edge:                  ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.then174.if.end186_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.end186:                                        ; preds = %if.then174.if.end186_crit_edge, %if.end164.if.end186_crit_edge
  %bitrate_peak = getelementptr inbounds %struct.venc_controls, ptr %controls, i32 0, i32 5
  %156 = ptrtoint ptr %bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %bitrate_peak, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool187.not = icmp eq i32 %157, 0
  %mul189 = shl i32 %.505, 1
  %bitrate.1 = select i1 %tobool187.not, i32 %mul189, i32 %157
  %158 = ptrtoint ptr %brate to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %bitrate.1, ptr %brate, align 4
  %159 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %7, align 4
  %call195 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33579015, ptr noundef nonnull %brate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.end186.cleanup311_crit_edge

if.end186.cleanup311_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end198:                                        ; preds = %if.end186
  %160 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %fmt_cap, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %163)
  %cmp201 = icmp eq i32 %163, 1129727304
  br i1 %cmp201, label %if.then203, label %if.else204

if.then203:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  %hevc_i_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 72
  %164 = ptrtoint ptr %hevc_i_qp to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %hevc_i_qp, align 4
  %166 = ptrtoint ptr %quant to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %quant, align 4
  %hevc_p_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 76
  %167 = ptrtoint ptr %hevc_p_qp to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %hevc_p_qp, align 4
  %169 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %10, align 4
  %hevc_b_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 80
  br label %if.end208

if.else204:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  %h264_i_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 12
  %170 = ptrtoint ptr %h264_i_qp to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %h264_i_qp, align 4
  %172 = ptrtoint ptr %quant to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %quant, align 4
  %h264_p_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 16
  %173 = ptrtoint ptr %h264_p_qp to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %h264_p_qp, align 4
  %175 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %10, align 4
  %h264_b_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 20
  br label %if.end208

if.end208:                                        ; preds = %if.else204, %if.then203
  %storemerge.in = phi ptr [ %h264_b_qp, %if.else204 ], [ %hevc_b_qp, %if.then203 ]
  %176 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %176)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %177 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %storemerge, ptr %11, align 4
  %178 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %12, align 4
  %call210 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574918, ptr noundef nonnull %quant) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.end213, label %if.end208.cleanup311_crit_edge

if.end208.cleanup311_crit_edge:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end213:                                        ; preds = %if.end208
  %179 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %fmt_cap, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %182)
  %cmp216 = icmp eq i32 %182, 1129727304
  br i1 %cmp216, label %if.then218, label %if.else219

if.then218:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #12
  %hevc_min_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 84
  %183 = ptrtoint ptr %hevc_min_qp to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %hevc_min_qp, align 4
  %185 = ptrtoint ptr %quant_range to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %quant_range, align 4
  %hevc_max_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 88
  br label %if.end222

if.else219:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #12
  %h264_min_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 24
  %186 = ptrtoint ptr %h264_min_qp to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %h264_min_qp, align 4
  %188 = ptrtoint ptr %quant_range to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %quant_range, align 4
  %h264_max_qp = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 28
  br label %if.end222

if.end222:                                        ; preds = %if.else219, %if.then218
  %storemerge502.in = phi ptr [ %h264_max_qp, %if.else219 ], [ %hevc_max_qp, %if.then218 ]
  %189 = ptrtoint ptr %storemerge502.in to i32
  call void @__asan_load4_noabort(i32 %189)
  %storemerge502 = load i32, ptr %storemerge502.in, align 4
  %190 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %storemerge502, ptr %15, align 4
  %191 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %17, align 4
  %call224 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574920, ptr noundef nonnull %quant_range) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end227, label %if.end222.cleanup311_crit_edge

if.end222.cleanup311_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end227:                                        ; preds = %if.end222
  %ltr_count = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 188
  %192 = ptrtoint ptr %ltr_count to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %ltr_count, align 4
  %194 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %21, align 4
  %195 = ptrtoint ptr %ltr_mode to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 1, ptr %ltr_mode, align 4
  %196 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 1, ptr %23, align 4
  %call230 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574940, ptr noundef nonnull %ltr_mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.end233, label %if.end227.cleanup311_crit_edge

if.end227.cleanup311_crit_edge:                   ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end233:                                        ; preds = %if.end227
  %hfi_codec = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 45
  %197 = ptrtoint ptr %hfi_codec to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %hfi_codec, align 8
  %199 = zext i32 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %198, label %if.end233.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 32, label %sw.bb238
    i32 4096, label %sw.bb242
    i32 16384, label %sw.bb244
    i32 8192, label %sw.bb248
  ]

if.end233.sw.epilog_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  %profile234 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 148
  %200 = ptrtoint ptr %profile234 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %profile234, align 4
  %level236 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 168
  %202 = ptrtoint ptr %level236 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %level236, align 4
  br label %sw.epilog

sw.bb238:                                         ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  %mpeg4 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 152
  %204 = ptrtoint ptr %mpeg4 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %mpeg4, align 4
  %mpeg4241 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 172
  %206 = ptrtoint ptr %mpeg4241 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %mpeg4241, align 4
  br label %sw.epilog

sw.bb242:                                         ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  %vp8 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 160
  %208 = ptrtoint ptr %vp8 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %vp8, align 4
  br label %sw.epilog

sw.bb244:                                         ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  %vp9 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 164
  %210 = ptrtoint ptr %vp9 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %vp9, align 4
  %vp9247 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 180
  %212 = ptrtoint ptr %vp9247 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %vp9247, align 4
  br label %sw.epilog

sw.bb248:                                         ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  %hevc = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 156
  %214 = ptrtoint ptr %hevc to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %hevc, align 4
  %hevc251 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 176
  %216 = ptrtoint ptr %hevc251 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %hevc251, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb248, %sw.bb244, %sw.bb242, %sw.bb238, %sw.bb, %if.end233.sw.epilog_crit_edge
  %profile.0 = phi i32 [ %215, %sw.bb248 ], [ %211, %sw.bb244 ], [ %209, %sw.bb242 ], [ %205, %sw.bb238 ], [ %201, %sw.bb ], [ 0, %if.end233.sw.epilog_crit_edge ]
  %level.0 = phi i32 [ %217, %sw.bb248 ], [ %213, %sw.bb244 ], [ 0, %sw.bb242 ], [ %207, %sw.bb238 ], [ %203, %sw.bb ], [ 0, %if.end233.sw.epilog_crit_edge ]
  %call253 = call i32 @venus_helper_set_profile_level(ptr noundef %inst, i32 noundef %profile.0, i32 noundef %level.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end256, label %sw.epilog.cleanup311_crit_edge

sw.epilog.cleanup311_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end256:                                        ; preds = %sw.epilog
  %218 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %fmt_cap, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  %222 = zext i32 %221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %221, label %if.end256.if.end273_crit_edge [
    i32 875967048, label %if.end256.if.then266_crit_edge
    i32 1129727304, label %if.end256.if.then266_crit_edge513
  ]

if.end256.if.then266_crit_edge513:                ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then266

if.end256.if.then266_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then266

if.end256.if.end273_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273

if.then266:                                       ; preds = %if.end256.if.then266_crit_edge, %if.end256.if.then266_crit_edge513
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en267) #10
  %aud_enable = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 140
  %223 = ptrtoint ptr %aud_enable to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %aud_enable, align 4, !range !63
  %225 = zext i8 %224 to i32
  %226 = ptrtoint ptr %en267 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %en267, align 4
  %call272 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574934, ptr noundef nonnull %en267) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en267) #10
  br label %if.end273

if.end273:                                        ; preds = %if.then266, %if.end256.if.end273_crit_edge
  %227 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %fmt_cap, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  %231 = zext i32 %230 to i64
  call void @__sanitizer_cov_trace_switch(i64 %231, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %230, label %if.end273.if.end310_crit_edge [
    i32 875967048, label %if.end273.land.lhs.true283_crit_edge
    i32 1129727304, label %if.end273.land.lhs.true283_crit_edge514
  ]

if.end273.land.lhs.true283_crit_edge514:          ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true283

if.end273.land.lhs.true283_crit_edge:             ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true283

if.end273.if.end310_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end310

land.lhs.true283:                                 ; preds = %if.end273.land.lhs.true283_crit_edge, %if.end273.land.lhs.true283_crit_edge514
  %232 = ptrtoint ptr %rate_control to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %rate_control, align 4
  %234 = and i32 %233, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777220, i32 %234)
  %switch = icmp eq i32 %234, 16777220
  br i1 %switch, label %if.then289, label %land.lhs.true283.if.end310_crit_edge

land.lhs.true283.if.end310_crit_edge:             ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end310

if.then289:                                       ; preds = %land.lhs.true283
  %235 = ptrtoint ptr %intra_refresh to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 1, ptr %intra_refresh, align 4
  %cir_mbs = getelementptr inbounds %struct.hfi_intra_refresh, ptr %intra_refresh, i32 0, i32 3
  %236 = ptrtoint ptr %cir_mbs to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %cir_mbs, align 4
  %intra_refresh_period = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 1, i32 144
  %237 = ptrtoint ptr %intra_refresh_period to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %intra_refresh_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool291.not = icmp eq i32 %238, 0
  br i1 %tobool291.not, label %if.then289.if.end305_crit_edge, label %if.then292

if.then289.if.end305_crit_edge:                   ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

if.then292:                                       ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #12
  %width = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 15
  %239 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %width, align 8
  %add = add i32 %240, 15
  %and = and i32 %add, -16
  %height = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 16
  %241 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %height, align 4
  %add293 = add i32 %242, 15
  %and294 = and i32 %add293, -16
  %mul295 = mul i32 %and294, %and
  %div503 = lshr exact i32 %mul295, 8
  %rem = urem i32 %div503, %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool297.not = icmp ne i32 %rem, 0
  %inc299 = zext i1 %tobool297.not to i32
  %spec.select = add nuw nsw i32 %div503, %inc299
  %div302 = udiv i32 %spec.select, %238
  %243 = ptrtoint ptr %intra_refresh to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 5, ptr %intra_refresh, align 4
  %244 = ptrtoint ptr %cir_mbs to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %div302, ptr %cir_mbs, align 4
  br label %if.end305

if.end305:                                        ; preds = %if.then292, %if.then289.if.end305_crit_edge
  %call306 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33574925, ptr noundef nonnull %intra_refresh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.end305.if.end310_crit_edge, label %if.end305.cleanup311_crit_edge

if.end305.cleanup311_crit_edge:                   ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup311

if.end305.if.end310_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end310

if.end310:                                        ; preds = %if.end305.if.end310_crit_edge, %land.lhs.true283.if.end310_crit_edge, %if.end273.if.end310_crit_edge
  br label %cleanup311

cleanup311:                                       ; preds = %if.end310, %if.end305.cleanup311_crit_edge, %sw.epilog.cleanup311_crit_edge, %if.end227.cleanup311_crit_edge, %if.end222.cleanup311_crit_edge, %if.end208.cleanup311_crit_edge, %if.end186.cleanup311_crit_edge, %if.then174.cleanup311_crit_edge, %if.end153.cleanup311_crit_edge, %if.then144.cleanup311_crit_edge, %if.end136.cleanup311_crit_edge, %if.end108.cleanup311_crit_edge, %if.then100.cleanup311_crit_edge, %if.then58.cleanup311_crit_edge, %if.then48.cleanup311_crit_edge, %cleanup.cleanup311_crit_edge, %cleanup.thread, %if.end.cleanup311_crit_edge, %entry.cleanup311_crit_edge
  %retval.7 = phi i32 [ 0, %if.end310 ], [ %call146, %if.then144.cleanup311_crit_edge ], [ %call101, %if.then100.cleanup311_crit_edge ], [ %call90, %if.then58.cleanup311_crit_edge ], [ %call31, %cleanup.cleanup311_crit_edge ], [ %call, %entry.cleanup311_crit_edge ], [ %call1, %if.end.cleanup311_crit_edge ], [ %call49, %if.then48.cleanup311_crit_edge ], [ %call110, %if.end108.cleanup311_crit_edge ], [ %call137, %if.end136.cleanup311_crit_edge ], [ %call161, %if.end153.cleanup311_crit_edge ], [ %call182, %if.then174.cleanup311_crit_edge ], [ %call195, %if.end186.cleanup311_crit_edge ], [ %call210, %if.end208.cleanup311_crit_edge ], [ %call224, %if.end222.cleanup311_crit_edge ], [ %call230, %if.end227.cleanup311_crit_edge ], [ %call253, %sw.epilog.cleanup311_crit_edge ], [ %call306, %if.end305.cleanup311_crit_edge ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_control) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %intra_refresh) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ltr_mode) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %quant_range) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %quant) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idrp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %brate) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frate) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %intra_period) #10
  ret i32 %retval.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_work_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_profile_level(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_bufreq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_vb2_buf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @venc_verify_conf(ptr noundef %inst) unnamed_addr #2 align 64 {
entry:
  %bufreq = alloca %struct.hfi_buffer_requirements, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hfi_version, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bufreq) #10
  %6 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 3
  %7 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 4
  %8 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 5
  %num_input_bufs = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 35
  %9 = call ptr @memset(ptr %bufreq, i32 255, i32 32)
  %10 = ptrtoint ptr %num_input_bufs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_input_bufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_output_bufs = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 36
  %12 = ptrtoint ptr %num_output_bufs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_output_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @venus_helper_get_bufreq(ptr noundef %inst, i32 noundef 2, ptr noundef nonnull %bufreq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %14 = ptrtoint ptr %num_output_bufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_output_bufs, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp ult i32 %15, %17
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %lor.lhs.false6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp8 = icmp eq i32 %5, 2
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.val = load i32, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.val48 = load i32, ptr %7, align 4
  %20 = select i1 %cmp8, i32 %.val, i32 %.val48
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %20)
  %cmp9 = icmp ult i32 %15, %20
  br i1 %cmp9, label %lor.lhs.false6.cleanup_crit_edge, label %if.end11

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false6
  %call12 = call i32 @venus_helper_get_bufreq(ptr noundef %inst, i32 noundef 1, ptr noundef nonnull %bufreq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %21 = ptrtoint ptr %num_input_bufs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_input_bufs, align 8
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp18 = icmp ult i32 %22, %24
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %lor.lhs.false19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false19:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.val49 = load i32, ptr %6, align 4
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.val50 = load i32, ptr %7, align 4
  %27 = select i1 %cmp8, i32 %.val49, i32 %.val50
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %27)
  %cmp28 = icmp ult i32 %22, %27
  %spec.select = select i1 %cmp28, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false19, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bufreq) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_num_bufs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_vb2_start_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_buffers_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_vb2_buf_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.8, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.9, i32 noundef 32) #10
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.10, i32 noundef 32) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_enum_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.i = icmp ugt i32 %3, 6
  br i1 %cmp.i, label %entry.find_format_by_index.exit.thread_crit_edge, label %for.cond.preheader.i

entry.find_format_by_index.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_by_index.exit.thread

for.cond.preheader.i:                             ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp6.not.i = icmp eq i32 %5, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 10
  br i1 %cmp3.not.i, label %lor.end.i, label %for.cond.preheader.i.for.inc.i_crit_edge

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.end.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not.i = icmp eq i32 %3, 0
  br i1 %cmp8.not.i, label %lor.end.i.find_format_by_index.exit_crit_edge, label %lor.end.i.for.inc.i_crit_edge

lor.end.i.for.inc.i_crit_edge:                    ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.end.i.find_format_by_index.exit_crit_edge:    ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_by_index.exit

for.inc.i:                                        ; preds = %lor.end.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %k.2.ph.i = phi i32 [ 0, %for.cond.preheader.i.for.inc.i_crit_edge ], [ 1, %lor.end.i.for.inc.i_crit_edge ]
  br i1 %cmp6.not.i, label %lor.end.1.i, label %for.inc.i.find_format_by_index.exit.thread_crit_edge

for.inc.i.find_format_by_index.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_by_index.exit.thread

lor.end.1.i:                                      ; preds = %for.inc.i
  %call.1.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %add.ptr.i, i32 noundef 877088845) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %k.2.ph.i, i32 %3)
  %cmp8.1.i = icmp ne i32 %k.2.ph.i, %3
  %.not.1.i = xor i1 %call.1.i, true
  %brmerge.1.i = select i1 %cmp8.1.i, i1 true, i1 %.not.1.i
  br i1 %brmerge.1.i, label %lor.end.2.i, label %lor.end.1.i.find_format_by_index.exit_crit_edge

lor.end.1.i.find_format_by_index.exit_crit_edge:  ; preds = %lor.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_by_index.exit

lor.end.2.i:                                      ; preds = %lor.end.1.i
  %inc.1.i = zext i1 %call.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %k.2.ph.i, %inc.1.i
  %call.2.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %add.ptr.i, i32 noundef 859189832) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.1.i, i32 %3)
  %cmp8.2.i = icmp ne i32 %spec.select.1.i, %3
  %.not.2.i = xor i1 %call.2.i, true
  %brmerge.2.i = select i1 %cmp8.2.i, i1 true, i1 %.not.2.i
  br i1 %brmerge.2.i, label %lor.end.3.i, label %lor.end.2.i.find_format_by_index.exit_crit_edge

lor.end.2.i.find_format_by_index.exit_crit_edge:  ; preds = %lor.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_by_index.exit

lor.end.3.i:                                      ; preds = %lor.end.2.i
  %inc.2.i = zext i1 %call.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.2.i
  %call.3.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %add.ptr.i, i32 noundef 875967048) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.2.i, i32 %3)
  %cmp8.3.i = icmp ne i32 %spec.select.2.i, %3
  %.not.3.i = xor i1 %call.3.i, true
  %brmerge.3.i = select i1 %cmp8.3.i, i1 true, i1 %.not.3.i
  br i1 %brmerge.3.i, label %lor.end.4.i, label %lor.end.3.i.find_format_by_index.exit_crit_edge

lor.end.3.i.find_format_by_index.exit_crit_edge:  ; preds = %lor.end.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_by_index.exit

lor.end.4.i:                                      ; preds = %lor.end.3.i
  %inc.3.i = zext i1 %call.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %inc.3.i
  %call.4.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %add.ptr.i, i32 noundef 808996950) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.3.i, i32 %3)
  %cmp8.4.i = icmp ne i32 %spec.select.3.i, %3
  %.not.4.i = xor i1 %call.4.i, true
  %brmerge.4.i = select i1 %cmp8.4.i, i1 true, i1 %.not.4.i
  br i1 %brmerge.4.i, label %lor.end.5.i, label %lor.end.4.i.find_format_by_index.exit_crit_edge

lor.end.4.i.find_format_by_index.exit_crit_edge:  ; preds = %lor.end.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_by_index.exit

lor.end.5.i:                                      ; preds = %lor.end.4.i
  %inc.4.i = zext i1 %call.4.i to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %inc.4.i
  %call.5.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %add.ptr.i, i32 noundef 1129727304) #10
  %phi.bo.i = xor i1 %call.5.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.4.i, i32 %3)
  %cmp8.5.i = icmp ne i32 %spec.select.4.i, %3
  %brmerge.5.i = select i1 %cmp8.5.i, i1 true, i1 %phi.bo.i
  br i1 %brmerge.5.i, label %lor.end.5.i.find_format_by_index.exit.thread_crit_edge, label %lor.end.5.i.find_format_by_index.exit_crit_edge

lor.end.5.i.find_format_by_index.exit_crit_edge:  ; preds = %lor.end.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_by_index.exit

lor.end.5.i.find_format_by_index.exit.thread_crit_edge: ; preds = %lor.end.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_by_index.exit.thread

find_format_by_index.exit.thread:                 ; preds = %lor.end.5.i.find_format_by_index.exit.thread_crit_edge, %for.inc.i.find_format_by_index.exit.thread_crit_edge, %entry.find_format_by_index.exit.thread_crit_edge
  %reserved8 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 6
  %6 = call ptr @memset(ptr %reserved8, i32 0, i32 12)
  br label %cleanup

find_format_by_index.exit:                        ; preds = %lor.end.5.i.find_format_by_index.exit_crit_edge, %lor.end.4.i.find_format_by_index.exit_crit_edge, %lor.end.3.i.find_format_by_index.exit_crit_edge, %lor.end.2.i.find_format_by_index.exit_crit_edge, %lor.end.1.i.find_format_by_index.exit_crit_edge, %lor.end.i.find_format_by_index.exit_crit_edge
  %i.0.lcssa.ph.i = phi i32 [ 0, %lor.end.i.find_format_by_index.exit_crit_edge ], [ 1, %lor.end.1.i.find_format_by_index.exit_crit_edge ], [ 2, %lor.end.2.i.find_format_by_index.exit_crit_edge ], [ 3, %lor.end.3.i.find_format_by_index.exit_crit_edge ], [ 4, %lor.end.4.i.find_format_by_index.exit_crit_edge ], [ 5, %lor.end.5.i.find_format_by_index.exit_crit_edge ]
  %arrayidx1855.i = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.0.lcssa.ph.i
  %reserved = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 6
  %7 = call ptr @memset(ptr %reserved, i32 0, i32 12)
  %tobool.not = icmp eq ptr %arrayidx1855.i, null
  br i1 %tobool.not, label %find_format_by_index.exit.cleanup_crit_edge, label %if.end

find_format_by_index.exit.cleanup_crit_edge:      ; preds = %find_format_by_index.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %find_format_by_index.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx1855.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1855.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %find_format_by_index.exit.cleanup_crit_edge, %find_format_by_index.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %find_format_by_index.exit.cleanup_crit_edge ], [ -22, %find_format_by_index.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_g_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9, label %if.then9
    i32 10, label %if.then18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_cap = getelementptr i8, ptr %1, i32 1996
  %5 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %5)
  %fmt1.051 = load ptr, ptr %fmt_cap, align 4
  %6 = ptrtoint ptr %fmt1.051 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt1.051, align 4
  %pixelformat52 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat52 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %pixelformat52, align 1
  %width = getelementptr i8, ptr %1, i32 200
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 8
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %fmt, align 1
  %height = getelementptr i8, ptr %1, i32 204
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height11 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %height11, align 1
  %colorspace = getelementptr i8, ptr %1, i32 236
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %colorspace, align 4
  %colorspace12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %colorspace12 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %colorspace12, align 1
  %ycbcr_enc = getelementptr i8, ptr %1, i32 240
  %18 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ycbcr_enc, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %19, ptr %20, align 1
  %quantization = getelementptr i8, ptr %1, i32 241
  %22 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %quantization, align 1
  %quantization13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %24 = ptrtoint ptr %quantization13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %quantization13, align 1
  %xfer_func = getelementptr i8, ptr %1, i32 242
  %25 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %xfer_func, align 2
  %xfer_func14 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %27 = ptrtoint ptr %xfer_func14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %xfer_func14, align 1
  br label %if.end22

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_out = getelementptr i8, ptr %1, i32 1992
  %28 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %28)
  %fmt1.0 = load ptr, ptr %fmt_out, align 4
  %29 = ptrtoint ptr %fmt1.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fmt1.0, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %pixelformat, align 1
  %out_width = getelementptr i8, ptr %1, i32 228
  %32 = ptrtoint ptr %out_width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out_width, align 4
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %fmt, align 1
  %out_height = getelementptr i8, ptr %1, i32 232
  %35 = ptrtoint ptr %out_height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %out_height, align 8
  %height20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %height20 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %height20, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.then9
  %call23 = tail call fastcc ptr @venc_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_s_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %format) #10
  %m2m_ctx = getelementptr i8, ptr %1, i32 2056
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 8
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %orig_pixmp.sroa.0.0.copyload = load i32, ptr %fmt, align 1
  %orig_pixmp.sroa.6.0..sroa_idx = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %orig_pixmp.sroa.6.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %orig_pixmp.sroa.6.0.copyload = load i32, ptr %orig_pixmp.sroa.6.0..sroa_idx, align 1
  %call6 = tail call fastcc ptr @venc_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef %f)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %11, label %if.end9.if.end18_crit_edge [
    i32 10, label %if.then11
    i32 9, label %if.then14
  ]

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %pixelformat, align 1
  %fmt_cap = getelementptr i8, ptr %1, i32 1996
  %15 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt_cap, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  br label %if.end18

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %pixelformat15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat15 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %pixelformat15, align 1
  %fmt_out = getelementptr i8, ptr %1, i32 1992
  %21 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt_out, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then11, %if.end9.if.end18_crit_edge
  %pixfmt_out.0 = phi i32 [ %14, %if.then11 ], [ %24, %if.then14 ], [ 0, %if.end9.if.end18_crit_edge ]
  %pixfmt_cap.0 = phi i32 [ %18, %if.then11 ], [ %20, %if.then14 ], [ 0, %if.end9.if.end18_crit_edge ]
  %25 = getelementptr inbounds i8, ptr %format, i32 16
  %26 = call ptr @memset(ptr %25, i32 0, i32 188)
  %27 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %format, align 4
  %fmt20 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %pixelformat21 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %pixelformat21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %pixfmt_out.0, ptr %pixelformat21, align 4
  %29 = ptrtoint ptr %fmt20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %orig_pixmp.sroa.0.0.copyload, ptr %fmt20, align 4
  %height25 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %height25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %orig_pixmp.sroa.6.0.copyload, ptr %height25, align 4
  %call26 = call fastcc ptr @venc_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef nonnull %format)
  %31 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %32)
  %cmp28 = icmp eq i32 %32, 10
  br i1 %cmp28, label %if.then29, label %if.end18.if.end37_crit_edge

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %fmt20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt20, align 4
  %out_width = getelementptr i8, ptr %1, i32 228
  %35 = ptrtoint ptr %out_width to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %out_width, align 4
  %36 = ptrtoint ptr %height25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height25, align 4
  %out_height = getelementptr i8, ptr %1, i32 232
  %38 = ptrtoint ptr %out_height to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %out_height, align 8
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %39 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %colorspace, align 1
  %colorspace34 = getelementptr i8, ptr %1, i32 236
  %41 = ptrtoint ptr %colorspace34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %colorspace34, align 4
  %42 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %ycbcr_enc = getelementptr i8, ptr %1, i32 240
  %45 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %ycbcr_enc, align 8
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %46 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %quantization, align 1
  %quantization35 = getelementptr i8, ptr %1, i32 241
  %48 = ptrtoint ptr %quantization35 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %quantization35, align 1
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %49 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %xfer_func, align 1
  %xfer_func36 = getelementptr i8, ptr %1, i32 242
  %51 = ptrtoint ptr %xfer_func36 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %xfer_func36, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end18.if.end37_crit_edge
  %52 = getelementptr inbounds i8, ptr %format, i32 16
  %53 = call ptr @memset(ptr %52, i32 0, i32 188)
  %54 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 9, ptr %format, align 4
  %55 = ptrtoint ptr %pixelformat21 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %pixfmt_cap.0, ptr %pixelformat21, align 4
  %56 = ptrtoint ptr %fmt20 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %orig_pixmp.sroa.0.0.copyload, ptr %fmt20, align 4
  %57 = ptrtoint ptr %height25 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %orig_pixmp.sroa.6.0.copyload, ptr %height25, align 4
  %call47 = call fastcc ptr @venc_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef nonnull %format)
  %58 = ptrtoint ptr %fmt20 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fmt20, align 4
  %width50 = getelementptr i8, ptr %1, i32 200
  %60 = ptrtoint ptr %width50 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %width50, align 8
  %61 = ptrtoint ptr %height25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height25, align 4
  %height53 = getelementptr i8, ptr %1, i32 204
  %63 = ptrtoint ptr %height53 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %height53, align 4
  %64 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %f, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %65, label %if.end37.cleanup_crit_edge [
    i32 10, label %if.then56
    i32 9, label %if.then61
  ]

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then56:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_out57 = getelementptr i8, ptr %1, i32 1992
  %67 = ptrtoint ptr %fmt_out57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call6, ptr %fmt_out57, align 8
  br label %cleanup

if.then61:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_cap62 = getelementptr i8, ptr %1, i32 1996
  %68 = ptrtoint ptr %fmt_cap62 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call6, ptr %fmt_cap62, align 4
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %69 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %plane_fmt, align 1
  %output_buf_size = getelementptr i8, ptr %1, i32 2012
  %71 = ptrtoint ptr %output_buf_size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %output_buf_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.then56, %if.end37.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %if.then61 ], [ 0, %if.then56 ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %format) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_try_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %call1 = tail call fastcc ptr @venc_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef %f)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @venc_g_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge23
    i32 0, label %sw.bb2
  ]

if.end.sw.bb_crit_edge23:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge23
  %out_width = getelementptr i8, ptr %1, i32 228
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %width3 = getelementptr i8, ptr %1, i32 200
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %.sink22.in = phi ptr [ %width3, %sw.bb2 ], [ %out_width, %sw.bb ]
  %.sink21 = phi i32 [ 204, %sw.bb2 ], [ 232, %sw.bb ]
  %7 = ptrtoint ptr %.sink22.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.sink22 = load i32, ptr %.sink22.in, align 4
  %width5 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink22, ptr %width5, align 4
  %height6 = getelementptr i8, ptr %1, i32 %.sink21
  %9 = ptrtoint ptr %height6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.sink = load i32, ptr %height6, align 4
  %height8 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %height8, align 4
  %r9 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %top, align 4
  %12 = ptrtoint ptr %r9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %r9, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @venc_s_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %out_width = getelementptr i8, ptr %1, i32 228
  %6 = ptrtoint ptr %out_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1 = icmp ugt i32 %5, %7
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %out_height = getelementptr i8, ptr %1, i32 232
  %10 = ptrtoint ptr %out_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_height, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3 = icmp ugt i32 %9, %11
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %add = add i32 %5, 1
  %and = and i32 %add, -2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %width, align 4
  %add12 = add i32 %9, 1
  %and13 = and i32 %add12, -2
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and13, ptr %height, align 4
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cond = icmp eq i32 %15, 0
  br i1 %cond, label %sw.bb, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %top, align 4
  %17 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %r, align 4
  %width20 = getelementptr i8, ptr %1, i32 200
  %18 = ptrtoint ptr %width20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %width20, align 8
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height23 = getelementptr i8, ptr %1, i32 204
  %21 = ptrtoint ptr %height23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height23, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @venc_g_parm(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %.off = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parm, align 4
  %or = or i32 %5, 4096
  store i32 %or, ptr %parm, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %timeperframe4 = getelementptr i8, ptr %3, i32 1984
  %6 = ptrtoint ptr %timeperframe4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %timeperframe4, align 8
  %8 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_s_parm(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %timeperframe1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  %.off = add i32 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reserved = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 5
  %4 = call ptr @memset(ptr %reserved, i32 0, i32 16)
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %denominator6 = getelementptr i8, ptr %1, i32 1988
  %7 = ptrtoint ptr %denominator6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %denominator6, align 4
  %9 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %denominator, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %10 = ptrtoint ptr %timeperframe1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeperframe1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %timeperframe11 = getelementptr i8, ptr %1, i32 1984
  %12 = ptrtoint ptr %timeperframe11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeperframe11, align 8
  %14 = ptrtoint ptr %timeperframe1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %timeperframe1, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge
  %15 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %parm, align 4
  %16 = ptrtoint ptr %timeperframe1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timeperframe1, align 4
  %conv = zext i32 %17 to i64
  %mul = mul nuw nsw i64 %conv, 1000000
  %18 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp189 = icmp ult i64 %mul, 4294967296
  br i1 %cmp189, label %if.then193, label %if.else199, !prof !62

if.then193:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %conv194 = trunc i64 %mul to i32
  %div197 = udiv i32 %conv194, %19
  %conv198 = zext i32 %div197 to i64
  br label %if.end203

if.else199:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %mul) #15, !srcloc !65
  %asmresult1.i = extractvalue { i64, i64 } %20, 1
  br label %if.end203

if.end203:                                        ; preds = %if.else199, %if.then193
  %us_per_frame.0 = phi i64 [ %conv198, %if.then193 ], [ %asmresult1.i, %if.else199 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %us_per_frame.0)
  %tobool205.not = icmp eq i64 %us_per_frame.0, 0
  br i1 %tobool205.not, label %if.end203.cleanup_crit_edge, label %if.end428

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end428:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  %conv209 = trunc i64 %us_per_frame.0 to i32
  %div422 = udiv i32 1000000, %conv209
  %conv423 = zext i32 %div422 to i64
  %timeperframe430 = getelementptr i8, ptr %1, i32 1984
  %21 = ptrtoint ptr %timeperframe1 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %timeperframe1, align 4
  %23 = ptrtoint ptr %timeperframe430 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %timeperframe430, align 8
  %fps431 = getelementptr i8, ptr %1, i32 1976
  %24 = ptrtoint ptr %fps431 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv423, ptr %fps431, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end428, %if.end203.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end428 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end203.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_enum_framesizes(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %type, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %3 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixel_format, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %4, label %entry.if.then_crit_edge [
    i32 842094158, label %entry.lor.lhs.false.i_crit_edge
    i32 877088845, label %lor.lhs.false.fold.split.i
    i32 859189832, label %lor.lhs.false.fold.split33.i
    i32 875967048, label %lor.lhs.false.fold.split34.i
    i32 808996950, label %lor.lhs.false.fold.split35.i
    i32 1129727304, label %lor.lhs.false.fold.split36.i
  ]

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.fold.split.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split33.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split34.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split35.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split36.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false.fold.split36.i, %lor.lhs.false.fold.split35.i, %lor.lhs.false.fold.split34.i, %lor.lhs.false.fold.split33.i, %lor.lhs.false.fold.split.i, %entry.lor.lhs.false.i_crit_edge
  %i.031.lcssa.i = phi i32 [ 0, %entry.lor.lhs.false.i_crit_edge ], [ 1, %lor.lhs.false.fold.split.i ], [ 2, %lor.lhs.false.fold.split33.i ], [ 3, %lor.lhs.false.fold.split34.i ], [ 4, %lor.lhs.false.fold.split35.i ], [ 5, %lor.lhs.false.fold.split36.i ]
  %type5.i = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i, i32 2
  %6 = ptrtoint ptr %type5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp6.not.i = icmp eq i32 %7, 9
  br i1 %cmp6.not.i, label %if.end8.i, label %lor.lhs.false.i.if.thenthread-pre-split_crit_edge

lor.lhs.false.i.if.thenthread-pre-split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.thenthread-pre-split

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %arrayidx4.i = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %call.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %add.ptr.i, i32 noundef %9) #10
  %tobool.not = icmp ne ptr %arrayidx4.i, null
  %10 = and i1 %tobool.not, %call.i
  br i1 %10, label %if.end8.i.if.end6_crit_edge, label %if.end8.i.if.thenthread-pre-split_crit_edge

if.end8.i.if.thenthread-pre-split_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.thenthread-pre-split

if.end8.i.if.end6_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.thenthread-pre-split:                          ; preds = %if.end8.i.if.thenthread-pre-split_crit_edge, %lor.lhs.false.i.if.thenthread-pre-split_crit_edge
  %11 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %pixel_format, align 4
  br label %if.then

if.then:                                          ; preds = %if.thenthread-pre-split, %entry.if.then_crit_edge
  %12 = phi i32 [ %.pr, %if.thenthread-pre-split ], [ %4, %entry.if.then_crit_edge ]
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %12, label %if.then.cleanup_crit_edge [
    i32 842094158, label %if.then.lor.lhs.false.i43_crit_edge
    i32 877088845, label %lor.lhs.false.fold.split.i34
    i32 859189832, label %lor.lhs.false.fold.split33.i35
    i32 875967048, label %lor.lhs.false.fold.split34.i36
    i32 808996950, label %lor.lhs.false.fold.split35.i37
    i32 1129727304, label %lor.lhs.false.fold.split36.i38
  ]

if.then.lor.lhs.false.i43_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i43

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.fold.split.i34:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i43

lor.lhs.false.fold.split33.i35:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i43

lor.lhs.false.fold.split34.i36:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i43

lor.lhs.false.fold.split35.i37:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i43

lor.lhs.false.fold.split36.i38:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i43

lor.lhs.false.i43:                                ; preds = %lor.lhs.false.fold.split36.i38, %lor.lhs.false.fold.split35.i37, %lor.lhs.false.fold.split34.i36, %lor.lhs.false.fold.split33.i35, %lor.lhs.false.fold.split.i34, %if.then.lor.lhs.false.i43_crit_edge
  %i.031.lcssa.i39 = phi i32 [ 0, %if.then.lor.lhs.false.i43_crit_edge ], [ 1, %lor.lhs.false.fold.split.i34 ], [ 2, %lor.lhs.false.fold.split33.i35 ], [ 3, %lor.lhs.false.fold.split34.i36 ], [ 4, %lor.lhs.false.fold.split35.i37 ], [ 5, %lor.lhs.false.fold.split36.i38 ]
  %arrayidx4.i40 = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i39
  %type5.i41 = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i39, i32 2
  %14 = ptrtoint ptr %type5.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type5.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp6.not.i42 = icmp ne i32 %15, 10
  %tobool4.not = icmp eq ptr %arrayidx4.i40, null
  %or.cond210 = or i1 %cmp6.not.i42, %tobool4.not
  br i1 %or.cond210, label %lor.lhs.false.i43.cleanup_crit_edge, label %lor.lhs.false.i43.if.end6_crit_edge

lor.lhs.false.i43.if.end6_crit_edge:              ; preds = %lor.lhs.false.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

lor.lhs.false.i43.cleanup_crit_edge:              ; preds = %lor.lhs.false.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false.i43.if.end6_crit_edge, %if.end8.i.if.end6_crit_edge
  %16 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %core1.i.i.i = getelementptr i8, ptr %1, i32 -548
  %18 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core1.i.i.i, align 4
  %hfi_codec.i.i.i = getelementptr i8, ptr %1, i32 2040
  %20 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hfi_codec.i.i.i, align 8
  %session_type.i.i.i = getelementptr i8, ptr %1, i32 2132
  %22 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i = getelementptr inbounds %struct.venus_core, ptr %19, i32 0, i32 46
  %24 = ptrtoint ptr %codecs_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %codecs_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp16.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp16.not.i.i.i.i, label %if.end9.frame_width_min.exit_crit_edge, label %if.end9.for.body.i.i.i.i_crit_edge

if.end9.for.body.i.i.i.i_crit_edge:               ; preds = %if.end9
  br label %for.body.i.i.i.i

if.end9.frame_width_min.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end9.for.body.i.i.i.i_crit_edge
  %c.017.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end9.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.venus_core, ptr %19, i32 0, i32 45, i32 %c.017.i.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp2.i.i.i.i = icmp eq i32 %27, %21
  br i1 %cmp2.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %domain5.i.i.i.i = getelementptr %struct.venus_core, ptr %19, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 1
  %28 = ptrtoint ptr %domain5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %domain5.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %23)
  %cmp6.i.i.i.i = icmp eq i32 %29, %23
  br i1 %cmp6.i.i.i.i, label %venus_caps_by_codec.exit.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %c.017.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %25
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.frame_width_min.exit_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.frame_width_min.exit_crit_edge:   ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit

venus_caps_by_codec.exit.i.i.i:                   ; preds = %land.lhs.true.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %venus_caps_by_codec.exit.i.i.i.frame_width_min.exit_crit_edge, label %for.cond.preheader.i.i.i

venus_caps_by_codec.exit.i.i.i.frame_width_min.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit

for.cond.preheader.i.i.i:                         ; preds = %venus_caps_by_codec.exit.i.i.i
  %num_caps.i.i.i = getelementptr %struct.venus_core, ptr %19, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 3
  %30 = ptrtoint ptr %num_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_caps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp35.not.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp35.not.i.i.i, label %for.cond.preheader.i.i.i.frame_width_min.exit_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.frame_width_min.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.036.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.venus_core, ptr %19, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.036.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp3.i.i.i = icmp eq i32 %33, 1
  br i1 %cmp3.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.036.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %31
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.frame_width_min.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.frame_width_min.exit_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %tobool8.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %for.end.i.i.i.frame_width_min.exit_crit_edge, label %if.end10.i.i.i

for.end.i.i.i.frame_width_min.exit_crit_edge:     ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit

if.end10.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i = getelementptr %struct.venus_core, ptr %19, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.036.i.i.i, i32 1
  %34 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %min.i.i.i, align 4
  br label %frame_width_min.exit

frame_width_min.exit:                             ; preds = %if.end10.i.i.i, %for.end.i.i.i.frame_width_min.exit_crit_edge, %for.inc.i.i.i.frame_width_min.exit_crit_edge, %for.cond.preheader.i.i.i.frame_width_min.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i.frame_width_min.exit_crit_edge, %for.inc.i.i.i.i.frame_width_min.exit_crit_edge, %if.end9.frame_width_min.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i.frame_width_min.exit_crit_edge ], [ 0, %for.end.i.i.i.frame_width_min.exit_crit_edge ], [ 0, %if.end9.frame_width_min.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i.frame_width_min.exit_crit_edge ], [ %35, %if.end10.i.i.i ], [ 0, %for.inc.i.i.i.frame_width_min.exit_crit_edge ], [ 0, %for.inc.i.i.i.i.frame_width_min.exit_crit_edge ]
  %36 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i.i.i, ptr %36, align 4
  %38 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core1.i.i.i, align 4
  %40 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hfi_codec.i.i.i, align 8
  %42 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i51 = getelementptr inbounds %struct.venus_core, ptr %39, i32 0, i32 46
  %44 = ptrtoint ptr %codecs_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %codecs_count.i.i.i.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp16.not.i.i.i.i52 = icmp eq i32 %45, 0
  br i1 %cmp16.not.i.i.i.i52, label %frame_width_min.exit.frame_width_max.exit_crit_edge, label %frame_width_min.exit.for.body.i.i.i.i56_crit_edge

frame_width_min.exit.for.body.i.i.i.i56_crit_edge: ; preds = %frame_width_min.exit
  br label %for.body.i.i.i.i56

frame_width_min.exit.frame_width_max.exit_crit_edge: ; preds = %frame_width_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.body.i.i.i.i56:                               ; preds = %for.inc.i.i.i.i62.for.body.i.i.i.i56_crit_edge, %frame_width_min.exit.for.body.i.i.i.i56_crit_edge
  %c.017.i.i.i.i53 = phi i32 [ %inc.i.i.i.i60, %for.inc.i.i.i.i62.for.body.i.i.i.i56_crit_edge ], [ 0, %frame_width_min.exit.for.body.i.i.i.i56_crit_edge ]
  %arrayidx.i.i.i.i54 = getelementptr %struct.venus_core, ptr %39, i32 0, i32 45, i32 %c.017.i.i.i.i53
  %46 = ptrtoint ptr %arrayidx.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i.i.i54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %41)
  %cmp2.i.i.i.i55 = icmp eq i32 %47, %41
  br i1 %cmp2.i.i.i.i55, label %land.lhs.true.i.i.i.i59, label %for.body.i.i.i.i56.for.inc.i.i.i.i62_crit_edge

for.body.i.i.i.i56.for.inc.i.i.i.i62_crit_edge:   ; preds = %for.body.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i62

land.lhs.true.i.i.i.i59:                          ; preds = %for.body.i.i.i.i56
  %domain5.i.i.i.i57 = getelementptr %struct.venus_core, ptr %39, i32 0, i32 45, i32 %c.017.i.i.i.i53, i32 1
  %48 = ptrtoint ptr %domain5.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %domain5.i.i.i.i57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %43)
  %cmp6.i.i.i.i58 = icmp eq i32 %49, %43
  br i1 %cmp6.i.i.i.i58, label %venus_caps_by_codec.exit.i.i.i64, label %land.lhs.true.i.i.i.i59.for.inc.i.i.i.i62_crit_edge

land.lhs.true.i.i.i.i59.for.inc.i.i.i.i62_crit_edge: ; preds = %land.lhs.true.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i62

for.inc.i.i.i.i62:                                ; preds = %land.lhs.true.i.i.i.i59.for.inc.i.i.i.i62_crit_edge, %for.body.i.i.i.i56.for.inc.i.i.i.i62_crit_edge
  %inc.i.i.i.i60 = add nuw i32 %c.017.i.i.i.i53, 1
  %exitcond.not.i.i.i.i61 = icmp eq i32 %inc.i.i.i.i60, %45
  br i1 %exitcond.not.i.i.i.i61, label %for.inc.i.i.i.i62.frame_width_max.exit_crit_edge, label %for.inc.i.i.i.i62.for.body.i.i.i.i56_crit_edge

for.inc.i.i.i.i62.for.body.i.i.i.i56_crit_edge:   ; preds = %for.inc.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i56

for.inc.i.i.i.i62.frame_width_max.exit_crit_edge: ; preds = %for.inc.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

venus_caps_by_codec.exit.i.i.i64:                 ; preds = %land.lhs.true.i.i.i.i59
  %tobool.not.i.i.i63 = icmp eq ptr %arrayidx.i.i.i.i54, null
  br i1 %tobool.not.i.i.i63, label %venus_caps_by_codec.exit.i.i.i64.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i67

venus_caps_by_codec.exit.i.i.i64.frame_width_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.cond.preheader.i.i.i67:                       ; preds = %venus_caps_by_codec.exit.i.i.i64
  %num_caps.i.i.i65 = getelementptr %struct.venus_core, ptr %39, i32 0, i32 45, i32 %c.017.i.i.i.i53, i32 3
  %50 = ptrtoint ptr %num_caps.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_caps.i.i.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp35.not.i.i.i66 = icmp eq i32 %51, 0
  br i1 %cmp35.not.i.i.i66, label %for.cond.preheader.i.i.i67.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i67.for.body.i.i.i71_crit_edge

for.cond.preheader.i.i.i67.for.body.i.i.i71_crit_edge: ; preds = %for.cond.preheader.i.i.i67
  br label %for.body.i.i.i71

for.cond.preheader.i.i.i67.frame_width_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.body.i.i.i71:                                 ; preds = %for.inc.i.i.i74.for.body.i.i.i71_crit_edge, %for.cond.preheader.i.i.i67.for.body.i.i.i71_crit_edge
  %i.036.i.i.i68 = phi i32 [ %inc.i.i.i72, %for.inc.i.i.i74.for.body.i.i.i71_crit_edge ], [ 0, %for.cond.preheader.i.i.i67.for.body.i.i.i71_crit_edge ]
  %arrayidx.i.i.i69 = getelementptr %struct.venus_core, ptr %39, i32 0, i32 45, i32 %c.017.i.i.i.i53, i32 4, i32 %i.036.i.i.i68
  %52 = ptrtoint ptr %arrayidx.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp3.i.i.i70 = icmp eq i32 %53, 1
  br i1 %cmp3.i.i.i70, label %for.end.i.i.i76, label %for.inc.i.i.i74

for.inc.i.i.i74:                                  ; preds = %for.body.i.i.i71
  %inc.i.i.i72 = add nuw i32 %i.036.i.i.i68, 1
  %exitcond.not.i.i.i73 = icmp eq i32 %inc.i.i.i72, %51
  br i1 %exitcond.not.i.i.i73, label %for.inc.i.i.i74.frame_width_max.exit_crit_edge, label %for.inc.i.i.i74.for.body.i.i.i71_crit_edge

for.inc.i.i.i74.for.body.i.i.i71_crit_edge:       ; preds = %for.inc.i.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i71

for.inc.i.i.i74.frame_width_max.exit_crit_edge:   ; preds = %for.inc.i.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.end.i.i.i76:                                  ; preds = %for.body.i.i.i71
  %tobool8.not.i.i.i75 = icmp eq ptr %arrayidx.i.i.i69, null
  br i1 %tobool8.not.i.i.i75, label %for.end.i.i.i76.frame_width_max.exit_crit_edge, label %if.end10.i.i.i77

for.end.i.i.i76.frame_width_max.exit_crit_edge:   ; preds = %for.end.i.i.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

if.end10.i.i.i77:                                 ; preds = %for.end.i.i.i76
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i = getelementptr %struct.venus_core, ptr %39, i32 0, i32 45, i32 %c.017.i.i.i.i53, i32 4, i32 %i.036.i.i.i68, i32 2
  %54 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max.i.i.i, align 4
  br label %frame_width_max.exit

frame_width_max.exit:                             ; preds = %if.end10.i.i.i77, %for.end.i.i.i76.frame_width_max.exit_crit_edge, %for.inc.i.i.i74.frame_width_max.exit_crit_edge, %for.cond.preheader.i.i.i67.frame_width_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i64.frame_width_max.exit_crit_edge, %for.inc.i.i.i.i62.frame_width_max.exit_crit_edge, %frame_width_min.exit.frame_width_max.exit_crit_edge
  %retval.0.i.i.i78 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i64.frame_width_max.exit_crit_edge ], [ 0, %for.end.i.i.i76.frame_width_max.exit_crit_edge ], [ 0, %frame_width_min.exit.frame_width_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i67.frame_width_max.exit_crit_edge ], [ %55, %if.end10.i.i.i77 ], [ 0, %for.inc.i.i.i74.frame_width_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i62.frame_width_max.exit_crit_edge ]
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %56 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %retval.0.i.i.i78, ptr %max_width, align 4
  %57 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %core1.i.i.i, align 4
  %59 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hfi_codec.i.i.i, align 8
  %61 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i82 = getelementptr inbounds %struct.venus_core, ptr %58, i32 0, i32 46
  %63 = ptrtoint ptr %codecs_count.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %codecs_count.i.i.i.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp16.not.i.i.i.i83 = icmp eq i32 %64, 0
  br i1 %cmp16.not.i.i.i.i83, label %frame_width_max.exit.frame_width_step.exit_crit_edge, label %frame_width_max.exit.for.body.i.i.i.i87_crit_edge

frame_width_max.exit.for.body.i.i.i.i87_crit_edge: ; preds = %frame_width_max.exit
  br label %for.body.i.i.i.i87

frame_width_max.exit.frame_width_step.exit_crit_edge: ; preds = %frame_width_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

for.body.i.i.i.i87:                               ; preds = %for.inc.i.i.i.i93.for.body.i.i.i.i87_crit_edge, %frame_width_max.exit.for.body.i.i.i.i87_crit_edge
  %c.017.i.i.i.i84 = phi i32 [ %inc.i.i.i.i91, %for.inc.i.i.i.i93.for.body.i.i.i.i87_crit_edge ], [ 0, %frame_width_max.exit.for.body.i.i.i.i87_crit_edge ]
  %arrayidx.i.i.i.i85 = getelementptr %struct.venus_core, ptr %58, i32 0, i32 45, i32 %c.017.i.i.i.i84
  %65 = ptrtoint ptr %arrayidx.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i.i85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %60)
  %cmp2.i.i.i.i86 = icmp eq i32 %66, %60
  br i1 %cmp2.i.i.i.i86, label %land.lhs.true.i.i.i.i90, label %for.body.i.i.i.i87.for.inc.i.i.i.i93_crit_edge

for.body.i.i.i.i87.for.inc.i.i.i.i93_crit_edge:   ; preds = %for.body.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i93

land.lhs.true.i.i.i.i90:                          ; preds = %for.body.i.i.i.i87
  %domain5.i.i.i.i88 = getelementptr %struct.venus_core, ptr %58, i32 0, i32 45, i32 %c.017.i.i.i.i84, i32 1
  %67 = ptrtoint ptr %domain5.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %domain5.i.i.i.i88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %62)
  %cmp6.i.i.i.i89 = icmp eq i32 %68, %62
  br i1 %cmp6.i.i.i.i89, label %venus_caps_by_codec.exit.i.i.i95, label %land.lhs.true.i.i.i.i90.for.inc.i.i.i.i93_crit_edge

land.lhs.true.i.i.i.i90.for.inc.i.i.i.i93_crit_edge: ; preds = %land.lhs.true.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i93

for.inc.i.i.i.i93:                                ; preds = %land.lhs.true.i.i.i.i90.for.inc.i.i.i.i93_crit_edge, %for.body.i.i.i.i87.for.inc.i.i.i.i93_crit_edge
  %inc.i.i.i.i91 = add nuw i32 %c.017.i.i.i.i84, 1
  %exitcond.not.i.i.i.i92 = icmp eq i32 %inc.i.i.i.i91, %64
  br i1 %exitcond.not.i.i.i.i92, label %for.inc.i.i.i.i93.frame_width_step.exit_crit_edge, label %for.inc.i.i.i.i93.for.body.i.i.i.i87_crit_edge

for.inc.i.i.i.i93.for.body.i.i.i.i87_crit_edge:   ; preds = %for.inc.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i87

for.inc.i.i.i.i93.frame_width_step.exit_crit_edge: ; preds = %for.inc.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

venus_caps_by_codec.exit.i.i.i95:                 ; preds = %land.lhs.true.i.i.i.i90
  %tobool.not.i.i.i94 = icmp eq ptr %arrayidx.i.i.i.i85, null
  br i1 %tobool.not.i.i.i94, label %venus_caps_by_codec.exit.i.i.i95.frame_width_step.exit_crit_edge, label %for.cond.preheader.i.i.i98

venus_caps_by_codec.exit.i.i.i95.frame_width_step.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

for.cond.preheader.i.i.i98:                       ; preds = %venus_caps_by_codec.exit.i.i.i95
  %num_caps.i.i.i96 = getelementptr %struct.venus_core, ptr %58, i32 0, i32 45, i32 %c.017.i.i.i.i84, i32 3
  %69 = ptrtoint ptr %num_caps.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_caps.i.i.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp35.not.i.i.i97 = icmp eq i32 %70, 0
  br i1 %cmp35.not.i.i.i97, label %for.cond.preheader.i.i.i98.frame_width_step.exit_crit_edge, label %for.cond.preheader.i.i.i98.for.body.i.i.i102_crit_edge

for.cond.preheader.i.i.i98.for.body.i.i.i102_crit_edge: ; preds = %for.cond.preheader.i.i.i98
  br label %for.body.i.i.i102

for.cond.preheader.i.i.i98.frame_width_step.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

for.body.i.i.i102:                                ; preds = %for.inc.i.i.i105.for.body.i.i.i102_crit_edge, %for.cond.preheader.i.i.i98.for.body.i.i.i102_crit_edge
  %i.036.i.i.i99 = phi i32 [ %inc.i.i.i103, %for.inc.i.i.i105.for.body.i.i.i102_crit_edge ], [ 0, %for.cond.preheader.i.i.i98.for.body.i.i.i102_crit_edge ]
  %arrayidx.i.i.i100 = getelementptr %struct.venus_core, ptr %58, i32 0, i32 45, i32 %c.017.i.i.i.i84, i32 4, i32 %i.036.i.i.i99
  %71 = ptrtoint ptr %arrayidx.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp3.i.i.i101 = icmp eq i32 %72, 1
  br i1 %cmp3.i.i.i101, label %for.end.i.i.i107, label %for.inc.i.i.i105

for.inc.i.i.i105:                                 ; preds = %for.body.i.i.i102
  %inc.i.i.i103 = add nuw i32 %i.036.i.i.i99, 1
  %exitcond.not.i.i.i104 = icmp eq i32 %inc.i.i.i103, %70
  br i1 %exitcond.not.i.i.i104, label %for.inc.i.i.i105.frame_width_step.exit_crit_edge, label %for.inc.i.i.i105.for.body.i.i.i102_crit_edge

for.inc.i.i.i105.for.body.i.i.i102_crit_edge:     ; preds = %for.inc.i.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i102

for.inc.i.i.i105.frame_width_step.exit_crit_edge: ; preds = %for.inc.i.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

for.end.i.i.i107:                                 ; preds = %for.body.i.i.i102
  %tobool8.not.i.i.i106 = icmp eq ptr %arrayidx.i.i.i100, null
  br i1 %tobool8.not.i.i.i106, label %for.end.i.i.i107.frame_width_step.exit_crit_edge, label %if.end10.i.i.i108

for.end.i.i.i107.frame_width_step.exit_crit_edge: ; preds = %for.end.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

if.end10.i.i.i108:                                ; preds = %for.end.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  %step_size.i.i.i = getelementptr %struct.venus_core, ptr %58, i32 0, i32 45, i32 %c.017.i.i.i.i84, i32 4, i32 %i.036.i.i.i99, i32 3
  %73 = ptrtoint ptr %step_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %step_size.i.i.i, align 4
  br label %frame_width_step.exit

frame_width_step.exit:                            ; preds = %if.end10.i.i.i108, %for.end.i.i.i107.frame_width_step.exit_crit_edge, %for.inc.i.i.i105.frame_width_step.exit_crit_edge, %for.cond.preheader.i.i.i98.frame_width_step.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i95.frame_width_step.exit_crit_edge, %for.inc.i.i.i.i93.frame_width_step.exit_crit_edge, %frame_width_max.exit.frame_width_step.exit_crit_edge
  %retval.0.i.i.i109 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i95.frame_width_step.exit_crit_edge ], [ 0, %for.end.i.i.i107.frame_width_step.exit_crit_edge ], [ 0, %frame_width_max.exit.frame_width_step.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i98.frame_width_step.exit_crit_edge ], [ %74, %if.end10.i.i.i108 ], [ 0, %for.inc.i.i.i105.frame_width_step.exit_crit_edge ], [ 0, %for.inc.i.i.i.i93.frame_width_step.exit_crit_edge ]
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %75 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i.i.i109, ptr %step_width, align 4
  %76 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %core1.i.i.i, align 4
  %78 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hfi_codec.i.i.i, align 8
  %80 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i113 = getelementptr inbounds %struct.venus_core, ptr %77, i32 0, i32 46
  %82 = ptrtoint ptr %codecs_count.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %codecs_count.i.i.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp16.not.i.i.i.i114 = icmp eq i32 %83, 0
  br i1 %cmp16.not.i.i.i.i114, label %frame_width_step.exit.frame_height_min.exit_crit_edge, label %frame_width_step.exit.for.body.i.i.i.i118_crit_edge

frame_width_step.exit.for.body.i.i.i.i118_crit_edge: ; preds = %frame_width_step.exit
  br label %for.body.i.i.i.i118

frame_width_step.exit.frame_height_min.exit_crit_edge: ; preds = %frame_width_step.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

for.body.i.i.i.i118:                              ; preds = %for.inc.i.i.i.i124.for.body.i.i.i.i118_crit_edge, %frame_width_step.exit.for.body.i.i.i.i118_crit_edge
  %c.017.i.i.i.i115 = phi i32 [ %inc.i.i.i.i122, %for.inc.i.i.i.i124.for.body.i.i.i.i118_crit_edge ], [ 0, %frame_width_step.exit.for.body.i.i.i.i118_crit_edge ]
  %arrayidx.i.i.i.i116 = getelementptr %struct.venus_core, ptr %77, i32 0, i32 45, i32 %c.017.i.i.i.i115
  %84 = ptrtoint ptr %arrayidx.i.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i.i.i.i116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %79)
  %cmp2.i.i.i.i117 = icmp eq i32 %85, %79
  br i1 %cmp2.i.i.i.i117, label %land.lhs.true.i.i.i.i121, label %for.body.i.i.i.i118.for.inc.i.i.i.i124_crit_edge

for.body.i.i.i.i118.for.inc.i.i.i.i124_crit_edge: ; preds = %for.body.i.i.i.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i124

land.lhs.true.i.i.i.i121:                         ; preds = %for.body.i.i.i.i118
  %domain5.i.i.i.i119 = getelementptr %struct.venus_core, ptr %77, i32 0, i32 45, i32 %c.017.i.i.i.i115, i32 1
  %86 = ptrtoint ptr %domain5.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %domain5.i.i.i.i119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %81)
  %cmp6.i.i.i.i120 = icmp eq i32 %87, %81
  br i1 %cmp6.i.i.i.i120, label %venus_caps_by_codec.exit.i.i.i126, label %land.lhs.true.i.i.i.i121.for.inc.i.i.i.i124_crit_edge

land.lhs.true.i.i.i.i121.for.inc.i.i.i.i124_crit_edge: ; preds = %land.lhs.true.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i124

for.inc.i.i.i.i124:                               ; preds = %land.lhs.true.i.i.i.i121.for.inc.i.i.i.i124_crit_edge, %for.body.i.i.i.i118.for.inc.i.i.i.i124_crit_edge
  %inc.i.i.i.i122 = add nuw i32 %c.017.i.i.i.i115, 1
  %exitcond.not.i.i.i.i123 = icmp eq i32 %inc.i.i.i.i122, %83
  br i1 %exitcond.not.i.i.i.i123, label %for.inc.i.i.i.i124.frame_height_min.exit_crit_edge, label %for.inc.i.i.i.i124.for.body.i.i.i.i118_crit_edge

for.inc.i.i.i.i124.for.body.i.i.i.i118_crit_edge: ; preds = %for.inc.i.i.i.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i118

for.inc.i.i.i.i124.frame_height_min.exit_crit_edge: ; preds = %for.inc.i.i.i.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

venus_caps_by_codec.exit.i.i.i126:                ; preds = %land.lhs.true.i.i.i.i121
  %tobool.not.i.i.i125 = icmp eq ptr %arrayidx.i.i.i.i116, null
  br i1 %tobool.not.i.i.i125, label %venus_caps_by_codec.exit.i.i.i126.frame_height_min.exit_crit_edge, label %for.cond.preheader.i.i.i129

venus_caps_by_codec.exit.i.i.i126.frame_height_min.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

for.cond.preheader.i.i.i129:                      ; preds = %venus_caps_by_codec.exit.i.i.i126
  %num_caps.i.i.i127 = getelementptr %struct.venus_core, ptr %77, i32 0, i32 45, i32 %c.017.i.i.i.i115, i32 3
  %88 = ptrtoint ptr %num_caps.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_caps.i.i.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp35.not.i.i.i128 = icmp eq i32 %89, 0
  br i1 %cmp35.not.i.i.i128, label %for.cond.preheader.i.i.i129.frame_height_min.exit_crit_edge, label %for.cond.preheader.i.i.i129.for.body.i.i.i133_crit_edge

for.cond.preheader.i.i.i129.for.body.i.i.i133_crit_edge: ; preds = %for.cond.preheader.i.i.i129
  br label %for.body.i.i.i133

for.cond.preheader.i.i.i129.frame_height_min.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

for.body.i.i.i133:                                ; preds = %for.inc.i.i.i136.for.body.i.i.i133_crit_edge, %for.cond.preheader.i.i.i129.for.body.i.i.i133_crit_edge
  %i.036.i.i.i130 = phi i32 [ %inc.i.i.i134, %for.inc.i.i.i136.for.body.i.i.i133_crit_edge ], [ 0, %for.cond.preheader.i.i.i129.for.body.i.i.i133_crit_edge ]
  %arrayidx.i.i.i131 = getelementptr %struct.venus_core, ptr %77, i32 0, i32 45, i32 %c.017.i.i.i.i115, i32 4, i32 %i.036.i.i.i130
  %90 = ptrtoint ptr %arrayidx.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp3.i.i.i132 = icmp eq i32 %91, 2
  br i1 %cmp3.i.i.i132, label %for.end.i.i.i138, label %for.inc.i.i.i136

for.inc.i.i.i136:                                 ; preds = %for.body.i.i.i133
  %inc.i.i.i134 = add nuw i32 %i.036.i.i.i130, 1
  %exitcond.not.i.i.i135 = icmp eq i32 %inc.i.i.i134, %89
  br i1 %exitcond.not.i.i.i135, label %for.inc.i.i.i136.frame_height_min.exit_crit_edge, label %for.inc.i.i.i136.for.body.i.i.i133_crit_edge

for.inc.i.i.i136.for.body.i.i.i133_crit_edge:     ; preds = %for.inc.i.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i133

for.inc.i.i.i136.frame_height_min.exit_crit_edge: ; preds = %for.inc.i.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

for.end.i.i.i138:                                 ; preds = %for.body.i.i.i133
  %tobool8.not.i.i.i137 = icmp eq ptr %arrayidx.i.i.i131, null
  br i1 %tobool8.not.i.i.i137, label %for.end.i.i.i138.frame_height_min.exit_crit_edge, label %if.end10.i.i.i140

for.end.i.i.i138.frame_height_min.exit_crit_edge: ; preds = %for.end.i.i.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

if.end10.i.i.i140:                                ; preds = %for.end.i.i.i138
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i139 = getelementptr %struct.venus_core, ptr %77, i32 0, i32 45, i32 %c.017.i.i.i.i115, i32 4, i32 %i.036.i.i.i130, i32 1
  %92 = ptrtoint ptr %min.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %min.i.i.i139, align 4
  br label %frame_height_min.exit

frame_height_min.exit:                            ; preds = %if.end10.i.i.i140, %for.end.i.i.i138.frame_height_min.exit_crit_edge, %for.inc.i.i.i136.frame_height_min.exit_crit_edge, %for.cond.preheader.i.i.i129.frame_height_min.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i126.frame_height_min.exit_crit_edge, %for.inc.i.i.i.i124.frame_height_min.exit_crit_edge, %frame_width_step.exit.frame_height_min.exit_crit_edge
  %retval.0.i.i.i141 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i126.frame_height_min.exit_crit_edge ], [ 0, %for.end.i.i.i138.frame_height_min.exit_crit_edge ], [ 0, %frame_width_step.exit.frame_height_min.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i129.frame_height_min.exit_crit_edge ], [ %93, %if.end10.i.i.i140 ], [ 0, %for.inc.i.i.i136.frame_height_min.exit_crit_edge ], [ 0, %for.inc.i.i.i.i124.frame_height_min.exit_crit_edge ]
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %94 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %retval.0.i.i.i141, ptr %min_height, align 4
  %95 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %core1.i.i.i, align 4
  %97 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hfi_codec.i.i.i, align 8
  %99 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i145 = getelementptr inbounds %struct.venus_core, ptr %96, i32 0, i32 46
  %101 = ptrtoint ptr %codecs_count.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %codecs_count.i.i.i.i145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp16.not.i.i.i.i146 = icmp eq i32 %102, 0
  br i1 %cmp16.not.i.i.i.i146, label %frame_height_min.exit.frame_height_max.exit_crit_edge, label %frame_height_min.exit.for.body.i.i.i.i150_crit_edge

frame_height_min.exit.for.body.i.i.i.i150_crit_edge: ; preds = %frame_height_min.exit
  br label %for.body.i.i.i.i150

frame_height_min.exit.frame_height_max.exit_crit_edge: ; preds = %frame_height_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.body.i.i.i.i150:                              ; preds = %for.inc.i.i.i.i156.for.body.i.i.i.i150_crit_edge, %frame_height_min.exit.for.body.i.i.i.i150_crit_edge
  %c.017.i.i.i.i147 = phi i32 [ %inc.i.i.i.i154, %for.inc.i.i.i.i156.for.body.i.i.i.i150_crit_edge ], [ 0, %frame_height_min.exit.for.body.i.i.i.i150_crit_edge ]
  %arrayidx.i.i.i.i148 = getelementptr %struct.venus_core, ptr %96, i32 0, i32 45, i32 %c.017.i.i.i.i147
  %103 = ptrtoint ptr %arrayidx.i.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i.i.i148, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %98)
  %cmp2.i.i.i.i149 = icmp eq i32 %104, %98
  br i1 %cmp2.i.i.i.i149, label %land.lhs.true.i.i.i.i153, label %for.body.i.i.i.i150.for.inc.i.i.i.i156_crit_edge

for.body.i.i.i.i150.for.inc.i.i.i.i156_crit_edge: ; preds = %for.body.i.i.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i156

land.lhs.true.i.i.i.i153:                         ; preds = %for.body.i.i.i.i150
  %domain5.i.i.i.i151 = getelementptr %struct.venus_core, ptr %96, i32 0, i32 45, i32 %c.017.i.i.i.i147, i32 1
  %105 = ptrtoint ptr %domain5.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %domain5.i.i.i.i151, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %100)
  %cmp6.i.i.i.i152 = icmp eq i32 %106, %100
  br i1 %cmp6.i.i.i.i152, label %venus_caps_by_codec.exit.i.i.i158, label %land.lhs.true.i.i.i.i153.for.inc.i.i.i.i156_crit_edge

land.lhs.true.i.i.i.i153.for.inc.i.i.i.i156_crit_edge: ; preds = %land.lhs.true.i.i.i.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i156

for.inc.i.i.i.i156:                               ; preds = %land.lhs.true.i.i.i.i153.for.inc.i.i.i.i156_crit_edge, %for.body.i.i.i.i150.for.inc.i.i.i.i156_crit_edge
  %inc.i.i.i.i154 = add nuw i32 %c.017.i.i.i.i147, 1
  %exitcond.not.i.i.i.i155 = icmp eq i32 %inc.i.i.i.i154, %102
  br i1 %exitcond.not.i.i.i.i155, label %for.inc.i.i.i.i156.frame_height_max.exit_crit_edge, label %for.inc.i.i.i.i156.for.body.i.i.i.i150_crit_edge

for.inc.i.i.i.i156.for.body.i.i.i.i150_crit_edge: ; preds = %for.inc.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i150

for.inc.i.i.i.i156.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

venus_caps_by_codec.exit.i.i.i158:                ; preds = %land.lhs.true.i.i.i.i153
  %tobool.not.i.i.i157 = icmp eq ptr %arrayidx.i.i.i.i148, null
  br i1 %tobool.not.i.i.i157, label %venus_caps_by_codec.exit.i.i.i158.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i161

venus_caps_by_codec.exit.i.i.i158.frame_height_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.cond.preheader.i.i.i161:                      ; preds = %venus_caps_by_codec.exit.i.i.i158
  %num_caps.i.i.i159 = getelementptr %struct.venus_core, ptr %96, i32 0, i32 45, i32 %c.017.i.i.i.i147, i32 3
  %107 = ptrtoint ptr %num_caps.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_caps.i.i.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp35.not.i.i.i160 = icmp eq i32 %108, 0
  br i1 %cmp35.not.i.i.i160, label %for.cond.preheader.i.i.i161.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i161.for.body.i.i.i165_crit_edge

for.cond.preheader.i.i.i161.for.body.i.i.i165_crit_edge: ; preds = %for.cond.preheader.i.i.i161
  br label %for.body.i.i.i165

for.cond.preheader.i.i.i161.frame_height_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.body.i.i.i165:                                ; preds = %for.inc.i.i.i168.for.body.i.i.i165_crit_edge, %for.cond.preheader.i.i.i161.for.body.i.i.i165_crit_edge
  %i.036.i.i.i162 = phi i32 [ %inc.i.i.i166, %for.inc.i.i.i168.for.body.i.i.i165_crit_edge ], [ 0, %for.cond.preheader.i.i.i161.for.body.i.i.i165_crit_edge ]
  %arrayidx.i.i.i163 = getelementptr %struct.venus_core, ptr %96, i32 0, i32 45, i32 %c.017.i.i.i.i147, i32 4, i32 %i.036.i.i.i162
  %109 = ptrtoint ptr %arrayidx.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i.i.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %110)
  %cmp3.i.i.i164 = icmp eq i32 %110, 2
  br i1 %cmp3.i.i.i164, label %for.end.i.i.i170, label %for.inc.i.i.i168

for.inc.i.i.i168:                                 ; preds = %for.body.i.i.i165
  %inc.i.i.i166 = add nuw i32 %i.036.i.i.i162, 1
  %exitcond.not.i.i.i167 = icmp eq i32 %inc.i.i.i166, %108
  br i1 %exitcond.not.i.i.i167, label %for.inc.i.i.i168.frame_height_max.exit_crit_edge, label %for.inc.i.i.i168.for.body.i.i.i165_crit_edge

for.inc.i.i.i168.for.body.i.i.i165_crit_edge:     ; preds = %for.inc.i.i.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i165

for.inc.i.i.i168.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.end.i.i.i170:                                 ; preds = %for.body.i.i.i165
  %tobool8.not.i.i.i169 = icmp eq ptr %arrayidx.i.i.i163, null
  br i1 %tobool8.not.i.i.i169, label %for.end.i.i.i170.frame_height_max.exit_crit_edge, label %if.end10.i.i.i172

for.end.i.i.i170.frame_height_max.exit_crit_edge: ; preds = %for.end.i.i.i170
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

if.end10.i.i.i172:                                ; preds = %for.end.i.i.i170
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i171 = getelementptr %struct.venus_core, ptr %96, i32 0, i32 45, i32 %c.017.i.i.i.i147, i32 4, i32 %i.036.i.i.i162, i32 2
  %111 = ptrtoint ptr %max.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max.i.i.i171, align 4
  br label %frame_height_max.exit

frame_height_max.exit:                            ; preds = %if.end10.i.i.i172, %for.end.i.i.i170.frame_height_max.exit_crit_edge, %for.inc.i.i.i168.frame_height_max.exit_crit_edge, %for.cond.preheader.i.i.i161.frame_height_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i158.frame_height_max.exit_crit_edge, %for.inc.i.i.i.i156.frame_height_max.exit_crit_edge, %frame_height_min.exit.frame_height_max.exit_crit_edge
  %retval.0.i.i.i173 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i158.frame_height_max.exit_crit_edge ], [ 0, %for.end.i.i.i170.frame_height_max.exit_crit_edge ], [ 0, %frame_height_min.exit.frame_height_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i161.frame_height_max.exit_crit_edge ], [ %112, %if.end10.i.i.i172 ], [ 0, %for.inc.i.i.i168.frame_height_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i156.frame_height_max.exit_crit_edge ]
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %113 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %retval.0.i.i.i173, ptr %max_height, align 4
  %114 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %core1.i.i.i, align 4
  %116 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %hfi_codec.i.i.i, align 8
  %118 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i177 = getelementptr inbounds %struct.venus_core, ptr %115, i32 0, i32 46
  %120 = ptrtoint ptr %codecs_count.i.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %codecs_count.i.i.i.i177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp16.not.i.i.i.i178 = icmp eq i32 %121, 0
  br i1 %cmp16.not.i.i.i.i178, label %frame_height_max.exit.frame_height_step.exit_crit_edge, label %frame_height_max.exit.for.body.i.i.i.i182_crit_edge

frame_height_max.exit.for.body.i.i.i.i182_crit_edge: ; preds = %frame_height_max.exit
  br label %for.body.i.i.i.i182

frame_height_max.exit.frame_height_step.exit_crit_edge: ; preds = %frame_height_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

for.body.i.i.i.i182:                              ; preds = %for.inc.i.i.i.i188.for.body.i.i.i.i182_crit_edge, %frame_height_max.exit.for.body.i.i.i.i182_crit_edge
  %c.017.i.i.i.i179 = phi i32 [ %inc.i.i.i.i186, %for.inc.i.i.i.i188.for.body.i.i.i.i182_crit_edge ], [ 0, %frame_height_max.exit.for.body.i.i.i.i182_crit_edge ]
  %arrayidx.i.i.i.i180 = getelementptr %struct.venus_core, ptr %115, i32 0, i32 45, i32 %c.017.i.i.i.i179
  %122 = ptrtoint ptr %arrayidx.i.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i.i.i.i180, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %117)
  %cmp2.i.i.i.i181 = icmp eq i32 %123, %117
  br i1 %cmp2.i.i.i.i181, label %land.lhs.true.i.i.i.i185, label %for.body.i.i.i.i182.for.inc.i.i.i.i188_crit_edge

for.body.i.i.i.i182.for.inc.i.i.i.i188_crit_edge: ; preds = %for.body.i.i.i.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i188

land.lhs.true.i.i.i.i185:                         ; preds = %for.body.i.i.i.i182
  %domain5.i.i.i.i183 = getelementptr %struct.venus_core, ptr %115, i32 0, i32 45, i32 %c.017.i.i.i.i179, i32 1
  %124 = ptrtoint ptr %domain5.i.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %domain5.i.i.i.i183, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %119)
  %cmp6.i.i.i.i184 = icmp eq i32 %125, %119
  br i1 %cmp6.i.i.i.i184, label %venus_caps_by_codec.exit.i.i.i190, label %land.lhs.true.i.i.i.i185.for.inc.i.i.i.i188_crit_edge

land.lhs.true.i.i.i.i185.for.inc.i.i.i.i188_crit_edge: ; preds = %land.lhs.true.i.i.i.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i188

for.inc.i.i.i.i188:                               ; preds = %land.lhs.true.i.i.i.i185.for.inc.i.i.i.i188_crit_edge, %for.body.i.i.i.i182.for.inc.i.i.i.i188_crit_edge
  %inc.i.i.i.i186 = add nuw i32 %c.017.i.i.i.i179, 1
  %exitcond.not.i.i.i.i187 = icmp eq i32 %inc.i.i.i.i186, %121
  br i1 %exitcond.not.i.i.i.i187, label %for.inc.i.i.i.i188.frame_height_step.exit_crit_edge, label %for.inc.i.i.i.i188.for.body.i.i.i.i182_crit_edge

for.inc.i.i.i.i188.for.body.i.i.i.i182_crit_edge: ; preds = %for.inc.i.i.i.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i182

for.inc.i.i.i.i188.frame_height_step.exit_crit_edge: ; preds = %for.inc.i.i.i.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

venus_caps_by_codec.exit.i.i.i190:                ; preds = %land.lhs.true.i.i.i.i185
  %tobool.not.i.i.i189 = icmp eq ptr %arrayidx.i.i.i.i180, null
  br i1 %tobool.not.i.i.i189, label %venus_caps_by_codec.exit.i.i.i190.frame_height_step.exit_crit_edge, label %for.cond.preheader.i.i.i193

venus_caps_by_codec.exit.i.i.i190.frame_height_step.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

for.cond.preheader.i.i.i193:                      ; preds = %venus_caps_by_codec.exit.i.i.i190
  %num_caps.i.i.i191 = getelementptr %struct.venus_core, ptr %115, i32 0, i32 45, i32 %c.017.i.i.i.i179, i32 3
  %126 = ptrtoint ptr %num_caps.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_caps.i.i.i191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp35.not.i.i.i192 = icmp eq i32 %127, 0
  br i1 %cmp35.not.i.i.i192, label %for.cond.preheader.i.i.i193.frame_height_step.exit_crit_edge, label %for.cond.preheader.i.i.i193.for.body.i.i.i197_crit_edge

for.cond.preheader.i.i.i193.for.body.i.i.i197_crit_edge: ; preds = %for.cond.preheader.i.i.i193
  br label %for.body.i.i.i197

for.cond.preheader.i.i.i193.frame_height_step.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

for.body.i.i.i197:                                ; preds = %for.inc.i.i.i200.for.body.i.i.i197_crit_edge, %for.cond.preheader.i.i.i193.for.body.i.i.i197_crit_edge
  %i.036.i.i.i194 = phi i32 [ %inc.i.i.i198, %for.inc.i.i.i200.for.body.i.i.i197_crit_edge ], [ 0, %for.cond.preheader.i.i.i193.for.body.i.i.i197_crit_edge ]
  %arrayidx.i.i.i195 = getelementptr %struct.venus_core, ptr %115, i32 0, i32 45, i32 %c.017.i.i.i.i179, i32 4, i32 %i.036.i.i.i194
  %128 = ptrtoint ptr %arrayidx.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i.i.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %cmp3.i.i.i196 = icmp eq i32 %129, 2
  br i1 %cmp3.i.i.i196, label %for.end.i.i.i202, label %for.inc.i.i.i200

for.inc.i.i.i200:                                 ; preds = %for.body.i.i.i197
  %inc.i.i.i198 = add nuw i32 %i.036.i.i.i194, 1
  %exitcond.not.i.i.i199 = icmp eq i32 %inc.i.i.i198, %127
  br i1 %exitcond.not.i.i.i199, label %for.inc.i.i.i200.frame_height_step.exit_crit_edge, label %for.inc.i.i.i200.for.body.i.i.i197_crit_edge

for.inc.i.i.i200.for.body.i.i.i197_crit_edge:     ; preds = %for.inc.i.i.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i197

for.inc.i.i.i200.frame_height_step.exit_crit_edge: ; preds = %for.inc.i.i.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

for.end.i.i.i202:                                 ; preds = %for.body.i.i.i197
  %tobool8.not.i.i.i201 = icmp eq ptr %arrayidx.i.i.i195, null
  br i1 %tobool8.not.i.i.i201, label %for.end.i.i.i202.frame_height_step.exit_crit_edge, label %if.end10.i.i.i204

for.end.i.i.i202.frame_height_step.exit_crit_edge: ; preds = %for.end.i.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

if.end10.i.i.i204:                                ; preds = %for.end.i.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  %step_size.i.i.i203 = getelementptr %struct.venus_core, ptr %115, i32 0, i32 45, i32 %c.017.i.i.i.i179, i32 4, i32 %i.036.i.i.i194, i32 3
  %130 = ptrtoint ptr %step_size.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %step_size.i.i.i203, align 4
  br label %frame_height_step.exit

frame_height_step.exit:                           ; preds = %if.end10.i.i.i204, %for.end.i.i.i202.frame_height_step.exit_crit_edge, %for.inc.i.i.i200.frame_height_step.exit_crit_edge, %for.cond.preheader.i.i.i193.frame_height_step.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i190.frame_height_step.exit_crit_edge, %for.inc.i.i.i.i188.frame_height_step.exit_crit_edge, %frame_height_max.exit.frame_height_step.exit_crit_edge
  %retval.0.i.i.i205 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i190.frame_height_step.exit_crit_edge ], [ 0, %for.end.i.i.i202.frame_height_step.exit_crit_edge ], [ 0, %frame_height_max.exit.frame_height_step.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i193.frame_height_step.exit_crit_edge ], [ %131, %if.end10.i.i.i204 ], [ 0, %for.inc.i.i.i200.frame_height_step.exit_crit_edge ], [ 0, %for.inc.i.i.i.i188.frame_height_step.exit_crit_edge ]
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %132 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %retval.0.i.i.i205, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %frame_height_step.exit, %if.end6.cleanup_crit_edge, %lor.lhs.false.i43.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %frame_height_step.exit ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %lor.lhs.false.i43.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_enum_frameintervals(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fival) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %type, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %3 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixel_format, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %4, label %entry.if.then_crit_edge [
    i32 842094158, label %entry.lor.lhs.false.i_crit_edge
    i32 877088845, label %lor.lhs.false.fold.split.i
    i32 859189832, label %lor.lhs.false.fold.split33.i
    i32 875967048, label %lor.lhs.false.fold.split34.i
    i32 808996950, label %lor.lhs.false.fold.split35.i
    i32 1129727304, label %lor.lhs.false.fold.split36.i
  ]

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.fold.split.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split33.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split34.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split35.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split36.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false.fold.split36.i, %lor.lhs.false.fold.split35.i, %lor.lhs.false.fold.split34.i, %lor.lhs.false.fold.split33.i, %lor.lhs.false.fold.split.i, %entry.lor.lhs.false.i_crit_edge
  %i.031.lcssa.i = phi i32 [ 0, %entry.lor.lhs.false.i_crit_edge ], [ 1, %lor.lhs.false.fold.split.i ], [ 2, %lor.lhs.false.fold.split33.i ], [ 3, %lor.lhs.false.fold.split34.i ], [ 4, %lor.lhs.false.fold.split35.i ], [ 5, %lor.lhs.false.fold.split36.i ]
  %type5.i = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i, i32 2
  %6 = ptrtoint ptr %type5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp6.not.i = icmp eq i32 %7, 9
  br i1 %cmp6.not.i, label %if.end8.i, label %lor.lhs.false.i.if.thenthread-pre-split_crit_edge

lor.lhs.false.i.if.thenthread-pre-split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.thenthread-pre-split

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %arrayidx4.i = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %call.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %add.ptr.i, i32 noundef %9) #10
  %tobool.not = icmp ne ptr %arrayidx4.i, null
  %10 = and i1 %tobool.not, %call.i
  br i1 %10, label %if.end8.i.if.end6_crit_edge, label %if.end8.i.if.thenthread-pre-split_crit_edge

if.end8.i.if.thenthread-pre-split_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.thenthread-pre-split

if.end8.i.if.end6_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.thenthread-pre-split:                          ; preds = %if.end8.i.if.thenthread-pre-split_crit_edge, %lor.lhs.false.i.if.thenthread-pre-split_crit_edge
  %11 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %pixel_format, align 4
  br label %if.then

if.then:                                          ; preds = %if.thenthread-pre-split, %entry.if.then_crit_edge
  %12 = phi i32 [ %.pr, %if.thenthread-pre-split ], [ %4, %entry.if.then_crit_edge ]
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %12, label %if.then.cleanup_crit_edge [
    i32 842094158, label %if.then.lor.lhs.false.i83_crit_edge
    i32 877088845, label %lor.lhs.false.fold.split.i74
    i32 859189832, label %lor.lhs.false.fold.split33.i75
    i32 875967048, label %lor.lhs.false.fold.split34.i76
    i32 808996950, label %lor.lhs.false.fold.split35.i77
    i32 1129727304, label %lor.lhs.false.fold.split36.i78
  ]

if.then.lor.lhs.false.i83_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i83

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.fold.split.i74:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i83

lor.lhs.false.fold.split33.i75:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i83

lor.lhs.false.fold.split34.i76:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i83

lor.lhs.false.fold.split35.i77:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i83

lor.lhs.false.fold.split36.i78:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i83

lor.lhs.false.i83:                                ; preds = %lor.lhs.false.fold.split36.i78, %lor.lhs.false.fold.split35.i77, %lor.lhs.false.fold.split34.i76, %lor.lhs.false.fold.split33.i75, %lor.lhs.false.fold.split.i74, %if.then.lor.lhs.false.i83_crit_edge
  %i.031.lcssa.i79 = phi i32 [ 0, %if.then.lor.lhs.false.i83_crit_edge ], [ 1, %lor.lhs.false.fold.split.i74 ], [ 2, %lor.lhs.false.fold.split33.i75 ], [ 3, %lor.lhs.false.fold.split34.i76 ], [ 4, %lor.lhs.false.fold.split35.i77 ], [ 5, %lor.lhs.false.fold.split36.i78 ]
  %arrayidx4.i80 = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i79
  %type5.i81 = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i79, i32 2
  %14 = ptrtoint ptr %type5.i81 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type5.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp6.not.i82 = icmp ne i32 %15, 10
  %tobool4.not = icmp eq ptr %arrayidx4.i80, null
  %or.cond159 = or i1 %cmp6.not.i82, %tobool4.not
  br i1 %or.cond159, label %lor.lhs.false.i83.cleanup_crit_edge, label %lor.lhs.false.i83.if.end6_crit_edge

lor.lhs.false.i83.if.end6_crit_edge:              ; preds = %lor.lhs.false.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

lor.lhs.false.i83.cleanup_crit_edge:              ; preds = %lor.lhs.false.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false.i83.if.end6_crit_edge, %if.end8.i.if.end6_crit_edge
  %16 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fival, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %lor.lhs.false

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end9
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not = icmp eq i32 %21, 0
  br i1 %tobool11.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %core1.i.i.i = getelementptr i8, ptr %1, i32 -548
  %22 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core1.i.i.i, align 4
  %hfi_codec.i.i.i = getelementptr i8, ptr %1, i32 2040
  %24 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hfi_codec.i.i.i, align 8
  %session_type.i.i.i = getelementptr i8, ptr %1, i32 2132
  %26 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i = getelementptr inbounds %struct.venus_core, ptr %23, i32 0, i32 46
  %28 = ptrtoint ptr %codecs_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %codecs_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp16.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp16.not.i.i.i.i, label %if.end13.cleanup_crit_edge, label %if.end13.for.body.i.i.i.i_crit_edge

if.end13.for.body.i.i.i.i_crit_edge:              ; preds = %if.end13
  br label %for.body.i.i.i.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end13.for.body.i.i.i.i_crit_edge
  %c.017.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end13.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %25)
  %cmp2.i.i.i.i = icmp eq i32 %31, %25
  br i1 %cmp2.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %domain5.i.i.i.i = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 1
  %32 = ptrtoint ptr %domain5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %domain5.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %27)
  %cmp6.i.i.i.i = icmp eq i32 %33, %27
  br i1 %cmp6.i.i.i.i, label %venus_caps_by_codec.exit.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %c.017.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %29
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.frame_width_max.exit_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.frame_width_max.exit_crit_edge:   ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

venus_caps_by_codec.exit.i.i.i:                   ; preds = %land.lhs.true.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %venus_caps_by_codec.exit.i.i.i.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i

venus_caps_by_codec.exit.i.i.i.frame_width_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.cond.preheader.i.i.i:                         ; preds = %venus_caps_by_codec.exit.i.i.i
  %num_caps.i.i.i = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 3
  %34 = ptrtoint ptr %num_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_caps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp35.not.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp35.not.i.i.i, label %for.cond.preheader.i.i.i.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.frame_width_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.036.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.036.i.i.i
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp3.i.i.i = icmp eq i32 %37, 1
  br i1 %cmp3.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.036.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %35
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.frame_width_max.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.frame_width_max.exit_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %tobool8.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %for.end.i.i.i.frame_width_max.exit_crit_edge, label %if.end10.i.i.i

for.end.i.i.i.frame_width_max.exit_crit_edge:     ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

if.end10.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.036.i.i.i, i32 2
  %38 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max.i.i.i, align 4
  br label %frame_width_max.exit

frame_width_max.exit:                             ; preds = %if.end10.i.i.i, %for.end.i.i.i.frame_width_max.exit_crit_edge, %for.inc.i.i.i.frame_width_max.exit_crit_edge, %for.cond.preheader.i.i.i.frame_width_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i.frame_width_max.exit_crit_edge, %for.inc.i.i.i.i.frame_width_max.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i.frame_width_max.exit_crit_edge ], [ 0, %for.end.i.i.i.frame_width_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i.frame_width_max.exit_crit_edge ], [ %39, %if.end10.i.i.i ], [ 0, %for.inc.i.i.i.frame_width_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i.frame_width_max.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %retval.0.i.i.i)
  %cmp = icmp ugt i32 %19, %retval.0.i.i.i
  br i1 %cmp, label %frame_width_max.exit.cleanup_crit_edge, label %frame_width_max.exit.for.body.i.i.i.i96_crit_edge

frame_width_max.exit.for.body.i.i.i.i96_crit_edge: ; preds = %frame_width_max.exit
  br label %for.body.i.i.i.i96

frame_width_max.exit.cleanup_crit_edge:           ; preds = %frame_width_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.i.i.i96:                               ; preds = %for.inc.i.i.i.i102.for.body.i.i.i.i96_crit_edge, %frame_width_max.exit.for.body.i.i.i.i96_crit_edge
  %c.017.i.i.i.i93 = phi i32 [ %inc.i.i.i.i100, %for.inc.i.i.i.i102.for.body.i.i.i.i96_crit_edge ], [ 0, %frame_width_max.exit.for.body.i.i.i.i96_crit_edge ]
  %arrayidx.i.i.i.i94 = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i93
  %40 = ptrtoint ptr %arrayidx.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i.i94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %25)
  %cmp2.i.i.i.i95 = icmp eq i32 %41, %25
  br i1 %cmp2.i.i.i.i95, label %land.lhs.true.i.i.i.i99, label %for.body.i.i.i.i96.for.inc.i.i.i.i102_crit_edge

for.body.i.i.i.i96.for.inc.i.i.i.i102_crit_edge:  ; preds = %for.body.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i102

land.lhs.true.i.i.i.i99:                          ; preds = %for.body.i.i.i.i96
  %domain5.i.i.i.i97 = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i93, i32 1
  %42 = ptrtoint ptr %domain5.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %domain5.i.i.i.i97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %27)
  %cmp6.i.i.i.i98 = icmp eq i32 %43, %27
  br i1 %cmp6.i.i.i.i98, label %venus_caps_by_codec.exit.i.i.i104, label %land.lhs.true.i.i.i.i99.for.inc.i.i.i.i102_crit_edge

land.lhs.true.i.i.i.i99.for.inc.i.i.i.i102_crit_edge: ; preds = %land.lhs.true.i.i.i.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i102

for.inc.i.i.i.i102:                               ; preds = %land.lhs.true.i.i.i.i99.for.inc.i.i.i.i102_crit_edge, %for.body.i.i.i.i96.for.inc.i.i.i.i102_crit_edge
  %inc.i.i.i.i100 = add nuw i32 %c.017.i.i.i.i93, 1
  %exitcond.not.i.i.i.i101 = icmp eq i32 %inc.i.i.i.i100, %29
  br i1 %exitcond.not.i.i.i.i101, label %for.inc.i.i.i.i102.for.body.i.i.i.i127.preheader_crit_edge, label %for.inc.i.i.i.i102.for.body.i.i.i.i96_crit_edge

for.inc.i.i.i.i102.for.body.i.i.i.i96_crit_edge:  ; preds = %for.inc.i.i.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i96

for.inc.i.i.i.i102.for.body.i.i.i.i127.preheader_crit_edge: ; preds = %for.inc.i.i.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i127.preheader

venus_caps_by_codec.exit.i.i.i104:                ; preds = %land.lhs.true.i.i.i.i99
  %tobool.not.i.i.i103 = icmp eq ptr %arrayidx.i.i.i.i94, null
  br i1 %tobool.not.i.i.i103, label %venus_caps_by_codec.exit.i.i.i104.for.body.i.i.i.i127.preheader_crit_edge, label %for.cond.preheader.i.i.i107

venus_caps_by_codec.exit.i.i.i104.for.body.i.i.i.i127.preheader_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i127.preheader

for.cond.preheader.i.i.i107:                      ; preds = %venus_caps_by_codec.exit.i.i.i104
  %num_caps.i.i.i105 = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i93, i32 3
  %44 = ptrtoint ptr %num_caps.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_caps.i.i.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp35.not.i.i.i106 = icmp eq i32 %45, 0
  br i1 %cmp35.not.i.i.i106, label %for.cond.preheader.i.i.i107.for.body.i.i.i.i127.preheader_crit_edge, label %for.cond.preheader.i.i.i107.for.body.i.i.i111_crit_edge

for.cond.preheader.i.i.i107.for.body.i.i.i111_crit_edge: ; preds = %for.cond.preheader.i.i.i107
  br label %for.body.i.i.i111

for.cond.preheader.i.i.i107.for.body.i.i.i.i127.preheader_crit_edge: ; preds = %for.cond.preheader.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i127.preheader

for.body.i.i.i111:                                ; preds = %for.inc.i.i.i114.for.body.i.i.i111_crit_edge, %for.cond.preheader.i.i.i107.for.body.i.i.i111_crit_edge
  %i.036.i.i.i108 = phi i32 [ %inc.i.i.i112, %for.inc.i.i.i114.for.body.i.i.i111_crit_edge ], [ 0, %for.cond.preheader.i.i.i107.for.body.i.i.i111_crit_edge ]
  %arrayidx.i.i.i109 = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i93, i32 4, i32 %i.036.i.i.i108
  %46 = ptrtoint ptr %arrayidx.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp3.i.i.i110 = icmp eq i32 %47, 1
  br i1 %cmp3.i.i.i110, label %for.end.i.i.i116, label %for.inc.i.i.i114

for.inc.i.i.i114:                                 ; preds = %for.body.i.i.i111
  %inc.i.i.i112 = add nuw i32 %i.036.i.i.i108, 1
  %exitcond.not.i.i.i113 = icmp eq i32 %inc.i.i.i112, %45
  br i1 %exitcond.not.i.i.i113, label %for.inc.i.i.i114.for.body.i.i.i.i127.preheader_crit_edge, label %for.inc.i.i.i114.for.body.i.i.i111_crit_edge

for.inc.i.i.i114.for.body.i.i.i111_crit_edge:     ; preds = %for.inc.i.i.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i111

for.inc.i.i.i114.for.body.i.i.i.i127.preheader_crit_edge: ; preds = %for.inc.i.i.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i127.preheader

for.end.i.i.i116:                                 ; preds = %for.body.i.i.i111
  %tobool8.not.i.i.i115 = icmp eq ptr %arrayidx.i.i.i109, null
  br i1 %tobool8.not.i.i.i115, label %for.end.i.i.i116.for.body.i.i.i.i127.preheader_crit_edge, label %frame_width_min.exit

for.end.i.i.i116.for.body.i.i.i.i127.preheader_crit_edge: ; preds = %for.end.i.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i127.preheader

frame_width_min.exit:                             ; preds = %for.end.i.i.i116
  %min.i.i.i = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i93, i32 4, i32 %i.036.i.i.i108, i32 1
  %48 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %min.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %49)
  %cmp19 = icmp ult i32 %19, %49
  br i1 %cmp19, label %frame_width_min.exit.cleanup_crit_edge, label %frame_width_min.exit.for.body.i.i.i.i127.preheader_crit_edge

frame_width_min.exit.for.body.i.i.i.i127.preheader_crit_edge: ; preds = %frame_width_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i127.preheader

frame_width_min.exit.cleanup_crit_edge:           ; preds = %frame_width_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.i.i.i127.preheader:                    ; preds = %frame_width_min.exit.for.body.i.i.i.i127.preheader_crit_edge, %for.end.i.i.i116.for.body.i.i.i.i127.preheader_crit_edge, %for.inc.i.i.i114.for.body.i.i.i.i127.preheader_crit_edge, %for.cond.preheader.i.i.i107.for.body.i.i.i.i127.preheader_crit_edge, %venus_caps_by_codec.exit.i.i.i104.for.body.i.i.i.i127.preheader_crit_edge, %for.inc.i.i.i.i102.for.body.i.i.i.i127.preheader_crit_edge
  br label %for.body.i.i.i.i127

for.body.i.i.i.i127:                              ; preds = %for.inc.i.i.i.i133.for.body.i.i.i.i127_crit_edge, %for.body.i.i.i.i127.preheader
  %c.017.i.i.i.i124 = phi i32 [ %inc.i.i.i.i131, %for.inc.i.i.i.i133.for.body.i.i.i.i127_crit_edge ], [ 0, %for.body.i.i.i.i127.preheader ]
  %arrayidx.i.i.i.i125 = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i124
  %50 = ptrtoint ptr %arrayidx.i.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i.i125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %25)
  %cmp2.i.i.i.i126 = icmp eq i32 %51, %25
  br i1 %cmp2.i.i.i.i126, label %land.lhs.true.i.i.i.i130, label %for.body.i.i.i.i127.for.inc.i.i.i.i133_crit_edge

for.body.i.i.i.i127.for.inc.i.i.i.i133_crit_edge: ; preds = %for.body.i.i.i.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i133

land.lhs.true.i.i.i.i130:                         ; preds = %for.body.i.i.i.i127
  %domain5.i.i.i.i128 = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i124, i32 1
  %52 = ptrtoint ptr %domain5.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %domain5.i.i.i.i128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %27)
  %cmp6.i.i.i.i129 = icmp eq i32 %53, %27
  br i1 %cmp6.i.i.i.i129, label %venus_caps_by_codec.exit.i.i.i135, label %land.lhs.true.i.i.i.i130.for.inc.i.i.i.i133_crit_edge

land.lhs.true.i.i.i.i130.for.inc.i.i.i.i133_crit_edge: ; preds = %land.lhs.true.i.i.i.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i133

for.inc.i.i.i.i133:                               ; preds = %land.lhs.true.i.i.i.i130.for.inc.i.i.i.i133_crit_edge, %for.body.i.i.i.i127.for.inc.i.i.i.i133_crit_edge
  %inc.i.i.i.i131 = add nuw i32 %c.017.i.i.i.i124, 1
  %exitcond.not.i.i.i.i132 = icmp eq i32 %inc.i.i.i.i131, %29
  br i1 %exitcond.not.i.i.i.i132, label %for.inc.i.i.i.i133.frame_height_max.exit_crit_edge, label %for.inc.i.i.i.i133.for.body.i.i.i.i127_crit_edge

for.inc.i.i.i.i133.for.body.i.i.i.i127_crit_edge: ; preds = %for.inc.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i127

for.inc.i.i.i.i133.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

venus_caps_by_codec.exit.i.i.i135:                ; preds = %land.lhs.true.i.i.i.i130
  %tobool.not.i.i.i134 = icmp eq ptr %arrayidx.i.i.i.i125, null
  br i1 %tobool.not.i.i.i134, label %venus_caps_by_codec.exit.i.i.i135.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i138

venus_caps_by_codec.exit.i.i.i135.frame_height_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.cond.preheader.i.i.i138:                      ; preds = %venus_caps_by_codec.exit.i.i.i135
  %num_caps.i.i.i136 = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i124, i32 3
  %54 = ptrtoint ptr %num_caps.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_caps.i.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp35.not.i.i.i137 = icmp eq i32 %55, 0
  br i1 %cmp35.not.i.i.i137, label %for.cond.preheader.i.i.i138.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i138.for.body.i.i.i142_crit_edge

for.cond.preheader.i.i.i138.for.body.i.i.i142_crit_edge: ; preds = %for.cond.preheader.i.i.i138
  br label %for.body.i.i.i142

for.cond.preheader.i.i.i138.frame_height_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.body.i.i.i142:                                ; preds = %for.inc.i.i.i145.for.body.i.i.i142_crit_edge, %for.cond.preheader.i.i.i138.for.body.i.i.i142_crit_edge
  %i.036.i.i.i139 = phi i32 [ %inc.i.i.i143, %for.inc.i.i.i145.for.body.i.i.i142_crit_edge ], [ 0, %for.cond.preheader.i.i.i138.for.body.i.i.i142_crit_edge ]
  %arrayidx.i.i.i140 = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i124, i32 4, i32 %i.036.i.i.i139
  %56 = ptrtoint ptr %arrayidx.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp3.i.i.i141 = icmp eq i32 %57, 2
  br i1 %cmp3.i.i.i141, label %for.end.i.i.i147, label %for.inc.i.i.i145

for.inc.i.i.i145:                                 ; preds = %for.body.i.i.i142
  %inc.i.i.i143 = add nuw i32 %i.036.i.i.i139, 1
  %exitcond.not.i.i.i144 = icmp eq i32 %inc.i.i.i143, %55
  br i1 %exitcond.not.i.i.i144, label %for.inc.i.i.i145.frame_height_max.exit_crit_edge, label %for.inc.i.i.i145.for.body.i.i.i142_crit_edge

for.inc.i.i.i145.for.body.i.i.i142_crit_edge:     ; preds = %for.inc.i.i.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i142

for.inc.i.i.i145.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.end.i.i.i147:                                 ; preds = %for.body.i.i.i142
  %tobool8.not.i.i.i146 = icmp eq ptr %arrayidx.i.i.i140, null
  br i1 %tobool8.not.i.i.i146, label %for.end.i.i.i147.frame_height_max.exit_crit_edge, label %if.end10.i.i.i149

for.end.i.i.i147.frame_height_max.exit_crit_edge: ; preds = %for.end.i.i.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

if.end10.i.i.i149:                                ; preds = %for.end.i.i.i147
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i148 = getelementptr %struct.venus_core, ptr %23, i32 0, i32 45, i32 %c.017.i.i.i.i124, i32 4, i32 %i.036.i.i.i139, i32 2
  %58 = ptrtoint ptr %max.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max.i.i.i148, align 4
  br label %frame_height_max.exit

frame_height_max.exit:                            ; preds = %if.end10.i.i.i149, %for.end.i.i.i147.frame_height_max.exit_crit_edge, %for.inc.i.i.i145.frame_height_max.exit_crit_edge, %for.cond.preheader.i.i.i138.frame_height_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i135.frame_height_max.exit_crit_edge, %for.inc.i.i.i.i133.frame_height_max.exit_crit_edge
  %retval.0.i.i.i150 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i135.frame_height_max.exit_crit_edge ], [ 0, %for.end.i.i.i147.frame_height_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i138.frame_height_max.exit_crit_edge ], [ %59, %if.end10.i.i.i149 ], [ 0, %for.inc.i.i.i145.frame_height_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i133.frame_height_max.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %retval.0.i.i.i150)
  %cmp23 = icmp ugt i32 %21, %retval.0.i.i.i150
  br i1 %cmp23, label %frame_height_max.exit.cleanup_crit_edge, label %lor.lhs.false24

frame_height_max.exit.cleanup_crit_edge:          ; preds = %frame_height_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false24:                                  ; preds = %frame_height_max.exit
  %call26 = tail call fastcc i32 @frame_height_min(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %call26)
  %cmp27 = icmp ult i32 %21, %call26
  br i1 %cmp27, label %lor.lhs.false24.cleanup_crit_edge, label %if.end29

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #12
  %res = getelementptr inbounds %struct.venus_core, ptr %23, i32 0, i32 22
  %60 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp30 = icmp eq i32 %63, 0
  %64 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %64, align 4
  %call33 = tail call fastcc i32 @frate_max(ptr noundef %add.ptr.i)
  %66 = select i1 %cmp30, i32 16, i32 0
  %div160 = lshr i32 %call33, %66
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div160, ptr %denominator, align 4
  %max = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 1
  %68 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %max, align 4
  %call36 = tail call fastcc i32 @frate_min(ptr noundef %add.ptr.i)
  %div37161 = lshr i32 %call36, %66
  %denominator39 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %denominator39 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div37161, ptr %denominator39, align 4
  %step = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 2
  %70 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %step, align 4
  %call41 = tail call fastcc i32 @frate_max(ptr noundef %add.ptr.i)
  %div42162 = lshr i32 %call41, %66
  %denominator44 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %denominator44 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div42162, ptr %denominator44, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %lor.lhs.false24.cleanup_crit_edge, %frame_height_max.exit.cleanup_crit_edge, %frame_width_min.exit.cleanup_crit_edge, %frame_width_max.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.i83.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %lor.lhs.false24.cleanup_crit_edge ], [ -22, %frame_height_max.exit.cleanup_crit_edge ], [ -22, %frame_width_min.exit.cleanup_crit_edge ], [ -22, %frame_width_max.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.i83.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @venus_helper_check_codec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @venc_try_fmt_common(ptr noundef %inst, ptr nocapture noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %0 = call ptr @memset(ptr %reserved, i32 0, i32 12)
  %reserved3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 11
  %1 = call ptr @memset(ptr %reserved3, i32 0, i32 7)
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %pixelformat, align 1
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %3, label %entry.if.then_crit_edge [
    i32 842094158, label %entry.lor.lhs.false.i_crit_edge
    i32 877088845, label %lor.lhs.false.fold.split.i
    i32 859189832, label %lor.lhs.false.fold.split33.i
    i32 875967048, label %lor.lhs.false.fold.split34.i
    i32 808996950, label %lor.lhs.false.fold.split35.i
    i32 1129727304, label %lor.lhs.false.fold.split36.i
  ]

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.fold.split.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split33.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split34.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split35.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split36.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false.fold.split36.i, %lor.lhs.false.fold.split35.i, %lor.lhs.false.fold.split34.i, %lor.lhs.false.fold.split33.i, %lor.lhs.false.fold.split.i, %entry.lor.lhs.false.i_crit_edge
  %i.031.lcssa.i = phi i32 [ 0, %entry.lor.lhs.false.i_crit_edge ], [ 1, %lor.lhs.false.fold.split.i ], [ 2, %lor.lhs.false.fold.split33.i ], [ 3, %lor.lhs.false.fold.split34.i ], [ 4, %lor.lhs.false.fold.split35.i ], [ 5, %lor.lhs.false.fold.split36.i ]
  %arrayidx4.i = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i
  %type5.i = getelementptr %struct.venus_format, ptr @venc_formats, i32 %i.031.lcssa.i, i32 2
  %7 = ptrtoint ptr %type5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp6.not.i = icmp eq i32 %8, %5
  br i1 %cmp6.not.i, label %if.end8.i, label %lor.lhs.false.i.if.thenthread-pre-split_crit_edge

lor.lhs.false.i.if.thenthread-pre-split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.thenthread-pre-split

if.end8.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp9.i = icmp eq i32 %5, 9
  br i1 %cmp9.i, label %land.lhs.true.i, label %find_format.exit

land.lhs.true.i:                                  ; preds = %if.end8.i
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i, align 4
  %call.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %inst, i32 noundef %10) #10
  %tobool.not = icmp ne ptr %arrayidx4.i, null
  %11 = and i1 %tobool.not, %call.i
  br i1 %11, label %land.lhs.true.i.if.end20_crit_edge, label %land.lhs.true.i.if.thenthread-pre-split_crit_edge

land.lhs.true.i.if.thenthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.thenthread-pre-split

land.lhs.true.i.if.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

find_format.exit:                                 ; preds = %if.end8.i
  %tobool.not.old = icmp eq ptr %arrayidx4.i, null
  br i1 %tobool.not.old, label %find_format.exit.if.thenthread-pre-split_crit_edge, label %find_format.exit.if.end20_crit_edge

find_format.exit.if.end20_crit_edge:              ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

find_format.exit.if.thenthread-pre-split_crit_edge: ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.thenthread-pre-split

if.thenthread-pre-split:                          ; preds = %find_format.exit.if.thenthread-pre-split_crit_edge, %land.lhs.true.i.if.thenthread-pre-split_crit_edge, %lor.lhs.false.i.if.thenthread-pre-split_crit_edge
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %f, align 4
  br label %if.then

if.then:                                          ; preds = %if.thenthread-pre-split, %entry.if.then_crit_edge
  %13 = phi i32 [ %.pr, %if.thenthread-pre-split ], [ %5, %entry.if.then_crit_edge ]
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %13, label %if.then.cleanup_crit_edge [
    i32 9, label %lor.lhs.false.i165
    i32 10, label %lor.lhs.false.i165.thread
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i165:                               ; preds = %if.then
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 875967048, ptr %pixelformat, align 1
  %call.i168 = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %inst, i32 noundef 875967048) #10
  br i1 %call.i168, label %lor.lhs.false.i165.if.end20_crit_edge, label %lor.lhs.false.i165.cleanup_crit_edge

lor.lhs.false.i165.cleanup_crit_edge:             ; preds = %lor.lhs.false.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i165.if.end20_crit_edge:            ; preds = %lor.lhs.false.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

lor.lhs.false.i165.thread:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 842094158, ptr %pixelformat, align 1
  br label %if.end20

if.end20:                                         ; preds = %lor.lhs.false.i165.thread, %lor.lhs.false.i165.if.end20_crit_edge, %find_format.exit.if.end20_crit_edge, %land.lhs.true.i.if.end20_crit_edge
  %fmt1.0 = phi ptr [ %arrayidx4.i, %find_format.exit.if.end20_crit_edge ], [ getelementptr inbounds ([6 x %struct.venus_format], ptr @venc_formats, i32 0, i32 3), %lor.lhs.false.i165.if.end20_crit_edge ], [ @venc_formats, %lor.lhs.false.i165.thread ], [ %arrayidx4.i, %land.lhs.true.i.if.end20_crit_edge ]
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %fmt, align 1
  %core1.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %19 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core1.i.i.i, align 4
  %hfi_codec.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 45
  %21 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hfi_codec.i.i.i, align 8
  %session_type.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %23 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i = getelementptr inbounds %struct.venus_core, ptr %20, i32 0, i32 46
  %25 = ptrtoint ptr %codecs_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %codecs_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp16.not.i.i.i.i = icmp eq i32 %26, 0
  br i1 %cmp16.not.i.i.i.i, label %if.end20.frame_width_max.exit_crit_edge, label %if.end20.for.body.i.i.i.i_crit_edge

if.end20.for.body.i.i.i.i_crit_edge:              ; preds = %if.end20
  br label %for.body.i.i.i.i

if.end20.frame_width_max.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end20.for.body.i.i.i.i_crit_edge
  %c.017.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end20.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i
  %27 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %22)
  %cmp2.i.i.i.i = icmp eq i32 %28, %22
  br i1 %cmp2.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %domain5.i.i.i.i = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 1
  %29 = ptrtoint ptr %domain5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %domain5.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %24)
  %cmp6.i.i.i.i = icmp eq i32 %30, %24
  br i1 %cmp6.i.i.i.i, label %venus_caps_by_codec.exit.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %c.017.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %26
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i181.preheader_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i181.preheader_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i181.preheader

venus_caps_by_codec.exit.i.i.i:                   ; preds = %land.lhs.true.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %venus_caps_by_codec.exit.i.i.i.for.body.i.i.i.i181.preheader_crit_edge, label %for.cond.preheader.i.i.i

venus_caps_by_codec.exit.i.i.i.for.body.i.i.i.i181.preheader_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i181.preheader

for.cond.preheader.i.i.i:                         ; preds = %venus_caps_by_codec.exit.i.i.i
  %num_caps.i.i.i = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 3
  %31 = ptrtoint ptr %num_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_caps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp35.not.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp35.not.i.i.i, label %for.cond.preheader.i.i.i.for.body.i.i.i.i181.preheader_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.for.body.i.i.i.i181.preheader_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i181.preheader

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.036.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.036.i.i.i
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp3.i.i.i = icmp eq i32 %34, 1
  br i1 %cmp3.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.036.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %32
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i.i181.preheader_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.for.body.i.i.i.i181.preheader_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i181.preheader

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %tobool8.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %for.end.i.i.i.for.body.i.i.i.i181.preheader_crit_edge, label %if.end10.i.i.i

for.end.i.i.i.for.body.i.i.i.i181.preheader_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i181.preheader

if.end10.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.036.i.i.i, i32 1
  %35 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %min.i.i.i, align 4
  br label %for.body.i.i.i.i181.preheader

for.body.i.i.i.i181.preheader:                    ; preds = %if.end10.i.i.i, %for.end.i.i.i.for.body.i.i.i.i181.preheader_crit_edge, %for.inc.i.i.i.for.body.i.i.i.i181.preheader_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i.i181.preheader_crit_edge, %venus_caps_by_codec.exit.i.i.i.for.body.i.i.i.i181.preheader_crit_edge, %for.inc.i.i.i.i.for.body.i.i.i.i181.preheader_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i.for.body.i.i.i.i181.preheader_crit_edge ], [ 0, %for.end.i.i.i.for.body.i.i.i.i181.preheader_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i.i181.preheader_crit_edge ], [ %36, %if.end10.i.i.i ], [ 0, %for.inc.i.i.i.for.body.i.i.i.i181.preheader_crit_edge ], [ 0, %for.inc.i.i.i.i.for.body.i.i.i.i181.preheader_crit_edge ]
  %37 = tail call i32 @llvm.umax.i32(i32 %18, i32 %retval.0.i.i.i)
  br label %for.body.i.i.i.i181

for.body.i.i.i.i181:                              ; preds = %for.inc.i.i.i.i187.for.body.i.i.i.i181_crit_edge, %for.body.i.i.i.i181.preheader
  %c.017.i.i.i.i178 = phi i32 [ %inc.i.i.i.i185, %for.inc.i.i.i.i187.for.body.i.i.i.i181_crit_edge ], [ 0, %for.body.i.i.i.i181.preheader ]
  %arrayidx.i.i.i.i179 = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i178
  %38 = ptrtoint ptr %arrayidx.i.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i.i.i179, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %22)
  %cmp2.i.i.i.i180 = icmp eq i32 %39, %22
  br i1 %cmp2.i.i.i.i180, label %land.lhs.true.i.i.i.i184, label %for.body.i.i.i.i181.for.inc.i.i.i.i187_crit_edge

for.body.i.i.i.i181.for.inc.i.i.i.i187_crit_edge: ; preds = %for.body.i.i.i.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i187

land.lhs.true.i.i.i.i184:                         ; preds = %for.body.i.i.i.i181
  %domain5.i.i.i.i182 = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i178, i32 1
  %40 = ptrtoint ptr %domain5.i.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %domain5.i.i.i.i182, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %24)
  %cmp6.i.i.i.i183 = icmp eq i32 %41, %24
  br i1 %cmp6.i.i.i.i183, label %venus_caps_by_codec.exit.i.i.i189, label %land.lhs.true.i.i.i.i184.for.inc.i.i.i.i187_crit_edge

land.lhs.true.i.i.i.i184.for.inc.i.i.i.i187_crit_edge: ; preds = %land.lhs.true.i.i.i.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i187

for.inc.i.i.i.i187:                               ; preds = %land.lhs.true.i.i.i.i184.for.inc.i.i.i.i187_crit_edge, %for.body.i.i.i.i181.for.inc.i.i.i.i187_crit_edge
  %inc.i.i.i.i185 = add nuw i32 %c.017.i.i.i.i178, 1
  %exitcond.not.i.i.i.i186 = icmp eq i32 %inc.i.i.i.i185, %26
  br i1 %exitcond.not.i.i.i.i186, label %for.inc.i.i.i.i187.frame_width_max.exit_crit_edge, label %for.inc.i.i.i.i187.for.body.i.i.i.i181_crit_edge

for.inc.i.i.i.i187.for.body.i.i.i.i181_crit_edge: ; preds = %for.inc.i.i.i.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i181

for.inc.i.i.i.i187.frame_width_max.exit_crit_edge: ; preds = %for.inc.i.i.i.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

venus_caps_by_codec.exit.i.i.i189:                ; preds = %land.lhs.true.i.i.i.i184
  %tobool.not.i.i.i188 = icmp eq ptr %arrayidx.i.i.i.i179, null
  br i1 %tobool.not.i.i.i188, label %venus_caps_by_codec.exit.i.i.i189.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i192

venus_caps_by_codec.exit.i.i.i189.frame_width_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i189
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.cond.preheader.i.i.i192:                      ; preds = %venus_caps_by_codec.exit.i.i.i189
  %num_caps.i.i.i190 = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i178, i32 3
  %42 = ptrtoint ptr %num_caps.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_caps.i.i.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp35.not.i.i.i191 = icmp eq i32 %43, 0
  br i1 %cmp35.not.i.i.i191, label %for.cond.preheader.i.i.i192.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i192.for.body.i.i.i196_crit_edge

for.cond.preheader.i.i.i192.for.body.i.i.i196_crit_edge: ; preds = %for.cond.preheader.i.i.i192
  br label %for.body.i.i.i196

for.cond.preheader.i.i.i192.frame_width_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.body.i.i.i196:                                ; preds = %for.inc.i.i.i199.for.body.i.i.i196_crit_edge, %for.cond.preheader.i.i.i192.for.body.i.i.i196_crit_edge
  %i.036.i.i.i193 = phi i32 [ %inc.i.i.i197, %for.inc.i.i.i199.for.body.i.i.i196_crit_edge ], [ 0, %for.cond.preheader.i.i.i192.for.body.i.i.i196_crit_edge ]
  %arrayidx.i.i.i194 = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i178, i32 4, i32 %i.036.i.i.i193
  %44 = ptrtoint ptr %arrayidx.i.i.i194 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp3.i.i.i195 = icmp eq i32 %45, 1
  br i1 %cmp3.i.i.i195, label %for.end.i.i.i201, label %for.inc.i.i.i199

for.inc.i.i.i199:                                 ; preds = %for.body.i.i.i196
  %inc.i.i.i197 = add nuw i32 %i.036.i.i.i193, 1
  %exitcond.not.i.i.i198 = icmp eq i32 %inc.i.i.i197, %43
  br i1 %exitcond.not.i.i.i198, label %for.inc.i.i.i199.frame_width_max.exit_crit_edge, label %for.inc.i.i.i199.for.body.i.i.i196_crit_edge

for.inc.i.i.i199.for.body.i.i.i196_crit_edge:     ; preds = %for.inc.i.i.i199
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i196

for.inc.i.i.i199.frame_width_max.exit_crit_edge:  ; preds = %for.inc.i.i.i199
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.end.i.i.i201:                                 ; preds = %for.body.i.i.i196
  %tobool8.not.i.i.i200 = icmp eq ptr %arrayidx.i.i.i194, null
  br i1 %tobool8.not.i.i.i200, label %for.end.i.i.i201.frame_width_max.exit_crit_edge, label %if.end10.i.i.i202

for.end.i.i.i201.frame_width_max.exit_crit_edge:  ; preds = %for.end.i.i.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

if.end10.i.i.i202:                                ; preds = %for.end.i.i.i201
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i178, i32 4, i32 %i.036.i.i.i193, i32 2
  %46 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max.i.i.i, align 4
  br label %frame_width_max.exit

frame_width_max.exit:                             ; preds = %if.end10.i.i.i202, %for.end.i.i.i201.frame_width_max.exit_crit_edge, %for.inc.i.i.i199.frame_width_max.exit_crit_edge, %for.cond.preheader.i.i.i192.frame_width_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i189.frame_width_max.exit_crit_edge, %for.inc.i.i.i.i187.frame_width_max.exit_crit_edge, %if.end20.frame_width_max.exit_crit_edge
  %.call21284 = phi i32 [ %37, %venus_caps_by_codec.exit.i.i.i189.frame_width_max.exit_crit_edge ], [ %37, %for.end.i.i.i201.frame_width_max.exit_crit_edge ], [ %37, %for.cond.preheader.i.i.i192.frame_width_max.exit_crit_edge ], [ %37, %if.end10.i.i.i202 ], [ %18, %if.end20.frame_width_max.exit_crit_edge ], [ %37, %for.inc.i.i.i199.frame_width_max.exit_crit_edge ], [ %37, %for.inc.i.i.i.i187.frame_width_max.exit_crit_edge ]
  %retval.0.i.i.i203 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i189.frame_width_max.exit_crit_edge ], [ 0, %for.end.i.i.i201.frame_width_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i192.frame_width_max.exit_crit_edge ], [ %47, %if.end10.i.i.i202 ], [ 0, %if.end20.frame_width_max.exit_crit_edge ], [ 0, %for.inc.i.i.i199.frame_width_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i187.frame_width_max.exit_crit_edge ]
  %48 = tail call i32 @llvm.umin.i32(i32 %.call21284, i32 %retval.0.i.i.i203)
  %49 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %height, align 1
  %52 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %core1.i.i.i, align 4
  %54 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hfi_codec.i.i.i, align 8
  %56 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i207 = getelementptr inbounds %struct.venus_core, ptr %53, i32 0, i32 46
  %58 = ptrtoint ptr %codecs_count.i.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %codecs_count.i.i.i.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp16.not.i.i.i.i208 = icmp eq i32 %59, 0
  br i1 %cmp16.not.i.i.i.i208, label %frame_width_max.exit.frame_height_max.exit_crit_edge, label %frame_width_max.exit.for.body.i.i.i.i212_crit_edge

frame_width_max.exit.for.body.i.i.i.i212_crit_edge: ; preds = %frame_width_max.exit
  br label %for.body.i.i.i.i212

frame_width_max.exit.frame_height_max.exit_crit_edge: ; preds = %frame_width_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.body.i.i.i.i212:                              ; preds = %for.inc.i.i.i.i218.for.body.i.i.i.i212_crit_edge, %frame_width_max.exit.for.body.i.i.i.i212_crit_edge
  %c.017.i.i.i.i209 = phi i32 [ %inc.i.i.i.i216, %for.inc.i.i.i.i218.for.body.i.i.i.i212_crit_edge ], [ 0, %frame_width_max.exit.for.body.i.i.i.i212_crit_edge ]
  %arrayidx.i.i.i.i210 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i209
  %60 = ptrtoint ptr %arrayidx.i.i.i.i210 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i.i210, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %55)
  %cmp2.i.i.i.i211 = icmp eq i32 %61, %55
  br i1 %cmp2.i.i.i.i211, label %land.lhs.true.i.i.i.i215, label %for.body.i.i.i.i212.for.inc.i.i.i.i218_crit_edge

for.body.i.i.i.i212.for.inc.i.i.i.i218_crit_edge: ; preds = %for.body.i.i.i.i212
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i218

land.lhs.true.i.i.i.i215:                         ; preds = %for.body.i.i.i.i212
  %domain5.i.i.i.i213 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i209, i32 1
  %62 = ptrtoint ptr %domain5.i.i.i.i213 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %domain5.i.i.i.i213, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %57)
  %cmp6.i.i.i.i214 = icmp eq i32 %63, %57
  br i1 %cmp6.i.i.i.i214, label %venus_caps_by_codec.exit.i.i.i220, label %land.lhs.true.i.i.i.i215.for.inc.i.i.i.i218_crit_edge

land.lhs.true.i.i.i.i215.for.inc.i.i.i.i218_crit_edge: ; preds = %land.lhs.true.i.i.i.i215
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i218

for.inc.i.i.i.i218:                               ; preds = %land.lhs.true.i.i.i.i215.for.inc.i.i.i.i218_crit_edge, %for.body.i.i.i.i212.for.inc.i.i.i.i218_crit_edge
  %inc.i.i.i.i216 = add nuw i32 %c.017.i.i.i.i209, 1
  %exitcond.not.i.i.i.i217 = icmp eq i32 %inc.i.i.i.i216, %59
  br i1 %exitcond.not.i.i.i.i217, label %for.inc.i.i.i.i218.for.body.i.i.i.i244.preheader_crit_edge, label %for.inc.i.i.i.i218.for.body.i.i.i.i212_crit_edge

for.inc.i.i.i.i218.for.body.i.i.i.i212_crit_edge: ; preds = %for.inc.i.i.i.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i212

for.inc.i.i.i.i218.for.body.i.i.i.i244.preheader_crit_edge: ; preds = %for.inc.i.i.i.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i244.preheader

venus_caps_by_codec.exit.i.i.i220:                ; preds = %land.lhs.true.i.i.i.i215
  %tobool.not.i.i.i219 = icmp eq ptr %arrayidx.i.i.i.i210, null
  br i1 %tobool.not.i.i.i219, label %venus_caps_by_codec.exit.i.i.i220.for.body.i.i.i.i244.preheader_crit_edge, label %for.cond.preheader.i.i.i223

venus_caps_by_codec.exit.i.i.i220.for.body.i.i.i.i244.preheader_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i220
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i244.preheader

for.cond.preheader.i.i.i223:                      ; preds = %venus_caps_by_codec.exit.i.i.i220
  %num_caps.i.i.i221 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i209, i32 3
  %64 = ptrtoint ptr %num_caps.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_caps.i.i.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp35.not.i.i.i222 = icmp eq i32 %65, 0
  br i1 %cmp35.not.i.i.i222, label %for.cond.preheader.i.i.i223.for.body.i.i.i.i244.preheader_crit_edge, label %for.cond.preheader.i.i.i223.for.body.i.i.i227_crit_edge

for.cond.preheader.i.i.i223.for.body.i.i.i227_crit_edge: ; preds = %for.cond.preheader.i.i.i223
  br label %for.body.i.i.i227

for.cond.preheader.i.i.i223.for.body.i.i.i.i244.preheader_crit_edge: ; preds = %for.cond.preheader.i.i.i223
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i244.preheader

for.body.i.i.i227:                                ; preds = %for.inc.i.i.i230.for.body.i.i.i227_crit_edge, %for.cond.preheader.i.i.i223.for.body.i.i.i227_crit_edge
  %i.036.i.i.i224 = phi i32 [ %inc.i.i.i228, %for.inc.i.i.i230.for.body.i.i.i227_crit_edge ], [ 0, %for.cond.preheader.i.i.i223.for.body.i.i.i227_crit_edge ]
  %arrayidx.i.i.i225 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i209, i32 4, i32 %i.036.i.i.i224
  %66 = ptrtoint ptr %arrayidx.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp3.i.i.i226 = icmp eq i32 %67, 2
  br i1 %cmp3.i.i.i226, label %for.end.i.i.i232, label %for.inc.i.i.i230

for.inc.i.i.i230:                                 ; preds = %for.body.i.i.i227
  %inc.i.i.i228 = add nuw i32 %i.036.i.i.i224, 1
  %exitcond.not.i.i.i229 = icmp eq i32 %inc.i.i.i228, %65
  br i1 %exitcond.not.i.i.i229, label %for.inc.i.i.i230.for.body.i.i.i.i244.preheader_crit_edge, label %for.inc.i.i.i230.for.body.i.i.i227_crit_edge

for.inc.i.i.i230.for.body.i.i.i227_crit_edge:     ; preds = %for.inc.i.i.i230
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i227

for.inc.i.i.i230.for.body.i.i.i.i244.preheader_crit_edge: ; preds = %for.inc.i.i.i230
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i244.preheader

for.end.i.i.i232:                                 ; preds = %for.body.i.i.i227
  %tobool8.not.i.i.i231 = icmp eq ptr %arrayidx.i.i.i225, null
  br i1 %tobool8.not.i.i.i231, label %for.end.i.i.i232.for.body.i.i.i.i244.preheader_crit_edge, label %if.end10.i.i.i234

for.end.i.i.i232.for.body.i.i.i.i244.preheader_crit_edge: ; preds = %for.end.i.i.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i244.preheader

if.end10.i.i.i234:                                ; preds = %for.end.i.i.i232
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i233 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i209, i32 4, i32 %i.036.i.i.i224, i32 1
  %68 = ptrtoint ptr %min.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %min.i.i.i233, align 4
  br label %for.body.i.i.i.i244.preheader

for.body.i.i.i.i244.preheader:                    ; preds = %if.end10.i.i.i234, %for.end.i.i.i232.for.body.i.i.i.i244.preheader_crit_edge, %for.inc.i.i.i230.for.body.i.i.i.i244.preheader_crit_edge, %for.cond.preheader.i.i.i223.for.body.i.i.i.i244.preheader_crit_edge, %venus_caps_by_codec.exit.i.i.i220.for.body.i.i.i.i244.preheader_crit_edge, %for.inc.i.i.i.i218.for.body.i.i.i.i244.preheader_crit_edge
  %retval.0.i.i.i235 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i220.for.body.i.i.i.i244.preheader_crit_edge ], [ 0, %for.end.i.i.i232.for.body.i.i.i.i244.preheader_crit_edge ], [ 0, %for.cond.preheader.i.i.i223.for.body.i.i.i.i244.preheader_crit_edge ], [ %69, %if.end10.i.i.i234 ], [ 0, %for.inc.i.i.i230.for.body.i.i.i.i244.preheader_crit_edge ], [ 0, %for.inc.i.i.i.i218.for.body.i.i.i.i244.preheader_crit_edge ]
  %70 = tail call i32 @llvm.umax.i32(i32 %51, i32 %retval.0.i.i.i235)
  br label %for.body.i.i.i.i244

for.body.i.i.i.i244:                              ; preds = %for.inc.i.i.i.i250.for.body.i.i.i.i244_crit_edge, %for.body.i.i.i.i244.preheader
  %c.017.i.i.i.i241 = phi i32 [ %inc.i.i.i.i248, %for.inc.i.i.i.i250.for.body.i.i.i.i244_crit_edge ], [ 0, %for.body.i.i.i.i244.preheader ]
  %arrayidx.i.i.i.i242 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i241
  %71 = ptrtoint ptr %arrayidx.i.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i.i.i242, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %55)
  %cmp2.i.i.i.i243 = icmp eq i32 %72, %55
  br i1 %cmp2.i.i.i.i243, label %land.lhs.true.i.i.i.i247, label %for.body.i.i.i.i244.for.inc.i.i.i.i250_crit_edge

for.body.i.i.i.i244.for.inc.i.i.i.i250_crit_edge: ; preds = %for.body.i.i.i.i244
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i250

land.lhs.true.i.i.i.i247:                         ; preds = %for.body.i.i.i.i244
  %domain5.i.i.i.i245 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i241, i32 1
  %73 = ptrtoint ptr %domain5.i.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %domain5.i.i.i.i245, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %57)
  %cmp6.i.i.i.i246 = icmp eq i32 %74, %57
  br i1 %cmp6.i.i.i.i246, label %venus_caps_by_codec.exit.i.i.i252, label %land.lhs.true.i.i.i.i247.for.inc.i.i.i.i250_crit_edge

land.lhs.true.i.i.i.i247.for.inc.i.i.i.i250_crit_edge: ; preds = %land.lhs.true.i.i.i.i247
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i250

for.inc.i.i.i.i250:                               ; preds = %land.lhs.true.i.i.i.i247.for.inc.i.i.i.i250_crit_edge, %for.body.i.i.i.i244.for.inc.i.i.i.i250_crit_edge
  %inc.i.i.i.i248 = add nuw i32 %c.017.i.i.i.i241, 1
  %exitcond.not.i.i.i.i249 = icmp eq i32 %inc.i.i.i.i248, %59
  br i1 %exitcond.not.i.i.i.i249, label %for.inc.i.i.i.i250.frame_height_max.exit_crit_edge, label %for.inc.i.i.i.i250.for.body.i.i.i.i244_crit_edge

for.inc.i.i.i.i250.for.body.i.i.i.i244_crit_edge: ; preds = %for.inc.i.i.i.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i244

for.inc.i.i.i.i250.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

venus_caps_by_codec.exit.i.i.i252:                ; preds = %land.lhs.true.i.i.i.i247
  %tobool.not.i.i.i251 = icmp eq ptr %arrayidx.i.i.i.i242, null
  br i1 %tobool.not.i.i.i251, label %venus_caps_by_codec.exit.i.i.i252.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i255

venus_caps_by_codec.exit.i.i.i252.frame_height_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.cond.preheader.i.i.i255:                      ; preds = %venus_caps_by_codec.exit.i.i.i252
  %num_caps.i.i.i253 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i241, i32 3
  %75 = ptrtoint ptr %num_caps.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_caps.i.i.i253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp35.not.i.i.i254 = icmp eq i32 %76, 0
  br i1 %cmp35.not.i.i.i254, label %for.cond.preheader.i.i.i255.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i255.for.body.i.i.i259_crit_edge

for.cond.preheader.i.i.i255.for.body.i.i.i259_crit_edge: ; preds = %for.cond.preheader.i.i.i255
  br label %for.body.i.i.i259

for.cond.preheader.i.i.i255.frame_height_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.body.i.i.i259:                                ; preds = %for.inc.i.i.i262.for.body.i.i.i259_crit_edge, %for.cond.preheader.i.i.i255.for.body.i.i.i259_crit_edge
  %i.036.i.i.i256 = phi i32 [ %inc.i.i.i260, %for.inc.i.i.i262.for.body.i.i.i259_crit_edge ], [ 0, %for.cond.preheader.i.i.i255.for.body.i.i.i259_crit_edge ]
  %arrayidx.i.i.i257 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i241, i32 4, i32 %i.036.i.i.i256
  %77 = ptrtoint ptr %arrayidx.i.i.i257 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp3.i.i.i258 = icmp eq i32 %78, 2
  br i1 %cmp3.i.i.i258, label %for.end.i.i.i264, label %for.inc.i.i.i262

for.inc.i.i.i262:                                 ; preds = %for.body.i.i.i259
  %inc.i.i.i260 = add nuw i32 %i.036.i.i.i256, 1
  %exitcond.not.i.i.i261 = icmp eq i32 %inc.i.i.i260, %76
  br i1 %exitcond.not.i.i.i261, label %for.inc.i.i.i262.frame_height_max.exit_crit_edge, label %for.inc.i.i.i262.for.body.i.i.i259_crit_edge

for.inc.i.i.i262.for.body.i.i.i259_crit_edge:     ; preds = %for.inc.i.i.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i259

for.inc.i.i.i262.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.end.i.i.i264:                                 ; preds = %for.body.i.i.i259
  %tobool8.not.i.i.i263 = icmp eq ptr %arrayidx.i.i.i257, null
  br i1 %tobool8.not.i.i.i263, label %for.end.i.i.i264.frame_height_max.exit_crit_edge, label %if.end10.i.i.i266

for.end.i.i.i264.frame_height_max.exit_crit_edge: ; preds = %for.end.i.i.i264
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

if.end10.i.i.i266:                                ; preds = %for.end.i.i.i264
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i265 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i241, i32 4, i32 %i.036.i.i.i256, i32 2
  %79 = ptrtoint ptr %max.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max.i.i.i265, align 4
  br label %frame_height_max.exit

frame_height_max.exit:                            ; preds = %if.end10.i.i.i266, %for.end.i.i.i264.frame_height_max.exit_crit_edge, %for.inc.i.i.i262.frame_height_max.exit_crit_edge, %for.cond.preheader.i.i.i255.frame_height_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i252.frame_height_max.exit_crit_edge, %for.inc.i.i.i.i250.frame_height_max.exit_crit_edge, %frame_width_max.exit.frame_height_max.exit_crit_edge
  %cond37288 = phi i32 [ %70, %venus_caps_by_codec.exit.i.i.i252.frame_height_max.exit_crit_edge ], [ %70, %for.end.i.i.i264.frame_height_max.exit_crit_edge ], [ %70, %for.cond.preheader.i.i.i255.frame_height_max.exit_crit_edge ], [ %70, %if.end10.i.i.i266 ], [ %51, %frame_width_max.exit.frame_height_max.exit_crit_edge ], [ %70, %for.inc.i.i.i262.frame_height_max.exit_crit_edge ], [ %70, %for.inc.i.i.i.i250.frame_height_max.exit_crit_edge ]
  %retval.0.i.i.i267 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i252.frame_height_max.exit_crit_edge ], [ 0, %for.end.i.i.i264.frame_height_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i255.frame_height_max.exit_crit_edge ], [ %80, %if.end10.i.i.i266 ], [ 0, %frame_width_max.exit.frame_height_max.exit_crit_edge ], [ 0, %for.inc.i.i.i262.frame_height_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i250.frame_height_max.exit_crit_edge ]
  %81 = tail call i32 @llvm.umin.i32(i32 %cond37288, i32 %retval.0.i.i.i267)
  %82 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %81, ptr %height, align 1
  %83 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %84)
  %cmp47 = icmp eq i32 %84, 10
  br i1 %cmp47, label %if.then48, label %frame_height_max.exit.if.end55_crit_edge

frame_height_max.exit.if.end55_crit_edge:         ; preds = %frame_height_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then48:                                        ; preds = %frame_height_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %48, 127
  %and = and i32 %add, -128
  %85 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %and, ptr %fmt, align 1
  %add52 = add i32 %81, 31
  %and53 = and i32 %add52, -32
  %86 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %and53, ptr %height, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %frame_height_max.exit.if.end55_crit_edge
  %87 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %fmt, align 1
  %add57 = add i32 %88, 1
  %and58 = and i32 %add57, -2
  store i32 %and58, ptr %fmt, align 1
  %89 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %height, align 1
  %add61 = add i32 %90, 1
  %and62 = and i32 %add61, -2
  store i32 %and62, ptr %height, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %91 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %field, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp64 = icmp eq i32 %92, 0
  br i1 %cmp64, label %if.then65, label %if.end55.if.end67_crit_edge

if.end55.if.end67_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then65:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 1, ptr %field, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end55.if.end67_crit_edge
  %num_planes = getelementptr inbounds %struct.venus_format, ptr %fmt1.0, i32 0, i32 1
  %94 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_planes, align 4
  %conv = trunc i32 %95 to i8
  %num_planes68 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %96 = ptrtoint ptr %num_planes68 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv, ptr %num_planes68, align 1
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 7
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %flags, align 1
  %98 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %pixelformat, align 1
  %call72 = tail call i32 @venus_helper_get_framesz(i32 noundef %99, i32 noundef %and58, i32 noundef %and62) #10
  %100 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %plane_fmt, align 1
  %add75 = add i32 %101, 4095
  %and76 = and i32 %add75, -4096
  %102 = tail call i32 @llvm.umax.i32(i32 %and76, i32 %call72)
  %103 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %102, ptr %plane_fmt, align 1
  %104 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %105)
  %cmp87 = icmp eq i32 %105, 10
  br i1 %cmp87, label %if.then89, label %if.end67.cleanup.sink.split_crit_edge

if.end67.cleanup.sink.split_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then89:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %fmt, align 1
  %add91 = add i32 %107, 127
  %and92 = and i32 %add91, -128
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then89, %if.end67.cleanup.sink.split_crit_edge
  %and92.sink = phi i32 [ %and92, %if.then89 ], [ 0, %if.end67.cleanup.sink.split_crit_edge ]
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %108 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %and92.sink, ptr %bytesperline, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.i165.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ null, %lor.lhs.false.i165.cleanup_crit_edge ], [ %fmt1.0, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @frame_height_min(ptr nocapture noundef readonly %inst) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %core1.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1.i.i, align 4
  %hfi_codec.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 45
  %2 = ptrtoint ptr %hfi_codec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfi_codec.i.i, align 8
  %session_type.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %4 = ptrtoint ptr %session_type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %session_type.i.i, align 4
  %codecs_count.i.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %codecs_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codecs_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp16.not.i.i.i, label %entry.cap_min.exit_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.cap_min.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %c.017.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %entry.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.i.i.i = icmp eq i32 %9, %3
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %domain5.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 1
  %10 = ptrtoint ptr %domain5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %domain5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp6.i.i.i = icmp eq i32 %11, %5
  br i1 %cmp6.i.i.i, label %venus_caps_by_codec.exit.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %c.017.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %7
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.cap_min.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.cap_min.exit_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

venus_caps_by_codec.exit.i.i:                     ; preds = %land.lhs.true.i.i.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i, label %venus_caps_by_codec.exit.i.i.cap_min.exit_crit_edge, label %for.cond.preheader.i.i

venus_caps_by_codec.exit.i.i.cap_min.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

for.cond.preheader.i.i:                           ; preds = %venus_caps_by_codec.exit.i.i
  %num_caps.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 3
  %12 = ptrtoint ptr %num_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_caps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp35.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp35.not.i.i, label %for.cond.preheader.i.i.cap_min.exit_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.cap_min.exit_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 4, i32 %i.036.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp3.i.i = icmp eq i32 %15, 2
  br i1 %cmp3.i.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cap_min.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.cap_min.exit_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool8.not.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool8.not.i.i, label %for.end.i.i.cap_min.exit_crit_edge, label %if.end10.i.i

for.end.i.i.cap_min.exit_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

if.end10.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 4, i32 %i.036.i.i, i32 1
  %16 = ptrtoint ptr %min.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min.i.i, align 4
  br label %cap_min.exit

cap_min.exit:                                     ; preds = %if.end10.i.i, %for.end.i.i.cap_min.exit_crit_edge, %for.inc.i.i.cap_min.exit_crit_edge, %for.cond.preheader.i.i.cap_min.exit_crit_edge, %venus_caps_by_codec.exit.i.i.cap_min.exit_crit_edge, %for.inc.i.i.i.cap_min.exit_crit_edge, %entry.cap_min.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.cap_min.exit_crit_edge ], [ 0, %for.end.i.i.cap_min.exit_crit_edge ], [ 0, %entry.cap_min.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.cap_min.exit_crit_edge ], [ %17, %if.end10.i.i ], [ 0, %for.inc.i.i.cap_min.exit_crit_edge ], [ 0, %for.inc.i.i.i.cap_min.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @frate_max(ptr nocapture noundef readonly %inst) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %core1.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1.i.i, align 4
  %hfi_codec.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 45
  %2 = ptrtoint ptr %hfi_codec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfi_codec.i.i, align 8
  %session_type.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %4 = ptrtoint ptr %session_type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %session_type.i.i, align 4
  %codecs_count.i.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %codecs_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codecs_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp16.not.i.i.i, label %entry.cap_max.exit_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.cap_max.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_max.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %c.017.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %entry.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.i.i.i = icmp eq i32 %9, %3
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %domain5.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 1
  %10 = ptrtoint ptr %domain5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %domain5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp6.i.i.i = icmp eq i32 %11, %5
  br i1 %cmp6.i.i.i, label %venus_caps_by_codec.exit.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %c.017.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %7
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.cap_max.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.cap_max.exit_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_max.exit

venus_caps_by_codec.exit.i.i:                     ; preds = %land.lhs.true.i.i.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i, label %venus_caps_by_codec.exit.i.i.cap_max.exit_crit_edge, label %for.cond.preheader.i.i

venus_caps_by_codec.exit.i.i.cap_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_max.exit

for.cond.preheader.i.i:                           ; preds = %venus_caps_by_codec.exit.i.i
  %num_caps.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 3
  %12 = ptrtoint ptr %num_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_caps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp35.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp35.not.i.i, label %for.cond.preheader.i.i.cap_max.exit_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.cap_max.exit_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_max.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 4, i32 %i.036.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp3.i.i = icmp eq i32 %15, 5
  br i1 %cmp3.i.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cap_max.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.cap_max.exit_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_max.exit

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool8.not.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool8.not.i.i, label %for.end.i.i.cap_max.exit_crit_edge, label %if.end10.i.i

for.end.i.i.cap_max.exit_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_max.exit

if.end10.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 4, i32 %i.036.i.i, i32 2
  %16 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max.i.i, align 4
  br label %cap_max.exit

cap_max.exit:                                     ; preds = %if.end10.i.i, %for.end.i.i.cap_max.exit_crit_edge, %for.inc.i.i.cap_max.exit_crit_edge, %for.cond.preheader.i.i.cap_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.cap_max.exit_crit_edge, %for.inc.i.i.i.cap_max.exit_crit_edge, %entry.cap_max.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.cap_max.exit_crit_edge ], [ 0, %for.end.i.i.cap_max.exit_crit_edge ], [ 0, %entry.cap_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.cap_max.exit_crit_edge ], [ %17, %if.end10.i.i ], [ 0, %for.inc.i.i.cap_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.cap_max.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @frate_min(ptr nocapture noundef readonly %inst) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %core1.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1.i.i, align 4
  %hfi_codec.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 45
  %2 = ptrtoint ptr %hfi_codec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfi_codec.i.i, align 8
  %session_type.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %4 = ptrtoint ptr %session_type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %session_type.i.i, align 4
  %codecs_count.i.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %codecs_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codecs_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp16.not.i.i.i, label %entry.cap_min.exit_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.cap_min.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %c.017.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %entry.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.i.i.i = icmp eq i32 %9, %3
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %domain5.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 1
  %10 = ptrtoint ptr %domain5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %domain5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp6.i.i.i = icmp eq i32 %11, %5
  br i1 %cmp6.i.i.i, label %venus_caps_by_codec.exit.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %c.017.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %7
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.cap_min.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.cap_min.exit_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

venus_caps_by_codec.exit.i.i:                     ; preds = %land.lhs.true.i.i.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i, label %venus_caps_by_codec.exit.i.i.cap_min.exit_crit_edge, label %for.cond.preheader.i.i

venus_caps_by_codec.exit.i.i.cap_min.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

for.cond.preheader.i.i:                           ; preds = %venus_caps_by_codec.exit.i.i
  %num_caps.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 3
  %12 = ptrtoint ptr %num_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_caps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp35.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp35.not.i.i, label %for.cond.preheader.i.i.cap_min.exit_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.cap_min.exit_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 4, i32 %i.036.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp3.i.i = icmp eq i32 %15, 5
  br i1 %cmp3.i.i, label %for.end.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cap_min.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.cap_min.exit_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool8.not.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool8.not.i.i, label %for.end.i.i.cap_min.exit_crit_edge, label %if.end10.i.i

for.end.i.i.cap_min.exit_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cap_min.exit

if.end10.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i, i32 4, i32 %i.036.i.i, i32 1
  %16 = ptrtoint ptr %min.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min.i.i, align 4
  br label %cap_min.exit

cap_min.exit:                                     ; preds = %if.end10.i.i, %for.end.i.i.cap_min.exit_crit_edge, %for.inc.i.i.cap_min.exit_crit_edge, %for.cond.preheader.i.i.cap_min.exit_crit_edge, %venus_caps_by_codec.exit.i.i.cap_min.exit_crit_edge, %for.inc.i.i.i.cap_min.exit_crit_edge, %entry.cap_min.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.cap_min.exit_crit_edge ], [ 0, %for.end.i.i.cap_min.exit_crit_edge ], [ 0, %entry.cap_min.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.cap_min.exit_crit_edge ], [ %17, %if.end10.i.i ], [ 0, %for.inc.i.i.cap_min.exit_crit_edge ], [ 0, %for.inc.i.i.i.cap_min.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_ops1 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %pm_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_ops1, align 4
  %venc_power = getelementptr inbounds %struct.venus_pm_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %venc_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %venc_power, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 %5(ptr noundef %dev, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_ops1 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %pm_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_ops1, align 4
  %venc_power = getelementptr inbounds %struct.venus_pm_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %venc_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %venc_power, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 %5(ptr noundef %dev, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_venus_enc__317_1536_qcom_venus_enc_driver_init6, !1, !"__initcall__kmod_venus_enc__317_1536_qcom_venus_enc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1536, i32 1}
!2 = !{ptr @__exitcall_qcom_venus_enc_driver_exit, !1, !"__exitcall_qcom_venus_enc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias318, !4, !"__UNIQUE_ID_alias318", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1538, i32 1}
!5 = !{ptr @__UNIQUE_ID_description319, !6, !"__UNIQUE_ID_description319", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1539, i32 1}
!7 = !{ptr @__UNIQUE_ID_file320, !8, !"__UNIQUE_ID_file320", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1540, i32 1}
!9 = !{ptr @__UNIQUE_ID_license321, !8, !"__UNIQUE_ID_license321", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1531, i32 11}
!12 = !{ptr @qcom_venus_enc_driver, !13, !"qcom_venus_enc_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1527, i32 31}
!14 = !{ptr @venc_fops, !15, !"venc_fops", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1416, i32 42}
!16 = !{ptr @venc_open.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1340, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @venc_hfi_ops, !20, !"venc_hfi_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1267, i32 34}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1263, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @venc_event_notify._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @venc_event_notify._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @venc_formats, !33, !"venc_formats", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 34, i32 34}
!34 = !{ptr @venc_m2m_ops, !35, !"venc_m2m_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1272, i32 34}
!36 = !{ptr @venc_vb2_ops, !37, !"venc_vb2_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1209, i32 29}
!38 = !{ptr @venc_ioctl_ops, !39, !"venc_ioctl_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 512, i32 36}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 142, i32 23}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 143, i32 21}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 144, i32 25}
!46 = !{ptr @venc_dt_match, !47, !"venc_dt_match", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1521, i32 34}
!48 = !{ptr @venc_pm_ops, !49, !"venc_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/qcom/venus/venc.c", i32 1515, i32 32}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148275866}
!60 = !{i64 760689, i64 760714, i64 760736, i64 760752, i64 760764, i64 760784, i64 760808, i64 760824, i64 760836}
!61 = !{i64 2148276054}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i8 0, i8 2}
!64 = !{!"auto-init"}
!65 = !{i64 2148666981, i64 2148667261, i64 2148667595, i64 2148667929}
