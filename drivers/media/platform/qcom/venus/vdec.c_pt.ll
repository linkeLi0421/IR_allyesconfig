; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/vdec.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/vdec.c"
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
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.venus_format = type { i32, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_event = type { i32, %union.anon.124, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.124 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.125, i32, i32, i32, i32, i32 }
%union.anon.125 = type { i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.hfi_event_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.123 }
%struct.anon.123 = type { i32, i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.venus_resources = type { i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [4 x ptr], i32, [2 x ptr], [2 x ptr], i32, [3 x ptr], i32, ptr, i32, [2 x ptr], i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.venus_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32, %struct.list_head, i32, %struct.list_head }
%struct.hfi_video_work_route = type { i32 }
%struct.hfi_enable = type { i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.hfi_frame_data = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.117 }
%union.anon.117 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.118, [2 x i32] }
%union.anon.118 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_venus_dec__323_1806_qcom_venus_dec_driver_init6 = internal global ptr @qcom_venus_dec_driver_init, section ".initcall6.init", align 4
@qcom_venus_dec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vdec_probe, ptr @vdec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vdec_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_venus_dec_driver_exit = internal global ptr @qcom_venus_dec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias324 = internal constant [44 x i8] c"venus_dec.alias=platform:qcom-venus-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [58 x i8] c"venus_dec.description=Qualcomm Venus video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [59 x i8] c"venus_dec.file=drivers/media/platform/qcom/venus/venus-dec\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [25 x i8] c"venus_dec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom-venus-decoder\00", [45 x i8] zeroinitializer }, align 32
@vdec_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"venus-decoder\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vdec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_runtime_suspend, ptr @vdec_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@vdec_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @vdec_open, ptr @vdec_close }, [60 x i8] zeroinitializer }, align 32
@vdec_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vdec_querycap, ptr @vdec_enum_fmt, ptr null, ptr @vdec_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_g_fmt, ptr @vdec_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_s_fmt, ptr @vdec_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_try_fmt, ptr @vdec_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_decoder_cmd, ptr @v4l2_m2m_ioctl_try_decoder_cmd, ptr null, ptr @vdec_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdec_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@vdec_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&inst->lock\00", [20 x i8] zeroinitializer }, align 32
@vdec_open.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&inst->reconf_wait\00", [45 x i8] zeroinitializer }, align 32
@vdec_hfi_ops = internal constant { %struct.hfi_inst_ops, [20 x i8] } { %struct.hfi_inst_ops { ptr @vdec_buf_done, ptr @vdec_event_notify, ptr @vdec_flush_done }, [20 x i8] zeroinitializer }, align 32
@vdec_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @vdec_m2m_device_run, ptr null, ptr @venus_helper_m2m_job_abort }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@vdec_event_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1492, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dec: event session error %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vdec_event_notify\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/platform/qcom/venus/vdec.c\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vdec_event_notify._entry_ptr = internal global ptr @vdec_event_notify._entry, section ".printk_index", align 4
@vdec_event_change.ev = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@vdec_event_change.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.7, ptr @.str.12, i8 1, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"venus_dec\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vdec_event_change\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"VenusMed : event %s sufficient resources (%ux%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"not\00", [28 x i8] zeroinitializer }, align 32
@vdec_event_change.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.7, ptr @.str.15, i8 1, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VenusHigh: flush output error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@vdec_formats = internal constant { [11 x %struct.venus_format], [48 x i8] } { [11 x %struct.venus_format] [%struct.venus_format { i32 842094158, i32 1, i32 9, i32 0 }, %struct.venus_format { i32 877088845, i32 1, i32 10, i32 8 }, %struct.venus_format { i32 843534413, i32 1, i32 10, i32 8 }, %struct.venus_format { i32 859189832, i32 1, i32 10, i32 8 }, %struct.venus_format { i32 1194410838, i32 1, i32 10, i32 8 }, %struct.venus_format { i32 1278296918, i32 1, i32 10, i32 8 }, %struct.venus_format { i32 875967048, i32 1, i32 10, i32 8 }, %struct.venus_format { i32 808996950, i32 1, i32 10, i32 8 }, %struct.venus_format { i32 809062486, i32 1, i32 10, i32 8 }, %struct.venus_format { i32 1145656920, i32 1, i32 10, i32 8 }, %struct.venus_format { i32 1129727304, i32 1, i32 10, i32 8 }], [48 x i8] zeroinitializer }, align 32
@vdec_flush_done.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.7, ptr @.str.17, i8 1, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdec_flush_done\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VenusHigh: flush done\0A\00", [41 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@vdec_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vdec_queue_setup, ptr null, ptr null, ptr null, ptr @vdec_buf_init, ptr @venus_helper_vb2_buf_prepare, ptr null, ptr @vdec_buf_cleanup, ptr @vdec_start_streaming, ptr @vdec_stop_streaming, ptr @vdec_vb2_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vdec_vb2_buf_queue.eos = internal constant { %struct.v4l2_event, [56 x i8] } { %struct.v4l2_event { i32 2, %union.anon.124 zeroinitializer, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-venus\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Qualcomm Venus video decoder\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"platform:qcom-venus\00", [44 x i8] zeroinitializer }, align 32
@vdec_check_src_change.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.22, ptr @.str.7, ptr @.str.23, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vdec_check_src_change\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VenusHigh: wrong state\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 16777217, i64 16777218, i64 16777222]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [13 x i64] [i64 11, i64 32, i64 808996950, i64 809062486, i64 842094158, i64 843534413, i64 859189832, i64 875967048, i64 877088845, i64 1129727304, i64 1145656920, i64 1194410838, i64 1278296918]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.35 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.40 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258, i64 259]
@__sancov_gen_cov_switch_values.41 = internal global [13 x i64] [i64 11, i64 32, i64 808996950, i64 809062486, i64 842094158, i64 843534413, i64 859189832, i64 875967048, i64 877088845, i64 1129727304, i64 1145656920, i64 1194410838, i64 1278296918]
@__sancov_gen_cov_switch_values.42 = internal global [13 x i64] [i64 11, i64 32, i64 808996950, i64 809062486, i64 842094158, i64 843534413, i64 859189832, i64 875967048, i64 877088845, i64 1129727304, i64 1145656920, i64 1194410838, i64 1278296918]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"qcom_venus_dec_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1797, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1801, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"vdec_dt_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1791, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"vdec_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1785, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"vdec_fops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1686, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"vdec_ioctl_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 539, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1601, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1612, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"vdec_hfi_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1519, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"vdec_m2m_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1549, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1163, i32 7 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1492, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1394, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1441, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1469, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"vdec_formats\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 32, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1516, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 378, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"vdec_vb2_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1315, i32 29 }
@___asan_gen_.140 = private unnamed_addr constant [4 x i8] c"eos\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1292, i32 33 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 388, i32 23 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 389, i32 21 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 390, i32 25 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [44 x i8] c"../drivers/media/platform/qcom/venus/vdec.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 228, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias324, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__exitcall_qcom_venus_dec_driver_exit, ptr @__initcall__kmod_venus_dec__323_1806_qcom_venus_dec_driver_init6, ptr @qcom_venus_dec_driver_exit, ptr @vdec_event_notify._entry, ptr @vdec_event_notify._entry_ptr, ptr @qcom_venus_dec_driver, ptr @.str, ptr @vdec_dt_match, ptr @vdec_pm_ops, ptr @vdec_fops, ptr @vdec_ioctl_ops, ptr @vdec_open.__key, ptr @.str.1, ptr @vdec_open.__key.2, ptr @.str.3, ptr @vdec_hfi_ops, ptr @vdec_m2m_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @vdec_event_change.ev, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @vdec_formats, ptr @.str.16, ptr @.str.17, ptr @xa_init_flags.__key, ptr @.str.18, ptr @vdec_vb2_ops, ptr @vdec_vb2_buf_queue.eos, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_venus_dec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_open.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_hfi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_event_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_event_change.ev to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_formats to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_vb2_buf_queue.eos to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_venus_dec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_venus_dec_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_venus_dec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_venus_dec_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_probe(ptr noundef %pdev) #2 align 64 {
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
  %vdec_get = getelementptr inbounds %struct.venus_pm_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %vdec_get to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdec_get, align 4
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
  store ptr @vdec_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %call15, i32 0, i32 24
  %11 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vdec_ioctl_ops, ptr %ioctl_ops, align 4
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
  %vdev_dec = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 19
  %15 = ptrtoint ptr %vdev_dec to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call15, ptr %vdev_dec, align 4
  %dev_dec = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 24
  %16 = ptrtoint ptr %dev_dec to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev_dec, align 4
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
define internal i32 @vdec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %vdev_dec = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %vdev_dec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev_dec, align 4
  tail call void @video_unregister_device(ptr noundef %5) #10
  %dev_dec = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %dev_dec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_dec, align 4
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #10
  %pm_ops = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 37
  %8 = ptrtoint ptr %pm_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pm_ops, align 4
  %vdec_put = getelementptr inbounds %struct.venus_pm_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %vdec_put to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdec_put, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev_dec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_dec, align 4
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
define internal i32 @vdec_open(ptr noundef %file) #2 align 64 {
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
  %prev.i85 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %registeredbufs, ptr %prev.i85, align 8
  %internalbufs = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %internalbufs to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %internalbufs, ptr %internalbufs, align 4
  %prev.i86 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %internalbufs, ptr %prev.i86, align 8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i87 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i87, align 4
  %lock = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @vdec_open.__key) #10
  %core2 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %core2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %core2, align 4
  %session_type = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 55
  %12 = ptrtoint ptr %session_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %session_type, align 4
  %num_output_bufs = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 36
  %13 = ptrtoint ptr %num_output_bufs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num_output_bufs, align 4
  %codec_state = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 25
  %14 = ptrtoint ptr %codec_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %codec_state, align 4
  %buf_count = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 28
  %15 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %buf_count, align 8
  %clk_data = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %clk_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %clk_data, align 8
  %core_acquired = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 57
  %17 = ptrtoint ptr %core_acquired to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %core_acquired, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %core_acquired, align 8
  %bit_depth = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 58
  %18 = ptrtoint ptr %bit_depth to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bit_depth, align 4
  %pic_struct = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 59
  %19 = ptrtoint ptr %pic_struct to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %pic_struct, align 8
  %reconf_wait = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 26
  tail call void @__init_waitqueue_head(ptr noundef %reconf_wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @vdec_open.__key.2) #10
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %20 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_flags, align 4
  %nonblock = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 9
  %and = lshr i32 %21, 11
  %22 = trunc i32 %and to i8
  %23 = and i8 %22, 1
  %24 = ptrtoint ptr %nonblock to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %nonblock, align 8
  tail call void @venus_helper_init_instance(ptr noundef nonnull %call7.i.i) #10
  %call7 = tail call i32 @vdec_ctrl_init(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @hfi_session_create(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @vdec_hfi_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_ctrl_deinit_crit_edge

if.end10.err_ctrl_deinit_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ctrl_deinit

if.end14:                                         ; preds = %if.end10
  %hfi_codec.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 45
  %25 = ptrtoint ptr %hfi_codec.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %hfi_codec.i, align 8
  %fmt_out.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 33
  %26 = ptrtoint ptr %fmt_out.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr getelementptr inbounds ([11 x %struct.venus_format], ptr @vdec_formats, i32 0, i32 6), ptr %fmt_out.i, align 8
  %fmt_cap.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 34
  %27 = ptrtoint ptr %fmt_cap.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vdec_formats, ptr %fmt_cap.i, align 4
  %28 = ptrtoint ptr %core2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core2, align 4
  %30 = ptrtoint ptr %session_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %session_type, align 4
  %codecs_count.i.i.i.i.i = getelementptr inbounds %struct.venus_core, ptr %29, i32 0, i32 46
  %32 = ptrtoint ptr %codecs_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %codecs_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp16.not.i.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp16.not.i.i.i.i.i, label %if.end14.frame_width_min.exit.i_crit_edge, label %if.end14.for.body.i.i.i.i.i_crit_edge

if.end14.for.body.i.i.i.i.i_crit_edge:            ; preds = %if.end14
  br label %for.body.i.i.i.i.i

if.end14.frame_width_min.exit.i_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.end14.for.body.i.i.i.i.i_crit_edge
  %c.017.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 0, %if.end14.for.body.i.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp2.i.i.i.i.i = icmp eq i32 %35, 2
  br i1 %cmp2.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %domain5.i.i.i.i.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i.i, i32 1
  %36 = ptrtoint ptr %domain5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %domain5.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %31)
  %cmp6.i.i.i.i.i = icmp eq i32 %37, %31
  br i1 %cmp6.i.i.i.i.i, label %venus_caps_by_codec.exit.i.i.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %inc.i.i.i.i.i = add nuw i32 %c.017.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %33
  br i1 %exitcond.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.frame_width_min.exit.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.frame_width_min.exit.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit.i

venus_caps_by_codec.exit.i.i.i.i:                 ; preds = %land.lhs.true.i.i.i.i.i
  %tobool.not.i.i.i.i = icmp eq ptr %arrayidx.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %venus_caps_by_codec.exit.i.i.i.i.frame_width_min.exit.i_crit_edge, label %for.cond.preheader.i.i.i.i

venus_caps_by_codec.exit.i.i.i.i.frame_width_min.exit.i_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit.i

for.cond.preheader.i.i.i.i:                       ; preds = %venus_caps_by_codec.exit.i.i.i.i
  %num_caps.i.i.i.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i.i, i32 3
  %38 = ptrtoint ptr %num_caps.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_caps.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp35.not.i.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp35.not.i.i.i.i, label %for.cond.preheader.i.i.i.i.frame_width_min.exit.i_crit_edge, label %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  br label %for.body.i.i.i.i

for.cond.preheader.i.i.i.i.frame_width_min.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge
  %i.036.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i.i, i32 4, i32 %i.036.i.i.i.i
  %40 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp3.i.i.i.i = icmp eq i32 %41, 1
  br i1 %cmp3.i.i.i.i, label %for.end.i.i.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.036.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %39
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.frame_width_min.exit.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.frame_width_min.exit.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit.i

for.end.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %tobool8.not.i.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool8.not.i.i.i.i, label %for.end.i.i.i.i.frame_width_min.exit.i_crit_edge, label %if.end10.i.i.i.i

for.end.i.i.i.i.frame_width_min.exit.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit.i

if.end10.i.i.i.i:                                 ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i.i, i32 4, i32 %i.036.i.i.i.i, i32 1
  %42 = ptrtoint ptr %min.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %min.i.i.i.i, align 4
  br label %frame_width_min.exit.i

frame_width_min.exit.i:                           ; preds = %if.end10.i.i.i.i, %for.end.i.i.i.i.frame_width_min.exit.i_crit_edge, %for.inc.i.i.i.i.frame_width_min.exit.i_crit_edge, %for.cond.preheader.i.i.i.i.frame_width_min.exit.i_crit_edge, %venus_caps_by_codec.exit.i.i.i.i.frame_width_min.exit.i_crit_edge, %for.inc.i.i.i.i.i.frame_width_min.exit.i_crit_edge, %if.end14.frame_width_min.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i.i.frame_width_min.exit.i_crit_edge ], [ 0, %for.end.i.i.i.i.frame_width_min.exit.i_crit_edge ], [ 0, %if.end14.frame_width_min.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.i.frame_width_min.exit.i_crit_edge ], [ %43, %if.end10.i.i.i.i ], [ 0, %for.inc.i.i.i.i.frame_width_min.exit.i_crit_edge ], [ 0, %for.inc.i.i.i.i.i.frame_width_min.exit.i_crit_edge ]
  %width.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 15
  %44 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i.i.i.i, ptr %width.i, align 8
  %45 = ptrtoint ptr %codecs_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %codecs_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp16.not.i.i.i.i37.i = icmp eq i32 %46, 0
  br i1 %cmp16.not.i.i.i.i37.i, label %frame_width_min.exit.i.frame_height_min.exit.i_crit_edge, label %frame_width_min.exit.i.for.body.i.i.i.i41.i_crit_edge

frame_width_min.exit.i.for.body.i.i.i.i41.i_crit_edge: ; preds = %frame_width_min.exit.i
  br label %for.body.i.i.i.i41.i

frame_width_min.exit.i.frame_height_min.exit.i_crit_edge: ; preds = %frame_width_min.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

for.body.i.i.i.i41.i:                             ; preds = %for.inc.i.i.i.i47.i.for.body.i.i.i.i41.i_crit_edge, %frame_width_min.exit.i.for.body.i.i.i.i41.i_crit_edge
  %c.017.i.i.i.i38.i = phi i32 [ %inc.i.i.i.i45.i, %for.inc.i.i.i.i47.i.for.body.i.i.i.i41.i_crit_edge ], [ 0, %frame_width_min.exit.i.for.body.i.i.i.i41.i_crit_edge ]
  %arrayidx.i.i.i.i39.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i38.i
  %47 = ptrtoint ptr %arrayidx.i.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i.i.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp2.i.i.i.i40.i = icmp eq i32 %48, 2
  br i1 %cmp2.i.i.i.i40.i, label %land.lhs.true.i.i.i.i44.i, label %for.body.i.i.i.i41.i.for.inc.i.i.i.i47.i_crit_edge

for.body.i.i.i.i41.i.for.inc.i.i.i.i47.i_crit_edge: ; preds = %for.body.i.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i47.i

land.lhs.true.i.i.i.i44.i:                        ; preds = %for.body.i.i.i.i41.i
  %domain5.i.i.i.i42.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i38.i, i32 1
  %49 = ptrtoint ptr %domain5.i.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %domain5.i.i.i.i42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %31)
  %cmp6.i.i.i.i43.i = icmp eq i32 %50, %31
  br i1 %cmp6.i.i.i.i43.i, label %venus_caps_by_codec.exit.i.i.i49.i, label %land.lhs.true.i.i.i.i44.i.for.inc.i.i.i.i47.i_crit_edge

land.lhs.true.i.i.i.i44.i.for.inc.i.i.i.i47.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i47.i

for.inc.i.i.i.i47.i:                              ; preds = %land.lhs.true.i.i.i.i44.i.for.inc.i.i.i.i47.i_crit_edge, %for.body.i.i.i.i41.i.for.inc.i.i.i.i47.i_crit_edge
  %inc.i.i.i.i45.i = add nuw i32 %c.017.i.i.i.i38.i, 1
  %exitcond.not.i.i.i.i46.i = icmp eq i32 %inc.i.i.i.i45.i, %46
  br i1 %exitcond.not.i.i.i.i46.i, label %for.inc.i.i.i.i47.i.frame_height_min.exit.i_crit_edge, label %for.inc.i.i.i.i47.i.for.body.i.i.i.i41.i_crit_edge

for.inc.i.i.i.i47.i.for.body.i.i.i.i41.i_crit_edge: ; preds = %for.inc.i.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i41.i

for.inc.i.i.i.i47.i.frame_height_min.exit.i_crit_edge: ; preds = %for.inc.i.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

venus_caps_by_codec.exit.i.i.i49.i:               ; preds = %land.lhs.true.i.i.i.i44.i
  %tobool.not.i.i.i48.i = icmp eq ptr %arrayidx.i.i.i.i39.i, null
  br i1 %tobool.not.i.i.i48.i, label %venus_caps_by_codec.exit.i.i.i49.i.frame_height_min.exit.i_crit_edge, label %for.cond.preheader.i.i.i52.i

venus_caps_by_codec.exit.i.i.i49.i.frame_height_min.exit.i_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

for.cond.preheader.i.i.i52.i:                     ; preds = %venus_caps_by_codec.exit.i.i.i49.i
  %num_caps.i.i.i50.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i38.i, i32 3
  %51 = ptrtoint ptr %num_caps.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_caps.i.i.i50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp35.not.i.i.i51.i = icmp eq i32 %52, 0
  br i1 %cmp35.not.i.i.i51.i, label %for.cond.preheader.i.i.i52.i.frame_height_min.exit.i_crit_edge, label %for.cond.preheader.i.i.i52.i.for.body.i.i.i56.i_crit_edge

for.cond.preheader.i.i.i52.i.for.body.i.i.i56.i_crit_edge: ; preds = %for.cond.preheader.i.i.i52.i
  br label %for.body.i.i.i56.i

for.cond.preheader.i.i.i52.i.frame_height_min.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

for.body.i.i.i56.i:                               ; preds = %for.inc.i.i.i59.i.for.body.i.i.i56.i_crit_edge, %for.cond.preheader.i.i.i52.i.for.body.i.i.i56.i_crit_edge
  %i.036.i.i.i53.i = phi i32 [ %inc.i.i.i57.i, %for.inc.i.i.i59.i.for.body.i.i.i56.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i52.i.for.body.i.i.i56.i_crit_edge ]
  %arrayidx.i.i.i54.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i38.i, i32 4, i32 %i.036.i.i.i53.i
  %53 = ptrtoint ptr %arrayidx.i.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp3.i.i.i55.i = icmp eq i32 %54, 2
  br i1 %cmp3.i.i.i55.i, label %for.end.i.i.i61.i, label %for.inc.i.i.i59.i

for.inc.i.i.i59.i:                                ; preds = %for.body.i.i.i56.i
  %inc.i.i.i57.i = add nuw i32 %i.036.i.i.i53.i, 1
  %exitcond.not.i.i.i58.i = icmp eq i32 %inc.i.i.i57.i, %52
  br i1 %exitcond.not.i.i.i58.i, label %for.inc.i.i.i59.i.frame_height_min.exit.i_crit_edge, label %for.inc.i.i.i59.i.for.body.i.i.i56.i_crit_edge

for.inc.i.i.i59.i.for.body.i.i.i56.i_crit_edge:   ; preds = %for.inc.i.i.i59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i56.i

for.inc.i.i.i59.i.frame_height_min.exit.i_crit_edge: ; preds = %for.inc.i.i.i59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

for.end.i.i.i61.i:                                ; preds = %for.body.i.i.i56.i
  %tobool8.not.i.i.i60.i = icmp eq ptr %arrayidx.i.i.i54.i, null
  br i1 %tobool8.not.i.i.i60.i, label %for.end.i.i.i61.i.frame_height_min.exit.i_crit_edge, label %if.end10.i.i.i63.i

for.end.i.i.i61.i.frame_height_min.exit.i_crit_edge: ; preds = %for.end.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

if.end10.i.i.i63.i:                               ; preds = %for.end.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i62.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i38.i, i32 4, i32 %i.036.i.i.i53.i, i32 1
  %55 = ptrtoint ptr %min.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %min.i.i.i62.i, align 4
  %phi.bo.i = add i32 %56, 31
  %phi.bo131.i = and i32 %phi.bo.i, -32
  br label %frame_height_min.exit.i

frame_height_min.exit.i:                          ; preds = %if.end10.i.i.i63.i, %for.end.i.i.i61.i.frame_height_min.exit.i_crit_edge, %for.inc.i.i.i59.i.frame_height_min.exit.i_crit_edge, %for.cond.preheader.i.i.i52.i.frame_height_min.exit.i_crit_edge, %venus_caps_by_codec.exit.i.i.i49.i.frame_height_min.exit.i_crit_edge, %for.inc.i.i.i.i47.i.frame_height_min.exit.i_crit_edge, %frame_width_min.exit.i.frame_height_min.exit.i_crit_edge
  %retval.0.i.i.i64.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i49.i.frame_height_min.exit.i_crit_edge ], [ 0, %for.end.i.i.i61.i.frame_height_min.exit.i_crit_edge ], [ 0, %frame_width_min.exit.i.frame_height_min.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i52.i.frame_height_min.exit.i_crit_edge ], [ %phi.bo131.i, %if.end10.i.i.i63.i ], [ 0, %for.inc.i.i.i59.i.frame_height_min.exit.i_crit_edge ], [ 0, %for.inc.i.i.i.i47.i.frame_height_min.exit.i_crit_edge ]
  %height.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 16
  %57 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.0.i.i.i64.i, ptr %height.i, align 4
  %crop.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 17
  %58 = ptrtoint ptr %crop.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %crop.i, align 8
  %top.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 17, i32 1
  %59 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %top.i, align 4
  %width5.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 17, i32 2
  %60 = ptrtoint ptr %width5.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i.i.i.i, ptr %width5.i, align 8
  %height8.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 17, i32 3
  %61 = ptrtoint ptr %height8.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i.i64.i, ptr %height8.i, align 4
  %fw_min_cnt.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 18
  %62 = ptrtoint ptr %fw_min_cnt.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8, ptr %fw_min_cnt.i, align 8
  %63 = ptrtoint ptr %codecs_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %codecs_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp16.not.i.i.i.i69.i = icmp eq i32 %64, 0
  br i1 %cmp16.not.i.i.i.i69.i, label %frame_height_min.exit.i.frame_width_min.exit97.i_crit_edge, label %frame_height_min.exit.i.for.body.i.i.i.i73.i_crit_edge

frame_height_min.exit.i.for.body.i.i.i.i73.i_crit_edge: ; preds = %frame_height_min.exit.i
  br label %for.body.i.i.i.i73.i

frame_height_min.exit.i.frame_width_min.exit97.i_crit_edge: ; preds = %frame_height_min.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit97.i

for.body.i.i.i.i73.i:                             ; preds = %for.inc.i.i.i.i79.i.for.body.i.i.i.i73.i_crit_edge, %frame_height_min.exit.i.for.body.i.i.i.i73.i_crit_edge
  %c.017.i.i.i.i70.i = phi i32 [ %inc.i.i.i.i77.i, %for.inc.i.i.i.i79.i.for.body.i.i.i.i73.i_crit_edge ], [ 0, %frame_height_min.exit.i.for.body.i.i.i.i73.i_crit_edge ]
  %arrayidx.i.i.i.i71.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i70.i
  %65 = ptrtoint ptr %arrayidx.i.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp2.i.i.i.i72.i = icmp eq i32 %66, 2
  br i1 %cmp2.i.i.i.i72.i, label %land.lhs.true.i.i.i.i76.i, label %for.body.i.i.i.i73.i.for.inc.i.i.i.i79.i_crit_edge

for.body.i.i.i.i73.i.for.inc.i.i.i.i79.i_crit_edge: ; preds = %for.body.i.i.i.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i79.i

land.lhs.true.i.i.i.i76.i:                        ; preds = %for.body.i.i.i.i73.i
  %domain5.i.i.i.i74.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i70.i, i32 1
  %67 = ptrtoint ptr %domain5.i.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %domain5.i.i.i.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %31)
  %cmp6.i.i.i.i75.i = icmp eq i32 %68, %31
  br i1 %cmp6.i.i.i.i75.i, label %venus_caps_by_codec.exit.i.i.i81.i, label %land.lhs.true.i.i.i.i76.i.for.inc.i.i.i.i79.i_crit_edge

land.lhs.true.i.i.i.i76.i.for.inc.i.i.i.i79.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i79.i

for.inc.i.i.i.i79.i:                              ; preds = %land.lhs.true.i.i.i.i76.i.for.inc.i.i.i.i79.i_crit_edge, %for.body.i.i.i.i73.i.for.inc.i.i.i.i79.i_crit_edge
  %inc.i.i.i.i77.i = add nuw i32 %c.017.i.i.i.i70.i, 1
  %exitcond.not.i.i.i.i78.i = icmp eq i32 %inc.i.i.i.i77.i, %64
  br i1 %exitcond.not.i.i.i.i78.i, label %for.inc.i.i.i.i79.i.frame_width_min.exit97.i_crit_edge, label %for.inc.i.i.i.i79.i.for.body.i.i.i.i73.i_crit_edge

for.inc.i.i.i.i79.i.for.body.i.i.i.i73.i_crit_edge: ; preds = %for.inc.i.i.i.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i73.i

for.inc.i.i.i.i79.i.frame_width_min.exit97.i_crit_edge: ; preds = %for.inc.i.i.i.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit97.i

venus_caps_by_codec.exit.i.i.i81.i:               ; preds = %land.lhs.true.i.i.i.i76.i
  %tobool.not.i.i.i80.i = icmp eq ptr %arrayidx.i.i.i.i71.i, null
  br i1 %tobool.not.i.i.i80.i, label %venus_caps_by_codec.exit.i.i.i81.i.frame_width_min.exit97.i_crit_edge, label %for.cond.preheader.i.i.i84.i

venus_caps_by_codec.exit.i.i.i81.i.frame_width_min.exit97.i_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit97.i

for.cond.preheader.i.i.i84.i:                     ; preds = %venus_caps_by_codec.exit.i.i.i81.i
  %num_caps.i.i.i82.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i70.i, i32 3
  %69 = ptrtoint ptr %num_caps.i.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_caps.i.i.i82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp35.not.i.i.i83.i = icmp eq i32 %70, 0
  br i1 %cmp35.not.i.i.i83.i, label %for.cond.preheader.i.i.i84.i.frame_width_min.exit97.i_crit_edge, label %for.cond.preheader.i.i.i84.i.for.body.i.i.i88.i_crit_edge

for.cond.preheader.i.i.i84.i.for.body.i.i.i88.i_crit_edge: ; preds = %for.cond.preheader.i.i.i84.i
  br label %for.body.i.i.i88.i

for.cond.preheader.i.i.i84.i.frame_width_min.exit97.i_crit_edge: ; preds = %for.cond.preheader.i.i.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit97.i

for.body.i.i.i88.i:                               ; preds = %for.inc.i.i.i91.i.for.body.i.i.i88.i_crit_edge, %for.cond.preheader.i.i.i84.i.for.body.i.i.i88.i_crit_edge
  %i.036.i.i.i85.i = phi i32 [ %inc.i.i.i89.i, %for.inc.i.i.i91.i.for.body.i.i.i88.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i84.i.for.body.i.i.i88.i_crit_edge ]
  %arrayidx.i.i.i86.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i70.i, i32 4, i32 %i.036.i.i.i85.i
  %71 = ptrtoint ptr %arrayidx.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i.i86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp3.i.i.i87.i = icmp eq i32 %72, 1
  br i1 %cmp3.i.i.i87.i, label %for.end.i.i.i93.i, label %for.inc.i.i.i91.i

for.inc.i.i.i91.i:                                ; preds = %for.body.i.i.i88.i
  %inc.i.i.i89.i = add nuw i32 %i.036.i.i.i85.i, 1
  %exitcond.not.i.i.i90.i = icmp eq i32 %inc.i.i.i89.i, %70
  br i1 %exitcond.not.i.i.i90.i, label %for.inc.i.i.i91.i.frame_width_min.exit97.i_crit_edge, label %for.inc.i.i.i91.i.for.body.i.i.i88.i_crit_edge

for.inc.i.i.i91.i.for.body.i.i.i88.i_crit_edge:   ; preds = %for.inc.i.i.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i88.i

for.inc.i.i.i91.i.frame_width_min.exit97.i_crit_edge: ; preds = %for.inc.i.i.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit97.i

for.end.i.i.i93.i:                                ; preds = %for.body.i.i.i88.i
  %tobool8.not.i.i.i92.i = icmp eq ptr %arrayidx.i.i.i86.i, null
  br i1 %tobool8.not.i.i.i92.i, label %for.end.i.i.i93.i.frame_width_min.exit97.i_crit_edge, label %if.end10.i.i.i95.i

for.end.i.i.i93.i.frame_width_min.exit97.i_crit_edge: ; preds = %for.end.i.i.i93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit97.i

if.end10.i.i.i95.i:                               ; preds = %for.end.i.i.i93.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i94.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i70.i, i32 4, i32 %i.036.i.i.i85.i, i32 1
  %73 = ptrtoint ptr %min.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %min.i.i.i94.i, align 4
  br label %frame_width_min.exit97.i

frame_width_min.exit97.i:                         ; preds = %if.end10.i.i.i95.i, %for.end.i.i.i93.i.frame_width_min.exit97.i_crit_edge, %for.inc.i.i.i91.i.frame_width_min.exit97.i_crit_edge, %for.cond.preheader.i.i.i84.i.frame_width_min.exit97.i_crit_edge, %venus_caps_by_codec.exit.i.i.i81.i.frame_width_min.exit97.i_crit_edge, %for.inc.i.i.i.i79.i.frame_width_min.exit97.i_crit_edge, %frame_height_min.exit.i.frame_width_min.exit97.i_crit_edge
  %retval.0.i.i.i96.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i81.i.frame_width_min.exit97.i_crit_edge ], [ 0, %for.end.i.i.i93.i.frame_width_min.exit97.i_crit_edge ], [ 0, %frame_height_min.exit.i.frame_width_min.exit97.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i84.i.frame_width_min.exit97.i_crit_edge ], [ %74, %if.end10.i.i.i95.i ], [ 0, %for.inc.i.i.i91.i.frame_width_min.exit97.i_crit_edge ], [ 0, %for.inc.i.i.i.i79.i.frame_width_min.exit97.i_crit_edge ]
  %out_width.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 19
  %75 = ptrtoint ptr %out_width.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i.i.i96.i, ptr %out_width.i, align 4
  %76 = ptrtoint ptr %codecs_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %codecs_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp16.not.i.i.i.i102.i = icmp eq i32 %77, 0
  br i1 %cmp16.not.i.i.i.i102.i, label %frame_width_min.exit97.i.vdec_inst_init.exit_crit_edge, label %frame_width_min.exit97.i.for.body.i.i.i.i106.i_crit_edge

frame_width_min.exit97.i.for.body.i.i.i.i106.i_crit_edge: ; preds = %frame_width_min.exit97.i
  br label %for.body.i.i.i.i106.i

frame_width_min.exit97.i.vdec_inst_init.exit_crit_edge: ; preds = %frame_width_min.exit97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_inst_init.exit

for.body.i.i.i.i106.i:                            ; preds = %for.inc.i.i.i.i112.i.for.body.i.i.i.i106.i_crit_edge, %frame_width_min.exit97.i.for.body.i.i.i.i106.i_crit_edge
  %c.017.i.i.i.i103.i = phi i32 [ %inc.i.i.i.i110.i, %for.inc.i.i.i.i112.i.for.body.i.i.i.i106.i_crit_edge ], [ 0, %frame_width_min.exit97.i.for.body.i.i.i.i106.i_crit_edge ]
  %arrayidx.i.i.i.i104.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i103.i
  %78 = ptrtoint ptr %arrayidx.i.i.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i.i.i104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp2.i.i.i.i105.i = icmp eq i32 %79, 2
  br i1 %cmp2.i.i.i.i105.i, label %land.lhs.true.i.i.i.i109.i, label %for.body.i.i.i.i106.i.for.inc.i.i.i.i112.i_crit_edge

for.body.i.i.i.i106.i.for.inc.i.i.i.i112.i_crit_edge: ; preds = %for.body.i.i.i.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i112.i

land.lhs.true.i.i.i.i109.i:                       ; preds = %for.body.i.i.i.i106.i
  %domain5.i.i.i.i107.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i103.i, i32 1
  %80 = ptrtoint ptr %domain5.i.i.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %domain5.i.i.i.i107.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %31)
  %cmp6.i.i.i.i108.i = icmp eq i32 %81, %31
  br i1 %cmp6.i.i.i.i108.i, label %venus_caps_by_codec.exit.i.i.i114.i, label %land.lhs.true.i.i.i.i109.i.for.inc.i.i.i.i112.i_crit_edge

land.lhs.true.i.i.i.i109.i.for.inc.i.i.i.i112.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i112.i

for.inc.i.i.i.i112.i:                             ; preds = %land.lhs.true.i.i.i.i109.i.for.inc.i.i.i.i112.i_crit_edge, %for.body.i.i.i.i106.i.for.inc.i.i.i.i112.i_crit_edge
  %inc.i.i.i.i110.i = add nuw i32 %c.017.i.i.i.i103.i, 1
  %exitcond.not.i.i.i.i111.i = icmp eq i32 %inc.i.i.i.i110.i, %77
  br i1 %exitcond.not.i.i.i.i111.i, label %for.inc.i.i.i.i112.i.vdec_inst_init.exit_crit_edge, label %for.inc.i.i.i.i112.i.for.body.i.i.i.i106.i_crit_edge

for.inc.i.i.i.i112.i.for.body.i.i.i.i106.i_crit_edge: ; preds = %for.inc.i.i.i.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i106.i

for.inc.i.i.i.i112.i.vdec_inst_init.exit_crit_edge: ; preds = %for.inc.i.i.i.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_inst_init.exit

venus_caps_by_codec.exit.i.i.i114.i:              ; preds = %land.lhs.true.i.i.i.i109.i
  %tobool.not.i.i.i113.i = icmp eq ptr %arrayidx.i.i.i.i104.i, null
  br i1 %tobool.not.i.i.i113.i, label %venus_caps_by_codec.exit.i.i.i114.i.vdec_inst_init.exit_crit_edge, label %for.cond.preheader.i.i.i117.i

venus_caps_by_codec.exit.i.i.i114.i.vdec_inst_init.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_inst_init.exit

for.cond.preheader.i.i.i117.i:                    ; preds = %venus_caps_by_codec.exit.i.i.i114.i
  %num_caps.i.i.i115.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i103.i, i32 3
  %82 = ptrtoint ptr %num_caps.i.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_caps.i.i.i115.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp35.not.i.i.i116.i = icmp eq i32 %83, 0
  br i1 %cmp35.not.i.i.i116.i, label %for.cond.preheader.i.i.i117.i.vdec_inst_init.exit_crit_edge, label %for.cond.preheader.i.i.i117.i.for.body.i.i.i121.i_crit_edge

for.cond.preheader.i.i.i117.i.for.body.i.i.i121.i_crit_edge: ; preds = %for.cond.preheader.i.i.i117.i
  br label %for.body.i.i.i121.i

for.cond.preheader.i.i.i117.i.vdec_inst_init.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_inst_init.exit

for.body.i.i.i121.i:                              ; preds = %for.inc.i.i.i124.i.for.body.i.i.i121.i_crit_edge, %for.cond.preheader.i.i.i117.i.for.body.i.i.i121.i_crit_edge
  %i.036.i.i.i118.i = phi i32 [ %inc.i.i.i122.i, %for.inc.i.i.i124.i.for.body.i.i.i121.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i117.i.for.body.i.i.i121.i_crit_edge ]
  %arrayidx.i.i.i119.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i103.i, i32 4, i32 %i.036.i.i.i118.i
  %84 = ptrtoint ptr %arrayidx.i.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i.i.i119.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp3.i.i.i120.i = icmp eq i32 %85, 2
  br i1 %cmp3.i.i.i120.i, label %for.end.i.i.i126.i, label %for.inc.i.i.i124.i

for.inc.i.i.i124.i:                               ; preds = %for.body.i.i.i121.i
  %inc.i.i.i122.i = add nuw i32 %i.036.i.i.i118.i, 1
  %exitcond.not.i.i.i123.i = icmp eq i32 %inc.i.i.i122.i, %83
  br i1 %exitcond.not.i.i.i123.i, label %for.inc.i.i.i124.i.vdec_inst_init.exit_crit_edge, label %for.inc.i.i.i124.i.for.body.i.i.i121.i_crit_edge

for.inc.i.i.i124.i.for.body.i.i.i121.i_crit_edge: ; preds = %for.inc.i.i.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i121.i

for.inc.i.i.i124.i.vdec_inst_init.exit_crit_edge: ; preds = %for.inc.i.i.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_inst_init.exit

for.end.i.i.i126.i:                               ; preds = %for.body.i.i.i121.i
  %tobool8.not.i.i.i125.i = icmp eq ptr %arrayidx.i.i.i119.i, null
  br i1 %tobool8.not.i.i.i125.i, label %for.end.i.i.i126.i.vdec_inst_init.exit_crit_edge, label %if.end10.i.i.i128.i

for.end.i.i.i126.i.vdec_inst_init.exit_crit_edge: ; preds = %for.end.i.i.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_inst_init.exit

if.end10.i.i.i128.i:                              ; preds = %for.end.i.i.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i127.i = getelementptr %struct.venus_core, ptr %29, i32 0, i32 45, i32 %c.017.i.i.i.i103.i, i32 4, i32 %i.036.i.i.i118.i, i32 1
  %86 = ptrtoint ptr %min.i.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %min.i.i.i127.i, align 4
  br label %vdec_inst_init.exit

vdec_inst_init.exit:                              ; preds = %if.end10.i.i.i128.i, %for.end.i.i.i126.i.vdec_inst_init.exit_crit_edge, %for.inc.i.i.i124.i.vdec_inst_init.exit_crit_edge, %for.cond.preheader.i.i.i117.i.vdec_inst_init.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i114.i.vdec_inst_init.exit_crit_edge, %for.inc.i.i.i.i112.i.vdec_inst_init.exit_crit_edge, %frame_width_min.exit97.i.vdec_inst_init.exit_crit_edge
  %retval.0.i.i.i129.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i114.i.vdec_inst_init.exit_crit_edge ], [ 0, %for.end.i.i.i126.i.vdec_inst_init.exit_crit_edge ], [ 0, %frame_width_min.exit97.i.vdec_inst_init.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i117.i.vdec_inst_init.exit_crit_edge ], [ %87, %if.end10.i.i.i128.i ], [ 0, %for.inc.i.i.i124.i.vdec_inst_init.exit_crit_edge ], [ 0, %for.inc.i.i.i.i112.i.vdec_inst_init.exit_crit_edge ]
  %out_height.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 20
  %88 = ptrtoint ptr %out_height.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i.i.i129.i, ptr %out_height.i, align 8
  %fps.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 31
  %89 = ptrtoint ptr %fps.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 30, ptr %fps.i, align 8
  %timeperframe.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 32
  %90 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %timeperframe.i, align 8
  %denominator.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 32, i32 1
  %91 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 30, ptr %denominator.i, align 4
  %opb_buftype.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 42
  %92 = ptrtoint ptr %opb_buftype.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %opb_buftype.i, align 4
  %dpb_ids = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 63
  tail call void @__raw_spin_lock_init(ptr noundef %dpb_ids, ptr noundef nonnull @.str.18, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 63, i32 0, i32 1
  %93 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 67108869, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 63, i32 0, i32 2
  %94 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %xa_head.i.i, align 4
  %call15 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @vdec_m2m_ops) #10
  %m2m_dev = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 48
  %95 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call15, ptr %m2m_dev, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %vdec_inst_init.exit.err_session_destroy_crit_edge, label %if.end21

vdec_inst_init.exit.err_session_destroy_crit_edge: ; preds = %vdec_inst_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_session_destroy

if.end21:                                         ; preds = %vdec_inst_init.exit
  %call23 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %call15, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @m2m_queue_init) #10
  %m2m_ctx = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 49
  %96 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call23, ptr %m2m_ctx, align 8
  %cmp.i88 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %98) #10
  br label %err_session_destroy

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %fh = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 12
  %vdev_dec = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 19
  %99 = ptrtoint ptr %vdev_dec to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vdev_dec, align 4
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %100) #10
  %ctrl_handler = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 10
  %ctrl_handler31 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 12, i32 2
  %101 = ptrtoint ptr %ctrl_handler31 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %ctrl_handler, ptr %ctrl_handler31, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #10
  %102 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %m2m_ctx, align 8
  %m2m_ctx35 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 12, i32 10
  %104 = ptrtoint ptr %m2m_ctx35 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %m2m_ctx35, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %105 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %fh, ptr %private_data, align 4
  br label %cleanup

err_session_destroy:                              ; preds = %if.then26, %vdec_inst_init.exit.err_session_destroy_crit_edge
  %ret.0.in = phi ptr [ %call23, %if.then26 ], [ %call15, %vdec_inst_init.exit.err_session_destroy_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  tail call void @hfi_session_destroy(ptr noundef nonnull %call7.i.i) #10
  br label %err_ctrl_deinit

err_ctrl_deinit:                                  ; preds = %err_session_destroy, %if.end10.err_ctrl_deinit_crit_edge
  %ret.1 = phi i32 [ %call11, %if.end10.err_ctrl_deinit_crit_edge ], [ %ret.0, %err_session_destroy ]
  tail call void @vdec_ctrl_deinit(ptr noundef nonnull %call7.i.i) #10
  br label %err_free

err_free:                                         ; preds = %err_ctrl_deinit, %if.end.err_free_crit_edge
  %ret.2 = phi i32 [ %call7, %if.end.err_free_crit_edge ], [ %ret.1, %err_ctrl_deinit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_free ], [ 0, %if.end29 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_close(ptr nocapture noundef readonly %file) #2 align 64 {
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
  %dev_dec.i = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %dev_dec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_dec.i, align 4
  %pm_lock.i = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i, i32 noundef 0) #10
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.vdec_pm_get.exit_crit_edge

entry.vdec_pm_get.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_pm_get.exit

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.vdec_pm_get.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.vdec_pm_get.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_pm_get.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  br label %vdec_pm_get.exit

vdec_pm_get.exit:                                 ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.vdec_pm_get.exit_crit_edge, %entry.vdec_pm_get.exit_crit_edge
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
  tail call void @vdec_ctrl_deinit(ptr noundef %add.ptr.i) #10
  %dpb_ids = getelementptr i8, ptr %1, i32 2508
  tail call void @ida_destroy(ptr noundef %dpb_ids) #10
  tail call void @hfi_session_destroy(ptr noundef %add.ptr.i) #10
  %lock = getelementptr i8, ptr %1, i32 -640
  tail call void @mutex_destroy(ptr noundef %lock) #10
  tail call void @v4l2_fh_del(ptr noundef %1) #10
  tail call void @v4l2_fh_exit(ptr noundef %1) #10
  %11 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core1.i, align 4
  %dev_dec.i15 = getelementptr inbounds %struct.venus_core, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %dev_dec.i15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_dec.i15, align 4
  %pm_lock.i16 = getelementptr inbounds %struct.venus_core, ptr %12, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i16, i32 noundef 0) #10
  %call.i8.i = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #10
  tail call void @mutex_unlock(ptr noundef %pm_lock.i16) #10
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_init_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdec_ctrl_init(ptr noundef) local_unnamed_addr #1

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
  store i32 17, ptr %io_modes, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %2 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16384, ptr %timestamp_flags, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vdec_vb2_ops, ptr %ops, align 4
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
  store i32 0, ptr %min_buffers_needed, align 4
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
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %dst_vq, align 4
  %io_modes3 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 17, ptr %io_modes3, align 4
  %timestamp_flags4 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %16 = ptrtoint ptr %timestamp_flags4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16384, ptr %timestamp_flags4, align 4
  %ops5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %17 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vdec_vb2_ops, ptr %ops5, align 4
  %mem_ops6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %18 = ptrtoint ptr %mem_ops6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops6, align 4
  %drv_priv7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %19 = ptrtoint ptr %drv_priv7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %priv, ptr %drv_priv7, align 4
  %buf_struct_size8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %20 = ptrtoint ptr %buf_struct_size8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 776, ptr %buf_struct_size8, align 4
  %allow_zero_bytesused9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 4
  %21 = ptrtoint ptr %allow_zero_bytesused9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load10 = load i16, ptr %allow_zero_bytesused9, align 4
  %bf.set12 = or i16 %bf.load10, 4096
  store i16 %bf.set12, ptr %allow_zero_bytesused9, align 4
  %min_buffers_needed13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 15
  %22 = ptrtoint ptr %min_buffers_needed13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %min_buffers_needed13, align 4
  %23 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core, align 4
  %dev15 = getelementptr inbounds %struct.venus_core, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev15, align 4
  %dev16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev16, align 4
  %call17 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @vdec_ctrl_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_buf_done(ptr noundef %inst, i32 noundef %buf_type, i32 noundef %tag, i32 noundef %bytesused, i32 noundef %data_offset, i32 noundef %flags, i32 noundef %hfi_flags, i64 noundef %timestamp_us) #2 align 64 {
entry:
  %ev = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i, align 4
  %dev_dec.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev_dec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_dec.i, align 4
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
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @venus_helper_change_dpb_owner(ptr noundef %inst, ptr noundef null, i32 noundef %., i32 noundef %buf_type, i32 noundef %tag) #10
  br label %cleanup

if.end2:                                          ; preds = %entry
  %flags3 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags3, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field, align 4
  br i1 %cmp, label %if.else18, label %if.then5

if.then5:                                         ; preds = %if.end2
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.then5.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.then5.vb2_set_plane_payload.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.then5
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 10, i32 0, i32 4
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %bytesused)
  %cmp1.i = icmp ult i32 %10, %bytesused
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !90

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %12, %if.then38.i ], [ %bytesused, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.then5.vb2_set_plane_payload.exit_crit_edge
  %data_offset6 = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 10, i32 0, i32 7
  %14 = ptrtoint ptr %data_offset6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %data_offset, ptr %data_offset6, align 4
  %mul = mul i64 %timestamp_us, 1000
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %mul, ptr %timestamp, align 8
  %sequence_cap = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 46
  %16 = ptrtoint ptr %sequence_cap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sequence_cap, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %sequence_cap, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call, i32 0, i32 4
  %18 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sequence, align 8
  %19 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags3, align 8
  %and = and i32 %20, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %vb2_set_plane_payload.exit.if.end14_crit_edge, label %if.then9

vb2_set_plane_payload.exit.if.end14_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %vb2_set_plane_payload.exit
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev) #10
  %21 = call ptr @memset(ptr %ev, i32 0, i32 136)
  %22 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %ev, align 8
  %fh = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 12
  call void @v4l2_event_queue_fh(ptr noundef %fh, ptr noundef nonnull %ev) #10
  %codec_state = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 25
  %23 = ptrtoint ptr %codec_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %codec_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp10 = icmp eq i32 %24, 5
  br i1 %cmp10, label %if.then11, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %drain_active = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 61
  %25 = ptrtoint ptr %drain_active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %drain_active, align 1
  %26 = ptrtoint ptr %codec_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %codec_state, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev) #10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %vb2_set_plane_payload.exit.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytesused)
  %tobool15.not = icmp eq i32 %bytesused, 0
  %spec.select = select i1 %tobool15.not, i32 6, i32 5
  br label %if.end21

if.else18:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %sequence_out = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 47
  %27 = ptrtoint ptr %sequence_out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sequence_out, align 8
  %inc19 = add i32 %28, 1
  store i32 %inc19, ptr %sequence_out, align 8
  %sequence20 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call, i32 0, i32 4
  %29 = ptrtoint ptr %sequence20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sequence20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.end14
  %state.0 = phi i32 [ 5, %if.else18 ], [ %spec.select, %if.end14 ]
  call void @venus_helper_get_ts_metadata(ptr noundef %inst, i64 noundef %timestamp_us, ptr noundef nonnull %call) #10
  %and22 = and i32 %hfi_flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void @venus_helper_acquire_buf_ref(ptr noundef nonnull %call) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %and26 = and i32 %hfi_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %spec.select69 = select i1 %tobool27.not, i32 %state.0, i32 6
  %and30 = and i32 %hfi_flags, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end25.if.end34_crit_edge, label %if.then32

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end25
  %num_planes.i70 = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 4
  %30 = ptrtoint ptr %num_planes.i70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_planes.i70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not.i71 = icmp eq i32 %31, 0
  br i1 %cmp.not.i71, label %if.then32.vb2_set_plane_payload.exit77_crit_edge, label %if.then.i73

if.then32.vb2_set_plane_payload.exit77_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit77

if.then.i73:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused.i75 = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 10, i32 0, i32 3
  %32 = ptrtoint ptr %bytesused.i75 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bytesused.i75, align 4
  br label %vb2_set_plane_payload.exit77

vb2_set_plane_payload.exit77:                     ; preds = %if.then.i73, %if.then32.vb2_set_plane_payload.exit77_crit_edge
  %timestamp33 = getelementptr inbounds %struct.vb2_buffer, ptr %call, i32 0, i32 5
  %33 = ptrtoint ptr %timestamp33 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %timestamp33, align 8
  br label %if.end34

if.end34:                                         ; preds = %vb2_set_plane_payload.exit77, %if.end25.if.end34_crit_edge
  %state.2 = phi i32 [ 6, %vb2_set_plane_payload.exit77 ], [ %spec.select69, %if.end25.if.end34_crit_edge ]
  call void @vb2_buffer_done(ptr noundef nonnull %call, i32 noundef %state.2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_event_notify(ptr noundef %inst, i32 noundef %event, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %dev_dec = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev_dec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_dec, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog7_crit_edge [
    i32 4, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog7_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog7

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %session_error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 53
  %6 = ptrtoint ptr %session_error to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %session_error, align 4
  tail call void @venus_helper_vb2_queue_error(ptr noundef %inst) #10
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %8) #14
  br label %sw.epilog7

sw.bb2:                                           ; preds = %entry
  %event_type = getelementptr inbounds %struct.hfi_event_data, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %event_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event_type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %10, label %sw.bb2.sw.epilog7_crit_edge [
    i32 16777217, label %sw.bb3
    i32 16777218, label %sw.bb4
    i32 16777222, label %sw.bb5
  ]

sw.bb2.sw.epilog7_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog7

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @vdec_event_change(ptr noundef %inst, ptr noundef %data, i1 noundef zeroext true)
  br label %sw.epilog7

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @vdec_event_change(ptr noundef %inst, ptr noundef %data, i1 noundef zeroext false)
  br label %sw.epilog7

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %tag = getelementptr inbounds %struct.hfi_event_data, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  tail call void @venus_helper_release_buf_ref(ptr noundef %inst, i32 noundef %13) #10
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2.sw.epilog7_crit_edge, %sw.bb, %entry.sw.epilog7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_flush_done(ptr nocapture noundef readonly %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_flush_done.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_flush_done, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev_dec = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev_dec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_dec, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vdec_flush_done.__UNIQUE_ID_ddebug322, ptr noundef %3, ptr noundef nonnull @.str.17) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @venus_helper_find_buf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_change_dpb_owner(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_get_ts_metadata(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_acquire_buf_ref(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vdec_event_change(ptr noundef %inst, ptr nocapture noundef readonly %ev_data, i1 noundef zeroext %sufficient) unnamed_addr #2 align 64 {
entry:
  %format = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev_dec = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev_dec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_dec, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %format) #10
  %4 = getelementptr inbounds i8, ptr %format, i32 16
  %5 = call ptr @memset(ptr %4, i32 0, i32 188)
  %lock = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9, ptr %format, align 4
  %fmt_cap = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 34
  %7 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt_cap, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pixelformat, align 4
  %width = getelementptr inbounds %struct.hfi_event_data, ptr %ev_data, i32 0, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.hfi_event_data, ptr %ev_data, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height4, align 4
  %call = call fastcc ptr @vdec_try_fmt_common(ptr noundef %inst, ptr noundef nonnull %format)
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt, align 4
  %width7 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 15
  %20 = ptrtoint ptr %width7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %width7, align 8
  %21 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height4, align 4
  %height10 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 16
  %23 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height10, align 4
  %input_crop = getelementptr inbounds %struct.hfi_event_data, ptr %ev_data, i32 0, i32 14
  %width11 = getelementptr inbounds %struct.hfi_event_data, ptr %ev_data, i32 0, i32 14, i32 2
  %24 = ptrtoint ptr %width11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not = icmp eq i32 %25, 0
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %height13 = getelementptr inbounds %struct.hfi_event_data, ptr %ev_data, i32 0, i32 14, i32 3
  %26 = ptrtoint ptr %height13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp14.not = icmp eq i32 %27, 0
  br i1 %cmp14.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %input_crop to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %input_crop, align 4
  %crop = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 17
  %30 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %crop, align 8
  %top = getelementptr inbounds %struct.hfi_event_data, ptr %ev_data, i32 0, i32 14, i32 1
  %31 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %top, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %crop28 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 17
  %33 = ptrtoint ptr %crop28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %crop28, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %32, %if.then ]
  %width.sink = phi ptr [ %width, %if.else ], [ %width11, %if.then ]
  %height.sink = phi ptr [ %height, %if.else ], [ %height13, %if.then ]
  %top31 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %top31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %top31, align 4
  %35 = ptrtoint ptr %width.sink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width.sink, align 4
  %width34 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 17, i32 2
  %37 = ptrtoint ptr %width34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %width34, align 8
  %38 = ptrtoint ptr %height.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height.sink, align 4
  %height37 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 17, i32 3
  %40 = ptrtoint ptr %height37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %height37, align 4
  %buf_count = getelementptr inbounds %struct.hfi_event_data, ptr %ev_data, i32 0, i32 13
  %41 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_count, align 4
  %fw_min_cnt = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 18
  %hfi_codec = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 45
  %43 = ptrtoint ptr %hfi_codec to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hfi_codec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %44)
  %cmp38 = icmp eq i32 %44, 16384
  %spec.store.select = select i1 %cmp38, i32 11, i32 %42
  %45 = ptrtoint ptr %fw_min_cnt to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select, ptr %fw_min_cnt, align 8
  %46 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width, align 4
  %out_width = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 19
  %48 = ptrtoint ptr %out_width to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %out_width, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height, align 4
  %out_height = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 20
  %51 = ptrtoint ptr %out_height to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %out_height, align 8
  %bit_depth = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 58
  %52 = ptrtoint ptr %bit_depth to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bit_depth, align 4
  %bit_depth44 = getelementptr inbounds %struct.hfi_event_data, ptr %ev_data, i32 0, i32 9
  %54 = ptrtoint ptr %bit_depth44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bit_depth44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp45.not = icmp eq i32 %53, %55
  br i1 %cmp45.not, label %if.end.if.end49_crit_edge, label %if.then46

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %bit_depth to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bit_depth, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end.if.end49_crit_edge
  %pic_struct = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 59
  %57 = ptrtoint ptr %pic_struct to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pic_struct, align 8
  %pic_struct50 = getelementptr inbounds %struct.hfi_event_data, ptr %ev_data, i32 0, i32 10
  %59 = ptrtoint ptr %pic_struct50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pic_struct50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp51.not = icmp eq i32 %58, %60
  br i1 %cmp51.not, label %if.end49.do.body_crit_edge, label %if.then52

if.end49.do.body_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %pic_struct to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %pic_struct, align 8
  br label %do.body

do.body:                                          ; preds = %if.then52, %if.end49.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_event_change.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_event_change, %if.then60)) #10
          to label %do.end [label %if.then60], !srcloc !91

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %cond = select i1 %sufficient, ptr @.str.13, ptr @.str.14
  %62 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %width, align 4
  %64 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vdec_event_change.__UNIQUE_ID_ddebug320, ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond, i32 noundef %63, i32 noundef %65) #10
  br label %do.end

do.end:                                           ; preds = %if.then60, %do.body
  %codec_state = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 25
  %66 = ptrtoint ptr %codec_state to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %codec_state, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %67, label %do.end.if.end91_crit_edge [
    i32 1, label %sw.epilog.thread153
    i32 6, label %do.end.sw.epilog.thread_crit_edge
    i32 5, label %do.end.sw.epilog.thread_crit_edge156
    i32 7, label %do.end.if.then70_crit_edge
  ]

do.end.if.then70_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

do.end.sw.epilog.thread_crit_edge156:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

do.end.sw.epilog.thread_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

do.end.if.end91_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

sw.epilog.thread153:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %codec_state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %codec_state, align 4
  br label %if.end91

sw.epilog.thread:                                 ; preds = %do.end.sw.epilog.thread_crit_edge, %do.end.sw.epilog.thread_crit_edge156
  %70 = ptrtoint ptr %codec_state to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 7, ptr %codec_state, align 4
  br label %if.then70

if.then70:                                        ; preds = %sw.epilog.thread, %do.end.if.then70_crit_edge
  %next_buf_last = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 60
  %71 = ptrtoint ptr %next_buf_last to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %next_buf_last, align 4
  %call71 = tail call i32 @hfi_session_flush(ptr noundef %inst, i32 noundef 16777218, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then70.if.end91_crit_edge, label %do.body74

if.then70.if.end91_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

do.body74:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_event_change.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_event_change, %if.then86)) #10
          to label %if.end91 [label %if.then86], !srcloc !91

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vdec_event_change.__UNIQUE_ID_ddebug321, ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %call71) #10
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %do.body74, %if.then70.if.end91_crit_edge, %sw.epilog.thread153, %do.end.if.end91_crit_edge
  %next_buf_last92 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 60
  %72 = ptrtoint ptr %next_buf_last92 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %next_buf_last92, align 4
  %reconfig = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 44
  %73 = ptrtoint ptr %reconfig to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %reconfig, align 4
  %fh = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 12
  tail call void @v4l2_event_queue_fh(ptr noundef %fh, ptr noundef nonnull @vdec_event_change.ev) #10
  %reconf_wait = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %reconf_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %format) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_release_buf_ref(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vdec_try_fmt_common(ptr noundef %inst, ptr nocapture noundef %f) unnamed_addr #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %3, label %entry.if.then_crit_edge [
    i32 842094158, label %entry.lor.lhs.false.i_crit_edge
    i32 877088845, label %lor.lhs.false.fold.split.i
    i32 843534413, label %lor.lhs.false.fold.split33.i
    i32 859189832, label %lor.lhs.false.fold.split34.i
    i32 1194410838, label %lor.lhs.false.fold.split35.i
    i32 1278296918, label %lor.lhs.false.fold.split36.i
    i32 875967048, label %lor.lhs.false.fold.split37.i
    i32 808996950, label %lor.lhs.false.fold.split38.i
    i32 809062486, label %lor.lhs.false.fold.split39.i
    i32 1145656920, label %lor.lhs.false.fold.split40.i
    i32 1129727304, label %lor.lhs.false.fold.split41.i
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

lor.lhs.false.fold.split37.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split38.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split39.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split40.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split41.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false.fold.split41.i, %lor.lhs.false.fold.split40.i, %lor.lhs.false.fold.split39.i, %lor.lhs.false.fold.split38.i, %lor.lhs.false.fold.split37.i, %lor.lhs.false.fold.split36.i, %lor.lhs.false.fold.split35.i, %lor.lhs.false.fold.split34.i, %lor.lhs.false.fold.split33.i, %lor.lhs.false.fold.split.i, %entry.lor.lhs.false.i_crit_edge
  %i.031.lcssa.i = phi i32 [ 0, %entry.lor.lhs.false.i_crit_edge ], [ 1, %lor.lhs.false.fold.split.i ], [ 2, %lor.lhs.false.fold.split33.i ], [ 3, %lor.lhs.false.fold.split34.i ], [ 4, %lor.lhs.false.fold.split35.i ], [ 5, %lor.lhs.false.fold.split36.i ], [ 6, %lor.lhs.false.fold.split37.i ], [ 7, %lor.lhs.false.fold.split38.i ], [ 8, %lor.lhs.false.fold.split39.i ], [ 9, %lor.lhs.false.fold.split40.i ], [ 10, %lor.lhs.false.fold.split41.i ]
  %arrayidx4.i = getelementptr %struct.venus_format, ptr @vdec_formats, i32 %i.031.lcssa.i
  %type5.i = getelementptr %struct.venus_format, ptr @vdec_formats, i32 %i.031.lcssa.i, i32 2
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp9.i = icmp eq i32 %5, 10
  br i1 %cmp9.i, label %land.lhs.true.i, label %find_format.exit

land.lhs.true.i:                                  ; preds = %if.end8.i
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i, align 4
  %call.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %inst, i32 noundef %10) #10
  %tobool.not = icmp ne ptr %arrayidx4.i, null
  %11 = and i1 %tobool.not, %call.i
  br i1 %11, label %land.lhs.true.i.if.end17_crit_edge, label %land.lhs.true.i.if.thenthread-pre-split_crit_edge

land.lhs.true.i.if.thenthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.thenthread-pre-split

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

find_format.exit:                                 ; preds = %if.end8.i
  %tobool.not.old = icmp eq ptr %arrayidx4.i, null
  br i1 %tobool.not.old, label %find_format.exit.if.thenthread-pre-split_crit_edge, label %find_format.exit.if.end17_crit_edge

find_format.exit.if.end17_crit_edge:              ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

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
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %13, label %if.then.cleanup_crit_edge [
    i32 9, label %lor.lhs.false.i174.thread
    i32 10, label %lor.lhs.false.i174
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i174:                               ; preds = %if.then
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 875967048, ptr %pixelformat, align 1
  %call.i177 = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %inst, i32 noundef 875967048) #10
  br i1 %call.i177, label %lor.lhs.false.i174.if.end13.i179_crit_edge, label %lor.lhs.false.i174.if.end17_crit_edge

lor.lhs.false.i174.if.end17_crit_edge:            ; preds = %lor.lhs.false.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

lor.lhs.false.i174.if.end13.i179_crit_edge:       ; preds = %lor.lhs.false.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i179

lor.lhs.false.i174.thread:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 842094158, ptr %pixelformat, align 1
  br label %if.end13.i179

if.end13.i179:                                    ; preds = %lor.lhs.false.i174.thread, %lor.lhs.false.i174.if.end13.i179_crit_edge
  %arrayidx4.i171285 = phi ptr [ getelementptr inbounds ([11 x %struct.venus_format], ptr @vdec_formats, i32 0, i32 6), %lor.lhs.false.i174.if.end13.i179_crit_edge ], [ @vdec_formats, %lor.lhs.false.i174.thread ]
  br label %if.end17

if.end17:                                         ; preds = %if.end13.i179, %lor.lhs.false.i174.if.end17_crit_edge, %find_format.exit.if.end17_crit_edge, %land.lhs.true.i.if.end17_crit_edge
  %fmt1.0 = phi ptr [ %arrayidx4.i, %find_format.exit.if.end17_crit_edge ], [ %arrayidx4.i171285, %if.end13.i179 ], [ null, %lor.lhs.false.i174.if.end17_crit_edge ], [ %arrayidx4.i, %land.lhs.true.i.if.end17_crit_edge ]
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
  br i1 %cmp16.not.i.i.i.i, label %if.end17.frame_width_max.exit_crit_edge, label %if.end17.for.body.i.i.i.i_crit_edge

if.end17.for.body.i.i.i.i_crit_edge:              ; preds = %if.end17
  br label %for.body.i.i.i.i

if.end17.frame_width_max.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end17.for.body.i.i.i.i_crit_edge
  %c.017.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end17.for.body.i.i.i.i_crit_edge ]
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
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i190.preheader_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i190.preheader_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i190.preheader

venus_caps_by_codec.exit.i.i.i:                   ; preds = %land.lhs.true.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %venus_caps_by_codec.exit.i.i.i.for.body.i.i.i.i190.preheader_crit_edge, label %for.cond.preheader.i.i.i

venus_caps_by_codec.exit.i.i.i.for.body.i.i.i.i190.preheader_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i190.preheader

for.cond.preheader.i.i.i:                         ; preds = %venus_caps_by_codec.exit.i.i.i
  %num_caps.i.i.i = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 3
  %31 = ptrtoint ptr %num_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_caps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp35.not.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp35.not.i.i.i, label %for.cond.preheader.i.i.i.for.body.i.i.i.i190.preheader_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.for.body.i.i.i.i190.preheader_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i190.preheader

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
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i.i190.preheader_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.for.body.i.i.i.i190.preheader_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i190.preheader

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %tobool8.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %for.end.i.i.i.for.body.i.i.i.i190.preheader_crit_edge, label %if.end10.i.i.i

for.end.i.i.i.for.body.i.i.i.i190.preheader_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i190.preheader

if.end10.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.036.i.i.i, i32 1
  %35 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %min.i.i.i, align 4
  br label %for.body.i.i.i.i190.preheader

for.body.i.i.i.i190.preheader:                    ; preds = %if.end10.i.i.i, %for.end.i.i.i.for.body.i.i.i.i190.preheader_crit_edge, %for.inc.i.i.i.for.body.i.i.i.i190.preheader_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i.i190.preheader_crit_edge, %venus_caps_by_codec.exit.i.i.i.for.body.i.i.i.i190.preheader_crit_edge, %for.inc.i.i.i.i.for.body.i.i.i.i190.preheader_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i.for.body.i.i.i.i190.preheader_crit_edge ], [ 0, %for.end.i.i.i.for.body.i.i.i.i190.preheader_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i.i190.preheader_crit_edge ], [ %36, %if.end10.i.i.i ], [ 0, %for.inc.i.i.i.for.body.i.i.i.i190.preheader_crit_edge ], [ 0, %for.inc.i.i.i.i.for.body.i.i.i.i190.preheader_crit_edge ]
  %37 = tail call i32 @llvm.umax.i32(i32 %18, i32 %retval.0.i.i.i)
  br label %for.body.i.i.i.i190

for.body.i.i.i.i190:                              ; preds = %for.inc.i.i.i.i196.for.body.i.i.i.i190_crit_edge, %for.body.i.i.i.i190.preheader
  %c.017.i.i.i.i187 = phi i32 [ %inc.i.i.i.i194, %for.inc.i.i.i.i196.for.body.i.i.i.i190_crit_edge ], [ 0, %for.body.i.i.i.i190.preheader ]
  %arrayidx.i.i.i.i188 = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i187
  %38 = ptrtoint ptr %arrayidx.i.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i.i.i188, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %22)
  %cmp2.i.i.i.i189 = icmp eq i32 %39, %22
  br i1 %cmp2.i.i.i.i189, label %land.lhs.true.i.i.i.i193, label %for.body.i.i.i.i190.for.inc.i.i.i.i196_crit_edge

for.body.i.i.i.i190.for.inc.i.i.i.i196_crit_edge: ; preds = %for.body.i.i.i.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i196

land.lhs.true.i.i.i.i193:                         ; preds = %for.body.i.i.i.i190
  %domain5.i.i.i.i191 = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i187, i32 1
  %40 = ptrtoint ptr %domain5.i.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %domain5.i.i.i.i191, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %24)
  %cmp6.i.i.i.i192 = icmp eq i32 %41, %24
  br i1 %cmp6.i.i.i.i192, label %venus_caps_by_codec.exit.i.i.i198, label %land.lhs.true.i.i.i.i193.for.inc.i.i.i.i196_crit_edge

land.lhs.true.i.i.i.i193.for.inc.i.i.i.i196_crit_edge: ; preds = %land.lhs.true.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i196

for.inc.i.i.i.i196:                               ; preds = %land.lhs.true.i.i.i.i193.for.inc.i.i.i.i196_crit_edge, %for.body.i.i.i.i190.for.inc.i.i.i.i196_crit_edge
  %inc.i.i.i.i194 = add nuw i32 %c.017.i.i.i.i187, 1
  %exitcond.not.i.i.i.i195 = icmp eq i32 %inc.i.i.i.i194, %26
  br i1 %exitcond.not.i.i.i.i195, label %for.inc.i.i.i.i196.frame_width_max.exit_crit_edge, label %for.inc.i.i.i.i196.for.body.i.i.i.i190_crit_edge

for.inc.i.i.i.i196.for.body.i.i.i.i190_crit_edge: ; preds = %for.inc.i.i.i.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i190

for.inc.i.i.i.i196.frame_width_max.exit_crit_edge: ; preds = %for.inc.i.i.i.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

venus_caps_by_codec.exit.i.i.i198:                ; preds = %land.lhs.true.i.i.i.i193
  %tobool.not.i.i.i197 = icmp eq ptr %arrayidx.i.i.i.i188, null
  br i1 %tobool.not.i.i.i197, label %venus_caps_by_codec.exit.i.i.i198.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i201

venus_caps_by_codec.exit.i.i.i198.frame_width_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i198
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.cond.preheader.i.i.i201:                      ; preds = %venus_caps_by_codec.exit.i.i.i198
  %num_caps.i.i.i199 = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i187, i32 3
  %42 = ptrtoint ptr %num_caps.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_caps.i.i.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp35.not.i.i.i200 = icmp eq i32 %43, 0
  br i1 %cmp35.not.i.i.i200, label %for.cond.preheader.i.i.i201.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i201.for.body.i.i.i205_crit_edge

for.cond.preheader.i.i.i201.for.body.i.i.i205_crit_edge: ; preds = %for.cond.preheader.i.i.i201
  br label %for.body.i.i.i205

for.cond.preheader.i.i.i201.frame_width_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.body.i.i.i205:                                ; preds = %for.inc.i.i.i208.for.body.i.i.i205_crit_edge, %for.cond.preheader.i.i.i201.for.body.i.i.i205_crit_edge
  %i.036.i.i.i202 = phi i32 [ %inc.i.i.i206, %for.inc.i.i.i208.for.body.i.i.i205_crit_edge ], [ 0, %for.cond.preheader.i.i.i201.for.body.i.i.i205_crit_edge ]
  %arrayidx.i.i.i203 = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i187, i32 4, i32 %i.036.i.i.i202
  %44 = ptrtoint ptr %arrayidx.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp3.i.i.i204 = icmp eq i32 %45, 1
  br i1 %cmp3.i.i.i204, label %for.end.i.i.i210, label %for.inc.i.i.i208

for.inc.i.i.i208:                                 ; preds = %for.body.i.i.i205
  %inc.i.i.i206 = add nuw i32 %i.036.i.i.i202, 1
  %exitcond.not.i.i.i207 = icmp eq i32 %inc.i.i.i206, %43
  br i1 %exitcond.not.i.i.i207, label %for.inc.i.i.i208.frame_width_max.exit_crit_edge, label %for.inc.i.i.i208.for.body.i.i.i205_crit_edge

for.inc.i.i.i208.for.body.i.i.i205_crit_edge:     ; preds = %for.inc.i.i.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i205

for.inc.i.i.i208.frame_width_max.exit_crit_edge:  ; preds = %for.inc.i.i.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.end.i.i.i210:                                 ; preds = %for.body.i.i.i205
  %tobool8.not.i.i.i209 = icmp eq ptr %arrayidx.i.i.i203, null
  br i1 %tobool8.not.i.i.i209, label %for.end.i.i.i210.frame_width_max.exit_crit_edge, label %if.end10.i.i.i211

for.end.i.i.i210.frame_width_max.exit_crit_edge:  ; preds = %for.end.i.i.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

if.end10.i.i.i211:                                ; preds = %for.end.i.i.i210
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i = getelementptr %struct.venus_core, ptr %20, i32 0, i32 45, i32 %c.017.i.i.i.i187, i32 4, i32 %i.036.i.i.i202, i32 2
  %46 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max.i.i.i, align 4
  br label %frame_width_max.exit

frame_width_max.exit:                             ; preds = %if.end10.i.i.i211, %for.end.i.i.i210.frame_width_max.exit_crit_edge, %for.inc.i.i.i208.frame_width_max.exit_crit_edge, %for.cond.preheader.i.i.i201.frame_width_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i198.frame_width_max.exit_crit_edge, %for.inc.i.i.i.i196.frame_width_max.exit_crit_edge, %if.end17.frame_width_max.exit_crit_edge
  %.call18291 = phi i32 [ %37, %venus_caps_by_codec.exit.i.i.i198.frame_width_max.exit_crit_edge ], [ %37, %for.end.i.i.i210.frame_width_max.exit_crit_edge ], [ %37, %for.cond.preheader.i.i.i201.frame_width_max.exit_crit_edge ], [ %37, %if.end10.i.i.i211 ], [ %18, %if.end17.frame_width_max.exit_crit_edge ], [ %37, %for.inc.i.i.i208.frame_width_max.exit_crit_edge ], [ %37, %for.inc.i.i.i.i196.frame_width_max.exit_crit_edge ]
  %retval.0.i.i.i212 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i198.frame_width_max.exit_crit_edge ], [ 0, %for.end.i.i.i210.frame_width_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i201.frame_width_max.exit_crit_edge ], [ %47, %if.end10.i.i.i211 ], [ 0, %if.end17.frame_width_max.exit_crit_edge ], [ 0, %for.inc.i.i.i208.frame_width_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i196.frame_width_max.exit_crit_edge ]
  %48 = tail call i32 @llvm.umin.i32(i32 %.call18291, i32 %retval.0.i.i.i212)
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
  %codecs_count.i.i.i.i216 = getelementptr inbounds %struct.venus_core, ptr %53, i32 0, i32 46
  %58 = ptrtoint ptr %codecs_count.i.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %codecs_count.i.i.i.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp16.not.i.i.i.i217 = icmp eq i32 %59, 0
  br i1 %cmp16.not.i.i.i.i217, label %frame_width_max.exit.frame_height_max.exit_crit_edge, label %frame_width_max.exit.for.body.i.i.i.i221_crit_edge

frame_width_max.exit.for.body.i.i.i.i221_crit_edge: ; preds = %frame_width_max.exit
  br label %for.body.i.i.i.i221

frame_width_max.exit.frame_height_max.exit_crit_edge: ; preds = %frame_width_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.body.i.i.i.i221:                              ; preds = %for.inc.i.i.i.i227.for.body.i.i.i.i221_crit_edge, %frame_width_max.exit.for.body.i.i.i.i221_crit_edge
  %c.017.i.i.i.i218 = phi i32 [ %inc.i.i.i.i225, %for.inc.i.i.i.i227.for.body.i.i.i.i221_crit_edge ], [ 0, %frame_width_max.exit.for.body.i.i.i.i221_crit_edge ]
  %arrayidx.i.i.i.i219 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i218
  %60 = ptrtoint ptr %arrayidx.i.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i.i219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %55)
  %cmp2.i.i.i.i220 = icmp eq i32 %61, %55
  br i1 %cmp2.i.i.i.i220, label %land.lhs.true.i.i.i.i224, label %for.body.i.i.i.i221.for.inc.i.i.i.i227_crit_edge

for.body.i.i.i.i221.for.inc.i.i.i.i227_crit_edge: ; preds = %for.body.i.i.i.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i227

land.lhs.true.i.i.i.i224:                         ; preds = %for.body.i.i.i.i221
  %domain5.i.i.i.i222 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i218, i32 1
  %62 = ptrtoint ptr %domain5.i.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %domain5.i.i.i.i222, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %57)
  %cmp6.i.i.i.i223 = icmp eq i32 %63, %57
  br i1 %cmp6.i.i.i.i223, label %venus_caps_by_codec.exit.i.i.i229, label %land.lhs.true.i.i.i.i224.for.inc.i.i.i.i227_crit_edge

land.lhs.true.i.i.i.i224.for.inc.i.i.i.i227_crit_edge: ; preds = %land.lhs.true.i.i.i.i224
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i227

for.inc.i.i.i.i227:                               ; preds = %land.lhs.true.i.i.i.i224.for.inc.i.i.i.i227_crit_edge, %for.body.i.i.i.i221.for.inc.i.i.i.i227_crit_edge
  %inc.i.i.i.i225 = add nuw i32 %c.017.i.i.i.i218, 1
  %exitcond.not.i.i.i.i226 = icmp eq i32 %inc.i.i.i.i225, %59
  br i1 %exitcond.not.i.i.i.i226, label %for.inc.i.i.i.i227.for.body.i.i.i.i253.preheader_crit_edge, label %for.inc.i.i.i.i227.for.body.i.i.i.i221_crit_edge

for.inc.i.i.i.i227.for.body.i.i.i.i221_crit_edge: ; preds = %for.inc.i.i.i.i227
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i221

for.inc.i.i.i.i227.for.body.i.i.i.i253.preheader_crit_edge: ; preds = %for.inc.i.i.i.i227
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i253.preheader

venus_caps_by_codec.exit.i.i.i229:                ; preds = %land.lhs.true.i.i.i.i224
  %tobool.not.i.i.i228 = icmp eq ptr %arrayidx.i.i.i.i219, null
  br i1 %tobool.not.i.i.i228, label %venus_caps_by_codec.exit.i.i.i229.for.body.i.i.i.i253.preheader_crit_edge, label %for.cond.preheader.i.i.i232

venus_caps_by_codec.exit.i.i.i229.for.body.i.i.i.i253.preheader_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i229
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i253.preheader

for.cond.preheader.i.i.i232:                      ; preds = %venus_caps_by_codec.exit.i.i.i229
  %num_caps.i.i.i230 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i218, i32 3
  %64 = ptrtoint ptr %num_caps.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_caps.i.i.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp35.not.i.i.i231 = icmp eq i32 %65, 0
  br i1 %cmp35.not.i.i.i231, label %for.cond.preheader.i.i.i232.for.body.i.i.i.i253.preheader_crit_edge, label %for.cond.preheader.i.i.i232.for.body.i.i.i236_crit_edge

for.cond.preheader.i.i.i232.for.body.i.i.i236_crit_edge: ; preds = %for.cond.preheader.i.i.i232
  br label %for.body.i.i.i236

for.cond.preheader.i.i.i232.for.body.i.i.i.i253.preheader_crit_edge: ; preds = %for.cond.preheader.i.i.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i253.preheader

for.body.i.i.i236:                                ; preds = %for.inc.i.i.i239.for.body.i.i.i236_crit_edge, %for.cond.preheader.i.i.i232.for.body.i.i.i236_crit_edge
  %i.036.i.i.i233 = phi i32 [ %inc.i.i.i237, %for.inc.i.i.i239.for.body.i.i.i236_crit_edge ], [ 0, %for.cond.preheader.i.i.i232.for.body.i.i.i236_crit_edge ]
  %arrayidx.i.i.i234 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i218, i32 4, i32 %i.036.i.i.i233
  %66 = ptrtoint ptr %arrayidx.i.i.i234 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp3.i.i.i235 = icmp eq i32 %67, 2
  br i1 %cmp3.i.i.i235, label %for.end.i.i.i241, label %for.inc.i.i.i239

for.inc.i.i.i239:                                 ; preds = %for.body.i.i.i236
  %inc.i.i.i237 = add nuw i32 %i.036.i.i.i233, 1
  %exitcond.not.i.i.i238 = icmp eq i32 %inc.i.i.i237, %65
  br i1 %exitcond.not.i.i.i238, label %for.inc.i.i.i239.for.body.i.i.i.i253.preheader_crit_edge, label %for.inc.i.i.i239.for.body.i.i.i236_crit_edge

for.inc.i.i.i239.for.body.i.i.i236_crit_edge:     ; preds = %for.inc.i.i.i239
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i236

for.inc.i.i.i239.for.body.i.i.i.i253.preheader_crit_edge: ; preds = %for.inc.i.i.i239
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i253.preheader

for.end.i.i.i241:                                 ; preds = %for.body.i.i.i236
  %tobool8.not.i.i.i240 = icmp eq ptr %arrayidx.i.i.i234, null
  br i1 %tobool8.not.i.i.i240, label %for.end.i.i.i241.for.body.i.i.i.i253.preheader_crit_edge, label %if.end10.i.i.i243

for.end.i.i.i241.for.body.i.i.i.i253.preheader_crit_edge: ; preds = %for.end.i.i.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i253.preheader

if.end10.i.i.i243:                                ; preds = %for.end.i.i.i241
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i242 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i218, i32 4, i32 %i.036.i.i.i233, i32 1
  %68 = ptrtoint ptr %min.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %min.i.i.i242, align 4
  br label %for.body.i.i.i.i253.preheader

for.body.i.i.i.i253.preheader:                    ; preds = %if.end10.i.i.i243, %for.end.i.i.i241.for.body.i.i.i.i253.preheader_crit_edge, %for.inc.i.i.i239.for.body.i.i.i.i253.preheader_crit_edge, %for.cond.preheader.i.i.i232.for.body.i.i.i.i253.preheader_crit_edge, %venus_caps_by_codec.exit.i.i.i229.for.body.i.i.i.i253.preheader_crit_edge, %for.inc.i.i.i.i227.for.body.i.i.i.i253.preheader_crit_edge
  %retval.0.i.i.i244 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i229.for.body.i.i.i.i253.preheader_crit_edge ], [ 0, %for.end.i.i.i241.for.body.i.i.i.i253.preheader_crit_edge ], [ 0, %for.cond.preheader.i.i.i232.for.body.i.i.i.i253.preheader_crit_edge ], [ %69, %if.end10.i.i.i243 ], [ 0, %for.inc.i.i.i239.for.body.i.i.i.i253.preheader_crit_edge ], [ 0, %for.inc.i.i.i.i227.for.body.i.i.i.i253.preheader_crit_edge ]
  %70 = tail call i32 @llvm.umax.i32(i32 %51, i32 %retval.0.i.i.i244)
  br label %for.body.i.i.i.i253

for.body.i.i.i.i253:                              ; preds = %for.inc.i.i.i.i259.for.body.i.i.i.i253_crit_edge, %for.body.i.i.i.i253.preheader
  %c.017.i.i.i.i250 = phi i32 [ %inc.i.i.i.i257, %for.inc.i.i.i.i259.for.body.i.i.i.i253_crit_edge ], [ 0, %for.body.i.i.i.i253.preheader ]
  %arrayidx.i.i.i.i251 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i250
  %71 = ptrtoint ptr %arrayidx.i.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i.i.i251, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %55)
  %cmp2.i.i.i.i252 = icmp eq i32 %72, %55
  br i1 %cmp2.i.i.i.i252, label %land.lhs.true.i.i.i.i256, label %for.body.i.i.i.i253.for.inc.i.i.i.i259_crit_edge

for.body.i.i.i.i253.for.inc.i.i.i.i259_crit_edge: ; preds = %for.body.i.i.i.i253
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i259

land.lhs.true.i.i.i.i256:                         ; preds = %for.body.i.i.i.i253
  %domain5.i.i.i.i254 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i250, i32 1
  %73 = ptrtoint ptr %domain5.i.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %domain5.i.i.i.i254, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %57)
  %cmp6.i.i.i.i255 = icmp eq i32 %74, %57
  br i1 %cmp6.i.i.i.i255, label %venus_caps_by_codec.exit.i.i.i261, label %land.lhs.true.i.i.i.i256.for.inc.i.i.i.i259_crit_edge

land.lhs.true.i.i.i.i256.for.inc.i.i.i.i259_crit_edge: ; preds = %land.lhs.true.i.i.i.i256
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i259

for.inc.i.i.i.i259:                               ; preds = %land.lhs.true.i.i.i.i256.for.inc.i.i.i.i259_crit_edge, %for.body.i.i.i.i253.for.inc.i.i.i.i259_crit_edge
  %inc.i.i.i.i257 = add nuw i32 %c.017.i.i.i.i250, 1
  %exitcond.not.i.i.i.i258 = icmp eq i32 %inc.i.i.i.i257, %59
  br i1 %exitcond.not.i.i.i.i258, label %for.inc.i.i.i.i259.frame_height_max.exit_crit_edge, label %for.inc.i.i.i.i259.for.body.i.i.i.i253_crit_edge

for.inc.i.i.i.i259.for.body.i.i.i.i253_crit_edge: ; preds = %for.inc.i.i.i.i259
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i253

for.inc.i.i.i.i259.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i.i259
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

venus_caps_by_codec.exit.i.i.i261:                ; preds = %land.lhs.true.i.i.i.i256
  %tobool.not.i.i.i260 = icmp eq ptr %arrayidx.i.i.i.i251, null
  br i1 %tobool.not.i.i.i260, label %venus_caps_by_codec.exit.i.i.i261.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i264

venus_caps_by_codec.exit.i.i.i261.frame_height_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i261
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.cond.preheader.i.i.i264:                      ; preds = %venus_caps_by_codec.exit.i.i.i261
  %num_caps.i.i.i262 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i250, i32 3
  %75 = ptrtoint ptr %num_caps.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_caps.i.i.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp35.not.i.i.i263 = icmp eq i32 %76, 0
  br i1 %cmp35.not.i.i.i263, label %for.cond.preheader.i.i.i264.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i264.for.body.i.i.i268_crit_edge

for.cond.preheader.i.i.i264.for.body.i.i.i268_crit_edge: ; preds = %for.cond.preheader.i.i.i264
  br label %for.body.i.i.i268

for.cond.preheader.i.i.i264.frame_height_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i264
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.body.i.i.i268:                                ; preds = %for.inc.i.i.i271.for.body.i.i.i268_crit_edge, %for.cond.preheader.i.i.i264.for.body.i.i.i268_crit_edge
  %i.036.i.i.i265 = phi i32 [ %inc.i.i.i269, %for.inc.i.i.i271.for.body.i.i.i268_crit_edge ], [ 0, %for.cond.preheader.i.i.i264.for.body.i.i.i268_crit_edge ]
  %arrayidx.i.i.i266 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i250, i32 4, i32 %i.036.i.i.i265
  %77 = ptrtoint ptr %arrayidx.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i.i266, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp3.i.i.i267 = icmp eq i32 %78, 2
  br i1 %cmp3.i.i.i267, label %for.end.i.i.i273, label %for.inc.i.i.i271

for.inc.i.i.i271:                                 ; preds = %for.body.i.i.i268
  %inc.i.i.i269 = add nuw i32 %i.036.i.i.i265, 1
  %exitcond.not.i.i.i270 = icmp eq i32 %inc.i.i.i269, %76
  br i1 %exitcond.not.i.i.i270, label %for.inc.i.i.i271.frame_height_max.exit_crit_edge, label %for.inc.i.i.i271.for.body.i.i.i268_crit_edge

for.inc.i.i.i271.for.body.i.i.i268_crit_edge:     ; preds = %for.inc.i.i.i271
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i268

for.inc.i.i.i271.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i271
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.end.i.i.i273:                                 ; preds = %for.body.i.i.i268
  %tobool8.not.i.i.i272 = icmp eq ptr %arrayidx.i.i.i266, null
  br i1 %tobool8.not.i.i.i272, label %for.end.i.i.i273.frame_height_max.exit_crit_edge, label %if.end10.i.i.i275

for.end.i.i.i273.frame_height_max.exit_crit_edge: ; preds = %for.end.i.i.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

if.end10.i.i.i275:                                ; preds = %for.end.i.i.i273
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i274 = getelementptr %struct.venus_core, ptr %53, i32 0, i32 45, i32 %c.017.i.i.i.i250, i32 4, i32 %i.036.i.i.i265, i32 2
  %79 = ptrtoint ptr %max.i.i.i274 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max.i.i.i274, align 4
  br label %frame_height_max.exit

frame_height_max.exit:                            ; preds = %if.end10.i.i.i275, %for.end.i.i.i273.frame_height_max.exit_crit_edge, %for.inc.i.i.i271.frame_height_max.exit_crit_edge, %for.cond.preheader.i.i.i264.frame_height_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i261.frame_height_max.exit_crit_edge, %for.inc.i.i.i.i259.frame_height_max.exit_crit_edge, %frame_width_max.exit.frame_height_max.exit_crit_edge
  %cond34295 = phi i32 [ %70, %venus_caps_by_codec.exit.i.i.i261.frame_height_max.exit_crit_edge ], [ %70, %for.end.i.i.i273.frame_height_max.exit_crit_edge ], [ %70, %for.cond.preheader.i.i.i264.frame_height_max.exit_crit_edge ], [ %70, %if.end10.i.i.i275 ], [ %51, %frame_width_max.exit.frame_height_max.exit_crit_edge ], [ %70, %for.inc.i.i.i271.frame_height_max.exit_crit_edge ], [ %70, %for.inc.i.i.i.i259.frame_height_max.exit_crit_edge ]
  %retval.0.i.i.i276 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i261.frame_height_max.exit_crit_edge ], [ 0, %for.end.i.i.i273.frame_height_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i264.frame_height_max.exit_crit_edge ], [ %80, %if.end10.i.i.i275 ], [ 0, %frame_width_max.exit.frame_height_max.exit_crit_edge ], [ 0, %for.inc.i.i.i271.frame_height_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i259.frame_height_max.exit_crit_edge ]
  %81 = tail call i32 @llvm.umin.i32(i32 %cond34295, i32 %retval.0.i.i.i276)
  %82 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %81, ptr %height, align 1
  %83 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %84)
  %cmp44 = icmp eq i32 %84, 9
  br i1 %cmp44, label %if.then45, label %frame_height_max.exit.if.end48_crit_edge

frame_height_max.exit.if.end48_crit_edge:         ; preds = %frame_height_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then45:                                        ; preds = %frame_height_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %81, 31
  %and = and i32 %add, -32
  %85 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %and, ptr %height, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %frame_height_max.exit.if.end48_crit_edge
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %86 = ptrtoint ptr %field to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %field, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp49 = icmp eq i32 %87, 0
  br i1 %cmp49, label %if.then50, label %if.end48.if.end52_crit_edge

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 1, ptr %field, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  %num_planes = getelementptr inbounds %struct.venus_format, ptr %fmt1.0, i32 0, i32 1
  %89 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_planes, align 4
  %conv = trunc i32 %90 to i8
  %num_planes53 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %91 = ptrtoint ptr %num_planes53 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv, ptr %num_planes53, align 1
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 7
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %flags, align 1
  %93 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %pixelformat, align 1
  %95 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %height, align 1
  %call57 = tail call i32 @venus_helper_get_framesz(i32 noundef %94, i32 noundef %48, i32 noundef %96) #10
  %97 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %98)
  %cmp59 = icmp eq i32 %98, 9
  br i1 %cmp59, label %if.then61, label %if.else67

if.then61:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %call57, ptr %plane_fmt, align 1
  %100 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %fmt, align 1
  %add64 = add i32 %101, 127
  %and65 = and i32 %add64, -128
  br label %cleanup.sink.split

if.else67:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %plane_fmt, align 1
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 8388608)
  %105 = tail call i32 @llvm.umax.i32(i32 %104, i32 %call57)
  %106 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %105, ptr %plane_fmt, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else67, %if.then61
  %and65.sink = phi i32 [ %and65, %if.then61 ], [ 0, %if.else67 ]
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %107 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %and65.sink, ptr %bytesperline, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %fmt1.0, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_flush(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_framesz(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @venus_helper_check_codec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdec_m2m_device_run(ptr nocapture noundef %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_m2m_job_abort(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
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
  br i1 %tobool.not, label %if.end26, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @venus_helper_get_opb_size(ptr noundef %1) #10
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %7, label %if.then.if.end25_crit_edge [
    i32 10, label %land.lhs.true
    i32 9, label %land.lhs.true8
  ]

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then
  %9 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes, align 4
  %fmt_out = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 33
  %11 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt_out, align 8
  %num_planes3 = getelementptr inbounds %struct.venus_format, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %num_planes3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp4.not = icmp eq i32 %10, %14
  br i1 %cmp4.not, label %land.lhs.true15, label %land.lhs.true.cleanup115_crit_edge

land.lhs.true.cleanup115_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

land.lhs.true8:                                   ; preds = %if.then
  %15 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_planes, align 4
  %fmt_cap = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 34
  %17 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmt_cap, align 4
  %num_planes9 = getelementptr inbounds %struct.venus_format, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %num_planes9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_planes9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp10.not = icmp eq i32 %16, %20
  br i1 %cmp10.not, label %land.lhs.true21, label %land.lhs.true8.cleanup115_crit_edge

land.lhs.true8.cleanup115_crit_edge:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

land.lhs.true15:                                  ; preds = %land.lhs.true
  %21 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sizes, align 4
  %input_buf_size = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 37
  %23 = ptrtoint ptr %input_buf_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %input_buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp16 = icmp ult i32 %22, %24
  br i1 %cmp16, label %land.lhs.true15.cleanup115_crit_edge, label %land.lhs.true15.if.end25_crit_edge

land.lhs.true15.if.end25_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true15.cleanup115_crit_edge:             ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

land.lhs.true21:                                  ; preds = %land.lhs.true8
  %25 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %call2)
  %cmp23 = icmp ult i32 %26, %call2
  br i1 %cmp23, label %land.lhs.true21.cleanup115_crit_edge, label %land.lhs.true21.if.end25_crit_edge

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true21.cleanup115_crit_edge:             ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

if.end25:                                         ; preds = %land.lhs.true21.if.end25_crit_edge, %land.lhs.true15.if.end25_crit_edge, %if.then.if.end25_crit_edge
  br label %cleanup115

if.end26:                                         ; preds = %entry
  %sys_error = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 34
  %27 = ptrtoint ptr %sys_error to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %sys_error, align 4
  %and1.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool28.not = icmp eq i32 %and1.i, 0
  br i1 %tobool28.not, label %if.end26.if.end57_crit_edge, label %if.then29

if.end26.if.end57_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then29:                                        ; preds = %if.end26
  %nonblock = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %nonblock to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nonblock, align 8, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not = icmp eq i8 %30, 0
  br i1 %tobool30.not, label %if.end32, label %if.then29.cleanup115_crit_edge

if.then29.cleanup115_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

if.end32:                                         ; preds = %if.then29
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 880) #10
  %31 = ptrtoint ptr %sys_error to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %sys_error, align 4
  %and1.i193 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i193)
  %tobool38.not = icmp eq i32 %and1.i193, 0
  br i1 %tobool38.not, label %if.end32.if.end57_crit_edge, label %if.then39

if.end32.if.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then39:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %sys_err_done = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 35
  %call41238 = call i32 @prepare_to_wait_event(ptr noundef %sys_err_done, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %34 = ptrtoint ptr %sys_error to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %sys_error, align 4
  %and1.i194239 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i194239)
  %tobool44.not240 = icmp eq i32 %and1.i194239, 0
  br i1 %tobool44.not240, label %if.then39.if.end52.thread215_crit_edge, label %if.then39.if.end46_crit_edge

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  br label %if.end46

if.then39.if.end52.thread215_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.thread215

if.end46:                                         ; preds = %cleanup50.if.end46_crit_edge, %if.then39.if.end46_crit_edge
  %call41241 = phi i32 [ %call41, %cleanup50.if.end46_crit_edge ], [ %call41238, %if.then39.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41241)
  %tobool47.not = icmp eq i32 %call41241, 0
  br i1 %tobool47.not, label %cleanup50, label %if.end52

cleanup50:                                        ; preds = %if.end46
  call void @schedule() #10
  %call41 = call i32 @prepare_to_wait_event(ptr noundef %sys_err_done, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %36 = ptrtoint ptr %sys_error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %sys_error, align 4
  %and1.i194 = and i32 %37, 1
  %tobool44.not = icmp eq i32 %and1.i194, 0
  br i1 %tobool44.not, label %cleanup50.if.end52.thread215_crit_edge, label %cleanup50.if.end46_crit_edge

cleanup50.if.end46_crit_edge:                     ; preds = %cleanup50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

cleanup50.if.end52.thread215_crit_edge:           ; preds = %cleanup50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.thread215

if.end52.thread215:                               ; preds = %cleanup50.if.end52.thread215_crit_edge, %if.then39.if.end52.thread215_crit_edge
  call void @finish_wait(ptr noundef %sys_err_done, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end57

if.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup115

if.end57:                                         ; preds = %if.end52.thread215, %if.end32.if.end57_crit_edge, %if.end26.if.end57_crit_edge
  %38 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core1, align 4
  %dev_dec.i = getelementptr inbounds %struct.venus_core, ptr %39, i32 0, i32 24
  %40 = ptrtoint ptr %dev_dec.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_dec.i, align 4
  %pm_lock.i = getelementptr inbounds %struct.venus_core, ptr %39, i32 0, i32 38
  call void @mutex_lock_nested(ptr noundef %pm_lock.i, i32 noundef 0) #10
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %41, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end61

if.then.i.i:                                      ; preds = %if.end57
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.vdec_pm_get.exit.thread_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.vdec_pm_get.exit.thread_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_pm_get.exit.thread

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  br label %vdec_pm_get.exit.thread

vdec_pm_get.exit.thread:                          ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.vdec_pm_get.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  br label %cleanup115

if.end61:                                         ; preds = %if.end57
  call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  %call.i = call i32 @venus_helper_session_init(ptr noundef %1) #10
  %43 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call.i, label %if.end61.put_power_crit_edge [
    i32 -114, label %if.end61.if.end65_crit_edge
    i32 0, label %if.end2.i
  ]

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end61.put_power_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_power

if.end2.i:                                        ; preds = %if.end61
  %44 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %core1, align 4
  %hfi_codec.i.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 45
  %46 = ptrtoint ptr %hfi_codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hfi_codec.i.i.i.i, align 8
  %session_type.i.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 55
  %48 = ptrtoint ptr %session_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %session_type.i.i.i.i, align 4
  %codecs_count.i.i.i.i.i = getelementptr inbounds %struct.venus_core, ptr %45, i32 0, i32 46
  %50 = ptrtoint ptr %codecs_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %codecs_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp16.not.i.i.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp16.not.i.i.i.i.i, label %if.end2.i.frame_height_min.exit.i_crit_edge, label %if.end2.i.for.body.i.i.i.i.i_crit_edge

if.end2.i.for.body.i.i.i.i.i_crit_edge:           ; preds = %if.end2.i
  br label %for.body.i.i.i.i.i

if.end2.i.frame_height_min.exit.i_crit_edge:      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.end2.i.for.body.i.i.i.i.i_crit_edge
  %c.017.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 0, %if.end2.i.for.body.i.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i.i
  %52 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %47)
  %cmp2.i.i.i.i.i = icmp eq i32 %53, %47
  br i1 %cmp2.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %domain5.i.i.i.i.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i.i, i32 1
  %54 = ptrtoint ptr %domain5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %domain5.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %49)
  %cmp6.i.i.i.i.i = icmp eq i32 %55, %49
  br i1 %cmp6.i.i.i.i.i, label %venus_caps_by_codec.exit.i.i.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %inc.i.i.i.i.i = add nuw i32 %c.017.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %51
  br i1 %exitcond.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i26.preheader.i

venus_caps_by_codec.exit.i.i.i.i:                 ; preds = %land.lhs.true.i.i.i.i.i
  %tobool.not.i.i.i.i = icmp eq ptr %arrayidx.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %venus_caps_by_codec.exit.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge, label %for.cond.preheader.i.i.i.i

venus_caps_by_codec.exit.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i26.preheader.i

for.cond.preheader.i.i.i.i:                       ; preds = %venus_caps_by_codec.exit.i.i.i.i
  %num_caps.i.i.i.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i.i, i32 3
  %56 = ptrtoint ptr %num_caps.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_caps.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp35.not.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp35.not.i.i.i.i, label %for.cond.preheader.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge, label %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  br label %for.body.i.i.i.i

for.cond.preheader.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i26.preheader.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge
  %i.036.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i.i, i32 4, i32 %i.036.i.i.i.i
  %58 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp3.i.i.i.i = icmp eq i32 %59, 1
  br i1 %cmp3.i.i.i.i, label %for.end.i.i.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.036.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %57
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i26.preheader.i

for.end.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %tobool8.not.i.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool8.not.i.i.i.i, label %for.end.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge, label %if.end10.i.i.i.i

for.end.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i26.preheader.i

if.end10.i.i.i.i:                                 ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i.i, i32 4, i32 %i.036.i.i.i.i, i32 1
  %60 = ptrtoint ptr %min.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %min.i.i.i.i, align 4
  br label %for.body.i.i.i.i26.preheader.i

for.body.i.i.i.i26.preheader.i:                   ; preds = %if.end10.i.i.i.i, %for.end.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge, %for.inc.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge, %venus_caps_by_codec.exit.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge, %for.inc.i.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge ], [ 0, %for.end.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge ], [ %61, %if.end10.i.i.i.i ], [ 0, %for.inc.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge ], [ 0, %for.inc.i.i.i.i.i.for.body.i.i.i.i26.preheader.i_crit_edge ]
  br label %for.body.i.i.i.i26.i

for.body.i.i.i.i26.i:                             ; preds = %for.inc.i.i.i.i32.i.for.body.i.i.i.i26.i_crit_edge, %for.body.i.i.i.i26.preheader.i
  %c.017.i.i.i.i23.i = phi i32 [ %inc.i.i.i.i30.i, %for.inc.i.i.i.i32.i.for.body.i.i.i.i26.i_crit_edge ], [ 0, %for.body.i.i.i.i26.preheader.i ]
  %arrayidx.i.i.i.i24.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i23.i
  %62 = ptrtoint ptr %arrayidx.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i.i.i24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %47)
  %cmp2.i.i.i.i25.i = icmp eq i32 %63, %47
  br i1 %cmp2.i.i.i.i25.i, label %land.lhs.true.i.i.i.i29.i, label %for.body.i.i.i.i26.i.for.inc.i.i.i.i32.i_crit_edge

for.body.i.i.i.i26.i.for.inc.i.i.i.i32.i_crit_edge: ; preds = %for.body.i.i.i.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i32.i

land.lhs.true.i.i.i.i29.i:                        ; preds = %for.body.i.i.i.i26.i
  %domain5.i.i.i.i27.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i23.i, i32 1
  %64 = ptrtoint ptr %domain5.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %domain5.i.i.i.i27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %49)
  %cmp6.i.i.i.i28.i = icmp eq i32 %65, %49
  br i1 %cmp6.i.i.i.i28.i, label %venus_caps_by_codec.exit.i.i.i34.i, label %land.lhs.true.i.i.i.i29.i.for.inc.i.i.i.i32.i_crit_edge

land.lhs.true.i.i.i.i29.i.for.inc.i.i.i.i32.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i32.i

for.inc.i.i.i.i32.i:                              ; preds = %land.lhs.true.i.i.i.i29.i.for.inc.i.i.i.i32.i_crit_edge, %for.body.i.i.i.i26.i.for.inc.i.i.i.i32.i_crit_edge
  %inc.i.i.i.i30.i = add nuw i32 %c.017.i.i.i.i23.i, 1
  %exitcond.not.i.i.i.i31.i = icmp eq i32 %inc.i.i.i.i30.i, %51
  br i1 %exitcond.not.i.i.i.i31.i, label %for.inc.i.i.i.i32.i.frame_height_min.exit.i_crit_edge, label %for.inc.i.i.i.i32.i.for.body.i.i.i.i26.i_crit_edge

for.inc.i.i.i.i32.i.for.body.i.i.i.i26.i_crit_edge: ; preds = %for.inc.i.i.i.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i26.i

for.inc.i.i.i.i32.i.frame_height_min.exit.i_crit_edge: ; preds = %for.inc.i.i.i.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

venus_caps_by_codec.exit.i.i.i34.i:               ; preds = %land.lhs.true.i.i.i.i29.i
  %tobool.not.i.i.i33.i = icmp eq ptr %arrayidx.i.i.i.i24.i, null
  br i1 %tobool.not.i.i.i33.i, label %venus_caps_by_codec.exit.i.i.i34.i.frame_height_min.exit.i_crit_edge, label %for.cond.preheader.i.i.i37.i

venus_caps_by_codec.exit.i.i.i34.i.frame_height_min.exit.i_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

for.cond.preheader.i.i.i37.i:                     ; preds = %venus_caps_by_codec.exit.i.i.i34.i
  %num_caps.i.i.i35.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i23.i, i32 3
  %66 = ptrtoint ptr %num_caps.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_caps.i.i.i35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp35.not.i.i.i36.i = icmp eq i32 %67, 0
  br i1 %cmp35.not.i.i.i36.i, label %for.cond.preheader.i.i.i37.i.frame_height_min.exit.i_crit_edge, label %for.cond.preheader.i.i.i37.i.for.body.i.i.i41.i_crit_edge

for.cond.preheader.i.i.i37.i.for.body.i.i.i41.i_crit_edge: ; preds = %for.cond.preheader.i.i.i37.i
  br label %for.body.i.i.i41.i

for.cond.preheader.i.i.i37.i.frame_height_min.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

for.body.i.i.i41.i:                               ; preds = %for.inc.i.i.i44.i.for.body.i.i.i41.i_crit_edge, %for.cond.preheader.i.i.i37.i.for.body.i.i.i41.i_crit_edge
  %i.036.i.i.i38.i = phi i32 [ %inc.i.i.i42.i, %for.inc.i.i.i44.i.for.body.i.i.i41.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i37.i.for.body.i.i.i41.i_crit_edge ]
  %arrayidx.i.i.i39.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i23.i, i32 4, i32 %i.036.i.i.i38.i
  %68 = ptrtoint ptr %arrayidx.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp3.i.i.i40.i = icmp eq i32 %69, 2
  br i1 %cmp3.i.i.i40.i, label %for.end.i.i.i46.i, label %for.inc.i.i.i44.i

for.inc.i.i.i44.i:                                ; preds = %for.body.i.i.i41.i
  %inc.i.i.i42.i = add nuw i32 %i.036.i.i.i38.i, 1
  %exitcond.not.i.i.i43.i = icmp eq i32 %inc.i.i.i42.i, %67
  br i1 %exitcond.not.i.i.i43.i, label %for.inc.i.i.i44.i.frame_height_min.exit.i_crit_edge, label %for.inc.i.i.i44.i.for.body.i.i.i41.i_crit_edge

for.inc.i.i.i44.i.for.body.i.i.i41.i_crit_edge:   ; preds = %for.inc.i.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i41.i

for.inc.i.i.i44.i.frame_height_min.exit.i_crit_edge: ; preds = %for.inc.i.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

for.end.i.i.i46.i:                                ; preds = %for.body.i.i.i41.i
  %tobool8.not.i.i.i45.i = icmp eq ptr %arrayidx.i.i.i39.i, null
  br i1 %tobool8.not.i.i.i45.i, label %for.end.i.i.i46.i.frame_height_min.exit.i_crit_edge, label %if.end10.i.i.i48.i

for.end.i.i.i46.i.frame_height_min.exit.i_crit_edge: ; preds = %for.end.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit.i

if.end10.i.i.i48.i:                               ; preds = %for.end.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i47.i = getelementptr %struct.venus_core, ptr %45, i32 0, i32 45, i32 %c.017.i.i.i.i23.i, i32 4, i32 %i.036.i.i.i38.i, i32 1
  %70 = ptrtoint ptr %min.i.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %min.i.i.i47.i, align 4
  br label %frame_height_min.exit.i

frame_height_min.exit.i:                          ; preds = %if.end10.i.i.i48.i, %for.end.i.i.i46.i.frame_height_min.exit.i_crit_edge, %for.inc.i.i.i44.i.frame_height_min.exit.i_crit_edge, %for.cond.preheader.i.i.i37.i.frame_height_min.exit.i_crit_edge, %venus_caps_by_codec.exit.i.i.i34.i.frame_height_min.exit.i_crit_edge, %for.inc.i.i.i.i32.i.frame_height_min.exit.i_crit_edge, %if.end2.i.frame_height_min.exit.i_crit_edge
  %retval.0.i.i.i51.i = phi i32 [ %retval.0.i.i.i.i, %venus_caps_by_codec.exit.i.i.i34.i.frame_height_min.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %for.end.i.i.i46.i.frame_height_min.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %for.cond.preheader.i.i.i37.i.frame_height_min.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %if.end10.i.i.i48.i ], [ 0, %if.end2.i.frame_height_min.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %for.inc.i.i.i44.i.frame_height_min.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %for.inc.i.i.i.i32.i.frame_height_min.exit.i_crit_edge ]
  %retval.0.i.i.i49.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i34.i.frame_height_min.exit.i_crit_edge ], [ 0, %for.end.i.i.i46.i.frame_height_min.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i37.i.frame_height_min.exit.i_crit_edge ], [ %71, %if.end10.i.i.i48.i ], [ 0, %if.end2.i.frame_height_min.exit.i_crit_edge ], [ 0, %for.inc.i.i.i44.i.frame_height_min.exit.i_crit_edge ], [ 0, %for.inc.i.i.i.i32.i.frame_height_min.exit.i_crit_edge ]
  %call5.i = call i32 @venus_helper_set_input_resolution(ptr noundef %1, i32 noundef %retval.0.i.i.i51.i, i32 noundef %retval.0.i.i.i49.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %frame_height_min.exit.i.if.end65_crit_edge, label %deinit.i

frame_height_min.exit.i.if.end65_crit_edge:       ; preds = %frame_height_min.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

deinit.i:                                         ; preds = %frame_height_min.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = call i32 @hfi_session_deinit(ptr noundef %1) #10
  br label %put_power

if.end65:                                         ; preds = %frame_height_min.exit.i.if.end65_crit_edge, %if.end61.if.end65_crit_edge
  %72 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %core1, align 4
  %res.i = getelementptr inbounds %struct.venus_core, ptr %73, i32 0, i32 22
  %74 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %res.i, align 4
  %hfi_version.i = getelementptr inbounds %struct.venus_resources, ptr %75, i32 0, i32 20
  %76 = ptrtoint ptr %hfi_version.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hfi_version.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bufreq.i) #10
  %78 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq.i, i32 0, i32 3
  %79 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq.i, i32 0, i32 4
  %80 = call ptr @memset(ptr %bufreq.i, i32 255, i32 32)
  %call.i195 = call i32 @venus_helper_get_bufreq(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %bufreq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool.not.i = icmp eq i32 %call.i195, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end65.vdec_num_buffers.exit.thread_crit_edge

if.end65.vdec_num_buffers.exit.thread_crit_edge:  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_num_buffers.exit.thread

if.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp.i = icmp eq i32 %77, 2
  br i1 %cmp.i, label %cond.end.i, label %cond.end.thread.i

cond.end.i:                                       ; preds = %if.end.i
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %78, align 4
  %call1.i = call i32 @venus_helper_get_bufreq(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %bufreq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %cond.end.i.if.end69_crit_edge, label %cond.end.i.vdec_num_buffers.exit.thread_crit_edge

cond.end.i.vdec_num_buffers.exit.thread_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_num_buffers.exit.thread

cond.end.i.if.end69_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cond.end.thread.i:                                ; preds = %if.end.i
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %79, align 4
  %call123.i = call i32 @venus_helper_get_bufreq(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %bufreq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool2.not24.i = icmp eq i32 %call123.i, 0
  br i1 %tobool2.not24.i, label %cond.end.thread.i.if.end69_crit_edge, label %cond.end.thread.i.vdec_num_buffers.exit.thread_crit_edge

cond.end.thread.i.vdec_num_buffers.exit.thread_crit_edge: ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_num_buffers.exit.thread

cond.end.thread.i.if.end69_crit_edge:             ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

vdec_num_buffers.exit.thread:                     ; preds = %cond.end.thread.i.vdec_num_buffers.exit.thread_crit_edge, %cond.end.i.vdec_num_buffers.exit.thread_crit_edge, %if.end65.vdec_num_buffers.exit.thread_crit_edge
  %retval.0.i196.ph = phi i32 [ %call123.i, %cond.end.thread.i.vdec_num_buffers.exit.thread_crit_edge ], [ %call1.i, %cond.end.i.vdec_num_buffers.exit.thread_crit_edge ], [ %call.i195, %if.end65.vdec_num_buffers.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bufreq.i) #10
  br label %put_power

if.end69:                                         ; preds = %cond.end.thread.i.if.end69_crit_edge, %cond.end.i.if.end69_crit_edge
  %in_num.0 = phi i32 [ %82, %cond.end.i.if.end69_crit_edge ], [ %84, %cond.end.thread.i.if.end69_crit_edge ]
  %.sink.i = phi ptr [ %78, %cond.end.i.if.end69_crit_edge ], [ %79, %cond.end.thread.i.if.end69_crit_edge ]
  %85 = ptrtoint ptr %.sink.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %.sink.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bufreq.i) #10
  %call70 = call fastcc i32 @vdec_pm_put(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.cleanup115_crit_edge

if.end69.cleanup115_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

if.end73:                                         ; preds = %if.end69
  %87 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %q, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %88, label %if.end73.cleanup115_crit_edge [
    i32 10, label %sw.bb
    i32 9, label %sw.bb93
  ]

if.end73.cleanup115_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

sw.bb:                                            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_out75 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 33
  %90 = ptrtoint ptr %fmt_out75 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fmt_out75, align 8
  %num_planes76 = getelementptr inbounds %struct.venus_format, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %num_planes76 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_planes76, align 4
  %94 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %num_planes, align 4
  %95 = load ptr, ptr %fmt_out75, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %out_width = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 19
  %98 = ptrtoint ptr %out_width to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %out_width, align 4
  %out_height = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 20
  %100 = ptrtoint ptr %out_height to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %out_height, align 8
  %call78 = call i32 @venus_helper_get_framesz(i32 noundef %97, i32 noundef %99, i32 noundef %101) #10
  %102 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call78, ptr %sizes, align 4
  %input_buf_size81 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 37
  %103 = ptrtoint ptr %input_buf_size81 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %input_buf_size81, align 8
  %105 = call i32 @llvm.umax.i32(i32 %call78, i32 %104)
  %106 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %sizes, align 4
  %107 = ptrtoint ptr %input_buf_size81 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %105, ptr %input_buf_size81, align 8
  %108 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_buffers, align 4
  %110 = call i32 @llvm.umax.i32(i32 %109, i32 %in_num.0)
  %111 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %num_buffers, align 4
  %num_input_bufs = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 35
  %112 = ptrtoint ptr %num_input_bufs to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %110, ptr %num_input_bufs, align 8
  %num_output_bufs = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 36
  %113 = ptrtoint ptr %num_output_bufs to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %86, ptr %num_output_bufs, align 4
  br label %cleanup115

sw.bb93:                                          ; preds = %if.end73
  %fmt_cap94 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 34
  %114 = ptrtoint ptr %fmt_cap94 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fmt_cap94, align 4
  %num_planes95 = getelementptr inbounds %struct.venus_format, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %num_planes95 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_planes95, align 4
  %118 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %num_planes, align 4
  %119 = load ptr, ptr %fmt_cap94, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %width = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 15
  %122 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 16
  %124 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %height, align 4
  %call98 = call i32 @venus_helper_get_framesz(i32 noundef %121, i32 noundef %123, i32 noundef %125) #10
  %126 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call98, ptr %sizes, align 4
  %output_buf_size101 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 38
  %127 = ptrtoint ptr %output_buf_size101 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call98, ptr %output_buf_size101, align 4
  %128 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_buffers, align 4
  %130 = call i32 @llvm.umax.i32(i32 %129, i32 %86)
  %131 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %num_buffers, align 4
  %num_output_bufs108 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 36
  %132 = ptrtoint ptr %num_output_bufs108 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %130, ptr %num_output_bufs108, align 4
  %lock = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %codec_state = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 25
  %133 = ptrtoint ptr %codec_state to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %codec_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %134)
  %cmp109 = icmp eq i32 %134, 2
  br i1 %cmp109, label %if.then110, label %sw.bb93.if.end112_crit_edge

sw.bb93.if.end112_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then110:                                       ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %codec_state to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 3, ptr %codec_state, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %sw.bb93.if.end112_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup115

put_power:                                        ; preds = %vdec_num_buffers.exit.thread, %deinit.i, %if.end61.put_power_crit_edge
  %ret.1 = phi i32 [ %call5.i, %deinit.i ], [ %retval.0.i196.ph, %vdec_num_buffers.exit.thread ], [ %call.i, %if.end61.put_power_crit_edge ]
  %136 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %core1, align 4
  %dev_dec.i198 = getelementptr inbounds %struct.venus_core, ptr %137, i32 0, i32 24
  %138 = ptrtoint ptr %dev_dec.i198 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev_dec.i198, align 4
  %pm_lock.i199 = getelementptr inbounds %struct.venus_core, ptr %137, i32 0, i32 38
  call void @mutex_lock_nested(ptr noundef %pm_lock.i199, i32 noundef 0) #10
  %call.i8.i = call i32 @__pm_runtime_idle(ptr noundef %139, i32 noundef 4) #10
  call void @mutex_unlock(ptr noundef %pm_lock.i199) #10
  br label %cleanup115

cleanup115:                                       ; preds = %put_power, %if.end112, %sw.bb, %if.end73.cleanup115_crit_edge, %if.end69.cleanup115_crit_edge, %vdec_pm_get.exit.thread, %if.end52, %if.then29.cleanup115_crit_edge, %if.end25, %land.lhs.true21.cleanup115_crit_edge, %land.lhs.true15.cleanup115_crit_edge, %land.lhs.true8.cleanup115_crit_edge, %land.lhs.true.cleanup115_crit_edge
  %retval.1 = phi i32 [ %ret.1, %put_power ], [ 0, %if.end25 ], [ -22, %land.lhs.true.cleanup115_crit_edge ], [ -22, %land.lhs.true8.cleanup115_crit_edge ], [ -22, %land.lhs.true15.cleanup115_crit_edge ], [ -22, %land.lhs.true21.cleanup115_crit_edge ], [ -11, %if.then29.cleanup115_crit_edge ], [ %call41241, %if.end52 ], [ %call70, %if.end69.cleanup115_crit_edge ], [ 0, %if.end112 ], [ 0, %sw.bb ], [ -22, %if.end73.cleanup115_crit_edge ], [ %call.i.i, %vdec_pm_get.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_buf_init(ptr noundef %vb) #2 align 64 {
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
define internal void @vdec_buf_cleanup(ptr noundef %vb) #2 align 64 {
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
  %core1.i = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core1.i, align 4
  %dev_dec.i.i = getelementptr inbounds %struct.venus_core, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %dev_dec.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_dec.i.i, align 4
  %pm_lock.i.i = getelementptr inbounds %struct.venus_core, ptr %19, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i.i, i32 noundef 0) #10
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then10.vdec_pm_get.exit.i_crit_edge

if.then10.vdec_pm_get.exit.i_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_pm_get.exit.i

if.then.i.i.i:                                    ; preds = %if.then10
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #10, !srcloc !88
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.vdec_pm_get.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.vdec_pm_get.exit.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_pm_get.exit.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  br label %vdec_pm_get.exit.i

vdec_pm_get.exit.i:                               ; preds = %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.vdec_pm_get.exit.i_crit_edge, %if.then10.vdec_pm_get.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm_lock.i.i) #10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %codec_state.i = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 25
  %23 = ptrtoint ptr %codec_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %codec_state.i, align 4
  %call2.i = tail call i32 @hfi_session_stop(ptr noundef %3) #10
  %call3.i = tail call i32 @hfi_session_unload_res(ptr noundef %3) #10
  %call9.i = tail call i32 @venus_helper_unregister_bufs(ptr noundef %3) #10
  %call15.i = tail call i32 @venus_helper_intbufs_free(ptr noundef %3) #10
  %call21.i = tail call i32 @hfi_session_deinit(ptr noundef %3) #10
  %session_error.i = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 53
  %24 = ptrtoint ptr %session_error.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %session_error.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not.i = icmp eq i8 %25, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i, label %vdec_pm_get.exit.i.if.then31.i_crit_edge

vdec_pm_get.exit.i.if.then31.i_crit_edge:         ; preds = %vdec_pm_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

lor.lhs.false.i:                                  ; preds = %vdec_pm_get.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call21.i)
  %cmp24.i = icmp eq i32 %call21.i, -22
  %sys_error.i = getelementptr inbounds %struct.venus_core, ptr %19, i32 0, i32 34
  %26 = ptrtoint ptr %sys_error.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %sys_error.i, align 4
  %and1.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool29.not.i = icmp eq i32 %and1.i.i, 0
  %tobool30.not.i = or i1 %tobool22.not.i, %cmp24.i
  %or.cond.i = select i1 %tobool29.not.i, i1 %tobool30.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end33.i_crit_edge, label %lor.lhs.false.i.if.then31.i_crit_edge

lor.lhs.false.i.if.then31.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then31.i:                                      ; preds = %lor.lhs.false.i.if.then31.i_crit_edge, %vdec_pm_get.exit.i.if.then31.i_crit_edge
  %call32.i = tail call i32 @hfi_session_abort(ptr noundef %3) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %lor.lhs.false.i.if.end33.i_crit_edge
  %call34.i = tail call i32 @venus_helper_free_dpb_bufs(ptr noundef %3) #10
  %28 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core1.i, align 4
  %pm_ops.i.i = getelementptr inbounds %struct.venus_core, ptr %29, i32 0, i32 37
  %30 = ptrtoint ptr %pm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pm_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end33.i.venus_pm_load_scale.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end33.i.venus_pm_load_scale.exit.i_crit_edge:  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venus_pm_load_scale.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end33.i
  %load_scale.i.i = getelementptr inbounds %struct.venus_pm_ops, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %load_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %load_scale.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.venus_pm_load_scale.exit.i_crit_edge, label %if.end.i.i20

lor.lhs.false.i.i.venus_pm_load_scale.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venus_pm_load_scale.exit.i

if.end.i.i20:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i19 = tail call i32 %33(ptr noundef %3) #10
  br label %venus_pm_load_scale.exit.i

venus_pm_load_scale.exit.i:                       ; preds = %if.end.i.i20, %lor.lhs.false.i.i.venus_pm_load_scale.exit.i_crit_edge, %if.end33.i.venus_pm_load_scale.exit.i_crit_edge
  %registeredbufs.i = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 6
  %34 = ptrtoint ptr %registeredbufs.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %registeredbufs.i, ptr %registeredbufs.i, align 4
  %prev.i.i21 = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %registeredbufs.i, ptr %prev.i.i21, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %36 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core1.i, align 4
  %pm_ops2.i.i = getelementptr inbounds %struct.venus_core, ptr %37, i32 0, i32 37
  %38 = ptrtoint ptr %pm_ops2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pm_ops2.i.i, align 4
  %tobool.not.i66.i = icmp eq ptr %39, null
  br i1 %tobool.not.i66.i, label %venus_pm_load_scale.exit.i.vdec_session_release.exit_crit_edge, label %land.lhs.true.i.i

venus_pm_load_scale.exit.i.vdec_session_release.exit_crit_edge: ; preds = %venus_pm_load_scale.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_session_release.exit

land.lhs.true.i.i:                                ; preds = %venus_pm_load_scale.exit.i
  %coreid_power.i.i = getelementptr inbounds %struct.venus_pm_ops, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %coreid_power.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %coreid_power.i.i, align 4
  %tobool3.not.i67.i = icmp eq ptr %41, null
  br i1 %tobool3.not.i67.i, label %land.lhs.true.i.i.vdec_session_release.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.vdec_session_release.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_session_release.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i68.i = tail call i32 %41(ptr noundef %3, i32 noundef 0) #10
  br label %vdec_session_release.exit

vdec_session_release.exit:                        ; preds = %if.then.i.i, %land.lhs.true.i.i.vdec_session_release.exit_crit_edge, %venus_pm_load_scale.exit.i.vdec_session_release.exit_crit_edge
  %42 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %core1.i, align 4
  %dev_dec.i71.i = getelementptr inbounds %struct.venus_core, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %dev_dec.i71.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_dec.i71.i, align 4
  %pm_lock.i72.i = getelementptr inbounds %struct.venus_core, ptr %43, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i72.i, i32 noundef 0) #10
  %call.i8.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %45, i32 noundef 4) #10
  tail call void @mutex_unlock(ptr noundef %pm_lock.i72.i) #10
  br label %if.end11

if.end11:                                         ; preds = %vdec_session_release.exit, %if.end6.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  %wr.i.i = alloca %struct.hfi_video_work_route, align 4
  %en.i.i = alloca %struct.hfi_enable, align 4
  %decode_order.i.i = alloca i32, align 4
  %conceal.i.i = alloca i32, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp = icmp eq i32 %3, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %streamon_out.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %streamon_out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %streamon_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %codec_state.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %codec_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codec_state.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %7, label %if.end.i.cleanup_crit_edge [
    i32 6, label %if.then1.i
    i32 3, label %if.end.i.reconfigure.i_crit_edge
  ]

if.end.i.reconfigure.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reconfigure.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1.i:                                       ; preds = %if.end.i
  %reconfig.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %reconfig.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reconfig.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i = icmp eq i8 %10, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then1.i.reconfigure.i_crit_edge

if.then1.i.reconfigure.i_crit_edge:               ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reconfigure.i

if.end4.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @venus_helper_queue_dpb_bufs(ptr noundef %1) #10
  %call5.i = tail call i32 @venus_helper_process_initial_cap_bufs(ptr noundef %1) #10
  %streamon_cap.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %streamon_cap.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %streamon_cap.i, align 8
  br label %cleanup

reconfigure.i:                                    ; preds = %if.then1.i.reconfigure.i_crit_edge, %if.end.i.reconfigure.i_crit_edge
  %call11.i = tail call fastcc i32 @vdec_output_conf(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %reconfigure.i.error_crit_edge

reconfigure.i.error_crit_edge:                    ; preds = %reconfigure.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end14.i:                                       ; preds = %reconfigure.i
  %num_input_bufs.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 35
  %12 = ptrtoint ptr %num_input_bufs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_input_bufs.i, align 8
  %call15.i = tail call i32 @venus_helper_set_num_bufs(ptr noundef %1, i32 noundef %13, i32 noundef 32, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.error_crit_edge

if.end14.i.error_crit_edge:                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = tail call i32 @venus_helper_intbufs_realloc(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.error_crit_edge

if.end18.i.error_crit_edge:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end22.i:                                       ; preds = %if.end18.i
  %core1.i.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %core1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core1.i.i, align 4
  %pm_ops.i.i = getelementptr inbounds %struct.venus_core, ptr %15, i32 0, i32 37
  %16 = ptrtoint ptr %pm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pm_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end22.i.venus_pm_load_scale.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end22.i.venus_pm_load_scale.exit.i_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venus_pm_load_scale.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end22.i
  %load_scale.i.i = getelementptr inbounds %struct.venus_pm_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %load_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %load_scale.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.venus_pm_load_scale.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.venus_pm_load_scale.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %venus_pm_load_scale.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %19(ptr noundef %1) #10
  br label %venus_pm_load_scale.exit.i

venus_pm_load_scale.exit.i:                       ; preds = %if.end.i.i, %lor.lhs.false.i.i.venus_pm_load_scale.exit.i_crit_edge, %if.end22.i.venus_pm_load_scale.exit.i_crit_edge
  %next_buf_last.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 60
  %20 = ptrtoint ptr %next_buf_last.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %next_buf_last.i, align 4
  %call24.i = tail call i32 @venus_helper_alloc_dpb_bufs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %venus_pm_load_scale.exit.i.error_crit_edge

venus_pm_load_scale.exit.i.error_crit_edge:       ; preds = %venus_pm_load_scale.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end27.i:                                       ; preds = %venus_pm_load_scale.exit.i
  %call28.i = tail call i32 @hfi_session_continue(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.i.free_dpb_bufs.i_crit_edge

if.end27.i.free_dpb_bufs.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dpb_bufs.i

if.end31.i:                                       ; preds = %if.end27.i
  %call32.i = tail call i32 @venus_helper_queue_dpb_bufs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end31.i.free_dpb_bufs.i_crit_edge

if.end31.i.free_dpb_bufs.i_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dpb_bufs.i

if.end35.i:                                       ; preds = %if.end31.i
  %call36.i = tail call i32 @venus_helper_process_initial_cap_bufs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end35.i.free_dpb_bufs.i_crit_edge

if.end35.i.free_dpb_bufs.i_crit_edge:             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dpb_bufs.i

if.end39.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %drain_active.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 61
  %21 = ptrtoint ptr %drain_active.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %drain_active.i, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool41.not.i = icmp eq i8 %22, 0
  %spec.store.select.i = select i1 %tobool41.not.i, i32 6, i32 5
  %23 = ptrtoint ptr %codec_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.store.select.i, ptr %codec_state.i, align 4
  %streamon_cap45.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %streamon_cap45.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %streamon_cap45.i, align 8
  %sequence_cap.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 46
  %25 = ptrtoint ptr %sequence_cap.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sequence_cap.i, align 4
  %reconfig46.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 44
  %26 = ptrtoint ptr %reconfig46.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %reconfig46.i, align 4
  %27 = ptrtoint ptr %drain_active.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %drain_active.i, align 1
  br label %cleanup

free_dpb_bufs.i:                                  ; preds = %if.end35.i.free_dpb_bufs.i_crit_edge, %if.end31.i.free_dpb_bufs.i_crit_edge, %if.end27.i.free_dpb_bufs.i_crit_edge
  %ret.0.i = phi i32 [ %call28.i, %if.end27.i.free_dpb_bufs.i_crit_edge ], [ %call32.i, %if.end31.i.free_dpb_bufs.i_crit_edge ], [ %call36.i, %if.end35.i.free_dpb_bufs.i_crit_edge ]
  %call48.i = tail call i32 @venus_helper_free_dpb_bufs(ptr noundef %1) #10
  br label %error

if.else:                                          ; preds = %entry
  %core1.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core1.i, align 4
  %dev_dec.i = getelementptr inbounds %struct.venus_core, ptr %29, i32 0, i32 24
  %30 = ptrtoint ptr %dev_dec.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_dec.i, align 4
  %pm_lock.i = getelementptr inbounds %struct.venus_core, ptr %29, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i, i32 noundef 0) #10
  %call.i.i37 = tail call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %cmp.i.i = icmp slt i32 %call.i.i37, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %if.else
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.vdec_pm_get.exit.thread_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.vdec_pm_get.exit.thread_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_pm_get.exit.thread

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  br label %vdec_pm_get.exit.thread

vdec_pm_get.exit.thread:                          ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.vdec_pm_get.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  br label %error

if.end:                                           ; preds = %if.else
  tail call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  %33 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core1.i, align 4
  %pm_ops2.i = getelementptr inbounds %struct.venus_core, ptr %34, i32 0, i32 37
  %35 = ptrtoint ptr %pm_ops2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pm_ops2.i, align 4
  %tobool.not.i39 = icmp eq ptr %36, null
  br i1 %tobool.not.i39, label %if.end.if.end7_crit_edge, label %land.lhs.true.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.end
  %coreid_power.i = getelementptr inbounds %struct.venus_pm_ops, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %coreid_power.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %coreid_power.i, align 4
  %tobool3.not.i = icmp eq ptr %38, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end7_crit_edge, label %venus_pm_acquire_core.exit

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

venus_pm_acquire_core.exit:                       ; preds = %land.lhs.true.i
  %call.i40 = tail call i32 %38(ptr noundef %1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool5.not = icmp eq i32 %call.i40, 0
  br i1 %tobool5.not, label %venus_pm_acquire_core.exit.if.end7_crit_edge, label %put_power

venus_pm_acquire_core.exit.if.end7_crit_edge:     ; preds = %venus_pm_acquire_core.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %venus_pm_acquire_core.exit.if.end7_crit_edge, %land.lhs.true.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %39 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core1.i, align 4
  %dev_dec.i44 = getelementptr inbounds %struct.venus_core, ptr %40, i32 0, i32 24
  %41 = ptrtoint ptr %dev_dec.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_dec.i44, align 4
  %pm_lock.i45 = getelementptr inbounds %struct.venus_core, ptr %40, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i45, i32 noundef 0) #10
  %call.i.i46 = tail call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #10
  tail call void @mutex_unlock(ptr noundef %pm_lock.i45) #10
  %43 = tail call i32 @llvm.smin.i32(i32 %call.i.i46, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i46)
  %tobool9.not = icmp sgt i32 %call.i.i46, -1
  br i1 %tobool9.not, label %if.end11, label %if.end7.error_crit_edge

if.end7.error_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end11:                                         ; preds = %if.end7
  %codec_state.i50 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 25
  %44 = ptrtoint ptr %codec_state.i50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %codec_state.i50, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %45, label %if.end11.error_crit_edge [
    i32 4, label %if.then.i54
    i32 1, label %if.end11.if.then9.i_crit_edge
    i32 2, label %if.end11.if.then9.i_crit_edge85
    i32 0, label %if.end15.i
  ]

if.end11.if.then9.i_crit_edge85:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.end11.if.then9.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.then.i54:                                      ; preds = %if.end11
  %call.i51 = tail call i32 @venus_helper_process_initial_out_bufs(ptr noundef %1) #10
  %next_buf_last.i52 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 60
  %47 = ptrtoint ptr %next_buf_last.i52 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %next_buf_last.i52, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i53 = icmp eq i8 %48, 0
  br i1 %tobool.not.i53, label %if.else.i, label %if.then1.i55

if.then1.i55:                                     ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %codec_state.i50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %codec_state.i50, align 4
  br label %if.end13

if.else.i:                                        ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %codec_state.i50 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 6, ptr %codec_state.i50, align 4
  br label %if.end13

if.then9.i:                                       ; preds = %if.end11.if.then9.i_crit_edge, %if.end11.if.then9.i_crit_edge85
  %call10.i = tail call i32 @venus_helper_process_initial_out_bufs(ptr noundef %1) #10
  br label %if.end13

if.end15.i:                                       ; preds = %if.end11
  tail call void @venus_helper_init_instance(ptr noundef %1) #10
  %sequence_out.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 47
  %51 = ptrtoint ptr %sequence_out.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %sequence_out.i, align 8
  %reconfig.i56 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 44
  %52 = ptrtoint ptr %reconfig.i56 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %reconfig.i56, align 4
  %next_buf_last16.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 60
  %53 = ptrtoint ptr %next_buf_last16.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %next_buf_last16.i, align 4
  %controls.i.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en.i.i) #10
  %54 = ptrtoint ptr %en.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %en.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %decode_order.i.i) #10
  %55 = ptrtoint ptr %decode_order.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %decode_order.i.i, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conceal.i.i) #10
  %56 = ptrtoint ptr %controls.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %controls.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i57 = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i57, label %if.end15.i.if.end3.i.i_crit_edge, label %if.then.i.i59

if.end15.i.if.end3.i.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.then.i.i59:                                    ; preds = %if.end15.i
  %call.i.i58 = call i32 @hfi_session_set_property(ptr noundef %1, i32 noundef 18874369, ptr noundef nonnull %en.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %tobool1.not.i.i = icmp eq i32 %call.i.i58, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i59.if.end3.i.i_crit_edge, label %if.then.i.i59.vdec_set_properties.exit.thread.i_crit_edge

if.then.i.i59.vdec_set_properties.exit.thread.i_crit_edge: ; preds = %if.then.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_set_properties.exit.thread.i

if.then.i.i59.if.end3.i.i_crit_edge:              ; preds = %if.then.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then.i.i59.if.end3.i.i_crit_edge, %if.end15.i.if.end3.i.i_crit_edge
  %display_delay_enable.i.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 11, i32 0, i32 4
  %58 = ptrtoint ptr %display_delay_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %display_delay_enable.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool4.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool4.not.i.i, label %if.end3.i.i.vdec_set_properties.exit.i_crit_edge, label %land.lhs.true.i.i

if.end3.i.i.vdec_set_properties.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_set_properties.exit.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %display_delay.i.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 11, i32 0, i32 3
  %60 = ptrtoint ptr %display_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %display_delay.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i60 = icmp eq i32 %61, 0
  br i1 %cmp.i.i60, label %if.then5.i.i, label %land.lhs.true.i.i.vdec_set_properties.exit.i_crit_edge

land.lhs.true.i.i.vdec_set_properties.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_set_properties.exit.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  %62 = ptrtoint ptr %decode_order.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16777218, ptr %decode_order.i.i, align 4
  %call6.i.i = call i32 @hfi_session_set_property(ptr noundef %1, i32 noundef 18886661, ptr noundef nonnull %decode_order.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then5.i.i.vdec_set_properties.exit.i_crit_edge, label %if.then5.i.i.vdec_set_properties.exit.thread.i_crit_edge

if.then5.i.i.vdec_set_properties.exit.thread.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_set_properties.exit.thread.i

if.then5.i.i.vdec_set_properties.exit.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_set_properties.exit.i

vdec_set_properties.exit.thread.i:                ; preds = %if.then5.i.i.vdec_set_properties.exit.thread.i_crit_edge, %if.then.i.i59.vdec_set_properties.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call6.i.i, %if.then5.i.i.vdec_set_properties.exit.thread.i_crit_edge ], [ %call.i.i58, %if.then.i.i59.vdec_set_properties.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conceal.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %decode_order.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en.i.i) #10
  br label %error

vdec_set_properties.exit.i:                       ; preds = %if.then5.i.i.vdec_set_properties.exit.i_crit_edge, %land.lhs.true.i.i.vdec_set_properties.exit.i_crit_edge, %if.end3.i.i.vdec_set_properties.exit.i_crit_edge
  %conceal_color.i.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 11, i32 0, i32 5
  %63 = ptrtoint ptr %conceal_color.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %conceal_color.i.i, align 8
  %65 = trunc i64 %64 to i32
  %conv.i.i = and i32 %65, 65535
  %66 = lshr i32 %65, 6
  %67 = and i32 %66, 67107840
  %conv14.i.i = or i32 %67, %conv.i.i
  %68 = lshr i64 %64, 12
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, -1048576
  %conv21.i.i = or i32 %conv14.i.i, %70
  %71 = ptrtoint ptr %conceal.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv21.i.i, ptr %conceal.i.i, align 4
  %call22.i.i = call i32 @hfi_session_set_property(ptr noundef %1, i32 noundef 16789506, ptr noundef nonnull %conceal.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conceal.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %decode_order.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool18.not.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %vdec_set_properties.exit.i.error_crit_edge

vdec_set_properties.exit.i.error_crit_edge:       ; preds = %vdec_set_properties.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end20.i:                                       ; preds = %vdec_set_properties.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr.i.i) #10
  %72 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %core1.i, align 4
  %res.i.i = getelementptr inbounds %struct.venus_core, ptr %73, i32 0, i32 22
  %74 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %res.i.i, align 4
  %hfi_version.i.i = getelementptr inbounds %struct.venus_resources, ptr %75, i32 0, i32 20
  %76 = ptrtoint ptr %hfi_version.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hfi_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp.i82.i = icmp eq i32 %77, 3
  br i1 %cmp.i82.i, label %vdec_set_work_route.exit.i, label %vdec_set_work_route.exit.thread.i

vdec_set_work_route.exit.thread.i:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr.i.i) #10
  br label %if.end24.i

vdec_set_work_route.exit.i:                       ; preds = %if.end20.i
  %num_vpp_pipes.i.i = getelementptr inbounds %struct.venus_resources, ptr %75, i32 0, i32 21
  %78 = ptrtoint ptr %num_vpp_pipes.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_vpp_pipes.i.i, align 8
  %conv.i83.i = zext i8 %79 to i32
  %80 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i83.i, ptr %wr.i.i, align 4
  %call.i84.i = call i32 @hfi_session_set_property(ptr noundef %1, i32 noundef 4119, ptr noundef nonnull %wr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %tobool22.not.i = icmp eq i32 %call.i84.i, 0
  br i1 %tobool22.not.i, label %vdec_set_work_route.exit.i.if.end24.i_crit_edge, label %vdec_set_work_route.exit.i.error_crit_edge

vdec_set_work_route.exit.i.error_crit_edge:       ; preds = %vdec_set_work_route.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

vdec_set_work_route.exit.i.if.end24.i_crit_edge:  ; preds = %vdec_set_work_route.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.end24.i:                                       ; preds = %vdec_set_work_route.exit.i.if.end24.i_crit_edge, %vdec_set_work_route.exit.thread.i
  %call25.i = call fastcc i32 @vdec_output_conf(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.error_crit_edge

if.end24.i.error_crit_edge:                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end28.i:                                       ; preds = %if.end24.i
  %call29.i = call fastcc i32 @vdec_verify_conf(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end28.i.error_crit_edge

if.end28.i.error_crit_edge:                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end32.i:                                       ; preds = %if.end28.i
  %num_input_bufs.i61 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 35
  %81 = ptrtoint ptr %num_input_bufs.i61 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_input_bufs.i61, align 8
  %call33.i = call i32 @venus_helper_set_num_bufs(ptr noundef %1, i32 noundef %82, i32 noundef 32, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.error_crit_edge

if.end32.i.error_crit_edge:                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end36.i:                                       ; preds = %if.end32.i
  %call37.i = call i32 @venus_helper_vb2_start_streaming(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.error_crit_edge

if.end36.i.error_crit_edge:                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end40.i:                                       ; preds = %if.end36.i
  %call41.i = call i32 @venus_helper_process_initial_out_bufs(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end13.thread81, label %if.end40.i.error_crit_edge

if.end40.i.error_crit_edge:                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end13.thread81:                                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %codec_state.i50 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %codec_state.i50, align 4
  %streamon_out.i6383 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 14
  %84 = ptrtoint ptr %streamon_out.i6383 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %streamon_out.i6383, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then9.i, %if.else.i, %if.then1.i55
  %ret.0.i62 = phi i32 [ %call.i51, %if.then1.i55 ], [ %call.i51, %if.else.i ], [ %call10.i, %if.then9.i ]
  %streamon_out.i63 = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 14
  %85 = ptrtoint ptr %streamon_out.i63 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %streamon_out.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i62)
  %tobool14.not = icmp eq i32 %ret.0.i62, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.end13.error_crit_edge

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

put_power:                                        ; preds = %venus_pm_acquire_core.exit
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %core1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %core1.i, align 4
  %dev_dec.i66 = getelementptr inbounds %struct.venus_core, ptr %87, i32 0, i32 24
  %88 = ptrtoint ptr %dev_dec.i66 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_dec.i66, align 4
  %pm_lock.i67 = getelementptr inbounds %struct.venus_core, ptr %87, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i67, i32 noundef 0) #10
  %call.i8.i = tail call i32 @__pm_runtime_idle(ptr noundef %89, i32 noundef 4) #10
  tail call void @mutex_unlock(ptr noundef %pm_lock.i67) #10
  br label %error

error:                                            ; preds = %put_power, %if.end13.error_crit_edge, %if.end40.i.error_crit_edge, %if.end36.i.error_crit_edge, %if.end32.i.error_crit_edge, %if.end28.i.error_crit_edge, %if.end24.i.error_crit_edge, %vdec_set_work_route.exit.i.error_crit_edge, %vdec_set_properties.exit.i.error_crit_edge, %vdec_set_properties.exit.thread.i, %if.end11.error_crit_edge, %if.end7.error_crit_edge, %vdec_pm_get.exit.thread, %free_dpb_bufs.i, %venus_pm_load_scale.exit.i.error_crit_edge, %if.end18.i.error_crit_edge, %if.end14.i.error_crit_edge, %reconfigure.i.error_crit_edge
  %ret.1 = phi i32 [ %ret.0.i62, %if.end13.error_crit_edge ], [ %call.i40, %put_power ], [ %43, %if.end7.error_crit_edge ], [ %call.i.i37, %vdec_pm_get.exit.thread ], [ %retval.0.i.ph.i, %vdec_set_properties.exit.thread.i ], [ %call41.i, %if.end40.i.error_crit_edge ], [ %call37.i, %if.end36.i.error_crit_edge ], [ %call33.i, %if.end32.i.error_crit_edge ], [ %call29.i, %if.end28.i.error_crit_edge ], [ %call25.i, %if.end24.i.error_crit_edge ], [ %call.i84.i, %vdec_set_work_route.exit.i.error_crit_edge ], [ %call22.i.i, %vdec_set_properties.exit.i.error_crit_edge ], [ -22, %if.end11.error_crit_edge ], [ %ret.0.i, %free_dpb_bufs.i ], [ %call24.i, %venus_pm_load_scale.exit.i.error_crit_edge ], [ %call19.i, %if.end18.i.error_crit_edge ], [ %call15.i, %if.end14.i.error_crit_edge ], [ %call11.i, %reconfigure.i.error_crit_edge ]
  %90 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %q, align 4
  call void @venus_helper_buffers_done(ptr noundef %1, i32 noundef %91, i32 noundef 3) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end13.cleanup_crit_edge, %if.end13.thread81, %if.end39.i, %if.end4.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end4.i ], [ 0, %if.end39.i ], [ 0, %if.end13.thread81 ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp = icmp eq i32 %3, 9
  %codec_state.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %codec_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %codec_state.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %5, label %if.then.if.end_crit_edge [
    i32 6, label %sw.bb.i
    i32 5, label %if.then.sw.bb1.i_crit_edge
    i32 4, label %if.then.sw.bb3.i_crit_edge
    i32 7, label %sw.bb4.i
  ]

if.then.sw.bb3.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.then.sw.bb1.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @hfi_session_flush(ptr noundef %1, i32 noundef 16777220, i1 noundef zeroext true) #10
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %if.then.sw.bb1.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then.sw.bb1.i_crit_edge ], [ %call.i, %sw.bb.i ]
  %7 = ptrtoint ptr %codec_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %codec_state.i, align 4
  %drain_active.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 61
  %8 = ptrtoint ptr %drain_active.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %drain_active.i, align 1
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb1.i, %if.then.sw.bb3.i_crit_edge
  %ret.1.i = phi i32 [ 0, %if.then.sw.bb3.i_crit_edge ], [ %ret.0.i, %sw.bb1.i ]
  %m2m_ctx.i.i = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 49
  %9 = ptrtoint ptr %m2m_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx.i.i, align 8
  %cap_q_ctx.i1.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 7
  %call.i2.i.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i1.i.i) #10
  %tobool.not3.i.i = icmp eq ptr %call.i2.i.i, null
  br i1 %tobool.not3.i.i, label %sw.bb3.i.if.end_crit_edge, label %sw.bb3.i.while.body.i.i_crit_edge

sw.bb3.i.while.body.i.i_crit_edge:                ; preds = %sw.bb3.i
  br label %while.body.i.i

sw.bb3.i.if.end_crit_edge:                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %sw.bb3.i.while.body.i.i_crit_edge
  %call.i4.i.i = phi ptr [ %call.i.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i2.i.i, %sw.bb3.i.while.body.i.i_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i4.i.i, i32 noundef 6) #10
  %11 = ptrtoint ptr %m2m_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx.i.i, align 8
  %cap_q_ctx.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 7
  %call.i.i.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @hfi_session_flush(ptr noundef %1, i32 noundef 16777218, i1 noundef zeroext true) #10
  %13 = ptrtoint ptr %codec_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %codec_state.i, align 4
  %call7.i = tail call i32 @venus_helper_free_dpb_bufs(ptr noundef %1) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %5, label %if.else.if.end_crit_edge [
    i32 6, label %if.else.sw.bb.i24_crit_edge
    i32 5, label %if.else.sw.bb.i24_crit_edge26
    i32 3, label %if.else.sw.bb.i24_crit_edge27
    i32 7, label %if.else.sw.bb.i24_crit_edge28
    i32 1, label %if.else.sw.bb2.i_crit_edge
    i32 2, label %if.else.sw.bb2.i_crit_edge29
  ]

if.else.sw.bb2.i_crit_edge29:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

if.else.sw.bb2.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

if.else.sw.bb.i24_crit_edge28:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i24

if.else.sw.bb.i24_crit_edge27:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i24

if.else.sw.bb.i24_crit_edge26:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i24

if.else.sw.bb.i24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i24

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb.i24:                                        ; preds = %if.else.sw.bb.i24_crit_edge, %if.else.sw.bb.i24_crit_edge26, %if.else.sw.bb.i24_crit_edge27, %if.else.sw.bb.i24_crit_edge28
  %call.i23 = tail call i32 @hfi_session_flush(ptr noundef %1, i32 noundef 16777220, i1 noundef zeroext true) #10
  %15 = ptrtoint ptr %codec_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %codec_state.i, align 4
  br label %if.end

sw.bb2.i:                                         ; preds = %if.else.sw.bb2.i_crit_edge, %if.else.sw.bb2.i_crit_edge29
  %call3.i = tail call i32 @hfi_session_flush(ptr noundef %1, i32 noundef 16777217, i1 noundef zeroext true) #10
  br label %if.end

if.end:                                           ; preds = %sw.bb2.i, %sw.bb.i24, %if.else.if.end_crit_edge, %sw.bb4.i, %while.body.i.i.if.end_crit_edge, %sw.bb3.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %call5.i, %sw.bb4.i ], [ %ret.1.i, %sw.bb3.i.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ], [ %call3.i, %sw.bb2.i ], [ %call.i23, %sw.bb.i24 ], [ %ret.1.i, %while.body.i.i.if.end_crit_edge ]
  %16 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q, align 4
  tail call void @venus_helper_buffers_done(ptr noundef %1, i32 noundef %17, i32 noundef 6) #10
  %session_error = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 53
  %18 = ptrtoint ptr %session_error to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %session_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end5, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end5:                                          ; preds = %if.end
  %19 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %20)
  %cmp7 = icmp eq i32 %20, 10
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %streamon_out = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %streamon_out to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %streamon_out, align 4
  br label %unlock

if.else9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %streamon_cap = getelementptr inbounds %struct.venus_inst, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %streamon_cap, align 8
  br label %unlock

unlock:                                           ; preds = %if.else9, %if.then8, %if.end.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_vb2_buf_queue(ptr noundef %vb) #2 align 64 {
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
  %dev_dec.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %dev_dec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_dec.i, align 4
  %pm_lock.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock.i, i32 noundef 0) #10
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 2
  br i1 %cmp.i.i, label %pm_runtime_suspended.exit.i, label %entry.vdec_pm_get_put.exit_crit_edge

entry.vdec_pm_get_put.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_pm_get_put.exit

pm_runtime_suspended.exit.i:                      ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 15
  %10 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i, label %pm_runtime_suspended.exit.i.vdec_pm_get_put.exit_crit_edge

pm_runtime_suspended.exit.i.vdec_pm_get_put.exit_crit_edge: ; preds = %pm_runtime_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_pm_get_put.exit

if.then.i:                                        ; preds = %pm_runtime_suspended.exit.i
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i1.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.vdec_pm_get_put.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.vdec_pm_get_put.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdec_pm_get_put.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  br label %vdec_pm_get_put.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i2.i = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #10
  br label %vdec_pm_get_put.exit

vdec_pm_get_put.exit:                             ; preds = %if.end.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.vdec_pm_get_put.exit_crit_edge, %pm_runtime_suspended.exit.i.vdec_pm_get_put.exit_crit_edge, %entry.vdec_pm_get_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm_lock.i) #10
  %lock = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %next_buf_last = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 60
  %12 = ptrtoint ptr %next_buf_last to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %next_buf_last, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %vdec_pm_get_put.exit.if.end_crit_edge, label %land.lhs.true

vdec_pm_get_put.exit.if.end_crit_edge:            ; preds = %vdec_pm_get_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %vdec_pm_get_put.exit
  %14 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vb, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %17, label %land.lhs.true30 [
    i32 2, label %land.lhs.true.if.end_crit_edge
    i32 10, label %land.lhs.true.if.end_crit_edge59
    i32 3, label %land.lhs.true.if.end_crit_edge60
    i32 8, label %land.lhs.true.if.end_crit_edge61
    i32 5, label %land.lhs.true.if.end_crit_edge62
    i32 7, label %land.lhs.true.if.end_crit_edge63
    i32 12, label %land.lhs.true.if.end_crit_edge64
    i32 14, label %land.lhs.true.if.end_crit_edge65
  ]

land.lhs.true.if.end_crit_edge65:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge64:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge63:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge62:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge61:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge60:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge59:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true30:                                  ; preds = %land.lhs.true
  %codec_state = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 25
  %19 = ptrtoint ptr %codec_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %codec_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp31 = icmp eq i32 %20, 7
  br i1 %cmp31, label %if.then, label %land.lhs.true30.if.end_crit_edge

land.lhs.true30.if.end_crit_edge:                 ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true30
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %or = or i32 %22, 1048576
  store i32 %or, ptr %flags, align 8
  %sequence_cap = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 46
  %23 = ptrtoint ptr %sequence_cap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sequence_cap, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %sequence_cap, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 4
  %25 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sequence, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %26 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %field, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %27 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i, label %if.then.vb2_set_plane_payload.exit_crit_edge, label %if.then.i58

if.then.vb2_set_plane_payload.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit

if.then.i58:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %29 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then.i58, %if.then.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 5) #10
  %fh = getelementptr inbounds %struct.venus_inst, ptr %3, i32 0, i32 12
  tail call void @v4l2_event_queue_fh(ptr noundef %fh, ptr noundef nonnull @vdec_vb2_buf_queue.eos) #10
  %30 = ptrtoint ptr %next_buf_last to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %next_buf_last, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true30.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge59, %land.lhs.true.if.end_crit_edge60, %land.lhs.true.if.end_crit_edge61, %land.lhs.true.if.end_crit_edge62, %land.lhs.true.if.end_crit_edge63, %land.lhs.true.if.end_crit_edge64, %land.lhs.true.if.end_crit_edge65, %vdec_pm_get_put.exit.if.end_crit_edge
  tail call void @venus_helper_vb2_buf_queue(ptr noundef %vb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vb2_set_plane_payload.exit
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_opb_size(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vdec_pm_put(ptr nocapture noundef readonly %inst, i1 noundef zeroext %autosuspend) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %dev_dec = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dev_dec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_dec, align 4
  %pm_lock = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %pm_lock, i32 noundef 0) #10
  br i1 %autosuspend, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i8 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call.i, %if.then ], [ %call.i8, %if.else ]
  tail call void @mutex_unlock(ptr noundef %pm_lock) #10
  %4 = tail call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_session_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_input_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_bufreq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_vb2_buf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_unload_res(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_unregister_bufs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_intbufs_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_free_dpb_bufs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_buffers_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_queue_dpb_bufs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_process_initial_cap_bufs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vdec_output_conf(ptr noundef %inst) unnamed_addr #2 align 64 {
entry:
  %en = alloca %struct.hfi_enable, align 4
  %bufreq = alloca %struct.hfi_buffer_requirements, align 4
  %out_fmt = alloca i32, align 4
  %out2_fmt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en) #10
  %2 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %en, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bufreq) #10
  %3 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 1
  %out_width = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 19
  %4 = call ptr @memset(ptr %bufreq, i32 255, i32 32)
  %5 = ptrtoint ptr %out_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out_width, align 4
  %out_height = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 20
  %7 = ptrtoint ptr %out_height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_height, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_fmt) #10
  %9 = ptrtoint ptr %out_fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %out_fmt, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out2_fmt) #10
  %10 = ptrtoint ptr %out2_fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %out2_fmt, align 4, !annotation !93
  %call = tail call i32 @venus_helper_set_work_mode(ptr noundef %inst) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 18886657, ptr noundef nonnull %en) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %6)
  %cmp8 = icmp ugt i32 %6, 1920
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %8)
  %cmp9 = icmp ugt i32 %8, 1088
  %or.cond = select i1 %cmp8, i1 %cmp9, i1 false
  %15 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %res, align 4
  %hfi_version13 = getelementptr inbounds %struct.venus_resources, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %hfi_version13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hfi_version13, align 4
  %19 = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch218 = icmp eq i32 %19, 2
  %spec.select219 = select i1 %switch218, i1 true, i1 %or.cond
  %fmt_cap = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 34
  %20 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fmt_cap, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %call21 = call i32 @venus_helper_get_out_fmts(ptr noundef %inst, i32 noundef %23, ptr noundef nonnull %out_fmt, ptr noundef nonnull %out2_fmt, i1 noundef zeroext %spec.select219) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end7
  %24 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out_fmt, align 4
  %call25 = call i32 @venus_helper_get_framesz_raw(i32 noundef %25, i32 noundef %6, i32 noundef %8) #10
  %output_buf_size = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 38
  %26 = ptrtoint ptr %output_buf_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call25, ptr %output_buf_size, align 4
  %27 = ptrtoint ptr %out2_fmt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out2_fmt, align 4
  %call26 = call i32 @venus_helper_get_framesz_raw(i32 noundef %28, i32 noundef %6, i32 noundef %8) #10
  %output2_buf_size = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 39
  %29 = ptrtoint ptr %output2_buf_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call26, ptr %output2_buf_size, align 8
  %30 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %out_fmt, align 4
  %and = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %opb_buftype = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 42
  %32 = ptrtoint ptr %opb_buftype to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %opb_buftype, align 4
  %33 = ptrtoint ptr %out2_fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out2_fmt, align 4
  %opb_fmt = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 43
  %35 = ptrtoint ptr %opb_fmt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %opb_fmt, align 8
  %dpb_buftype = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 40
  %36 = ptrtoint ptr %dpb_buftype to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %dpb_buftype, align 4
  br label %if.end42

if.else:                                          ; preds = %if.end24
  %37 = ptrtoint ptr %out2_fmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out2_fmt, align 4
  %and29 = and i32 %38, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %opb_buftype37 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 42
  %39 = ptrtoint ptr %opb_buftype37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %opb_buftype37, align 4
  %opb_fmt38 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 43
  %40 = ptrtoint ptr %opb_fmt38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %31, ptr %opb_fmt38, align 8
  %dpb_buftype39 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 40
  br i1 %tobool30.not, label %if.else36, label %if.then31

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %dpb_buftype39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %dpb_buftype39, align 4
  br label %if.end42

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %dpb_buftype39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %dpb_buftype39, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else36, %if.then31, %if.then28
  %.sink = phi i32 [ %38, %if.then31 ], [ 0, %if.else36 ], [ %31, %if.then28 ]
  %dpb_fmt35 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 41
  %43 = ptrtoint ptr %dpb_fmt35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink, ptr %dpb_fmt35, align 8
  %opb_fmt43 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 43
  %44 = ptrtoint ptr %opb_fmt43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %opb_fmt43, align 8
  %opb_buftype44 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 42
  %46 = ptrtoint ptr %opb_buftype44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %opb_buftype44, align 4
  %call45 = call i32 @venus_helper_set_raw_format(ptr noundef %inst, i32 noundef %45, i32 noundef %47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  %call49 = call i32 @venus_helper_set_format_constraints(ptr noundef %inst) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %dpb_fmt53 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 41
  %48 = ptrtoint ptr %dpb_fmt53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dpb_fmt53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool54.not = icmp eq i32 %49, 0
  br i1 %tobool54.not, label %if.end52.if.end70_crit_edge, label %if.then55

if.end52.if.end70_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then55:                                        ; preds = %if.end52
  %call56 = call i32 @venus_helper_set_multistream(ptr noundef %inst, i1 noundef zeroext false, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59:                                         ; preds = %if.then55
  %50 = ptrtoint ptr %dpb_fmt53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dpb_fmt53, align 8
  %dpb_buftype61 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 40
  %52 = ptrtoint ptr %dpb_buftype61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dpb_buftype61, align 4
  %call62 = call i32 @venus_helper_set_raw_format(ptr noundef %inst, i32 noundef %51, i32 noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %if.end59
  %call66 = call i32 @venus_helper_set_output_resolution(ptr noundef %inst, i32 noundef %6, i32 noundef %8, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.end70:                                         ; preds = %if.end65.if.end70_crit_edge, %if.end52.if.end70_crit_edge
  %54 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %res, align 4
  %hfi_version72 = getelementptr inbounds %struct.venus_resources, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %hfi_version72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hfi_version72, align 4
  %.off = add i32 %57, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then82, label %if.end70.if.end122_crit_edge

if.end70.if.end122_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then82:                                        ; preds = %if.end70
  %call83 = call i32 @venus_helper_get_bufreq(ptr noundef %inst, i32 noundef 2, ptr noundef nonnull %bufreq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.then82.cleanup_crit_edge

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end86:                                         ; preds = %if.then82
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %3, align 4
  %60 = ptrtoint ptr %output_buf_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %output_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp88 = icmp ugt i32 %59, %61
  br i1 %cmp88, label %if.end86.cleanup_crit_edge, label %if.end90

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  %62 = ptrtoint ptr %dpb_fmt53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dpb_fmt53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool92.not = icmp eq i32 %63, 0
  br i1 %tobool92.not, label %if.end103thread-pre-split, label %if.then93

if.then93:                                        ; preds = %if.end90
  %call94 = call i32 @venus_helper_get_bufreq(ptr noundef %inst, i32 noundef 3, ptr noundef nonnull %bufreq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.then93.cleanup_crit_edge

if.then93.cleanup_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end97:                                         ; preds = %if.then93
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %3, align 4
  %66 = ptrtoint ptr %output2_buf_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %output2_buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp100 = icmp ugt i32 %65, %67
  br i1 %cmp100, label %if.end97.cleanup_crit_edge, label %if.end97.if.end103_crit_edge

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end103thread-pre-split:                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %output2_buf_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %output2_buf_size, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.end103thread-pre-split, %if.end97.if.end103_crit_edge
  %69 = phi i32 [ %.pr, %if.end103thread-pre-split ], [ %67, %if.end97.if.end103_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool105.not = icmp eq i32 %69, 0
  br i1 %tobool105.not, label %if.end103.if.end112_crit_edge, label %if.then106

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then106:                                       ; preds = %if.end103
  %call108 = call i32 @venus_helper_set_bufsize(ptr noundef %inst, i32 noundef %69, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then106.if.end112_crit_edge, label %if.then106.cleanup_crit_edge

if.then106.cleanup_crit_edge:                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then106.if.end112_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.end112:                                        ; preds = %if.then106.if.end112_crit_edge, %if.end103.if.end112_crit_edge
  %70 = ptrtoint ptr %output_buf_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %output_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool114.not = icmp eq i32 %71, 0
  br i1 %tobool114.not, label %if.end112.if.end122_crit_edge, label %if.then115

if.end112.if.end122_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then115:                                       ; preds = %if.end112
  %call117 = call i32 @venus_helper_set_bufsize(ptr noundef %inst, i32 noundef %71, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then115.if.end122_crit_edge, label %if.then115.cleanup_crit_edge

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then115.if.end122_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.end122:                                        ; preds = %if.then115.if.end122_crit_edge, %if.end112.if.end122_crit_edge, %if.end70.if.end122_crit_edge
  %call123 = call i32 @venus_helper_set_dyn_bufmode(ptr noundef %inst) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.then115.cleanup_crit_edge, %if.then106.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.then93.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.then82.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ %call21, %if.end7.cleanup_crit_edge ], [ %call45, %if.end42.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %call56, %if.then55.cleanup_crit_edge ], [ %call62, %if.end59.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ], [ %call83, %if.then82.cleanup_crit_edge ], [ -22, %if.end86.cleanup_crit_edge ], [ %call94, %if.then93.cleanup_crit_edge ], [ -22, %if.end97.cleanup_crit_edge ], [ %call108, %if.then106.cleanup_crit_edge ], [ %call117, %if.then115.cleanup_crit_edge ], [ %call123, %if.end122 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out2_fmt) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_fmt) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bufreq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_num_bufs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_intbufs_realloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_alloc_dpb_bufs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_continue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_work_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_out_fmts(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_framesz_raw(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_raw_format(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_format_constraints(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_multistream(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_output_resolution(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_bufsize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_set_dyn_bufmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_process_initial_out_bufs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vdec_verify_conf(ptr noundef %inst) unnamed_addr #2 align 64 {
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
  %.val43 = load i32, ptr %7, align 4
  %20 = select i1 %cmp8, i32 %.val, i32 %.val43
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
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %num_input_bufs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_input_bufs, align 8
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.val44 = load i32, ptr %6, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.val45 = load i32, ptr %7, align 4
  %25 = select i1 %cmp8, i32 %.val44, i32 %.val45
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %25)
  %cmp24 = icmp ult i32 %22, %25
  %. = select i1 %cmp24, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %., %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bufreq) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_vb2_start_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_helper_vb2_buf_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.19, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.20, i32 noundef 32) #10
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.21, i32 noundef 32) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_enum_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %reserved = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 6
  %2 = call ptr @memset(ptr %reserved, i32 0, i32 12)
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f, align 4
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %4)
  %cmp.i = icmp ugt i32 %4, 11
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp6.not.i = icmp eq i32 %6, 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %k.044.i = phi i32 [ 0, %for.cond.preheader.i ], [ %k.2.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %i.042.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc14.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.venus_format, ptr @vdec_formats, i32 %i.042.i
  %type2.i = getelementptr %struct.venus_format, ptr @vdec_formats, i32 %i.042.i, i32 2
  %7 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp3.not.i = icmp eq i32 %8, %6
  br i1 %cmp3.not.i, label %if.end5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  br i1 %cmp6.not.i, label %lor.rhs.i, label %if.end5.i.lor.end.i_crit_edge

if.end5.i.lor.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %add.ptr.i, i32 noundef %10) #10
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end5.i.lor.end.i_crit_edge
  %11 = phi i1 [ true, %if.end5.i.lor.end.i_crit_edge ], [ %call.i, %lor.rhs.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.044.i, i32 %4)
  %cmp8.i = icmp ne i32 %k.044.i, %4
  %.not.i = xor i1 %11, true
  %brmerge.i = select i1 %cmp8.i, i1 true, i1 %.not.i
  br i1 %brmerge.i, label %if.end10.i, label %for.end.i

if.end10.i:                                       ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = zext i1 %11 to i32
  %spec.select.i = add i32 %k.044.i, %inc.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %for.body.i.for.inc.i_crit_edge
  %k.2.ph.i = phi i32 [ %k.044.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end10.i ]
  %inc14.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, 11
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.i:                                        ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.042.i)
  %cmp15.i = icmp eq i32 %i.042.i, 11
  %tobool.not = icmp eq ptr %arrayidx.i, null
  %or.cond = or i1 %cmp15.i, %tobool.not
  br i1 %or.cond, label %for.end.i.cleanup_crit_edge, label %if.end

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat, align 4
  %flags = getelementptr %struct.venus_format, ptr @vdec_formats, i32 %i.042.i, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %flags2 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 2
  %17 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flags2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_g_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %entry.if.end12_crit_edge [
    i32 9, label %if.then8
    i32 10, label %if.end12.thread
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_out = getelementptr i8, ptr %1, i32 1992
  %5 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fmt_out, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %pixelformat64 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat64 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %pixelformat64, align 1
  br label %if.then24

if.then8:                                         ; preds = %entry
  %fmt_cap = getelementptr i8, ptr %1, i32 1996
  %10 = ptrtoint ptr %fmt_cap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fmt_cap, align 4
  %call9 = tail call fastcc i32 @vdec_check_src_change(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end12thread-pre-split, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12thread-pre-split:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %f, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %entry.if.end12_crit_edge
  %13 = phi i32 [ %.pr, %if.end12thread-pre-split ], [ %3, %entry.if.end12_crit_edge ]
  %fmt.062 = phi ptr [ %11, %if.end12thread-pre-split ], [ null, %entry.if.end12_crit_edge ]
  %14 = ptrtoint ptr %fmt.062 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt.062, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %pixelformat, align 1
  %17 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %13, label %if.end12.if.end28_crit_edge [
    i32 9, label %if.then15
    i32 10, label %if.end12.if.then24_crit_edge
  ]

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %width = getelementptr i8, ptr %1, i32 200
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 8
  %20 = ptrtoint ptr %fmt1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %fmt1, align 1
  %height = getelementptr i8, ptr %1, i32 204
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %height17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %height17 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %height17, align 1
  %colorspace = getelementptr i8, ptr %1, i32 236
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %colorspace, align 4
  %colorspace18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %colorspace18 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %colorspace18, align 1
  %ycbcr_enc = getelementptr i8, ptr %1, i32 240
  %27 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ycbcr_enc, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %28, ptr %29, align 1
  %quantization = getelementptr i8, ptr %1, i32 241
  %31 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %quantization, align 1
  %quantization19 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %33 = ptrtoint ptr %quantization19 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %quantization19, align 1
  %xfer_func = getelementptr i8, ptr %1, i32 242
  %34 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %xfer_func, align 2
  %xfer_func20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %36 = ptrtoint ptr %xfer_func20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %xfer_func20, align 1
  br label %if.end28

if.then24:                                        ; preds = %if.end12.if.then24_crit_edge, %if.end12.thread
  %out_width = getelementptr i8, ptr %1, i32 228
  %37 = ptrtoint ptr %out_width to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out_width, align 4
  %39 = ptrtoint ptr %fmt1 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %fmt1, align 1
  %out_height = getelementptr i8, ptr %1, i32 232
  %40 = ptrtoint ptr %out_height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %out_height, align 8
  %height26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %height26 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %height26, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then15, %if.end12.if.end28_crit_edge
  %call29 = tail call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %call9, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_s_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
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
  %orig_pixmp.sroa.7.0..sroa_idx = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %orig_pixmp.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %orig_pixmp.sroa.7.0.copyload = load i32, ptr %orig_pixmp.sroa.7.0..sroa_idx, align 1
  %call6 = tail call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef %f)
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %11, label %if.end5.if.end15_crit_edge [
    i32 10, label %if.then8
    i32 9, label %if.then11
  ]

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then8:                                         ; preds = %if.end5
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
  br label %if.end15

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %pixelformat12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat12 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %pixelformat12, align 1
  %fmt_out = getelementptr i8, ptr %1, i32 1992
  %21 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt_out, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then8, %if.end5.if.end15_crit_edge
  %pixfmt_out.0 = phi i32 [ %14, %if.then8 ], [ %24, %if.then11 ], [ 0, %if.end5.if.end15_crit_edge ]
  %pixfmt_cap.0 = phi i32 [ %18, %if.then8 ], [ %20, %if.then11 ], [ 0, %if.end5.if.end15_crit_edge ]
  %25 = getelementptr inbounds i8, ptr %format, i32 16
  %26 = call ptr @memset(ptr %25, i32 0, i32 188)
  %27 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %format, align 4
  %fmt17 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %pixelformat18 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %pixelformat18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %pixfmt_out.0, ptr %pixelformat18, align 4
  %29 = ptrtoint ptr %fmt17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %orig_pixmp.sroa.0.0.copyload, ptr %fmt17, align 4
  %height22 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %height22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %orig_pixmp.sroa.7.0.copyload, ptr %height22, align 4
  %call23 = call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef nonnull %format)
  %31 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %32)
  %cmp25 = icmp eq i32 %32, 10
  br i1 %cmp25, label %if.then26, label %if.end15.if.end34_crit_edge

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then26:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %fmt17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt17, align 4
  %out_width = getelementptr i8, ptr %1, i32 228
  %35 = ptrtoint ptr %out_width to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %out_width, align 4
  %36 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height22, align 4
  %out_height = getelementptr i8, ptr %1, i32 232
  %38 = ptrtoint ptr %out_height to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %out_height, align 8
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %39 = ptrtoint ptr %colorspace to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %colorspace, align 1
  %colorspace31 = getelementptr i8, ptr %1, i32 236
  %41 = ptrtoint ptr %colorspace31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %colorspace31, align 4
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
  %quantization32 = getelementptr i8, ptr %1, i32 241
  %48 = ptrtoint ptr %quantization32 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %quantization32, align 1
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %49 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %xfer_func, align 1
  %xfer_func33 = getelementptr i8, ptr %1, i32 242
  %51 = ptrtoint ptr %xfer_func33 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %xfer_func33, align 2
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %52 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %plane_fmt, align 1
  %input_buf_size = getelementptr i8, ptr %1, i32 2008
  %54 = ptrtoint ptr %input_buf_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %input_buf_size, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %if.end15.if.end34_crit_edge
  %55 = getelementptr inbounds i8, ptr %format, i32 16
  %56 = call ptr @memset(ptr %55, i32 0, i32 188)
  %57 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 9, ptr %format, align 4
  %58 = ptrtoint ptr %pixelformat18 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %pixfmt_cap.0, ptr %pixelformat18, align 4
  %59 = ptrtoint ptr %fmt17 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %orig_pixmp.sroa.0.0.copyload, ptr %fmt17, align 4
  %60 = ptrtoint ptr %height22 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %orig_pixmp.sroa.7.0.copyload, ptr %height22, align 4
  %call44 = call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef nonnull %format)
  %61 = ptrtoint ptr %fmt17 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fmt17, align 4
  %width47 = getelementptr i8, ptr %1, i32 200
  %63 = ptrtoint ptr %width47 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %width47, align 8
  %64 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height22, align 4
  %height50 = getelementptr i8, ptr %1, i32 204
  %66 = ptrtoint ptr %height50 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %height50, align 4
  %crop = getelementptr i8, ptr %1, i32 208
  %top = getelementptr i8, ptr %1, i32 212
  %67 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %top, align 4
  %68 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %crop, align 8
  %width54 = getelementptr i8, ptr %1, i32 216
  %69 = ptrtoint ptr %width54 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %62, ptr %width54, align 8
  %height57 = getelementptr i8, ptr %1, i32 220
  %70 = ptrtoint ptr %height57 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %65, ptr %height57, align 4
  %71 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %f, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %72, label %if.end34.cleanup_crit_edge [
    i32 10, label %if.then60
    i32 9, label %if.then65
  ]

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then60:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_out61 = getelementptr i8, ptr %1, i32 1992
  %74 = ptrtoint ptr %fmt_out61 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call6, ptr %fmt_out61, align 8
  br label %cleanup

if.then65:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %fmt_cap66 = getelementptr i8, ptr %1, i32 1996
  %75 = ptrtoint ptr %fmt_cap66 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call6, ptr %fmt_cap66, align 4
  %call69 = tail call i32 @venus_helper_get_framesz(i32 noundef %pixfmt_cap.0, i32 noundef %orig_pixmp.sroa.0.0.copyload, i32 noundef %orig_pixmp.sroa.7.0.copyload) #10
  %output2_buf_size = getelementptr i8, ptr %1, i32 2016
  %76 = ptrtoint ptr %output2_buf_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call69, ptr %output2_buf_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.then60, %if.end34.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %if.then60 ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %format) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_try_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %call1 = tail call fastcc ptr @vdec_try_fmt_common(ptr noundef %add.ptr.i, ptr noundef %f)
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

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdec_g_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #8 align 64 {
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
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %top, align 4
  %5 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %r, align 4
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge43
    i32 0, label %if.end.sw.bb_crit_edge44
    i32 258, label %if.end.sw.bb10_crit_edge
    i32 259, label %if.end.sw.bb10_crit_edge45
    i32 257, label %if.end.sw.bb21_crit_edge
    i32 256, label %if.end.sw.bb21_crit_edge46
  ]

if.end.sw.bb21_crit_edge46:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

if.end.sw.bb21_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

if.end.sw.bb10_crit_edge45:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

if.end.sw.bb_crit_edge44:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge43:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge43, %if.end.sw.bb_crit_edge44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp5.not = icmp eq i32 %3, 2
  br i1 %cmp5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %out_width = getelementptr i8, ptr %1, i32 228
  %9 = ptrtoint ptr %out_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out_width, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width, align 4
  %out_height = getelementptr i8, ptr %1, i32 232
  %12 = ptrtoint ptr %out_height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_height, align 8
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp12.not = icmp eq i32 %3, 1
  br i1 %cmp12.not, label %if.end14, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %width15 = getelementptr i8, ptr %1, i32 200
  %15 = ptrtoint ptr %width15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width15, align 8
  %width17 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %width17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %width17, align 4
  %height18 = getelementptr i8, ptr %1, i32 204
  %18 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height18, align 4
  %height20 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height20, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end.sw.bb21_crit_edge, %if.end.sw.bb21_crit_edge46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp23.not = icmp eq i32 %3, 1
  br i1 %cmp23.not, label %if.end25, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %crop = getelementptr i8, ptr %1, i32 208
  %21 = call ptr @memcpy(ptr %r, ptr %crop, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %sw.bb21.cleanup_crit_edge, %if.end14, %sw.bb10.cleanup_crit_edge, %if.end7, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %sw.bb21.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end25 ], [ 0, %if.end14 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %cmd) #2 align 64 {
entry:
  %fdata = alloca %struct.hfi_frame_data, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fdata) #10
  %2 = call ptr @memset(ptr %fdata, i32 0, i32 56)
  %call1 = tail call i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %1, i32 -640
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then3, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then3:                                         ; preds = %if.end
  %streamon_out = getelementptr i8, ptr %1, i32 196
  %5 = ptrtoint ptr %streamon_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %streamon_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then3.unlock_crit_edge, label %land.lhs.true

if.then3.unlock_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

land.lhs.true:                                    ; preds = %if.then3
  %streamon_cap = getelementptr i8, ptr %1, i32 192
  %7 = ptrtoint ptr %streamon_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %streamon_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %land.lhs.true.unlock_crit_edge, label %if.end7

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end7:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %fdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %fdata, align 8
  %flags = getelementptr inbounds %struct.hfi_frame_data, ptr %fdata, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %or = or i32 %11, 1
  store i32 %or, ptr %flags, align 8
  %core = getelementptr i8, ptr %1, i32 -548
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %res = getelementptr inbounds %struct.venus_core, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp8 = icmp eq i32 %17, 3
  %spec.select = select i1 %cmp8, i32 0, i32 -559042560
  %18 = getelementptr inbounds %struct.hfi_frame_data, ptr %fdata, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %18, align 4
  %call12 = call i32 @hfi_session_process_buf(ptr noundef %add.ptr.i, ptr noundef nonnull %fdata) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.end7.unlock_crit_edge

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

land.lhs.true14:                                  ; preds = %if.end7
  %codec_state = getelementptr i8, ptr %1, i32 244
  %20 = ptrtoint ptr %codec_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %codec_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp15 = icmp eq i32 %21, 6
  br i1 %cmp15, label %if.then16, label %land.lhs.true14.unlock_crit_edge

land.lhs.true14.unlock_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %codec_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %codec_state, align 4
  %drain_active = getelementptr i8, ptr %1, i32 2501
  %23 = ptrtoint ptr %drain_active to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %drain_active, align 1
  br label %unlock

unlock:                                           ; preds = %if.then16, %land.lhs.true14.unlock_crit_edge, %if.end7.unlock_crit_edge, %land.lhs.true.unlock_crit_edge, %if.then3.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end7.unlock_crit_edge ], [ 0, %if.then16 ], [ 0, %land.lhs.true14.unlock_crit_edge ], [ 0, %land.lhs.true.unlock_crit_edge ], [ 0, %if.then3.unlock_crit_edge ], [ 0, %if.end.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fdata) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_s_parm(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #2 align 64 {
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
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %readbuffers, align 4
  %extendedmode = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %extendedmode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %extendedmode, align 4
  %17 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4096, ptr %parm, align 4
  %18 = ptrtoint ptr %timeperframe1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeperframe1, align 4
  %conv = zext i32 %19 to i64
  %mul = mul nuw nsw i64 %conv, 1000000
  %20 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp189 = icmp ult i64 %mul, 4294967296
  br i1 %cmp189, label %if.then193, label %if.else199, !prof !90

if.then193:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %conv194 = trunc i64 %mul to i32
  %div197 = udiv i32 %conv194, %21
  %conv198 = zext i32 %div197 to i64
  br label %if.end203

if.else199:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %mul) #15, !srcloc !94
  %asmresult1.i = extractvalue { i64, i64 } %22, 1
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
  %fps430 = getelementptr i8, ptr %1, i32 1976
  %23 = ptrtoint ptr %fps430 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv423, ptr %fps430, align 8
  %timeperframe431 = getelementptr i8, ptr %1, i32 1984
  %24 = ptrtoint ptr %timeperframe1 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %timeperframe1, align 4
  %26 = ptrtoint ptr %timeperframe431 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %timeperframe431, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end428, %if.end203.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end428 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end203.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_enum_framesizes(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -648
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 842094158, label %entry.lor.lhs.false.i_crit_edge
    i32 877088845, label %lor.lhs.false.fold.split.i
    i32 843534413, label %lor.lhs.false.fold.split33.i
    i32 859189832, label %lor.lhs.false.fold.split34.i
    i32 1194410838, label %lor.lhs.false.fold.split35.i
    i32 1278296918, label %lor.lhs.false.fold.split36.i
    i32 875967048, label %lor.lhs.false.fold.split37.i
    i32 808996950, label %lor.lhs.false.fold.split38.i
    i32 809062486, label %lor.lhs.false.fold.split39.i
    i32 1145656920, label %lor.lhs.false.fold.split40.i
    i32 1129727304, label %lor.lhs.false.fold.split41.i
  ]

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

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

lor.lhs.false.fold.split37.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split38.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split39.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split40.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.fold.split41.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false.fold.split41.i, %lor.lhs.false.fold.split40.i, %lor.lhs.false.fold.split39.i, %lor.lhs.false.fold.split38.i, %lor.lhs.false.fold.split37.i, %lor.lhs.false.fold.split36.i, %lor.lhs.false.fold.split35.i, %lor.lhs.false.fold.split34.i, %lor.lhs.false.fold.split33.i, %lor.lhs.false.fold.split.i, %entry.lor.lhs.false.i_crit_edge
  %i.031.lcssa.i = phi i32 [ 0, %entry.lor.lhs.false.i_crit_edge ], [ 1, %lor.lhs.false.fold.split.i ], [ 2, %lor.lhs.false.fold.split33.i ], [ 3, %lor.lhs.false.fold.split34.i ], [ 4, %lor.lhs.false.fold.split35.i ], [ 5, %lor.lhs.false.fold.split36.i ], [ 6, %lor.lhs.false.fold.split37.i ], [ 7, %lor.lhs.false.fold.split38.i ], [ 8, %lor.lhs.false.fold.split39.i ], [ 9, %lor.lhs.false.fold.split40.i ], [ 10, %lor.lhs.false.fold.split41.i ]
  %arrayidx4.i = getelementptr %struct.venus_format, ptr @vdec_formats, i32 %i.031.lcssa.i
  %type5.i = getelementptr %struct.venus_format, ptr @vdec_formats, i32 %i.031.lcssa.i, i32 2
  %5 = ptrtoint ptr %type5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp6.not.i = icmp ne i32 %6, 9
  %tobool.not = icmp eq ptr %arrayidx4.i, null
  %or.cond = or i1 %cmp6.not.i, %tobool.not
  br i1 %or.cond, label %if.then, label %lor.lhs.false.i.if.end6_crit_edge

lor.lhs.false.i.if.end6_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %lor.lhs.false.i
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %if.then.cleanup_crit_edge [
    i32 842094158, label %if.then.lor.lhs.false.i48_crit_edge
    i32 877088845, label %lor.lhs.false.fold.split.i34
    i32 843534413, label %lor.lhs.false.fold.split33.i35
    i32 859189832, label %lor.lhs.false.fold.split34.i36
    i32 1194410838, label %lor.lhs.false.fold.split35.i37
    i32 1278296918, label %lor.lhs.false.fold.split36.i38
    i32 875967048, label %lor.lhs.false.fold.split37.i39
    i32 808996950, label %lor.lhs.false.fold.split38.i40
    i32 809062486, label %lor.lhs.false.fold.split39.i41
    i32 1145656920, label %lor.lhs.false.fold.split40.i42
    i32 1129727304, label %lor.lhs.false.fold.split41.i43
  ]

if.then.lor.lhs.false.i48_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.fold.split.i34:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.fold.split33.i35:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.fold.split34.i36:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.fold.split35.i37:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.fold.split36.i38:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.fold.split37.i39:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.fold.split38.i40:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.fold.split39.i41:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.fold.split40.i42:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.fold.split41.i43:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i48

lor.lhs.false.i48:                                ; preds = %lor.lhs.false.fold.split41.i43, %lor.lhs.false.fold.split40.i42, %lor.lhs.false.fold.split39.i41, %lor.lhs.false.fold.split38.i40, %lor.lhs.false.fold.split37.i39, %lor.lhs.false.fold.split36.i38, %lor.lhs.false.fold.split35.i37, %lor.lhs.false.fold.split34.i36, %lor.lhs.false.fold.split33.i35, %lor.lhs.false.fold.split.i34, %if.then.lor.lhs.false.i48_crit_edge
  %i.031.lcssa.i44 = phi i32 [ 0, %if.then.lor.lhs.false.i48_crit_edge ], [ 1, %lor.lhs.false.fold.split.i34 ], [ 2, %lor.lhs.false.fold.split33.i35 ], [ 3, %lor.lhs.false.fold.split34.i36 ], [ 4, %lor.lhs.false.fold.split35.i37 ], [ 5, %lor.lhs.false.fold.split36.i38 ], [ 6, %lor.lhs.false.fold.split37.i39 ], [ 7, %lor.lhs.false.fold.split38.i40 ], [ 8, %lor.lhs.false.fold.split39.i41 ], [ 9, %lor.lhs.false.fold.split40.i42 ], [ 10, %lor.lhs.false.fold.split41.i43 ]
  %type5.i46 = getelementptr %struct.venus_format, ptr @vdec_formats, i32 %i.031.lcssa.i44, i32 2
  %8 = ptrtoint ptr %type5.i46 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type5.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp6.not.i47 = icmp eq i32 %9, 10
  br i1 %cmp6.not.i47, label %if.end8.i49, label %lor.lhs.false.i48.cleanup_crit_edge

lor.lhs.false.i48.cleanup_crit_edge:              ; preds = %lor.lhs.false.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i49:                                      ; preds = %lor.lhs.false.i48
  %arrayidx4.i45 = getelementptr %struct.venus_format, ptr @vdec_formats, i32 %i.031.lcssa.i44
  %10 = ptrtoint ptr %arrayidx4.i45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i45, align 4
  %call.i = tail call zeroext i1 @venus_helper_check_codec(ptr noundef %add.ptr.i, i32 noundef %11) #10
  %tobool4.not = icmp ne ptr %arrayidx4.i45, null
  %12 = and i1 %tobool4.not, %call.i
  br i1 %12, label %if.end8.i49.if.end6_crit_edge, label %if.end8.i49.cleanup_crit_edge

if.end8.i49.cleanup_crit_edge:                    ; preds = %if.end8.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i49.if.end6_crit_edge:                    ; preds = %if.end8.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %if.end8.i49.if.end6_crit_edge, %lor.lhs.false.i.if.end6_crit_edge
  %13 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %type, align 4
  %core1.i.i.i = getelementptr i8, ptr %1, i32 -548
  %16 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core1.i.i.i, align 4
  %hfi_codec.i.i.i = getelementptr i8, ptr %1, i32 2040
  %18 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hfi_codec.i.i.i, align 8
  %session_type.i.i.i = getelementptr i8, ptr %1, i32 2132
  %20 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i = getelementptr inbounds %struct.venus_core, ptr %17, i32 0, i32 46
  %22 = ptrtoint ptr %codecs_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %codecs_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp16.not.i.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp16.not.i.i.i.i, label %if.end9.frame_width_min.exit_crit_edge, label %if.end9.for.body.i.i.i.i_crit_edge

if.end9.for.body.i.i.i.i_crit_edge:               ; preds = %if.end9
  br label %for.body.i.i.i.i

if.end9.frame_width_min.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end9.for.body.i.i.i.i_crit_edge
  %c.017.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end9.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.venus_core, ptr %17, i32 0, i32 45, i32 %c.017.i.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %19)
  %cmp2.i.i.i.i = icmp eq i32 %25, %19
  br i1 %cmp2.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %domain5.i.i.i.i = getelementptr %struct.venus_core, ptr %17, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 1
  %26 = ptrtoint ptr %domain5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %domain5.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp6.i.i.i.i = icmp eq i32 %27, %21
  br i1 %cmp6.i.i.i.i, label %venus_caps_by_codec.exit.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %c.017.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %23
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
  %num_caps.i.i.i = getelementptr %struct.venus_core, ptr %17, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 3
  %28 = ptrtoint ptr %num_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_caps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp35.not.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp35.not.i.i.i, label %for.cond.preheader.i.i.i.frame_width_min.exit_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.frame_width_min.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_min.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.036.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.venus_core, ptr %17, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.036.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp3.i.i.i = icmp eq i32 %31, 1
  br i1 %cmp3.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.036.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %29
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
  %min.i.i.i = getelementptr %struct.venus_core, ptr %17, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.036.i.i.i, i32 1
  %32 = ptrtoint ptr %min.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min.i.i.i, align 4
  br label %frame_width_min.exit

frame_width_min.exit:                             ; preds = %if.end10.i.i.i, %for.end.i.i.i.frame_width_min.exit_crit_edge, %for.inc.i.i.i.frame_width_min.exit_crit_edge, %for.cond.preheader.i.i.i.frame_width_min.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i.frame_width_min.exit_crit_edge, %for.inc.i.i.i.i.frame_width_min.exit_crit_edge, %if.end9.frame_width_min.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i.frame_width_min.exit_crit_edge ], [ 0, %for.end.i.i.i.frame_width_min.exit_crit_edge ], [ 0, %if.end9.frame_width_min.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i.frame_width_min.exit_crit_edge ], [ %33, %if.end10.i.i.i ], [ 0, %for.inc.i.i.i.frame_width_min.exit_crit_edge ], [ 0, %for.inc.i.i.i.i.frame_width_min.exit_crit_edge ]
  %34 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i.i, ptr %34, align 4
  %36 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core1.i.i.i, align 4
  %38 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hfi_codec.i.i.i, align 8
  %40 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i55 = getelementptr inbounds %struct.venus_core, ptr %37, i32 0, i32 46
  %42 = ptrtoint ptr %codecs_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %codecs_count.i.i.i.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp16.not.i.i.i.i56 = icmp eq i32 %43, 0
  br i1 %cmp16.not.i.i.i.i56, label %frame_width_min.exit.frame_width_max.exit_crit_edge, label %frame_width_min.exit.for.body.i.i.i.i60_crit_edge

frame_width_min.exit.for.body.i.i.i.i60_crit_edge: ; preds = %frame_width_min.exit
  br label %for.body.i.i.i.i60

frame_width_min.exit.frame_width_max.exit_crit_edge: ; preds = %frame_width_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.body.i.i.i.i60:                               ; preds = %for.inc.i.i.i.i66.for.body.i.i.i.i60_crit_edge, %frame_width_min.exit.for.body.i.i.i.i60_crit_edge
  %c.017.i.i.i.i57 = phi i32 [ %inc.i.i.i.i64, %for.inc.i.i.i.i66.for.body.i.i.i.i60_crit_edge ], [ 0, %frame_width_min.exit.for.body.i.i.i.i60_crit_edge ]
  %arrayidx.i.i.i.i58 = getelementptr %struct.venus_core, ptr %37, i32 0, i32 45, i32 %c.017.i.i.i.i57
  %44 = ptrtoint ptr %arrayidx.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i.i58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %39)
  %cmp2.i.i.i.i59 = icmp eq i32 %45, %39
  br i1 %cmp2.i.i.i.i59, label %land.lhs.true.i.i.i.i63, label %for.body.i.i.i.i60.for.inc.i.i.i.i66_crit_edge

for.body.i.i.i.i60.for.inc.i.i.i.i66_crit_edge:   ; preds = %for.body.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i66

land.lhs.true.i.i.i.i63:                          ; preds = %for.body.i.i.i.i60
  %domain5.i.i.i.i61 = getelementptr %struct.venus_core, ptr %37, i32 0, i32 45, i32 %c.017.i.i.i.i57, i32 1
  %46 = ptrtoint ptr %domain5.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %domain5.i.i.i.i61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %41)
  %cmp6.i.i.i.i62 = icmp eq i32 %47, %41
  br i1 %cmp6.i.i.i.i62, label %venus_caps_by_codec.exit.i.i.i68, label %land.lhs.true.i.i.i.i63.for.inc.i.i.i.i66_crit_edge

land.lhs.true.i.i.i.i63.for.inc.i.i.i.i66_crit_edge: ; preds = %land.lhs.true.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i66

for.inc.i.i.i.i66:                                ; preds = %land.lhs.true.i.i.i.i63.for.inc.i.i.i.i66_crit_edge, %for.body.i.i.i.i60.for.inc.i.i.i.i66_crit_edge
  %inc.i.i.i.i64 = add nuw i32 %c.017.i.i.i.i57, 1
  %exitcond.not.i.i.i.i65 = icmp eq i32 %inc.i.i.i.i64, %43
  br i1 %exitcond.not.i.i.i.i65, label %for.inc.i.i.i.i66.frame_width_max.exit_crit_edge, label %for.inc.i.i.i.i66.for.body.i.i.i.i60_crit_edge

for.inc.i.i.i.i66.for.body.i.i.i.i60_crit_edge:   ; preds = %for.inc.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i60

for.inc.i.i.i.i66.frame_width_max.exit_crit_edge: ; preds = %for.inc.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

venus_caps_by_codec.exit.i.i.i68:                 ; preds = %land.lhs.true.i.i.i.i63
  %tobool.not.i.i.i67 = icmp eq ptr %arrayidx.i.i.i.i58, null
  br i1 %tobool.not.i.i.i67, label %venus_caps_by_codec.exit.i.i.i68.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i71

venus_caps_by_codec.exit.i.i.i68.frame_width_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.cond.preheader.i.i.i71:                       ; preds = %venus_caps_by_codec.exit.i.i.i68
  %num_caps.i.i.i69 = getelementptr %struct.venus_core, ptr %37, i32 0, i32 45, i32 %c.017.i.i.i.i57, i32 3
  %48 = ptrtoint ptr %num_caps.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_caps.i.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp35.not.i.i.i70 = icmp eq i32 %49, 0
  br i1 %cmp35.not.i.i.i70, label %for.cond.preheader.i.i.i71.frame_width_max.exit_crit_edge, label %for.cond.preheader.i.i.i71.for.body.i.i.i75_crit_edge

for.cond.preheader.i.i.i71.for.body.i.i.i75_crit_edge: ; preds = %for.cond.preheader.i.i.i71
  br label %for.body.i.i.i75

for.cond.preheader.i.i.i71.frame_width_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.body.i.i.i75:                                 ; preds = %for.inc.i.i.i78.for.body.i.i.i75_crit_edge, %for.cond.preheader.i.i.i71.for.body.i.i.i75_crit_edge
  %i.036.i.i.i72 = phi i32 [ %inc.i.i.i76, %for.inc.i.i.i78.for.body.i.i.i75_crit_edge ], [ 0, %for.cond.preheader.i.i.i71.for.body.i.i.i75_crit_edge ]
  %arrayidx.i.i.i73 = getelementptr %struct.venus_core, ptr %37, i32 0, i32 45, i32 %c.017.i.i.i.i57, i32 4, i32 %i.036.i.i.i72
  %50 = ptrtoint ptr %arrayidx.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp3.i.i.i74 = icmp eq i32 %51, 1
  br i1 %cmp3.i.i.i74, label %for.end.i.i.i80, label %for.inc.i.i.i78

for.inc.i.i.i78:                                  ; preds = %for.body.i.i.i75
  %inc.i.i.i76 = add nuw i32 %i.036.i.i.i72, 1
  %exitcond.not.i.i.i77 = icmp eq i32 %inc.i.i.i76, %49
  br i1 %exitcond.not.i.i.i77, label %for.inc.i.i.i78.frame_width_max.exit_crit_edge, label %for.inc.i.i.i78.for.body.i.i.i75_crit_edge

for.inc.i.i.i78.for.body.i.i.i75_crit_edge:       ; preds = %for.inc.i.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i75

for.inc.i.i.i78.frame_width_max.exit_crit_edge:   ; preds = %for.inc.i.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

for.end.i.i.i80:                                  ; preds = %for.body.i.i.i75
  %tobool8.not.i.i.i79 = icmp eq ptr %arrayidx.i.i.i73, null
  br i1 %tobool8.not.i.i.i79, label %for.end.i.i.i80.frame_width_max.exit_crit_edge, label %if.end10.i.i.i81

for.end.i.i.i80.frame_width_max.exit_crit_edge:   ; preds = %for.end.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_max.exit

if.end10.i.i.i81:                                 ; preds = %for.end.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i = getelementptr %struct.venus_core, ptr %37, i32 0, i32 45, i32 %c.017.i.i.i.i57, i32 4, i32 %i.036.i.i.i72, i32 2
  %52 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max.i.i.i, align 4
  br label %frame_width_max.exit

frame_width_max.exit:                             ; preds = %if.end10.i.i.i81, %for.end.i.i.i80.frame_width_max.exit_crit_edge, %for.inc.i.i.i78.frame_width_max.exit_crit_edge, %for.cond.preheader.i.i.i71.frame_width_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i68.frame_width_max.exit_crit_edge, %for.inc.i.i.i.i66.frame_width_max.exit_crit_edge, %frame_width_min.exit.frame_width_max.exit_crit_edge
  %retval.0.i.i.i82 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i68.frame_width_max.exit_crit_edge ], [ 0, %for.end.i.i.i80.frame_width_max.exit_crit_edge ], [ 0, %frame_width_min.exit.frame_width_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i71.frame_width_max.exit_crit_edge ], [ %53, %if.end10.i.i.i81 ], [ 0, %for.inc.i.i.i78.frame_width_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i66.frame_width_max.exit_crit_edge ]
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %54 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i.i.i82, ptr %max_width, align 4
  %55 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %core1.i.i.i, align 4
  %57 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hfi_codec.i.i.i, align 8
  %59 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i86 = getelementptr inbounds %struct.venus_core, ptr %56, i32 0, i32 46
  %61 = ptrtoint ptr %codecs_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %codecs_count.i.i.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp16.not.i.i.i.i87 = icmp eq i32 %62, 0
  br i1 %cmp16.not.i.i.i.i87, label %frame_width_max.exit.frame_width_step.exit_crit_edge, label %frame_width_max.exit.for.body.i.i.i.i91_crit_edge

frame_width_max.exit.for.body.i.i.i.i91_crit_edge: ; preds = %frame_width_max.exit
  br label %for.body.i.i.i.i91

frame_width_max.exit.frame_width_step.exit_crit_edge: ; preds = %frame_width_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

for.body.i.i.i.i91:                               ; preds = %for.inc.i.i.i.i97.for.body.i.i.i.i91_crit_edge, %frame_width_max.exit.for.body.i.i.i.i91_crit_edge
  %c.017.i.i.i.i88 = phi i32 [ %inc.i.i.i.i95, %for.inc.i.i.i.i97.for.body.i.i.i.i91_crit_edge ], [ 0, %frame_width_max.exit.for.body.i.i.i.i91_crit_edge ]
  %arrayidx.i.i.i.i89 = getelementptr %struct.venus_core, ptr %56, i32 0, i32 45, i32 %c.017.i.i.i.i88
  %63 = ptrtoint ptr %arrayidx.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i.i.i89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %58)
  %cmp2.i.i.i.i90 = icmp eq i32 %64, %58
  br i1 %cmp2.i.i.i.i90, label %land.lhs.true.i.i.i.i94, label %for.body.i.i.i.i91.for.inc.i.i.i.i97_crit_edge

for.body.i.i.i.i91.for.inc.i.i.i.i97_crit_edge:   ; preds = %for.body.i.i.i.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i97

land.lhs.true.i.i.i.i94:                          ; preds = %for.body.i.i.i.i91
  %domain5.i.i.i.i92 = getelementptr %struct.venus_core, ptr %56, i32 0, i32 45, i32 %c.017.i.i.i.i88, i32 1
  %65 = ptrtoint ptr %domain5.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %domain5.i.i.i.i92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %60)
  %cmp6.i.i.i.i93 = icmp eq i32 %66, %60
  br i1 %cmp6.i.i.i.i93, label %venus_caps_by_codec.exit.i.i.i99, label %land.lhs.true.i.i.i.i94.for.inc.i.i.i.i97_crit_edge

land.lhs.true.i.i.i.i94.for.inc.i.i.i.i97_crit_edge: ; preds = %land.lhs.true.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i97

for.inc.i.i.i.i97:                                ; preds = %land.lhs.true.i.i.i.i94.for.inc.i.i.i.i97_crit_edge, %for.body.i.i.i.i91.for.inc.i.i.i.i97_crit_edge
  %inc.i.i.i.i95 = add nuw i32 %c.017.i.i.i.i88, 1
  %exitcond.not.i.i.i.i96 = icmp eq i32 %inc.i.i.i.i95, %62
  br i1 %exitcond.not.i.i.i.i96, label %for.inc.i.i.i.i97.frame_width_step.exit_crit_edge, label %for.inc.i.i.i.i97.for.body.i.i.i.i91_crit_edge

for.inc.i.i.i.i97.for.body.i.i.i.i91_crit_edge:   ; preds = %for.inc.i.i.i.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i91

for.inc.i.i.i.i97.frame_width_step.exit_crit_edge: ; preds = %for.inc.i.i.i.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

venus_caps_by_codec.exit.i.i.i99:                 ; preds = %land.lhs.true.i.i.i.i94
  %tobool.not.i.i.i98 = icmp eq ptr %arrayidx.i.i.i.i89, null
  br i1 %tobool.not.i.i.i98, label %venus_caps_by_codec.exit.i.i.i99.frame_width_step.exit_crit_edge, label %for.cond.preheader.i.i.i102

venus_caps_by_codec.exit.i.i.i99.frame_width_step.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

for.cond.preheader.i.i.i102:                      ; preds = %venus_caps_by_codec.exit.i.i.i99
  %num_caps.i.i.i100 = getelementptr %struct.venus_core, ptr %56, i32 0, i32 45, i32 %c.017.i.i.i.i88, i32 3
  %67 = ptrtoint ptr %num_caps.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_caps.i.i.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp35.not.i.i.i101 = icmp eq i32 %68, 0
  br i1 %cmp35.not.i.i.i101, label %for.cond.preheader.i.i.i102.frame_width_step.exit_crit_edge, label %for.cond.preheader.i.i.i102.for.body.i.i.i106_crit_edge

for.cond.preheader.i.i.i102.for.body.i.i.i106_crit_edge: ; preds = %for.cond.preheader.i.i.i102
  br label %for.body.i.i.i106

for.cond.preheader.i.i.i102.frame_width_step.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

for.body.i.i.i106:                                ; preds = %for.inc.i.i.i109.for.body.i.i.i106_crit_edge, %for.cond.preheader.i.i.i102.for.body.i.i.i106_crit_edge
  %i.036.i.i.i103 = phi i32 [ %inc.i.i.i107, %for.inc.i.i.i109.for.body.i.i.i106_crit_edge ], [ 0, %for.cond.preheader.i.i.i102.for.body.i.i.i106_crit_edge ]
  %arrayidx.i.i.i104 = getelementptr %struct.venus_core, ptr %56, i32 0, i32 45, i32 %c.017.i.i.i.i88, i32 4, i32 %i.036.i.i.i103
  %69 = ptrtoint ptr %arrayidx.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp3.i.i.i105 = icmp eq i32 %70, 1
  br i1 %cmp3.i.i.i105, label %for.end.i.i.i111, label %for.inc.i.i.i109

for.inc.i.i.i109:                                 ; preds = %for.body.i.i.i106
  %inc.i.i.i107 = add nuw i32 %i.036.i.i.i103, 1
  %exitcond.not.i.i.i108 = icmp eq i32 %inc.i.i.i107, %68
  br i1 %exitcond.not.i.i.i108, label %for.inc.i.i.i109.frame_width_step.exit_crit_edge, label %for.inc.i.i.i109.for.body.i.i.i106_crit_edge

for.inc.i.i.i109.for.body.i.i.i106_crit_edge:     ; preds = %for.inc.i.i.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i106

for.inc.i.i.i109.frame_width_step.exit_crit_edge: ; preds = %for.inc.i.i.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

for.end.i.i.i111:                                 ; preds = %for.body.i.i.i106
  %tobool8.not.i.i.i110 = icmp eq ptr %arrayidx.i.i.i104, null
  br i1 %tobool8.not.i.i.i110, label %for.end.i.i.i111.frame_width_step.exit_crit_edge, label %if.end10.i.i.i112

for.end.i.i.i111.frame_width_step.exit_crit_edge: ; preds = %for.end.i.i.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_width_step.exit

if.end10.i.i.i112:                                ; preds = %for.end.i.i.i111
  call void @__sanitizer_cov_trace_pc() #12
  %step_size.i.i.i = getelementptr %struct.venus_core, ptr %56, i32 0, i32 45, i32 %c.017.i.i.i.i88, i32 4, i32 %i.036.i.i.i103, i32 3
  %71 = ptrtoint ptr %step_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %step_size.i.i.i, align 4
  br label %frame_width_step.exit

frame_width_step.exit:                            ; preds = %if.end10.i.i.i112, %for.end.i.i.i111.frame_width_step.exit_crit_edge, %for.inc.i.i.i109.frame_width_step.exit_crit_edge, %for.cond.preheader.i.i.i102.frame_width_step.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i99.frame_width_step.exit_crit_edge, %for.inc.i.i.i.i97.frame_width_step.exit_crit_edge, %frame_width_max.exit.frame_width_step.exit_crit_edge
  %retval.0.i.i.i113 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i99.frame_width_step.exit_crit_edge ], [ 0, %for.end.i.i.i111.frame_width_step.exit_crit_edge ], [ 0, %frame_width_max.exit.frame_width_step.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i102.frame_width_step.exit_crit_edge ], [ %72, %if.end10.i.i.i112 ], [ 0, %for.inc.i.i.i109.frame_width_step.exit_crit_edge ], [ 0, %for.inc.i.i.i.i97.frame_width_step.exit_crit_edge ]
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %73 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %retval.0.i.i.i113, ptr %step_width, align 4
  %74 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %core1.i.i.i, align 4
  %76 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hfi_codec.i.i.i, align 8
  %78 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i117 = getelementptr inbounds %struct.venus_core, ptr %75, i32 0, i32 46
  %80 = ptrtoint ptr %codecs_count.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %codecs_count.i.i.i.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp16.not.i.i.i.i118 = icmp eq i32 %81, 0
  br i1 %cmp16.not.i.i.i.i118, label %frame_width_step.exit.frame_height_min.exit_crit_edge, label %frame_width_step.exit.for.body.i.i.i.i122_crit_edge

frame_width_step.exit.for.body.i.i.i.i122_crit_edge: ; preds = %frame_width_step.exit
  br label %for.body.i.i.i.i122

frame_width_step.exit.frame_height_min.exit_crit_edge: ; preds = %frame_width_step.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

for.body.i.i.i.i122:                              ; preds = %for.inc.i.i.i.i128.for.body.i.i.i.i122_crit_edge, %frame_width_step.exit.for.body.i.i.i.i122_crit_edge
  %c.017.i.i.i.i119 = phi i32 [ %inc.i.i.i.i126, %for.inc.i.i.i.i128.for.body.i.i.i.i122_crit_edge ], [ 0, %frame_width_step.exit.for.body.i.i.i.i122_crit_edge ]
  %arrayidx.i.i.i.i120 = getelementptr %struct.venus_core, ptr %75, i32 0, i32 45, i32 %c.017.i.i.i.i119
  %82 = ptrtoint ptr %arrayidx.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i.i.i120, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %77)
  %cmp2.i.i.i.i121 = icmp eq i32 %83, %77
  br i1 %cmp2.i.i.i.i121, label %land.lhs.true.i.i.i.i125, label %for.body.i.i.i.i122.for.inc.i.i.i.i128_crit_edge

for.body.i.i.i.i122.for.inc.i.i.i.i128_crit_edge: ; preds = %for.body.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i128

land.lhs.true.i.i.i.i125:                         ; preds = %for.body.i.i.i.i122
  %domain5.i.i.i.i123 = getelementptr %struct.venus_core, ptr %75, i32 0, i32 45, i32 %c.017.i.i.i.i119, i32 1
  %84 = ptrtoint ptr %domain5.i.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %domain5.i.i.i.i123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %79)
  %cmp6.i.i.i.i124 = icmp eq i32 %85, %79
  br i1 %cmp6.i.i.i.i124, label %venus_caps_by_codec.exit.i.i.i130, label %land.lhs.true.i.i.i.i125.for.inc.i.i.i.i128_crit_edge

land.lhs.true.i.i.i.i125.for.inc.i.i.i.i128_crit_edge: ; preds = %land.lhs.true.i.i.i.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i128

for.inc.i.i.i.i128:                               ; preds = %land.lhs.true.i.i.i.i125.for.inc.i.i.i.i128_crit_edge, %for.body.i.i.i.i122.for.inc.i.i.i.i128_crit_edge
  %inc.i.i.i.i126 = add nuw i32 %c.017.i.i.i.i119, 1
  %exitcond.not.i.i.i.i127 = icmp eq i32 %inc.i.i.i.i126, %81
  br i1 %exitcond.not.i.i.i.i127, label %for.inc.i.i.i.i128.frame_height_min.exit_crit_edge, label %for.inc.i.i.i.i128.for.body.i.i.i.i122_crit_edge

for.inc.i.i.i.i128.for.body.i.i.i.i122_crit_edge: ; preds = %for.inc.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i122

for.inc.i.i.i.i128.frame_height_min.exit_crit_edge: ; preds = %for.inc.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

venus_caps_by_codec.exit.i.i.i130:                ; preds = %land.lhs.true.i.i.i.i125
  %tobool.not.i.i.i129 = icmp eq ptr %arrayidx.i.i.i.i120, null
  br i1 %tobool.not.i.i.i129, label %venus_caps_by_codec.exit.i.i.i130.frame_height_min.exit_crit_edge, label %for.cond.preheader.i.i.i133

venus_caps_by_codec.exit.i.i.i130.frame_height_min.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

for.cond.preheader.i.i.i133:                      ; preds = %venus_caps_by_codec.exit.i.i.i130
  %num_caps.i.i.i131 = getelementptr %struct.venus_core, ptr %75, i32 0, i32 45, i32 %c.017.i.i.i.i119, i32 3
  %86 = ptrtoint ptr %num_caps.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_caps.i.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp35.not.i.i.i132 = icmp eq i32 %87, 0
  br i1 %cmp35.not.i.i.i132, label %for.cond.preheader.i.i.i133.frame_height_min.exit_crit_edge, label %for.cond.preheader.i.i.i133.for.body.i.i.i137_crit_edge

for.cond.preheader.i.i.i133.for.body.i.i.i137_crit_edge: ; preds = %for.cond.preheader.i.i.i133
  br label %for.body.i.i.i137

for.cond.preheader.i.i.i133.frame_height_min.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

for.body.i.i.i137:                                ; preds = %for.inc.i.i.i140.for.body.i.i.i137_crit_edge, %for.cond.preheader.i.i.i133.for.body.i.i.i137_crit_edge
  %i.036.i.i.i134 = phi i32 [ %inc.i.i.i138, %for.inc.i.i.i140.for.body.i.i.i137_crit_edge ], [ 0, %for.cond.preheader.i.i.i133.for.body.i.i.i137_crit_edge ]
  %arrayidx.i.i.i135 = getelementptr %struct.venus_core, ptr %75, i32 0, i32 45, i32 %c.017.i.i.i.i119, i32 4, i32 %i.036.i.i.i134
  %88 = ptrtoint ptr %arrayidx.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %cmp3.i.i.i136 = icmp eq i32 %89, 2
  br i1 %cmp3.i.i.i136, label %for.end.i.i.i142, label %for.inc.i.i.i140

for.inc.i.i.i140:                                 ; preds = %for.body.i.i.i137
  %inc.i.i.i138 = add nuw i32 %i.036.i.i.i134, 1
  %exitcond.not.i.i.i139 = icmp eq i32 %inc.i.i.i138, %87
  br i1 %exitcond.not.i.i.i139, label %for.inc.i.i.i140.frame_height_min.exit_crit_edge, label %for.inc.i.i.i140.for.body.i.i.i137_crit_edge

for.inc.i.i.i140.for.body.i.i.i137_crit_edge:     ; preds = %for.inc.i.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i137

for.inc.i.i.i140.frame_height_min.exit_crit_edge: ; preds = %for.inc.i.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

for.end.i.i.i142:                                 ; preds = %for.body.i.i.i137
  %tobool8.not.i.i.i141 = icmp eq ptr %arrayidx.i.i.i135, null
  br i1 %tobool8.not.i.i.i141, label %for.end.i.i.i142.frame_height_min.exit_crit_edge, label %if.end10.i.i.i144

for.end.i.i.i142.frame_height_min.exit_crit_edge: ; preds = %for.end.i.i.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_min.exit

if.end10.i.i.i144:                                ; preds = %for.end.i.i.i142
  call void @__sanitizer_cov_trace_pc() #12
  %min.i.i.i143 = getelementptr %struct.venus_core, ptr %75, i32 0, i32 45, i32 %c.017.i.i.i.i119, i32 4, i32 %i.036.i.i.i134, i32 1
  %90 = ptrtoint ptr %min.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %min.i.i.i143, align 4
  br label %frame_height_min.exit

frame_height_min.exit:                            ; preds = %if.end10.i.i.i144, %for.end.i.i.i142.frame_height_min.exit_crit_edge, %for.inc.i.i.i140.frame_height_min.exit_crit_edge, %for.cond.preheader.i.i.i133.frame_height_min.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i130.frame_height_min.exit_crit_edge, %for.inc.i.i.i.i128.frame_height_min.exit_crit_edge, %frame_width_step.exit.frame_height_min.exit_crit_edge
  %retval.0.i.i.i145 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i130.frame_height_min.exit_crit_edge ], [ 0, %for.end.i.i.i142.frame_height_min.exit_crit_edge ], [ 0, %frame_width_step.exit.frame_height_min.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i133.frame_height_min.exit_crit_edge ], [ %91, %if.end10.i.i.i144 ], [ 0, %for.inc.i.i.i140.frame_height_min.exit_crit_edge ], [ 0, %for.inc.i.i.i.i128.frame_height_min.exit_crit_edge ]
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %92 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %retval.0.i.i.i145, ptr %min_height, align 4
  %93 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %core1.i.i.i, align 4
  %95 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hfi_codec.i.i.i, align 8
  %97 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i149 = getelementptr inbounds %struct.venus_core, ptr %94, i32 0, i32 46
  %99 = ptrtoint ptr %codecs_count.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %codecs_count.i.i.i.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp16.not.i.i.i.i150 = icmp eq i32 %100, 0
  br i1 %cmp16.not.i.i.i.i150, label %frame_height_min.exit.frame_height_max.exit_crit_edge, label %frame_height_min.exit.for.body.i.i.i.i154_crit_edge

frame_height_min.exit.for.body.i.i.i.i154_crit_edge: ; preds = %frame_height_min.exit
  br label %for.body.i.i.i.i154

frame_height_min.exit.frame_height_max.exit_crit_edge: ; preds = %frame_height_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.body.i.i.i.i154:                              ; preds = %for.inc.i.i.i.i160.for.body.i.i.i.i154_crit_edge, %frame_height_min.exit.for.body.i.i.i.i154_crit_edge
  %c.017.i.i.i.i151 = phi i32 [ %inc.i.i.i.i158, %for.inc.i.i.i.i160.for.body.i.i.i.i154_crit_edge ], [ 0, %frame_height_min.exit.for.body.i.i.i.i154_crit_edge ]
  %arrayidx.i.i.i.i152 = getelementptr %struct.venus_core, ptr %94, i32 0, i32 45, i32 %c.017.i.i.i.i151
  %101 = ptrtoint ptr %arrayidx.i.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i.i.i.i152, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %96)
  %cmp2.i.i.i.i153 = icmp eq i32 %102, %96
  br i1 %cmp2.i.i.i.i153, label %land.lhs.true.i.i.i.i157, label %for.body.i.i.i.i154.for.inc.i.i.i.i160_crit_edge

for.body.i.i.i.i154.for.inc.i.i.i.i160_crit_edge: ; preds = %for.body.i.i.i.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i160

land.lhs.true.i.i.i.i157:                         ; preds = %for.body.i.i.i.i154
  %domain5.i.i.i.i155 = getelementptr %struct.venus_core, ptr %94, i32 0, i32 45, i32 %c.017.i.i.i.i151, i32 1
  %103 = ptrtoint ptr %domain5.i.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %domain5.i.i.i.i155, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %98)
  %cmp6.i.i.i.i156 = icmp eq i32 %104, %98
  br i1 %cmp6.i.i.i.i156, label %venus_caps_by_codec.exit.i.i.i162, label %land.lhs.true.i.i.i.i157.for.inc.i.i.i.i160_crit_edge

land.lhs.true.i.i.i.i157.for.inc.i.i.i.i160_crit_edge: ; preds = %land.lhs.true.i.i.i.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i160

for.inc.i.i.i.i160:                               ; preds = %land.lhs.true.i.i.i.i157.for.inc.i.i.i.i160_crit_edge, %for.body.i.i.i.i154.for.inc.i.i.i.i160_crit_edge
  %inc.i.i.i.i158 = add nuw i32 %c.017.i.i.i.i151, 1
  %exitcond.not.i.i.i.i159 = icmp eq i32 %inc.i.i.i.i158, %100
  br i1 %exitcond.not.i.i.i.i159, label %for.inc.i.i.i.i160.frame_height_max.exit_crit_edge, label %for.inc.i.i.i.i160.for.body.i.i.i.i154_crit_edge

for.inc.i.i.i.i160.for.body.i.i.i.i154_crit_edge: ; preds = %for.inc.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i154

for.inc.i.i.i.i160.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

venus_caps_by_codec.exit.i.i.i162:                ; preds = %land.lhs.true.i.i.i.i157
  %tobool.not.i.i.i161 = icmp eq ptr %arrayidx.i.i.i.i152, null
  br i1 %tobool.not.i.i.i161, label %venus_caps_by_codec.exit.i.i.i162.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i165

venus_caps_by_codec.exit.i.i.i162.frame_height_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.cond.preheader.i.i.i165:                      ; preds = %venus_caps_by_codec.exit.i.i.i162
  %num_caps.i.i.i163 = getelementptr %struct.venus_core, ptr %94, i32 0, i32 45, i32 %c.017.i.i.i.i151, i32 3
  %105 = ptrtoint ptr %num_caps.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_caps.i.i.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp35.not.i.i.i164 = icmp eq i32 %106, 0
  br i1 %cmp35.not.i.i.i164, label %for.cond.preheader.i.i.i165.frame_height_max.exit_crit_edge, label %for.cond.preheader.i.i.i165.for.body.i.i.i169_crit_edge

for.cond.preheader.i.i.i165.for.body.i.i.i169_crit_edge: ; preds = %for.cond.preheader.i.i.i165
  br label %for.body.i.i.i169

for.cond.preheader.i.i.i165.frame_height_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.body.i.i.i169:                                ; preds = %for.inc.i.i.i172.for.body.i.i.i169_crit_edge, %for.cond.preheader.i.i.i165.for.body.i.i.i169_crit_edge
  %i.036.i.i.i166 = phi i32 [ %inc.i.i.i170, %for.inc.i.i.i172.for.body.i.i.i169_crit_edge ], [ 0, %for.cond.preheader.i.i.i165.for.body.i.i.i169_crit_edge ]
  %arrayidx.i.i.i167 = getelementptr %struct.venus_core, ptr %94, i32 0, i32 45, i32 %c.017.i.i.i.i151, i32 4, i32 %i.036.i.i.i166
  %107 = ptrtoint ptr %arrayidx.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i.i.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp3.i.i.i168 = icmp eq i32 %108, 2
  br i1 %cmp3.i.i.i168, label %for.end.i.i.i174, label %for.inc.i.i.i172

for.inc.i.i.i172:                                 ; preds = %for.body.i.i.i169
  %inc.i.i.i170 = add nuw i32 %i.036.i.i.i166, 1
  %exitcond.not.i.i.i171 = icmp eq i32 %inc.i.i.i170, %106
  br i1 %exitcond.not.i.i.i171, label %for.inc.i.i.i172.frame_height_max.exit_crit_edge, label %for.inc.i.i.i172.for.body.i.i.i169_crit_edge

for.inc.i.i.i172.for.body.i.i.i169_crit_edge:     ; preds = %for.inc.i.i.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i169

for.inc.i.i.i172.frame_height_max.exit_crit_edge: ; preds = %for.inc.i.i.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

for.end.i.i.i174:                                 ; preds = %for.body.i.i.i169
  %tobool8.not.i.i.i173 = icmp eq ptr %arrayidx.i.i.i167, null
  br i1 %tobool8.not.i.i.i173, label %for.end.i.i.i174.frame_height_max.exit_crit_edge, label %if.end10.i.i.i176

for.end.i.i.i174.frame_height_max.exit_crit_edge: ; preds = %for.end.i.i.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_max.exit

if.end10.i.i.i176:                                ; preds = %for.end.i.i.i174
  call void @__sanitizer_cov_trace_pc() #12
  %max.i.i.i175 = getelementptr %struct.venus_core, ptr %94, i32 0, i32 45, i32 %c.017.i.i.i.i151, i32 4, i32 %i.036.i.i.i166, i32 2
  %109 = ptrtoint ptr %max.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max.i.i.i175, align 4
  br label %frame_height_max.exit

frame_height_max.exit:                            ; preds = %if.end10.i.i.i176, %for.end.i.i.i174.frame_height_max.exit_crit_edge, %for.inc.i.i.i172.frame_height_max.exit_crit_edge, %for.cond.preheader.i.i.i165.frame_height_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i162.frame_height_max.exit_crit_edge, %for.inc.i.i.i.i160.frame_height_max.exit_crit_edge, %frame_height_min.exit.frame_height_max.exit_crit_edge
  %retval.0.i.i.i177 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i162.frame_height_max.exit_crit_edge ], [ 0, %for.end.i.i.i174.frame_height_max.exit_crit_edge ], [ 0, %frame_height_min.exit.frame_height_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i165.frame_height_max.exit_crit_edge ], [ %110, %if.end10.i.i.i176 ], [ 0, %for.inc.i.i.i172.frame_height_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i160.frame_height_max.exit_crit_edge ]
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %111 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %retval.0.i.i.i177, ptr %max_height, align 4
  %112 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %core1.i.i.i, align 4
  %114 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hfi_codec.i.i.i, align 8
  %116 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i181 = getelementptr inbounds %struct.venus_core, ptr %113, i32 0, i32 46
  %118 = ptrtoint ptr %codecs_count.i.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %codecs_count.i.i.i.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp16.not.i.i.i.i182 = icmp eq i32 %119, 0
  br i1 %cmp16.not.i.i.i.i182, label %frame_height_max.exit.frame_height_step.exit_crit_edge, label %frame_height_max.exit.for.body.i.i.i.i186_crit_edge

frame_height_max.exit.for.body.i.i.i.i186_crit_edge: ; preds = %frame_height_max.exit
  br label %for.body.i.i.i.i186

frame_height_max.exit.frame_height_step.exit_crit_edge: ; preds = %frame_height_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

for.body.i.i.i.i186:                              ; preds = %for.inc.i.i.i.i192.for.body.i.i.i.i186_crit_edge, %frame_height_max.exit.for.body.i.i.i.i186_crit_edge
  %c.017.i.i.i.i183 = phi i32 [ %inc.i.i.i.i190, %for.inc.i.i.i.i192.for.body.i.i.i.i186_crit_edge ], [ 0, %frame_height_max.exit.for.body.i.i.i.i186_crit_edge ]
  %arrayidx.i.i.i.i184 = getelementptr %struct.venus_core, ptr %113, i32 0, i32 45, i32 %c.017.i.i.i.i183
  %120 = ptrtoint ptr %arrayidx.i.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i.i.i.i184, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %115)
  %cmp2.i.i.i.i185 = icmp eq i32 %121, %115
  br i1 %cmp2.i.i.i.i185, label %land.lhs.true.i.i.i.i189, label %for.body.i.i.i.i186.for.inc.i.i.i.i192_crit_edge

for.body.i.i.i.i186.for.inc.i.i.i.i192_crit_edge: ; preds = %for.body.i.i.i.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i192

land.lhs.true.i.i.i.i189:                         ; preds = %for.body.i.i.i.i186
  %domain5.i.i.i.i187 = getelementptr %struct.venus_core, ptr %113, i32 0, i32 45, i32 %c.017.i.i.i.i183, i32 1
  %122 = ptrtoint ptr %domain5.i.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %domain5.i.i.i.i187, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %117)
  %cmp6.i.i.i.i188 = icmp eq i32 %123, %117
  br i1 %cmp6.i.i.i.i188, label %venus_caps_by_codec.exit.i.i.i194, label %land.lhs.true.i.i.i.i189.for.inc.i.i.i.i192_crit_edge

land.lhs.true.i.i.i.i189.for.inc.i.i.i.i192_crit_edge: ; preds = %land.lhs.true.i.i.i.i189
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i.i192

for.inc.i.i.i.i192:                               ; preds = %land.lhs.true.i.i.i.i189.for.inc.i.i.i.i192_crit_edge, %for.body.i.i.i.i186.for.inc.i.i.i.i192_crit_edge
  %inc.i.i.i.i190 = add nuw i32 %c.017.i.i.i.i183, 1
  %exitcond.not.i.i.i.i191 = icmp eq i32 %inc.i.i.i.i190, %119
  br i1 %exitcond.not.i.i.i.i191, label %for.inc.i.i.i.i192.frame_height_step.exit_crit_edge, label %for.inc.i.i.i.i192.for.body.i.i.i.i186_crit_edge

for.inc.i.i.i.i192.for.body.i.i.i.i186_crit_edge: ; preds = %for.inc.i.i.i.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i186

for.inc.i.i.i.i192.frame_height_step.exit_crit_edge: ; preds = %for.inc.i.i.i.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

venus_caps_by_codec.exit.i.i.i194:                ; preds = %land.lhs.true.i.i.i.i189
  %tobool.not.i.i.i193 = icmp eq ptr %arrayidx.i.i.i.i184, null
  br i1 %tobool.not.i.i.i193, label %venus_caps_by_codec.exit.i.i.i194.frame_height_step.exit_crit_edge, label %for.cond.preheader.i.i.i197

venus_caps_by_codec.exit.i.i.i194.frame_height_step.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

for.cond.preheader.i.i.i197:                      ; preds = %venus_caps_by_codec.exit.i.i.i194
  %num_caps.i.i.i195 = getelementptr %struct.venus_core, ptr %113, i32 0, i32 45, i32 %c.017.i.i.i.i183, i32 3
  %124 = ptrtoint ptr %num_caps.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_caps.i.i.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp35.not.i.i.i196 = icmp eq i32 %125, 0
  br i1 %cmp35.not.i.i.i196, label %for.cond.preheader.i.i.i197.frame_height_step.exit_crit_edge, label %for.cond.preheader.i.i.i197.for.body.i.i.i201_crit_edge

for.cond.preheader.i.i.i197.for.body.i.i.i201_crit_edge: ; preds = %for.cond.preheader.i.i.i197
  br label %for.body.i.i.i201

for.cond.preheader.i.i.i197.frame_height_step.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i197
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

for.body.i.i.i201:                                ; preds = %for.inc.i.i.i204.for.body.i.i.i201_crit_edge, %for.cond.preheader.i.i.i197.for.body.i.i.i201_crit_edge
  %i.036.i.i.i198 = phi i32 [ %inc.i.i.i202, %for.inc.i.i.i204.for.body.i.i.i201_crit_edge ], [ 0, %for.cond.preheader.i.i.i197.for.body.i.i.i201_crit_edge ]
  %arrayidx.i.i.i199 = getelementptr %struct.venus_core, ptr %113, i32 0, i32 45, i32 %c.017.i.i.i.i183, i32 4, i32 %i.036.i.i.i198
  %126 = ptrtoint ptr %arrayidx.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i.i.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp3.i.i.i200 = icmp eq i32 %127, 2
  br i1 %cmp3.i.i.i200, label %for.end.i.i.i206, label %for.inc.i.i.i204

for.inc.i.i.i204:                                 ; preds = %for.body.i.i.i201
  %inc.i.i.i202 = add nuw i32 %i.036.i.i.i198, 1
  %exitcond.not.i.i.i203 = icmp eq i32 %inc.i.i.i202, %125
  br i1 %exitcond.not.i.i.i203, label %for.inc.i.i.i204.frame_height_step.exit_crit_edge, label %for.inc.i.i.i204.for.body.i.i.i201_crit_edge

for.inc.i.i.i204.for.body.i.i.i201_crit_edge:     ; preds = %for.inc.i.i.i204
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i201

for.inc.i.i.i204.frame_height_step.exit_crit_edge: ; preds = %for.inc.i.i.i204
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

for.end.i.i.i206:                                 ; preds = %for.body.i.i.i201
  %tobool8.not.i.i.i205 = icmp eq ptr %arrayidx.i.i.i199, null
  br i1 %tobool8.not.i.i.i205, label %for.end.i.i.i206.frame_height_step.exit_crit_edge, label %if.end10.i.i.i208

for.end.i.i.i206.frame_height_step.exit_crit_edge: ; preds = %for.end.i.i.i206
  call void @__sanitizer_cov_trace_pc() #12
  br label %frame_height_step.exit

if.end10.i.i.i208:                                ; preds = %for.end.i.i.i206
  call void @__sanitizer_cov_trace_pc() #12
  %step_size.i.i.i207 = getelementptr %struct.venus_core, ptr %113, i32 0, i32 45, i32 %c.017.i.i.i.i183, i32 4, i32 %i.036.i.i.i198, i32 3
  %128 = ptrtoint ptr %step_size.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %step_size.i.i.i207, align 4
  br label %frame_height_step.exit

frame_height_step.exit:                           ; preds = %if.end10.i.i.i208, %for.end.i.i.i206.frame_height_step.exit_crit_edge, %for.inc.i.i.i204.frame_height_step.exit_crit_edge, %for.cond.preheader.i.i.i197.frame_height_step.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i194.frame_height_step.exit_crit_edge, %for.inc.i.i.i.i192.frame_height_step.exit_crit_edge, %frame_height_max.exit.frame_height_step.exit_crit_edge
  %retval.0.i.i.i209 = phi i32 [ 0, %venus_caps_by_codec.exit.i.i.i194.frame_height_step.exit_crit_edge ], [ 0, %for.end.i.i.i206.frame_height_step.exit_crit_edge ], [ 0, %frame_height_max.exit.frame_height_step.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i197.frame_height_step.exit_crit_edge ], [ %129, %if.end10.i.i.i208 ], [ 0, %for.inc.i.i.i204.frame_height_step.exit_crit_edge ], [ 0, %for.inc.i.i.i.i192.frame_height_step.exit_crit_edge ]
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %130 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %retval.0.i.i.i209, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %frame_height_step.exit, %if.end6.cleanup_crit_edge, %if.end8.i49.cleanup_crit_edge, %lor.lhs.false.i48.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %frame_height_step.exit ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %lor.lhs.false.i48.cleanup_crit_edge ], [ -22, %if.end8.i49.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_subscribe_event(ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 5, label %sw.bb1
    i32 3, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 2, ptr noundef null) #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %fh, ptr noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %subscriptions = getelementptr i8, ptr %fh, i32 300
  %3 = ptrtoint ptr %subscriptions to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %subscriptions, align 4
  %or = or i32 %4, 5
  store i32 %or, ptr %subscriptions, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %if.end, %sw.bb1.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb3 ], [ 0, %if.end ], [ %call, %sw.bb ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vdec_check_src_change(ptr noundef %inst) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subscriptions = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 27
  %0 = ptrtoint ptr %subscriptions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subscriptions, align 4
  %and = and i32 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %codec_state8 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 25
  %2 = ptrtoint ptr %codec_state8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codec_state8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp9.not = icmp eq i32 %3, 1
  br i1 %tobool.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp9.not, label %land.lhs.true1, label %land.lhs.true.if.end.thread_crit_edge

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

land.lhs.true1:                                   ; preds = %land.lhs.true
  %reconfig = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 44
  %4 = ptrtoint ptr %reconfig to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reconfig, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true1.cleanup74_crit_edge, label %land.lhs.true1.if.end.thread_crit_edge

land.lhs.true1.if.end.thread_crit_edge:           ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

land.lhs.true1.cleanup74_crit_edge:               ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup74

if.end.thread:                                    ; preds = %land.lhs.true1.if.end.thread_crit_edge, %land.lhs.true.if.end.thread_crit_edge
  br label %cleanup74

if.end7:                                          ; preds = %entry
  br i1 %cmp9.not, label %if.end11, label %if.end7.cleanup74_crit_edge

if.end7.cleanup74_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup74

if.end11:                                         ; preds = %if.end7
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 222) #10
  %reconfig15 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 44
  %6 = ptrtoint ptr %reconfig15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reconfig15, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.then25, label %if.end11.if.end55_crit_edge

if.end11.if.end55_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then25:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %reconf_wait = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 26
  %call28101 = call i32 @prepare_to_wait_event(ptr noundef %reconf_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %9 = ptrtoint ptr %reconfig15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reconfig15, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool31.not102.not = icmp eq i8 %10, 0
  br i1 %tobool31.not102.not, label %if.then25.cleanup_crit_edge, label %if.end51.thread

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  br label %cleanup

if.end51.thread:                                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %reconf_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end55

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then25.cleanup_crit_edge
  %__ret26.1104 = phi i32 [ %__ret26.1, %cleanup.cleanup_crit_edge ], [ 10, %if.then25.cleanup_crit_edge ]
  %call48 = call i32 @schedule_timeout(i32 noundef %__ret26.1104) #10
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %reconf_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %11 = ptrtoint ptr %reconfig15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reconfig15, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool31.not = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool35.not = icmp eq i32 %call48, 0
  %spec.store.select75 = select i1 %tobool35.not, i32 1, i32 %call48
  %__ret26.1 = select i1 %tobool31.not, i32 %call48, i32 %spec.store.select75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret26.1)
  %tobool41.not = icmp eq i32 %__ret26.1, 0
  %not.tobool31.not = xor i1 %tobool31.not, true
  %13 = select i1 %not.tobool31.not, i1 true, i1 %tobool41.not
  br i1 %13, label %if.end51, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret26.1)
  %phi.cmp = icmp eq i32 %__ret26.1, 0
  call void @finish_wait(ptr noundef %reconf_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br i1 %phi.cmp, label %if.end51.cleanup74_crit_edge, label %if.end51.if.end55_crit_edge

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end51.cleanup74_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup74

if.end55:                                         ; preds = %if.end51.if.end55_crit_edge, %if.end51.thread, %if.end11.if.end55_crit_edge
  %14 = ptrtoint ptr %codec_state8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %codec_state8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp57 = icmp eq i32 %15, 2
  br i1 %cmp57, label %lor.lhs.false, label %if.end55.do.body61_crit_edge

if.end55.do.body61_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

lor.lhs.false:                                    ; preds = %if.end55
  %16 = ptrtoint ptr %reconfig15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reconfig15, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool59.not = icmp eq i8 %17, 0
  br i1 %tobool59.not, label %lor.lhs.false.do.body61_crit_edge, label %lor.lhs.false.cleanup74_crit_edge

lor.lhs.false.cleanup74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup74

lor.lhs.false.do.body61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

do.body61:                                        ; preds = %lor.lhs.false.do.body61_crit_edge, %if.end55.do.body61_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdec_check_src_change.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdec_check_src_change, %if.then69)) #10
          to label %cleanup74 [label %if.then69], !srcloc !91

if.then69:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.venus_core, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vdec_check_src_change.__UNIQUE_ID_ddebug313, ptr noundef %21, ptr noundef nonnull @.str.23) #10
  br label %cleanup74

cleanup74:                                        ; preds = %if.then69, %do.body61, %lor.lhs.false.cleanup74_crit_edge, %if.end51.cleanup74_crit_edge, %if.end7.cleanup74_crit_edge, %if.end.thread, %land.lhs.true1.cleanup74_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true1.cleanup74_crit_edge ], [ -22, %if.end51.cleanup74_crit_edge ], [ 0, %lor.lhs.false.cleanup74_crit_edge ], [ 0, %if.then69 ], [ 0, %if.end7.cleanup74_crit_edge ], [ 0, %if.end.thread ], [ 0, %do.body61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_process_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @vdec_runtime_suspend(ptr noundef %dev) #2 align 64 {
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
  %vdec_power = getelementptr inbounds %struct.venus_pm_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vdec_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdec_power, align 4
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
define internal i32 @vdec_runtime_resume(ptr noundef %dev) #2 align 64 {
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
  %vdec_power = getelementptr inbounds %struct.venus_pm_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vdec_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdec_power, align 4
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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !43, !44, !46, !47, !49, !51, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_venus_dec__323_1806_qcom_venus_dec_driver_init6, !1, !"__initcall__kmod_venus_dec__323_1806_qcom_venus_dec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1806, i32 1}
!2 = !{ptr @__exitcall_qcom_venus_dec_driver_exit, !1, !"__exitcall_qcom_venus_dec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias324, !4, !"__UNIQUE_ID_alias324", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1808, i32 1}
!5 = !{ptr @__UNIQUE_ID_description325, !6, !"__UNIQUE_ID_description325", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1809, i32 1}
!7 = !{ptr @__UNIQUE_ID_file326, !8, !"__UNIQUE_ID_file326", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1810, i32 1}
!9 = !{ptr @__UNIQUE_ID_license327, !8, !"__UNIQUE_ID_license327", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1801, i32 11}
!12 = !{ptr @qcom_venus_dec_driver, !13, !"qcom_venus_dec_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1797, i32 31}
!14 = !{ptr @vdec_fops, !15, !"vdec_fops", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1686, i32 42}
!16 = !{ptr @vdec_open.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1601, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vdec_open.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1612, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vdec_hfi_ops, !23, !"vdec_hfi_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1519, i32 34}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1492, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vdec_event_notify._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @vdec_event_notify._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @vdec_event_change.ev, !36, !"ev", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1394, i32 33}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1441, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vdec_event_change.__UNIQUE_ID_ddebug320, !38, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!42 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1469, i32 4}
!46 = !{ptr @vdec_event_change.__UNIQUE_ID_ddebug321, !45, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!47 = !{ptr @vdec_formats, !48, !"vdec_formats", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 32, i32 34}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1516, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vdec_flush_done.__UNIQUE_ID_ddebug322, !50, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!53 = !{ptr @xa_init_flags.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vdec_m2m_ops, !57, !"vdec_m2m_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1549, i32 34}
!58 = !{ptr @vdec_vb2_ops, !59, !"vdec_vb2_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1315, i32 29}
!60 = !{ptr @vdec_vb2_buf_queue.eos, !61, !"eos", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1292, i32 33}
!62 = !{ptr @vdec_ioctl_ops, !63, !"vdec_ioctl_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 539, i32 36}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 388, i32 23}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 389, i32 21}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 390, i32 25}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 228, i32 3}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vdec_check_src_change.__UNIQUE_ID_ddebug313, !71, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!74 = !{ptr @vdec_dt_match, !75, !"vdec_dt_match", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1791, i32 34}
!76 = !{ptr @vdec_pm_ops, !77, !"vdec_pm_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/qcom/venus/vdec.c", i32 1785, i32 32}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148282023}
!88 = !{i64 766846, i64 766871, i64 766893, i64 766909, i64 766921, i64 766941, i64 766965, i64 766981, i64 766993}
!89 = !{i64 2148282211}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2148764419, i64 2148764424, i64 2148764437, i64 2148764481, i64 2148764515, i64 2148764536}
!92 = !{i8 0, i8 2}
!93 = !{!"auto-init"}
!94 = !{i64 2148673138, i64 2148673418, i64 2148673752, i64 2148674086}
