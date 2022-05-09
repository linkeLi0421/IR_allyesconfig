; ModuleID = '/llk/IR_all_yes/drivers/media/platform/allegro-dvt/allegro-core.c_pt.bc'
source_filename = "../drivers/media/platform/allegro-dvt/allegro-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.fw_info = type { i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.allegro_dev = type { %struct.v4l2_device, %struct.video_device, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, %struct.allegro_buffer, %struct.allegro_buffer, i8, %struct.allegro_encoder_buffer, %struct.completion, i8, ptr, ptr, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.allegro_buffer = type { ptr, i32, i32, %struct.list_head }
%struct.allegro_encoder_buffer = type { i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.v4l2_event = type { i32, %union.anon.123, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.123 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.124, i32, i32, i32, i32, i32 }
%union.anon.124 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.create_channel_param = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i8, i16, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i16, i32, i32, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, [3 x i32], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.mcu_msg_header = type { i32, i32 }
%struct.allegro_mbox = type { ptr, i32, i32, i32, i32, %struct.mutex }
%struct.mcu_msg_create_channel_response = type { %struct.mcu_msg_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcu_msg_destroy_channel_response = type { %struct.mcu_msg_header, i32 }
%struct.mcu_msg_encode_frame_response = type { %struct.mcu_msg_header, i32, i64, i64, i64, i16, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, [4 x i32], [22 x i32], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.122 = type { i32, i32 }
%struct.nal_hevc_vps = type { i32, i32, i32, i32, i32, i32, %struct.nal_hevc_profile_tier_level, i32, %struct.anon.131, i32, i32, [1024 x [64 x i32]], i32, %struct.anon.132, i32, i32 }
%struct.nal_hevc_profile_tier_level = type { i32, i32, i32, [32 x i32], i32, i32, i32, i32, %union.anon.125, %union.anon.130, i32 }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.127 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%union.anon.130 = type { i32 }
%struct.anon.131 = type { [7 x i32], [7 x i32], [7 x i32] }
%struct.anon.132 = type { i32, i32, i32, i32, i32, %struct.anon.133 }
%struct.anon.133 = type { [0 x i32], [0 x i32] }
%struct.nal_h264_sps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.134, i32, i32, %union.anon.135, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.137, i32, %struct.nal_h264_vui_parameters }
%struct.anon.134 = type { i32, i32, i32, i32, i32, i32 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { i32, i32, i32, i32, [255 x i32] }
%struct.anon.137 = type { i32, i32, i32, i32 }
%struct.nal_h264_vui_parameters = type { i32, %struct.anon.138, i32, i32, i32, %struct.anon.139, i32, %struct.anon.141, i32, %struct.anon.142, i32, %struct.nal_h264_hrd_parameters, i32, %struct.nal_h264_hrd_parameters, i32, i32, i32, %struct.anon.144 }
%struct.anon.138 = type { i32, i32, i32 }
%struct.anon.139 = type { i32, i32, i32, %struct.anon.140 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.anon.141 = type { i32, i32 }
%struct.anon.142 = type { i32, i32, i32 }
%struct.nal_h264_hrd_parameters = type { i32, i32, i32, %struct.anon.143, i32, i32, i32, i32 }
%struct.anon.143 = type { [16 x i32], [16 x i32], [16 x i32] }
%struct.anon.144 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nal_hevc_sps = type { i32, i32, i32, %struct.nal_hevc_profile_tier_level, i32, i32, i32, i32, i32, i32, %struct.anon.145, i32, i32, i32, i32, %struct.anon.146, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.147, i32, i32, i32, i32, i32, %struct.nal_hevc_vui_parameters, i32, %struct.anon.158 }
%struct.anon.145 = type { i32, i32, i32, i32 }
%struct.anon.146 = type { [7 x i32], [7 x i32], [7 x i32] }
%struct.anon.147 = type { i32, i32, i32, i32, i32 }
%struct.nal_hevc_vui_parameters = type { i32, %struct.anon.148, i32, i32, i32, %struct.anon.149, i32, %struct.anon.151, i32, i32, i32, i32, %struct.anon.152, i32, %struct.anon.153, i32, %struct.anon.157 }
%struct.anon.148 = type { i32, i32, i32 }
%struct.anon.149 = type { i32, i32, i32, %struct.anon.150 }
%struct.anon.150 = type { i32, i32, i32 }
%struct.anon.151 = type { i32, i32 }
%struct.anon.152 = type { i32, i32, i32, i32 }
%struct.anon.153 = type { i32, i32, i32, i32, i32, %struct.nal_hevc_hrd_parameters }
%struct.nal_hevc_hrd_parameters = type { i32, i32, %struct.anon.154, %struct.anon.156 }
%struct.anon.154 = type { i32, %struct.anon.155, i32, i32, i32, i32, i32, i32 }
%struct.anon.155 = type { i32, i32, i32, i32 }
%struct.anon.156 = type { [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x %struct.nal_hevc_sub_layer_hrd_parameters], [1 x %struct.nal_hevc_sub_layer_hrd_parameters] }
%struct.nal_hevc_sub_layer_hrd_parameters = type { [1 x i32], [1 x i32], [1 x i32] }
%struct.anon.157 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.158 = type { i32, i32, i32, i32, i32 }
%struct.nal_h264_pps = type { i32, i32, i32, i32, i32, i32, %union.anon.159, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.163 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { [8 x i32], [8 x i32] }
%struct.anon.163 = type { i32, i32, i32 }
%struct.nal_hevc_pps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.164, i32, i32, %struct.anon.166, i32, i32, i32, i32, i32, %struct.anon.168 }
%struct.anon.164 = type { i32, i32, i32, %struct.anon.165, i32 }
%struct.anon.165 = type { [1 x i32], [1 x i32] }
%struct.anon.166 = type { i32, i32, %struct.anon.167 }
%struct.anon.167 = type { i32, i32 }
%struct.anon.168 = type { i32, i32, i32, i32, i32 }
%struct.allegro_channel = type { ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, i32, i32, i32, %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.allegro_buffer, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.121, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, %struct.completion, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_fract = type { i32, i32 }
%struct.anon.121 = type { ptr, ptr, ptr }
%struct.mcu_msg_push_buffers_internal = type { %struct.mcu_msg_header, i32, i32, [0 x %struct.mcu_msg_push_buffers_internal_buffer] }
%struct.mcu_msg_push_buffers_internal_buffer = type { i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.mcu_msg_init_request = type { %struct.mcu_msg_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcu_msg_encode_frame = type { %struct.mcu_msg_header, i32, i32, i32, i16, i16, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mcu_msg_put_stream_buffer = type { %struct.mcu_msg_header, i32, i32, i32, i32, i32, i64 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.allegro_m2m_buffer = type { %struct.v4l2_m2m_buffer, %struct.list_head }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.mcu_msg_destroy_channel = type { %struct.mcu_msg_header, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.mcu_msg_create_channel = type { %struct.mcu_msg_header, i32, ptr, i32, i32, i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }

@__param_str_debug = internal constant [14 x i8] c"allegro.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype299 = internal constant [27 x i8] c"allegro.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug300 = internal constant [37 x i8] c"allegro.parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@__initcall__kmod_allegro__321_4022_allegro_driver_init6 = internal global ptr @allegro_driver_init, section ".initcall6.init", align 4
@allegro_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @allegro_probe, ptr @allegro_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @allegro_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @allegro_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_allegro_driver_exit = internal global ptr @allegro_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file322 = internal constant [56 x i8] c"allegro.file=drivers/media/platform/allegro-dvt/allegro\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [20 x i8] c"allegro.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [55 x i8] c"allegro.author=Michael Tretter <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [47 x i8] c"allegro.description=Allegro DVT encoder driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"allegro\00", [24 x i8] zeroinitializer }, align 32
@allegro_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allegro,al5e-1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@allegro_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @allegro_runtime_suspend, ptr @allegro_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@allegro_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@allegro_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 3852, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"regs resource missing from device tree\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"allegro_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/platform/allegro-dvt/allegro-core.c\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@allegro_probe._entry_ptr = internal global ptr @allegro_probe._entry, section ".printk_index", align 4
@allegro_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 3857, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@allegro_probe._entry_ptr.10 = internal global ptr @allegro_probe._entry.8, section ".printk_index", align 4
@allegro_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@allegro_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.41, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 4095, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"allegro_core:3861:(&allegro_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@allegro_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 3863, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init regmap\0A\00", [41 x i8] zeroinitializer }, align 32
@allegro_probe._entry_ptr.14 = internal global ptr @allegro_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@allegro_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 3870, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sram resource missing from device tree\0A\00", [56 x i8] zeroinitializer }, align 32
@allegro_probe._entry_ptr.18 = internal global ptr @allegro_probe._entry.16, section ".printk_index", align 4
@allegro_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 3877, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to map sram\0A\00", [44 x i8] zeroinitializer }, align 32
@allegro_probe._entry_ptr.21 = internal global ptr @allegro_probe._entry.19, section ".printk_index", align 4
@allegro_probe._key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@allegro_sram_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.15, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32767, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"allegro_core:3881:(&allegro_sram_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@allegro_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 3883, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to init sram\0A\00", [43 x i8] zeroinitializer }, align 32
@allegro_probe._entry_ptr.26 = internal global ptr @allegro_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,vcu-settings\00", [46 x i8] zeroinitializer }, align 32
@allegro_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 3889, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to open settings\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@allegro_probe._entry_ptr.31 = internal global ptr @allegro_probe._entry.28, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcu_clk\00", [24 x i8] zeroinitializer }, align 32
@allegro_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 3907, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@allegro_probe._entry_ptr.36 = internal global ptr @allegro_probe._entry.34, section ".printk_index", align 4
@allegro_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 3920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: failed to request firmware: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@allegro_probe._entry_ptr.39 = internal global ptr @allegro_probe._entry.37, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regmap\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@allegro_handle_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 2296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: %s: unknown message %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"allegro_handle_message\00", [41 x i8] zeroinitializer }, align 32
@allegro_handle_message._entry_ptr = internal global ptr @allegro_handle_message._entry, section ".printk_index", align 4
@allegro_handle_create_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 2167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: received %s for unknown user %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"allegro_handle_create_channel\00", [34 x i8] zeroinitializer }, align 32
@allegro_handle_create_channel._entry_ptr = internal global ptr @allegro_handle_create_channel._entry, section ".printk_index", align 4
@allegro_handle_create_channel._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.5, i32 2176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: user %d: mcu failed to create channel: %s (%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@allegro_handle_create_channel._entry_ptr.48 = internal global ptr @allegro_handle_create_channel._entry.46, section ".printk_index", align 4
@allegro_handle_create_channel._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.5, i32 2184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: user %d: channel has channel id %d\0A\00", [54 x i8] zeroinitializer }, align 32
@allegro_handle_create_channel._entry_ptr.51 = internal global ptr @allegro_handle_create_channel._entry.49, section ".printk_index", align 4
@allegro_handle_create_channel._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.5, i32 2197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: channel %d: intermediate buffers: %d x %d bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@allegro_handle_create_channel._entry_ptr.54 = internal global ptr @allegro_handle_create_channel._entry.52, section ".printk_index", align 4
@allegro_handle_create_channel._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.5, i32 2203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: channel %d: failed to allocate intermediate buffers\0A\00", [37 x i8] zeroinitializer }, align 32
@allegro_handle_create_channel._entry_ptr.57 = internal global ptr @allegro_handle_create_channel._entry.55, section ".printk_index", align 4
@allegro_handle_create_channel._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.5, i32 2213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: channel %d: reference buffers: %d x %d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@allegro_handle_create_channel._entry_ptr.60 = internal global ptr @allegro_handle_create_channel._entry.58, section ".printk_index", align 4
@allegro_handle_create_channel._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.45, ptr @.str.5, i32 2219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: channel %d: failed to allocate reference buffers\0A\00", [40 x i8] zeroinitializer }, align 32
@allegro_handle_create_channel._entry_ptr.63 = internal global ptr @allegro_handle_create_channel._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"initialization failed\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no frame decoded\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resolution change\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stream buffer overflow\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"too many slices\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"buffer not ready\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no channel available\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"resource unavailable\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"not enough cores\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"request malformed\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"command not allowed\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid command value\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown error\00", [18 x i8] zeroinitializer }, align 32
@to_codec_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: address %pad cannot be used by codec\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"to_codec_addr\00", [18 x i8] zeroinitializer }, align 32
@to_codec_addr._entry_ptr = internal global ptr @to_codec_addr._entry, section ".printk_index", align 4
@to_mcu_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.5, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: address %pad is outside mcu window\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"to_mcu_addr\00", [20 x i8] zeroinitializer }, align 32
@to_mcu_addr._entry_ptr = internal global ptr @to_mcu_addr._entry, section ".printk_index", align 4
@allegro_handle_destroy_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 2245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: received %s for unknown channel %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"allegro_handle_destroy_channel\00", [33 x i8] zeroinitializer }, align 32
@allegro_handle_destroy_channel._entry_ptr = internal global ptr @allegro_handle_destroy_channel._entry, section ".printk_index", align 4
@allegro_handle_destroy_channel._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.5, i32 2251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: user %d: vcu destroyed channel %d\0A\00", [55 x i8] zeroinitializer }, align 32
@allegro_handle_destroy_channel._entry_ptr.86 = internal global ptr @allegro_handle_destroy_channel._entry.84, section ".printk_index", align 4
@allegro_handle_encode_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.87, ptr @.str.5, i32 2268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"allegro_handle_encode_frame\00", [36 x i8] zeroinitializer }, align 32
@allegro_handle_encode_frame._entry_ptr = internal global ptr @allegro_handle_encode_frame._entry, section ".printk_index", align 4
@allegro_channel_finish_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 1974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: channel %d: invalid source buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"allegro_channel_finish_frame\00", [35 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr = internal global ptr @allegro_channel_finish_frame._entry, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.5, i32 1981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: channel %d: invalid stream buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.92 = internal global ptr @allegro_channel_finish_frame._entry.90, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.5, i32 1999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: channel %d: failed to encode frame: %s (%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.95 = internal global ptr @allegro_channel_finish_frame._entry.93, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.89, ptr @.str.5, i32 2006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014%s: channel %d: only handling first partition table entry (%d entries)\0A\00", [54 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.98 = internal global ptr @allegro_channel_finish_frame._entry.96, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.89, ptr @.str.5, i32 2014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: channel %d: partition table outside of dst_buf\0A\00", [42 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.101 = internal global ptr @allegro_channel_finish_frame._entry.99, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.89, ptr @.str.5, i32 2025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013%s: channel %d: encoded frame is outside of dst_buf (offset 0x%x, size 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.104 = internal global ptr @allegro_channel_finish_frame._entry.102, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.89, ptr @.str.5, i32 2031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: channel %d: encoded frame of size %d is at offset 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.107 = internal global ptr @allegro_channel_finish_frame._entry.105, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.89, ptr @.str.5, i32 2048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s: not enough space for video parameter set: %zd left\0A\00", [38 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.110 = internal global ptr @allegro_channel_finish_frame._entry.108, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.89, ptr @.str.5, i32 2055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: channel %d: wrote %zd byte VPS nal unit\0A\00", [49 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.113 = internal global ptr @allegro_channel_finish_frame._entry.111, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.89, ptr @.str.5, i32 2066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s: not enough space for sequence parameter set: %zd left\0A\00", [35 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.116 = internal global ptr @allegro_channel_finish_frame._entry.114, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.89, ptr @.str.5, i32 2073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: channel %d: wrote %zd byte SPS nal unit\0A\00", [49 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.119 = internal global ptr @allegro_channel_finish_frame._entry.117, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.89, ptr @.str.5, i32 2084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: not enough space for picture parameter set: %zd left\0A\00", [36 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.122 = internal global ptr @allegro_channel_finish_frame._entry.120, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.89, ptr @.str.5, i32 2091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: channel %d: wrote %zd byte PPS nal unit\0A\00", [49 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.125 = internal global ptr @allegro_channel_finish_frame._entry.123, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.89, ptr @.str.5, i32 2104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: failed to write %zd filler data\0A\00", [57 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.128 = internal global ptr @allegro_channel_finish_frame._entry.126, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.89, ptr @.str.5, i32 2111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: channel %d: wrote %zd bytes filler nal unit\0A\00", [45 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.131 = internal global ptr @allegro_channel_finish_frame._entry.129, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.89, ptr @.str.5, i32 2117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013%s: non-VCL NAL units do not fill space until VCL NAL unit: %zd bytes left\0A\00", [50 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.134 = internal global ptr @allegro_channel_finish_frame._entry.132, section ".printk_index", align 4
@allegro_channel_finish_frame._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.89, ptr @.str.5, i32 2136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: channel %d: encoded frame #%03d (%s%s, QP %d, %d bytes)\0A\00", [33 x i8] zeroinitializer }, align 32
@allegro_channel_finish_frame._entry_ptr.137 = internal global ptr @allegro_channel_finish_frame._entry.135, section ".printk_index", align 4
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IDR, \00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I slice\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"P slice\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"al5e_b.fw\00", [22 x i8] zeroinitializer }, align 32
@allegro_firmware_request_nowait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.5, i32 3824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: requesting firmware '%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"allegro_firmware_request_nowait\00", [32 x i8] zeroinitializer }, align 32
@allegro_firmware_request_nowait._entry_ptr = internal global ptr @allegro_firmware_request_nowait._entry, section ".printk_index", align 4
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"al5e.fw\00", [24 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.5, i32 3745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: requesting codec firmware '%s'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"allegro_fw_callback\00", [44 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry_ptr = internal global ptr @allegro_fw_callback._entry, section ".printk_index", align 4
@allegro_fw_callback._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.5, i32 3752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: firmware is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry_ptr.152 = internal global ptr @allegro_fw_callback._entry.150, section ".printk_index", align 4
@allegro_fw_callback._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.5, i32 3757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: using mcu firmware version '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry_ptr.155 = internal global ptr @allegro_fw_callback._entry.153, section ".printk_index", align 4
@allegro_fw_callback._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.149, ptr @.str.5, i32 3767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: failed to reset mcu\0A\00", [37 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry_ptr.158 = internal global ptr @allegro_fw_callback._entry.156, section ".printk_index", align 4
@allegro_fw_callback._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.149, ptr @.str.5, i32 3776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to initialize mcu\0A\00", [32 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry_ptr.161 = internal global ptr @allegro_fw_callback._entry.159, section ".printk_index", align 4
@allegro_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @allegro_device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.149, ptr @.str.5, i32 3782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry_ptr.164 = internal global ptr @allegro_fw_callback._entry.162, section ".printk_index", align 4
@allegro_fw_callback._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.149, ptr @.str.5, i32 3788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry_ptr.167 = internal global ptr @allegro_fw_callback._entry.165, section ".printk_index", align 4
@allegro_fw_callback._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.149, ptr @.str.5, i32 3794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: allegro codec registered as /dev/video%d\0A\00", [48 x i8] zeroinitializer }, align 32
@allegro_fw_callback._entry_ptr.170 = internal global ptr @allegro_fw_callback._entry.168, section ".printk_index", align 4
@supported_firmware = internal constant { [2 x %struct.fw_info], [32 x i8] } { [2 x %struct.fw_info] [%struct.fw_info { i32 18296, i32 96272, ptr @.str.171, i32 30720, i32 31744, i32 1016, i32 0, i32 16777216 }, %struct.fw_info { i32 14680, i32 126572, ptr @.str.172, i32 28672, i32 30720, i32 2040, i32 1, i32 33554432 }], [32 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v2018.2\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v2019.2\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@allegro_copy_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.5, i32 2339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: copy mcu firmware (%zu B) to SRAM\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"allegro_copy_firmware\00", [42 x i8] zeroinitializer }, align 32
@allegro_copy_firmware._entry_ptr = internal global ptr @allegro_copy_firmware._entry, section ".printk_index", align 4
@allegro_copy_firmware._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.5, i32 2343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to copy firmware: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@allegro_copy_firmware._entry_ptr.177 = internal global ptr @allegro_copy_firmware._entry.175, section ".printk_index", align 4
@allegro_copy_fw_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.5, i32 2361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: failed to allocate %zu bytes for firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"allegro_copy_fw_codec\00", [42 x i8] zeroinitializer }, align 32
@allegro_copy_fw_codec._entry_ptr = internal global ptr @allegro_copy_fw_codec._entry, section ".printk_index", align 4
@allegro_copy_fw_codec._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.5, i32 2367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: copy codec firmware (%zd B) to phys %pad\0A\00", [48 x i8] zeroinitializer }, align 32
@allegro_copy_fw_codec._entry_ptr.182 = internal global ptr @allegro_copy_fw_codec._entry.180, section ".printk_index", align 4
@allegro_copy_fw_codec._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.179, ptr @.str.5, i32 2376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: icache_offset: msb = 0x%x, lsb = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@allegro_copy_fw_codec._entry_ptr.185 = internal global ptr @allegro_copy_fw_codec._entry.183, section ".printk_index", align 4
@allegro_copy_fw_codec._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.179, ptr @.str.5, i32 2386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: dcache_offset: msb = 0x%x, lsb = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@allegro_copy_fw_codec._entry_ptr.188 = internal global ptr @allegro_copy_fw_codec._entry.186, section ".printk_index", align 4
@allegro_mcu_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.5, i32 3663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: failed to initialize mailboxes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"allegro_mcu_hw_init\00", [44 x i8] zeroinitializer }, align 32
@allegro_mcu_hw_init._entry_ptr = internal global ptr @allegro_mcu_hw_init._entry, section ".printk_index", align 4
@allegro_mcu_hw_init._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.5, i32 3670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: encoder buffer not available\0A\00", [60 x i8] zeroinitializer }, align 32
@allegro_mcu_hw_init._entry_ptr.193 = internal global ptr @allegro_mcu_hw_init._entry.191, section ".printk_index", align 4
@allegro_mcu_hw_init._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.190, ptr @.str.5, i32 3679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: mcu did not send INIT after reset\0A\00", [55 x i8] zeroinitializer }, align 32
@allegro_mcu_hw_init._entry_ptr.196 = internal global ptr @allegro_mcu_hw_init._entry.194, section ".printk_index", align 4
@allegro_mcu_hw_init._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.190, ptr @.str.5, i32 3689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: failed to allocate %zu bytes for suballocator\0A\00", [43 x i8] zeroinitializer }, align 32
@allegro_mcu_hw_init._entry_ptr.199 = internal global ptr @allegro_mcu_hw_init._entry.197, section ".printk_index", align 4
@allegro_mcu_hw_init._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.190, ptr @.str.5, i32 3698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: mcu failed to configure sub-allocator\0A\00", [51 x i8] zeroinitializer }, align 32
@allegro_mcu_hw_init._entry_ptr.202 = internal global ptr @allegro_mcu_hw_init._entry.200, section ".printk_index", align 4
@allegro_mbox_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.203 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mbox->lock\00", [20 x i8] zeroinitializer }, align 32
@allegro_encoder_buffer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.5, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: using %d bits encoder buffer with %d-bit color depth\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"allegro_encoder_buffer_init\00", [36 x i8] zeroinitializer }, align 32
@allegro_encoder_buffer_init._entry_ptr = internal global ptr @allegro_encoder_buffer_init._entry, section ".printk_index", align 4
@allegro_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @allegro_open, ptr @allegro_release }, [60 x i8] zeroinitializer }, align 32
@allegro_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @allegro_querycap, ptr @allegro_enum_fmt_vid, ptr null, ptr @allegro_enum_fmt_vid, ptr null, ptr null, ptr null, ptr null, ptr @allegro_g_fmt_vid_cap, ptr null, ptr @allegro_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @allegro_s_fmt_vid_cap, ptr null, ptr @allegro_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @allegro_try_fmt_vid_cap, ptr null, ptr @allegro_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @allegro_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @allegro_encoder_cmd, ptr @v4l2_m2m_ioctl_try_encoder_cmd, ptr null, ptr null, ptr @allegro_g_parm, ptr @allegro_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @allegro_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @allegro_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@allegro_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.206 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&channel->shadow_list_lock\00", [37 x i8] zeroinitializer }, align 32
@allegro_open._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.207 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"allegro_core:3063:(handler)->_lock\00", [61 x i8] zeroinitializer }, align 32
@allegro_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr @allegro_try_ctrl, ptr @allegro_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@allegro_encoder_buffer_ctrl_config = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 9968240, ptr @.str.210, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@allegro_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.5, i32 2997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: s_ctrl: %s = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allegro_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@allegro_s_ctrl._entry_ptr = internal global ptr @allegro_s_ctrl._entry, section ".printk_index", align 4
@.str.210 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Encoder Buffer Enable\00", [42 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@allegro_queue_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @allegro_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @allegro_buf_prepare, ptr null, ptr null, ptr @allegro_start_streaming, ptr @allegro_stop_streaming, ptr @allegro_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@allegro_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.5, i32 2765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s: queue setup[%s]: nplanes = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"allegro_queue_setup\00", [44 x i8] zeroinitializer }, align 32
@allegro_queue_setup._entry_ptr = internal global ptr @allegro_queue_setup._entry, section ".printk_index", align 4
@.str.213 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REQBUFS\00", [24 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CREATE_BUFS\00", [20 x i8] zeroinitializer }, align 32
@allegro_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.5, i32 2798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: channel %d: unsupported field\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"allegro_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@allegro_buf_prepare._entry_ptr = internal global ptr @allegro_buf_prepare._entry, section ".printk_index", align 4
@allegro_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.5, i32 2838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s: start streaming\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"allegro_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@allegro_start_streaming._entry_ptr = internal global ptr @allegro_start_streaming._entry, section ".printk_index", align 4
@allegro_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.5, i32 2859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: stop streaming\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"allegro_stop_streaming\00", [41 x i8] zeroinitializer }, align 32
@allegro_stop_streaming._entry_ptr = internal global ptr @allegro_stop_streaming._entry, section ".printk_index", align 4
@allegro_destroy_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.5, i32 2495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: channel %d: timeout while destroying\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"allegro_destroy_channel\00", [40 x i8] zeroinitializer }, align 32
@allegro_destroy_channel._entry_ptr = internal global ptr @allegro_destroy_channel._entry, section ".printk_index", align 4
@allegro_channel_adjust._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.5, i32 2646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s.minimum: %lld -> %lld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"allegro_channel_adjust\00", [41 x i8] zeroinitializer }, align 32
@allegro_channel_adjust._entry_ptr = internal global ptr @allegro_channel_adjust._entry, section ".printk_index", align 4
@allegro_channel_adjust._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.226, ptr @.str.5, i32 2660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: maximum: %lld -> %lld\0A\00", [63 x i8] zeroinitializer }, align 32
@allegro_channel_adjust._entry_ptr.229 = internal global ptr @allegro_channel_adjust._entry.227, section ".printk_index", align 4
@.str.230 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Allegro DVT Video Encoder\00", [38 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@allegro_create_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.5, i32 2552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: channel already exists\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"allegro_create_channel\00", [41 x i8] zeroinitializer }, align 32
@allegro_create_channel._entry_ptr = internal global ptr @allegro_create_channel._entry, section ".printk_index", align 4
@allegro_create_channel._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.5, i32 2559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: no free channels available\0A\00", [62 x i8] zeroinitializer }, align 32
@allegro_create_channel._entry_ptr.236 = internal global ptr @allegro_create_channel._entry.234, section ".printk_index", align 4
@allegro_create_channel._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.233, ptr @.str.5, i32 2569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: user %d: creating channel (%4.4s, %dx%d@%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@allegro_create_channel._entry_ptr.239 = internal global ptr @allegro_create_channel._entry.237, section ".printk_index", align 4
@allegro_create_channel._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.233, ptr @.str.5, i32 2608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: channel %d: accepting buffers\0A\00", [59 x i8] zeroinitializer }, align 32
@allegro_create_channel._entry_ptr.242 = internal global ptr @allegro_create_channel._entry.240, section ".printk_index", align 4
@allegro_mcu_hw_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.5, i32 3722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: mcu failed to enter sleep state\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"allegro_mcu_hw_deinit\00", [42 x i8] zeroinitializer }, align 32
@allegro_mcu_hw_deinit._entry_ptr = internal global ptr @allegro_mcu_hw_deinit._entry, section ".printk_index", align 4
@allegro_mcu_hw_deinit._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.244, ptr @.str.5, i32 3727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: failed to disable interrupts\0A\00", [60 x i8] zeroinitializer }, align 32
@allegro_mcu_hw_deinit._entry_ptr.247 = internal global ptr @allegro_mcu_hw_deinit._entry.245, section ".printk_index", align 4
@switch.table.allegro_irq_thread = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.77, ptr @.str.77, ptr @.str.66, ptr @.str.77, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.77, ptr @.str.77, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [56 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.248 = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.77, ptr @.str.77, ptr @.str.66, ptr @.str.77, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.77, ptr @.str.77, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [56 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.249 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 3, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.250 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 30, i32 60, i32 63, i32 90, i32 93, i32 120, i32 123, i32 150, i32 153, i32 156, i32 180, i32 183, i32 186], [44 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.251 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 66, i32 -22, i32 77, i32 88, i32 100], [44 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.252 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 10, i32 9, i32 11, i32 12, i32 13, i32 20, i32 21, i32 22, i32 30, i32 31, i32 32, i32 40, i32 41, i32 42, i32 50, i32 51], [32 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.253 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 6, i32 7, i32 1, i32 2, i32 4, i32 5, i32 5, i32 5, i32 2, i32 9], [56 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.254 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 2, i32 6, i32 6, i32 6, i32 6, i32 2, i32 2, i32 2, i32 6, i32 2, i32 2], [52 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.255 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 3, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.256 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 30, i32 60, i32 63, i32 90, i32 93, i32 120, i32 123, i32 150, i32 153, i32 156, i32 180, i32 183, i32 186], [44 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.257 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 6, i32 7, i32 1, i32 2, i32 4, i32 5, i32 5, i32 5, i32 2, i32 9], [56 x i8] zeroinitializer }, align 32
@switch.table.allegro_irq_thread.258 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 2, i32 6, i32 6, i32 6, i32 6, i32 2, i32 2, i32 2, i32 6, i32 2, i32 2], [52 x i8] zeroinitializer }, align 32
@switch.table.allegro_channel_adjust = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 64000, i32 128000, i32 192000, i32 384000, i32 768000, i32 2000000, i32 4000000, i32 4000000, i32 10000000, i32 14000000, i32 20000000, i32 20000000, i32 50000000, i32 50000000, i32 135000000], [36 x i8] zeroinitializer }, align 32
@switch.table.allegro_channel_adjust.259 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 128, i32 1500, i32 3000, i32 6000, i32 10000, i32 12000, i32 20000, i32 25000], [32 x i8] zeroinitializer }, align 32
@switch.table.allegro_stop_streaming = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.213, ptr @.str.213, ptr @.str.214, ptr @.str.213, ptr @.str.214, ptr @.str.213, ptr @.str.213, ptr @.str.214, ptr @.str.213, ptr @.str.214, ptr @.str.213, ptr @.str.214, ptr @.str.213], [44 x i8] zeroinitializer }, align 32
@switch.table.allegro_ioctl_streamon = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 7], [32 x i8] zeroinitializer }, align 32
@switch.table.allegro_ioctl_streamon.260 = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 10, i16 51, i16 11, i16 12, i16 13, i16 20, i16 21, i16 22, i16 30, i16 31, i16 32, i16 40, i16 41, i16 42, i16 50], [34 x i8] zeroinitializer }, align 32
@switch.table.allegro_ioctl_streamon.261 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 10, i16 20, i16 21, i16 30, i16 31, i16 40, i16 41, i16 50], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.262 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.263 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.264 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.265 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.266 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.267 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 15]
@__sancov_gen_cov_switch_values.269 = internal global [4 x i64] [i64 2, i64 32, i64 14680, i64 18296]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 32, i64 9968240, i64 10029518]
@__sancov_gen_cov_switch_values.271 = internal global [7 x i64] [i64 5, i64 32, i64 10029518, i64 10029527, i64 10029662, i64 10029663, i64 10029664]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 32, i64 10029662, i64 10029663]
@__sancov_gen_cov_switch_values.273 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.274 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.275 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.277 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.278 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.279 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.280 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.281 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.282 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.284 = internal global [5 x i64] [i64 3, i64 32, i64 842094158, i64 875967048, i64 1129727304]
@___asan_gen_.285 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 114, i32 12 }
@___asan_gen_.288 = private unnamed_addr constant [15 x i8] c"allegro_driver\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 4012, i32 31 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 4016, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant [15 x i8] c"allegro_dt_ids\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 4000, i32 34 }
@___asan_gen_.297 = private unnamed_addr constant [15 x i8] c"allegro_pm_ops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 4007, i32 32 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3845, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3849, i32 59 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3851, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3857, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [22 x i8] c"allegro_regmap_config\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 183, i32 29 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3860, i32 16 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3863, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3867, i32 64 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3869, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3877, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c"allegro_sram_config\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 192, i32 29 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3880, i32 14 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3883, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3887, i32 53 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3889, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3891, i32 43 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3895, i32 42 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3907, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3919, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 87, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 184, i32 10 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2294, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2164, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2172, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2182, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2194, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2201, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2210, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2217, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 482, i32 10 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 484, i32 10 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 486, i32 10 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 488, i32 10 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 490, i32 10 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 492, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 494, i32 10 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 496, i32 10 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 498, i32 10 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 500, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 502, i32 10 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 504, i32 10 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 506, i32 10 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 509, i32 10 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 409, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 395, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2242, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2249, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2265, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1972, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1979, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1995, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2004, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2012, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2022, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2029, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2046, i32 4 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2053, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2064, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2071, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2082, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2089, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2103, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2109, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2115, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2129, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1163, i32 7 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3821, i32 19 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3823, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3737, i32 30 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3744, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3752, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3756, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3767, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3776, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant [16 x i8] c"allegro_m2m_ops\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3648, i32 34 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3782, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3788, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3792, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant [19 x i8] c"supported_firmware\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 370, i32 29 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 374, i32 14 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 383, i32 14 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2338, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2342, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2360, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2365, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2374, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2384, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3662, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3670, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3678, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3687, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3697, i32 3 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 789, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 989, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant [13 x i8] c"allegro_fops\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3590, i32 42 }
@___asan_gen_.846 = private unnamed_addr constant [18 x i8] c"allegro_ioctl_ops\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3556, i32 36 }
@___asan_gen_.849 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3056, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3063, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant [17 x i8] c"allegro_ctrl_ops\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3019, i32 35 }
@___asan_gen_.864 = private unnamed_addr constant [35 x i8] c"allegro_encoder_buffer_ctrl_config\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3024, i32 38 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2996, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3026, i32 10 }
@___asan_gen_.879 = private unnamed_addr constant [18 x i8] c"allegro_queue_ops\00", align 1
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2893, i32 29 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2762, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2796, i32 4 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2836, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2857, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2493, i32 4 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2644, i32 3 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2658, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3256, i32 21 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3257, i32 49 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2551, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2558, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2564, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2606, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3721, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.999 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1000 = private constant [53 x i8] c"../drivers/media/platform/allegro-dvt/allegro-core.c\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3726, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant [32 x i8] c"switch.table.allegro_irq_thread\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.248\00", align 1
@___asan_gen_.1004 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.249\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.250\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.251\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.252\00", align 1
@___asan_gen_.1008 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.253\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.254\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.255\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.256\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.257\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_irq_thread.258\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_channel_adjust\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant [40 x i8] c"switch.table.allegro_channel_adjust.259\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_stop_streaming\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant [36 x i8] c"switch.table.allegro_ioctl_streamon\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant [40 x i8] c"switch.table.allegro_ioctl_streamon.260\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant [40 x i8] c"switch.table.allegro_ioctl_streamon.261\00", align 1
@llvm.compiler.used = appending global [341 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_debug300, ptr @__UNIQUE_ID_debugtype299, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_allegro_driver_exit, ptr @__initcall__kmod_allegro__321_4022_allegro_driver_init6, ptr @__param_debug, ptr @allegro_buf_prepare._entry, ptr @allegro_buf_prepare._entry_ptr, ptr @allegro_channel_adjust._entry, ptr @allegro_channel_adjust._entry.227, ptr @allegro_channel_adjust._entry_ptr, ptr @allegro_channel_adjust._entry_ptr.229, ptr @allegro_channel_finish_frame._entry, ptr @allegro_channel_finish_frame._entry.102, ptr @allegro_channel_finish_frame._entry.105, ptr @allegro_channel_finish_frame._entry.108, ptr @allegro_channel_finish_frame._entry.111, ptr @allegro_channel_finish_frame._entry.114, ptr @allegro_channel_finish_frame._entry.117, ptr @allegro_channel_finish_frame._entry.120, ptr @allegro_channel_finish_frame._entry.123, ptr @allegro_channel_finish_frame._entry.126, ptr @allegro_channel_finish_frame._entry.129, ptr @allegro_channel_finish_frame._entry.132, ptr @allegro_channel_finish_frame._entry.135, ptr @allegro_channel_finish_frame._entry.90, ptr @allegro_channel_finish_frame._entry.93, ptr @allegro_channel_finish_frame._entry.96, ptr @allegro_channel_finish_frame._entry.99, ptr @allegro_channel_finish_frame._entry_ptr, ptr @allegro_channel_finish_frame._entry_ptr.101, ptr @allegro_channel_finish_frame._entry_ptr.104, ptr @allegro_channel_finish_frame._entry_ptr.107, ptr @allegro_channel_finish_frame._entry_ptr.110, ptr @allegro_channel_finish_frame._entry_ptr.113, ptr @allegro_channel_finish_frame._entry_ptr.116, ptr @allegro_channel_finish_frame._entry_ptr.119, ptr @allegro_channel_finish_frame._entry_ptr.122, ptr @allegro_channel_finish_frame._entry_ptr.125, ptr @allegro_channel_finish_frame._entry_ptr.128, ptr @allegro_channel_finish_frame._entry_ptr.131, ptr @allegro_channel_finish_frame._entry_ptr.134, ptr @allegro_channel_finish_frame._entry_ptr.137, ptr @allegro_channel_finish_frame._entry_ptr.92, ptr @allegro_channel_finish_frame._entry_ptr.95, ptr @allegro_channel_finish_frame._entry_ptr.98, ptr @allegro_copy_firmware._entry, ptr @allegro_copy_firmware._entry.175, ptr @allegro_copy_firmware._entry_ptr, ptr @allegro_copy_firmware._entry_ptr.177, ptr @allegro_copy_fw_codec._entry, ptr @allegro_copy_fw_codec._entry.180, ptr @allegro_copy_fw_codec._entry.183, ptr @allegro_copy_fw_codec._entry.186, ptr @allegro_copy_fw_codec._entry_ptr, ptr @allegro_copy_fw_codec._entry_ptr.182, ptr @allegro_copy_fw_codec._entry_ptr.185, ptr @allegro_copy_fw_codec._entry_ptr.188, ptr @allegro_create_channel._entry, ptr @allegro_create_channel._entry.234, ptr @allegro_create_channel._entry.237, ptr @allegro_create_channel._entry.240, ptr @allegro_create_channel._entry_ptr, ptr @allegro_create_channel._entry_ptr.236, ptr @allegro_create_channel._entry_ptr.239, ptr @allegro_create_channel._entry_ptr.242, ptr @allegro_destroy_channel._entry, ptr @allegro_destroy_channel._entry_ptr, ptr @allegro_driver_exit, ptr @allegro_encoder_buffer_init._entry, ptr @allegro_encoder_buffer_init._entry_ptr, ptr @allegro_firmware_request_nowait._entry, ptr @allegro_firmware_request_nowait._entry_ptr, ptr @allegro_fw_callback._entry, ptr @allegro_fw_callback._entry.150, ptr @allegro_fw_callback._entry.153, ptr @allegro_fw_callback._entry.156, ptr @allegro_fw_callback._entry.159, ptr @allegro_fw_callback._entry.162, ptr @allegro_fw_callback._entry.165, ptr @allegro_fw_callback._entry.168, ptr @allegro_fw_callback._entry_ptr, ptr @allegro_fw_callback._entry_ptr.152, ptr @allegro_fw_callback._entry_ptr.155, ptr @allegro_fw_callback._entry_ptr.158, ptr @allegro_fw_callback._entry_ptr.161, ptr @allegro_fw_callback._entry_ptr.164, ptr @allegro_fw_callback._entry_ptr.167, ptr @allegro_fw_callback._entry_ptr.170, ptr @allegro_handle_create_channel._entry, ptr @allegro_handle_create_channel._entry.46, ptr @allegro_handle_create_channel._entry.49, ptr @allegro_handle_create_channel._entry.52, ptr @allegro_handle_create_channel._entry.55, ptr @allegro_handle_create_channel._entry.58, ptr @allegro_handle_create_channel._entry.61, ptr @allegro_handle_create_channel._entry_ptr, ptr @allegro_handle_create_channel._entry_ptr.48, ptr @allegro_handle_create_channel._entry_ptr.51, ptr @allegro_handle_create_channel._entry_ptr.54, ptr @allegro_handle_create_channel._entry_ptr.57, ptr @allegro_handle_create_channel._entry_ptr.60, ptr @allegro_handle_create_channel._entry_ptr.63, ptr @allegro_handle_destroy_channel._entry, ptr @allegro_handle_destroy_channel._entry.84, ptr @allegro_handle_destroy_channel._entry_ptr, ptr @allegro_handle_destroy_channel._entry_ptr.86, ptr @allegro_handle_encode_frame._entry, ptr @allegro_handle_encode_frame._entry_ptr, ptr @allegro_handle_message._entry, ptr @allegro_handle_message._entry_ptr, ptr @allegro_mcu_hw_deinit._entry, ptr @allegro_mcu_hw_deinit._entry.245, ptr @allegro_mcu_hw_deinit._entry_ptr, ptr @allegro_mcu_hw_deinit._entry_ptr.247, ptr @allegro_mcu_hw_init._entry, ptr @allegro_mcu_hw_init._entry.191, ptr @allegro_mcu_hw_init._entry.194, ptr @allegro_mcu_hw_init._entry.197, ptr @allegro_mcu_hw_init._entry.200, ptr @allegro_mcu_hw_init._entry_ptr, ptr @allegro_mcu_hw_init._entry_ptr.193, ptr @allegro_mcu_hw_init._entry_ptr.196, ptr @allegro_mcu_hw_init._entry_ptr.199, ptr @allegro_mcu_hw_init._entry_ptr.202, ptr @allegro_probe._entry, ptr @allegro_probe._entry.12, ptr @allegro_probe._entry.16, ptr @allegro_probe._entry.19, ptr @allegro_probe._entry.24, ptr @allegro_probe._entry.28, ptr @allegro_probe._entry.34, ptr @allegro_probe._entry.37, ptr @allegro_probe._entry.8, ptr @allegro_probe._entry_ptr, ptr @allegro_probe._entry_ptr.10, ptr @allegro_probe._entry_ptr.14, ptr @allegro_probe._entry_ptr.18, ptr @allegro_probe._entry_ptr.21, ptr @allegro_probe._entry_ptr.26, ptr @allegro_probe._entry_ptr.31, ptr @allegro_probe._entry_ptr.36, ptr @allegro_probe._entry_ptr.39, ptr @allegro_queue_setup._entry, ptr @allegro_queue_setup._entry_ptr, ptr @allegro_s_ctrl._entry, ptr @allegro_s_ctrl._entry_ptr, ptr @allegro_start_streaming._entry, ptr @allegro_start_streaming._entry_ptr, ptr @allegro_stop_streaming._entry, ptr @allegro_stop_streaming._entry_ptr, ptr @to_codec_addr._entry, ptr @to_codec_addr._entry_ptr, ptr @to_mcu_addr._entry, ptr @to_mcu_addr._entry_ptr, ptr @debug, ptr @allegro_driver, ptr @.str, ptr @allegro_dt_ids, ptr @allegro_pm_ops, ptr @allegro_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @allegro_probe._key, ptr @allegro_regmap_config, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @allegro_probe._key.22, ptr @allegro_sram_config, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @init_completion.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @allegro_m2m_ops, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @supported_firmware, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @allegro_mbox_init.__key, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @allegro_fops, ptr @allegro_ioctl_ops, ptr @allegro_open.__key, ptr @.str.206, ptr @allegro_open._key, ptr @.str.207, ptr @allegro_ctrl_ops, ptr @allegro_encoder_buffer_ctrl_config, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @allegro_queue_ops, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.228, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.243, ptr @.str.244, ptr @.str.246, ptr @switch.table.allegro_irq_thread, ptr @switch.table.allegro_irq_thread.248, ptr @switch.table.allegro_irq_thread.249, ptr @switch.table.allegro_irq_thread.250, ptr @switch.table.allegro_irq_thread.251, ptr @switch.table.allegro_irq_thread.252, ptr @switch.table.allegro_irq_thread.253, ptr @switch.table.allegro_irq_thread.254, ptr @switch.table.allegro_irq_thread.255, ptr @switch.table.allegro_irq_thread.256, ptr @switch.table.allegro_irq_thread.257, ptr @switch.table.allegro_irq_thread.258, ptr @switch.table.allegro_channel_adjust, ptr @switch.table.allegro_channel_adjust.259, ptr @switch.table.allegro_stop_streaming, ptr @switch.table.allegro_ioctl_streamon, ptr @switch.table.allegro_ioctl_streamon.260, ptr @switch.table.allegro_ioctl_streamon.261], section "llvm.metadata"
@0 = internal global [257 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_sram_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_create_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_create_channel._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_create_channel._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_create_channel._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_create_channel._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_create_channel._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_create_channel._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @to_codec_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @to_mcu_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_destroy_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_destroy_channel._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_handle_encode_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_finish_frame._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_firmware_request_nowait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_fw_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_fw_callback._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_fw_callback._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_fw_callback._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_fw_callback._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_fw_callback._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_fw_callback._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_fw_callback._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_firmware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_copy_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_copy_firmware._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_copy_fw_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_copy_fw_codec._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_copy_fw_codec._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_copy_fw_codec._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_mcu_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_mcu_hw_init._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_mcu_hw_init._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_mcu_hw_init._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_mcu_hw_init._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_mbox_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_encoder_buffer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_open._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_encoder_buffer_ctrl_config to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_queue_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_destroy_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_adjust._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_channel_adjust._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_create_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_create_channel._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_create_channel._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_create_channel._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_mcu_hw_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allegro_mcu_hw_deinit._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.249 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.250 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.251 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.252 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.253 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.254 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.255 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.256 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.257 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_irq_thread.258 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_channel_adjust to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_channel_adjust.259 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_stop_streaming to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_ioctl_streamon to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_ioctl_streamon.260 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.allegro_ioctl_streamon.261 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @allegro_driver, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @allegro_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @allegro_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1744, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %plat_dev = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %plat_dev, align 4
  %init_complete = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 15
  %1 = ptrtoint ptr %init_complete to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %init_complete, align 4
  %wait.i = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #15
  %channels = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 20
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %channels, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @allegro_probe.__key) #15
  %initialized = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %initialized, align 8
  %call2 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #18
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %8
  %call12 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %6, i32 noundef %add.i) #15
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #18
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %call21 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull %call12, ptr noundef nonnull @allegro_regmap_config, ptr noundef nonnull @allegro_probe._key, ptr noundef nonnull @.str.11) #15
  %regmap = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #18
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end19
  %call32 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.15) #15
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #18
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %13 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call32, align 4
  %end.i185 = getelementptr inbounds %struct.resource, ptr %call32, i32 0, i32 1
  %15 = ptrtoint ptr %end.i185 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i185, align 4
  %sub.i186 = sub i32 1, %14
  %add.i187 = add i32 %sub.i186, %16
  %call43 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %14, i32 noundef %add.i187) #15
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #18
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  %call53 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull %call43, ptr noundef nonnull @allegro_sram_config, ptr noundef nonnull @allegro_probe._key.22, ptr noundef nonnull @.str.23) #15
  %sram = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %sram to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call53, ptr %sram, align 8
  %cmp.i188 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %do.end59, label %if.end63

do.end59:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #18
  %18 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sram, align 8
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end63:                                         ; preds = %if.end50
  %call64 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.27) #15
  %settings = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call64, ptr %settings, align 4
  %cmp.i189 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %do.end70, label %if.end63.if.end72_crit_edge

if.end63.if.end72_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.29) #18
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %if.end63.if.end72_crit_edge
  %call74 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.32) #15
  %clk_core = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %clk_core to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call74, ptr %clk_core, align 8
  %cmp.i190 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %call74 to i32
  br label %cleanup

if.end80:                                         ; preds = %if.end72
  %call82 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.33) #15
  %clk_mcu = getelementptr inbounds %struct.allegro_dev, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %clk_mcu to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call82, ptr %clk_mcu, align 4
  %cmp.i191 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %call82 to i32
  br label %cleanup

if.end88:                                         ; preds = %if.end80
  %call89 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp = icmp slt i32 %call89, 0
  br i1 %cmp, label %if.end88.cleanup_crit_edge, label %if.end91

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end91:                                         ; preds = %if.end88
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end91.dev_name.exit_crit_edge

if.end91.dev_name.exit_crit_edge:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end91.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %if.end91.dev_name.exit_crit_edge ]
  %call95 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call89, ptr noundef nonnull @allegro_hardirq, ptr noundef nonnull @allegro_irq_thread, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.end100, label %if.end102

do.end100:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call95) #18
  br label %cleanup

if.end102:                                        ; preds = %dev_name.exit
  %call104 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end107:                                        ; preds = %if.end102
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i192 = icmp sgt i32 %31, 0
  br i1 %cmp.i192, label %do.end.i, label %if.end107.allegro_firmware_request_nowait.exit_crit_edge

if.end107.allegro_firmware_request_nowait.exit_crit_edge: ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_firmware_request_nowait.exit

do.end.i:                                         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call.i193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name.i, ptr noundef nonnull @.str.144) #18
  br label %allegro_firmware_request_nowait.exit

allegro_firmware_request_nowait.exit:             ; preds = %do.end.i, %if.end107.allegro_firmware_request_nowait.exit_crit_edge
  %32 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %plat_dev, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %call5.i = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.144, ptr noundef %dev4.i, i32 noundef 3264, ptr noundef nonnull %call.i, ptr noundef nonnull @allegro_fw_callback) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp109 = icmp slt i32 %call5.i, 0
  br i1 %cmp109, label %do.end113, label %allegro_firmware_request_nowait.exit.cleanup_crit_edge

allegro_firmware_request_nowait.exit.cleanup_crit_edge: ; preds = %allegro_firmware_request_nowait.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end113:                                        ; preds = %allegro_firmware_request_nowait.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %call5.i) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %allegro_firmware_request_nowait.exit.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %do.end100, %if.end88.cleanup_crit_edge, %if.then85, %if.then77, %do.end59, %do.end48, %do.end37, %do.end27, %do.end17, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %do.end27 ], [ %20, %do.end59 ], [ %23, %if.then77 ], [ %25, %if.then85 ], [ %call95, %do.end100 ], [ %call5.i, %do.end113 ], [ -12, %do.end48 ], [ -22, %do.end37 ], [ -12, %do.end17 ], [ -22, %do.end7 ], [ -12, %entry.cleanup_crit_edge ], [ %call89, %if.end88.cleanup_crit_edge ], [ %call104, %if.end102.cleanup_crit_edge ], [ 0, %allegro_firmware_request_nowait.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %initialized = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 8, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %video_dev = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %video_dev) #15
  %m2m_dev = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @v4l2_m2m_release(ptr noundef nonnull %5) #15
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  tail call fastcc void @allegro_mcu_hw_deinit(ptr noundef %1)
  %firmware.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %firmware.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.if.end5_crit_edge, label %if.then.i.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %plat_dev.i.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_dev.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %size.i.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i.i, align 4
  %paddr.i.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %paddr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i, i32 noundef %11, ptr noundef nonnull %7, i32 noundef %13, i32 noundef 0) #15
  %14 = ptrtoint ptr %firmware.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %firmware.i, align 4
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %size.i.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i.i, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %plat_dev = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %plat_dev, align 4
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev6, i32 noundef 5) #15
  %18 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %plat_dev, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev9, i1 noundef zeroext true) #15
  tail call void @v4l2_device_unregister(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_hardirq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #15
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !463
  %regmap = getelementptr inbounds %struct.allegro_dev, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 268, ptr noundef nonnull %status) #15
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_write(ptr noundef %6, i32 noundef 264, i32 noundef %4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %eos_event.i.i.i.i.i = alloca %struct.v4l2_event, align 8
  %param.i.i.i = alloca %struct.create_channel_param, align 4
  %head.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_status = getelementptr inbounds %struct.allegro_dev, ptr %data, i32 0, i32 18
  %0 = ptrtoint ptr %mbox_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_status, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 232) #19
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %fw_info.i = getelementptr inbounds %struct.allegro_dev, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_info.i, align 8
  %mailbox_version.i = getelementptr inbounds %struct.fw_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %mailbox_version.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mailbox_version.i, align 4
  %version.i = getelementptr inbounds %struct.mcu_msg_header, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %version.i, align 4
  %size2.i = getelementptr inbounds %struct.allegro_mbox, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size2.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #20
  %tobool4.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.out.i_crit_edge, label %if.end6.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size2.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %sram1.i.i = getelementptr inbounds %struct.allegro_dev, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %sram1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sram1.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head.i.i) #15
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %head.i.i, align 4, !annotation !463
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %17) #15
  %head2.i.i = getelementptr inbounds %struct.allegro_mbox, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %head2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %head2.i.i, align 4
  %call3.i.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %20, ptr noundef nonnull %head.i.i) #15
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %head.i.i, align 4
  %23 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i31.i = icmp ugt i32 %22, %24
  br i1 %cmp.i31.i, label %if.end6.i.allegro_mbox_read.exit.thread.i_crit_edge, label %if.end.i32.i

if.end6.i.allegro_mbox_read.exit.thread.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mbox_read.exit.thread.i

if.end.i32.i:                                     ; preds = %if.end6.i
  %data.i.i = getelementptr inbounds %struct.allegro_mbox, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data.i.i, align 4
  %add.i.i = add i32 %26, %22
  %div.i.i = udiv i32 4, %call.i.i
  %call5.i.i = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef %add.i.i, ptr noundef nonnull %call9.i.i, i32 noundef %div.i.i) #15
  %27 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call9.i.i, align 128
  %conv.i.i = zext i16 %28 to i32
  %add6.i.i = add nuw nsw i32 %conv.i.i, 4
  %29 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i.i, i32 %30)
  %cmp8.i.i = icmp ugt i32 %add6.i.i, %30
  %and.i.i = and i32 %conv.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %or.cond.i.not.i = or i1 %cmp8.i.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i.i, i32 %13)
  %cmp12.i.i = icmp ugt i32 %add6.i.i, %13
  %or.cond.i = select i1 %or.cond.i.not.i, i1 true, i1 %cmp12.i.i
  br i1 %or.cond.i, label %if.end.i32.i.allegro_mbox_read.exit.thread.i_crit_edge, label %if.end10.i

if.end.i32.i.allegro_mbox_read.exit.thread.i_crit_edge: ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mbox_read.exit.thread.i

allegro_mbox_read.exit.thread.i:                  ; preds = %if.end.i32.i.allegro_mbox_read.exit.thread.i_crit_edge, %if.end6.i.allegro_mbox_read.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head.i.i) #15
  br label %out.i

if.end10.i:                                       ; preds = %if.end.i32.i
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head.i.i, align 4
  %add19.neg.i.i = add i32 %30, -4
  %sub.i.i = sub i32 %add19.neg.i.i, %32
  %33 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %conv.i.i) #15
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data.i.i, align 4
  %add23.i.i = add i32 %32, 4
  %add24.i.i = add i32 %add23.i.i, %35
  %add.ptr.i.i = getelementptr i32, ptr %call9.i.i, i32 1
  %div25.i.i = udiv i32 %33, %call.i.i
  %call26.i.i = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef %add24.i.i, ptr noundef %add.ptr.i.i, i32 noundef %div25.i.i) #15
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data.i.i, align 4
  %add28.i.i = add nuw nsw i32 %33, 4
  %div2975.i.i = lshr i32 %add28.i.i, 2
  %add.ptr30.i.i = getelementptr i32, ptr %call9.i.i, i32 %div2975.i.i
  %38 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %call9.i.i, align 128
  %conv32.i.i = zext i16 %39 to i32
  %sub33.i.i = sub nsw i32 %conv32.i.i, %33
  %div34.i.i = udiv i32 %sub33.i.i, %call.i.i
  %call35.i.i = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef %37, ptr noundef %add.ptr30.i.i, i32 noundef %div34.i.i) #15
  %40 = ptrtoint ptr %head2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %head2.i.i, align 4
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %head.i.i, align 4
  %add37.i.i = add i32 %43, %add6.i.i
  %44 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size2.i, align 4
  %rem.i.i = urem i32 %add37.i.i, %45
  %call39.i.i = call i32 @regmap_write(ptr noundef %17, i32 noundef %41, i32 noundef %rem.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head.i.i) #15
  %call11.i = call i32 @allegro_decode_mail(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call9.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.out.i_crit_edge

if.end10.i.out.i_crit_edge:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end14.i:                                       ; preds = %if.end10.i
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call7.i.i, align 8
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %47, label %do.end.i.i [
    i32 0, label %sw.bb.i.i
    i32 5, label %sw.bb1.i.i
    i32 6, label %sw.bb3.i.i
    i32 7, label %sw.bb5.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %init_complete.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %3, i32 0, i32 15
  call void @complete(ptr noundef %init_complete.i.i.i) #15
  br label %out.i

sw.bb1.i.i:                                       ; preds = %if.end14.i
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %param.i.i.i) #15
  %49 = call ptr @memset(ptr %param.i.i.i, i32 255, i32 280)
  %user_id.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %user_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %user_id.i.i.i, align 4
  %channels.i.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %3, i32 0, i32 20
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %sw.bb1.i.i
  %.pn.in.i.i.i.i = phi ptr [ %channels.i.i.i.i, %sw.bb1.i.i ], [ %.pn.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %52 = ptrtoint ptr %.pn.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.i.i.i.i = load ptr, ptr %.pn.in.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %channels.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.cond.i.i.i.i.do.end.i.i.i_crit_edge, label %for.body.i.i.i.i

for.cond.i.i.i.i.do.end.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %user_id2.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -132
  %53 = ptrtoint ptr %user_id2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %user_id2.i.i.i.i, align 4
  %cmp3.i.i.i.i = icmp eq i32 %54, %51
  br i1 %cmp3.i.i.i.i, label %allegro_find_channel_by_user_id.exit.i.i.i, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i.i

allegro_find_channel_by_user_id.exit.i.i.i:       ; preds = %for.body.i.i.i.i
  %channel.0.le.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -752
  %cmp.i.i.i.i = icmp ugt ptr %channel.0.le.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %allegro_find_channel_by_user_id.exit.i.i.i.do.end.i.i.i_crit_edge, label %if.end.i.i34.i

allegro_find_channel_by_user_id.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %allegro_find_channel_by_user_id.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %allegro_find_channel_by_user_id.exit.i.i.i.do.end.i.i.i_crit_edge, %for.cond.i.i.i.i.do.end.i.i.i_crit_edge
  %name.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call2.i.i.i = call ptr @msg_type_name(i32 noundef 5) #15
  %55 = ptrtoint ptr %user_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %user_id.i.i.i, align 4
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name.i.i.i, ptr noundef %call2.i.i.i, i32 noundef %56) #18
  br label %allegro_handle_create_channel.exit.i.i

if.end.i.i34.i:                                   ; preds = %allegro_find_channel_by_user_id.exit.i.i.i
  %error_code.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 12
  %57 = ptrtoint ptr %error_code.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %error_code.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i33.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i33.i, label %if.end18.i.i.i, label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.end.i.i34.i
  %name11.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %switch.tableidx = add i32 %58, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %switch.tableidx)
  %59 = icmp ult i32 %switch.tableidx, 18
  br i1 %59, label %switch.lookup, label %do.end8.i.i.i.allegro_err_to_string.exit.i.i.i_crit_edge

do.end8.i.i.i.allegro_err_to_string.exit.i.i.i_crit_edge: ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_err_to_string.exit.i.i.i

switch.lookup:                                    ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [18 x ptr], ptr @switch.table.allegro_irq_thread, i32 0, i32 %switch.tableidx
  %60 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %allegro_err_to_string.exit.i.i.i

allegro_err_to_string.exit.i.i.i:                 ; preds = %switch.lookup, %do.end8.i.i.i.allegro_err_to_string.exit.i.i.i_crit_edge
  %retval.0.i1.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.77, %do.end8.i.i.i.allegro_err_to_string.exit.i.i.i_crit_edge ]
  %call17.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name11.i.i.i, i32 noundef %51, ptr noundef nonnull %retval.0.i1.i.i.i, i32 noundef %58) #18
  br label %out.i.i.i

if.end18.i.i.i:                                   ; preds = %if.end.i.i34.i
  %channel_id.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %channel_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %channel_id.i.i.i, align 8
  %mcu_channel_id.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -128
  %63 = ptrtoint ptr %mcu_channel_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %mcu_channel_id.i.i.i, align 4
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i.i35.i = icmp sgt i32 %64, 0
  br i1 %cmp.i.i35.i, label %do.end23.i.i.i, label %if.end18.i.i.i.do.end33.i.i.i_crit_edge

if.end18.i.i.i.do.end33.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33.i.i.i

do.end23.i.i.i:                                   ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name26.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call30.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name26.i.i.i, i32 noundef %51, i32 noundef %62) #18
  br label %do.end33.i.i.i

do.end33.i.i.i:                                   ; preds = %do.end23.i.i.i, %if.end18.i.i.i.do.end33.i.i.i_crit_edge
  %config_blob.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -300
  %65 = ptrtoint ptr %config_blob.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config_blob.i.i.i, align 4
  %call34.i.i.i = call i32 @allegro_decode_config_blob(ptr noundef nonnull %param.i.i.i, ptr noundef %call7.i.i, ptr noundef %66) #15
  %67 = ptrtoint ptr %config_blob.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config_blob.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i.i, label %do.end33.i.i.i.allegro_free_buffer.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

do.end33.i.i.i.allegro_free_buffer.exit.i.i.i_crit_edge: ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_free_buffer.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %channel.0.le.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %channel.0.le.i.i.i.i, align 4
  %plat_dev.i.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %plat_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %plat_dev.i.i.i.i, align 4
  %dev1.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  %size.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -292
  %73 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i.i.i.i, align 4
  %paddr.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -296
  %75 = ptrtoint ptr %paddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %paddr.i.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i.i.i.i, i32 noundef %74, ptr noundef nonnull %68, i32 noundef %76, i32 noundef 0) #15
  %77 = ptrtoint ptr %config_blob.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %config_blob.i.i.i, align 4
  %78 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %size.i.i.i.i, align 4
  br label %allegro_free_buffer.exit.i.i.i

allegro_free_buffer.exit.i.i.i:                   ; preds = %if.then.i.i.i.i, %do.end33.i.i.i.allegro_free_buffer.exit.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %call34.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %if.end39.i.i.i, label %allegro_free_buffer.exit.i.i.i.out.i.i.i_crit_edge

allegro_free_buffer.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %allegro_free_buffer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i.i.i

if.end39.i.i.i:                                   ; preds = %allegro_free_buffer.exit.i.i.i
  %num_ref_idx_l0.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i.i, i32 0, i32 20
  %79 = ptrtoint ptr %num_ref_idx_l0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_ref_idx_l0.i.i.i, align 4
  %num_ref_idx_l040.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -268
  %81 = ptrtoint ptr %num_ref_idx_l040.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %num_ref_idx_l040.i.i.i, align 4
  %num_ref_idx_l1.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i.i, i32 0, i32 21
  %82 = ptrtoint ptr %num_ref_idx_l1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_ref_idx_l1.i.i.i, align 4
  %num_ref_idx_l141.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -264
  %84 = ptrtoint ptr %num_ref_idx_l141.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %num_ref_idx_l141.i.i.i, align 4
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp43.i.i.i = icmp sgt i32 %85, 0
  br i1 %cmp43.i.i.i, label %do.end47.i.i.i, label %if.end39.i.i.i.do.end56.i.i.i_crit_edge

if.end39.i.i.i.do.end56.i.i.i_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end56.i.i.i

do.end47.i.i.i:                                   ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name50.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %86 = ptrtoint ptr %mcu_channel_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mcu_channel_id.i.i.i, align 4
  %int_buffers_count.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 7
  %88 = ptrtoint ptr %int_buffers_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %int_buffers_count.i.i.i, align 8
  %int_buffers_size.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 8
  %90 = ptrtoint ptr %int_buffers_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %int_buffers_size.i.i.i, align 4
  %call53.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name50.i.i.i, i32 noundef %87, i32 noundef %89, i32 noundef %91) #18
  br label %do.end56.i.i.i

do.end56.i.i.i:                                   ; preds = %do.end47.i.i.i, %if.end39.i.i.i.do.end56.i.i.i_crit_edge
  %int_buffers_count57.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 7
  %92 = ptrtoint ptr %int_buffers_count57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %int_buffers_count57.i.i.i, align 8
  %int_buffers_size58.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 8
  %94 = ptrtoint ptr %int_buffers_size58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %int_buffers_size58.i.i.i, align 4
  %buffers_intermediate.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -116
  %call.i.i.i.i = call fastcc i32 @allocate_buffers_internal(ptr noundef %channel.0.le.i.i.i.i, ptr noundef %buffers_intermediate.i.i.i.i, i32 noundef %93, i32 noundef %95) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool60.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool60.not.i.i.i, label %if.end71.i.i.i, label %do.end64.i.i.i

do.end64.i.i.i:                                   ; preds = %do.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name67.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %96 = ptrtoint ptr %mcu_channel_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mcu_channel_id.i.i.i, align 4
  %call70.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name67.i.i.i, i32 noundef %97) #18
  br label %out.i.i.i

if.end71.i.i.i:                                   ; preds = %do.end56.i.i.i
  %call.i2.i.i.i = call fastcc i32 @allegro_mcu_push_buffer_internal(ptr noundef %channel.0.le.i.i.i.i, i32 noundef 14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i.i)
  %tobool73.not.i.i.i = icmp eq i32 %call.i2.i.i.i, 0
  br i1 %tobool73.not.i.i.i, label %do.body76.i.i.i, label %if.end71.i.i.i.out.i.i.i_crit_edge

if.end71.i.i.i.out.i.i.i_crit_edge:               ; preds = %if.end71.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i.i.i

do.body76.i.i.i:                                  ; preds = %if.end71.i.i.i
  %98 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp77.i.i.i = icmp sgt i32 %98, 0
  br i1 %cmp77.i.i.i, label %do.end81.i.i.i, label %do.body76.i.i.i.do.end90.i.i.i_crit_edge

do.body76.i.i.i.do.end90.i.i.i_crit_edge:         ; preds = %do.body76.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end90.i.i.i

do.end81.i.i.i:                                   ; preds = %do.body76.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name84.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %99 = ptrtoint ptr %mcu_channel_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mcu_channel_id.i.i.i, align 4
  %rec_buffers_count.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 9
  %101 = ptrtoint ptr %rec_buffers_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rec_buffers_count.i.i.i, align 8
  %rec_buffers_size.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 10
  %103 = ptrtoint ptr %rec_buffers_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rec_buffers_size.i.i.i, align 4
  %call87.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name84.i.i.i, i32 noundef %100, i32 noundef %102, i32 noundef %104) #18
  br label %do.end90.i.i.i

do.end90.i.i.i:                                   ; preds = %do.end81.i.i.i, %do.body76.i.i.i.do.end90.i.i.i_crit_edge
  %rec_buffers_count91.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 9
  %105 = ptrtoint ptr %rec_buffers_count91.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rec_buffers_count91.i.i.i, align 8
  %rec_buffers_size92.i.i.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %call7.i.i, i32 0, i32 10
  %107 = ptrtoint ptr %rec_buffers_size92.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rec_buffers_size92.i.i.i, align 4
  %buffers_reference.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -124
  %add.i.i.i.i = add i32 %108, 4095
  %and.i.i.i.i = and i32 %add.i.i.i.i, -4096
  %call.i3.i.i.i = call fastcc i32 @allocate_buffers_internal(ptr noundef %channel.0.le.i.i.i.i, ptr noundef %buffers_reference.i.i.i.i, i32 noundef %106, i32 noundef %and.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.i.i)
  %tobool94.not.i.i.i = icmp eq i32 %call.i3.i.i.i, 0
  br i1 %tobool94.not.i.i.i, label %if.end105.i.i.i, label %do.end98.i.i.i

do.end98.i.i.i:                                   ; preds = %do.end90.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name101.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %109 = ptrtoint ptr %mcu_channel_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mcu_channel_id.i.i.i, align 4
  %call104.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name101.i.i.i, i32 noundef %110) #18
  br label %out.i.i.i

if.end105.i.i.i:                                  ; preds = %do.end90.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i4.i.i.i = call fastcc i32 @allegro_mcu_push_buffer_internal(ptr noundef %channel.0.le.i.i.i.i, i32 noundef 15) #15
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.end105.i.i.i, %do.end98.i.i.i, %if.end71.i.i.i.out.i.i.i_crit_edge, %do.end64.i.i.i, %allegro_free_buffer.exit.i.i.i.out.i.i.i_crit_edge, %allegro_err_to_string.exit.i.i.i
  %err.0.i.i.i = phi i32 [ -5, %allegro_err_to_string.exit.i.i.i ], [ %call34.i.i.i, %allegro_free_buffer.exit.i.i.i.out.i.i.i_crit_edge ], [ %call.i.i.i.i, %do.end64.i.i.i ], [ %call.i2.i.i.i, %if.end71.i.i.i.out.i.i.i_crit_edge ], [ %call.i3.i.i.i, %do.end98.i.i.i ], [ %call.i4.i.i.i, %if.end105.i.i.i ]
  %error.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 64
  %111 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %err.0.i.i.i, ptr %error.i.i.i, align 4
  %completion.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 8
  call void @complete(ptr noundef %completion.i.i.i) #15
  br label %allegro_handle_create_channel.exit.i.i

allegro_handle_create_channel.exit.i.i:           ; preds = %out.i.i.i, %do.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %param.i.i.i) #15
  br label %out.i

sw.bb3.i.i:                                       ; preds = %if.end14.i
  %channel_id.i19.i.i = getelementptr inbounds %struct.mcu_msg_destroy_channel_response, ptr %call7.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %channel_id.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %channel_id.i19.i.i, align 8
  %channels.i.i20.i.i = getelementptr inbounds %struct.allegro_dev, ptr %3, i32 0, i32 20
  br label %for.cond.i.i24.i.i

for.cond.i.i24.i.i:                               ; preds = %for.body.i.i25.i.i.for.cond.i.i24.i.i_crit_edge, %sw.bb3.i.i
  %.pn.in.i.i21.i.i = phi ptr [ %channels.i.i20.i.i, %sw.bb3.i.i ], [ %.pn.i.i22.i.i, %for.body.i.i25.i.i.for.cond.i.i24.i.i_crit_edge ]
  %114 = ptrtoint ptr %.pn.in.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pn.i.i22.i.i = load ptr, ptr %.pn.in.i.i21.i.i, align 4
  %cmp.not.i.i23.i.i = icmp eq ptr %.pn.i.i22.i.i, %channels.i.i20.i.i
  br i1 %cmp.not.i.i23.i.i, label %for.cond.i.i24.i.i.do.end.i31.i.i_crit_edge, label %for.body.i.i25.i.i

for.cond.i.i24.i.i.do.end.i31.i.i_crit_edge:      ; preds = %for.cond.i.i24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i31.i.i

for.body.i.i25.i.i:                               ; preds = %for.cond.i.i24.i.i
  %mcu_channel_id.i.i.i.i = getelementptr i8, ptr %.pn.i.i22.i.i, i32 -128
  %115 = ptrtoint ptr %mcu_channel_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mcu_channel_id.i.i.i.i, align 4
  %cmp2.i.i.i.i = icmp eq i32 %116, %113
  br i1 %cmp2.i.i.i.i, label %allegro_find_channel_by_channel_id.exit.i.i.i, label %for.body.i.i25.i.i.for.cond.i.i24.i.i_crit_edge

for.body.i.i25.i.i.for.cond.i.i24.i.i_crit_edge:  ; preds = %for.body.i.i25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i24.i.i

allegro_find_channel_by_channel_id.exit.i.i.i:    ; preds = %for.body.i.i25.i.i
  %channel.0.le.i.i26.i.i = getelementptr i8, ptr %.pn.i.i22.i.i, i32 -752
  %cmp.i.i27.i.i = icmp ugt ptr %channel.0.le.i.i26.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i27.i.i, label %allegro_find_channel_by_channel_id.exit.i.i.i.do.end.i31.i.i_crit_edge, label %do.body5.i.i.i

allegro_find_channel_by_channel_id.exit.i.i.i.do.end.i31.i.i_crit_edge: ; preds = %allegro_find_channel_by_channel_id.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i31.i.i

do.end.i31.i.i:                                   ; preds = %allegro_find_channel_by_channel_id.exit.i.i.i.do.end.i31.i.i_crit_edge, %for.cond.i.i24.i.i.do.end.i31.i.i_crit_edge
  %name.i28.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call2.i29.i.i = call ptr @msg_type_name(i32 noundef 6) #15
  %117 = ptrtoint ptr %channel_id.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %channel_id.i19.i.i, align 8
  %call4.i30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name.i28.i.i, ptr noundef %call2.i29.i.i, i32 noundef %118) #18
  br label %out.i

do.body5.i.i.i:                                   ; preds = %allegro_find_channel_by_channel_id.exit.i.i.i
  %119 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp.i32.i.i = icmp sgt i32 %119, 1
  br i1 %cmp.i32.i.i, label %do.end9.i.i.i, label %do.body5.i.i.i.do.end17.i.i.i_crit_edge

do.body5.i.i.i.do.end17.i.i.i_crit_edge:          ; preds = %do.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17.i.i.i

do.end9.i.i.i:                                    ; preds = %do.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name12.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %user_id.i33.i.i = getelementptr i8, ptr %.pn.i.i22.i.i, i32 -132
  %120 = ptrtoint ptr %user_id.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %user_id.i33.i.i, align 4
  %call14.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name12.i.i.i, i32 noundef %121, i32 noundef %113) #18
  br label %do.end17.i.i.i

do.end17.i.i.i:                                   ; preds = %do.end9.i.i.i, %do.body5.i.i.i.do.end17.i.i.i_crit_edge
  %completion.i34.i.i = getelementptr i8, ptr %.pn.i.i22.i.i, i32 8
  call void @complete(ptr noundef %completion.i34.i.i) #15
  br label %out.i

sw.bb5.i.i:                                       ; preds = %if.end14.i
  %channel_id.i35.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %channel_id.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %channel_id.i35.i.i, align 8
  %channels.i.i36.i.i = getelementptr inbounds %struct.allegro_dev, ptr %3, i32 0, i32 20
  br label %for.cond.i.i40.i.i

for.cond.i.i40.i.i:                               ; preds = %for.body.i.i43.i.i.for.cond.i.i40.i.i_crit_edge, %sw.bb5.i.i
  %.pn.in.i.i37.i.i = phi ptr [ %channels.i.i36.i.i, %sw.bb5.i.i ], [ %.pn.i.i38.i.i, %for.body.i.i43.i.i.for.cond.i.i40.i.i_crit_edge ]
  %124 = ptrtoint ptr %.pn.in.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn.i.i38.i.i = load ptr, ptr %.pn.in.i.i37.i.i, align 4
  %cmp.not.i.i39.i.i = icmp eq ptr %.pn.i.i38.i.i, %channels.i.i36.i.i
  br i1 %cmp.not.i.i39.i.i, label %for.cond.i.i40.i.i.do.end.i51.i.i_crit_edge, label %for.body.i.i43.i.i

for.cond.i.i40.i.i.do.end.i51.i.i_crit_edge:      ; preds = %for.cond.i.i40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i51.i.i

for.body.i.i43.i.i:                               ; preds = %for.cond.i.i40.i.i
  %mcu_channel_id.i.i41.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -128
  %125 = ptrtoint ptr %mcu_channel_id.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mcu_channel_id.i.i41.i.i, align 4
  %cmp2.i.i42.i.i = icmp eq i32 %126, %123
  br i1 %cmp2.i.i42.i.i, label %allegro_find_channel_by_channel_id.exit.i47.i.i, label %for.body.i.i43.i.i.for.cond.i.i40.i.i_crit_edge

for.body.i.i43.i.i.for.cond.i.i40.i.i_crit_edge:  ; preds = %for.body.i.i43.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i40.i.i

allegro_find_channel_by_channel_id.exit.i47.i.i:  ; preds = %for.body.i.i43.i.i
  %mcu_channel_id.i.i41.i.i.le = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -128
  %channel.0.le.i.i45.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -752
  %cmp.i.i46.i.i = icmp ugt ptr %channel.0.le.i.i45.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i46.i.i, label %allegro_find_channel_by_channel_id.exit.i47.i.i.do.end.i51.i.i_crit_edge, label %if.end.i52.i.i

allegro_find_channel_by_channel_id.exit.i47.i.i.do.end.i51.i.i_crit_edge: ; preds = %allegro_find_channel_by_channel_id.exit.i47.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i51.i.i

do.end.i51.i.i:                                   ; preds = %allegro_find_channel_by_channel_id.exit.i47.i.i.do.end.i51.i.i_crit_edge, %for.cond.i.i40.i.i.do.end.i51.i.i_crit_edge
  %name.i48.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call2.i49.i.i = call ptr @msg_type_name(i32 noundef 7) #15
  %127 = ptrtoint ptr %channel_id.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %channel_id.i35.i.i, align 8
  %call4.i50.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name.i48.i.i, ptr noundef %call2.i49.i.i, i32 noundef %128) #18
  br label %out.i

if.end.i52.i.i:                                   ; preds = %allegro_find_channel_by_channel_id.exit.i47.i.i
  %129 = ptrtoint ptr %channel.0.le.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %channel.0.le.i.i45.i.i, align 4
  %source_shadow_list.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -108
  %src_handle.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 4
  %131 = ptrtoint ptr %src_handle.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %src_handle.i.i.i.i, align 8
  %shadow_list_lock.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -92
  call void @mutex_lock_nested(ptr noundef %shadow_list_lock.i.i.i.i.i, i32 noundef 0) #15
  br label %for.cond.i.i.i.i.i

for.cond.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge, %if.end.i52.i.i
  %.pn.in.in.i.i.i.i.i = phi ptr [ %source_shadow_list.i.i.i.i, %if.end.i52.i.i ], [ %.pn.in.i.i.i.i.i, %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge ]
  %133 = ptrtoint ptr %.pn.in.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pn.in.i.i.i.i.i = load ptr, ptr %.pn.in.in.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i = icmp eq ptr %.pn.in.i.i.i.i.i, %source_shadow_list.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %allegro_get_buffer.exit.thread.i.i.i.i, label %for.body.i.i.i.i.i

allegro_get_buffer.exit.thread.i.i.i.i:           ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %shadow_list_lock.i.i.i.i.i) #15
  br label %do.end.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.cond.i.i.i.i.i
  %shadow.0.i.i.i.i.i = getelementptr i8, ptr %.pn.in.i.i.i.i.i, i32 -744
  %134 = ptrtoint ptr %shadow.0.i.i.i.i.i to i32
  %conv.i.i.i.i.i.i = zext i32 %134 to i64
  %cmp7.i.i.i.i.i = icmp eq i64 %132, %conv.i.i.i.i.i.i
  br i1 %cmp7.i.i.i.i.i, label %if.then.i.i.i.i.i, label %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i.i.i.i.i) #15
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.allegro_get_buffer.exit.i.i.i.i_crit_edge

if.then.i.i.i.i.i.allegro_get_buffer.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_get_buffer.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i.i.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %137 = ptrtoint ptr %.pn.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %.pn.in.i.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %prev1.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev1.i.i.i.i.i.i.i.i, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %138, ptr %136, align 4
  br label %allegro_get_buffer.exit.i.i.i.i

allegro_get_buffer.exit.i.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.allegro_get_buffer.exit.i.i.i.i_crit_edge
  %141 = ptrtoint ptr %.pn.in.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %.pn.in.i.i.i.i.i, ptr %.pn.in.i.i.i.i.i, align 4
  %prev.i3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i.i.i.i, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %.pn.in.i.i.i.i.i, ptr %prev.i3.i.i.i.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %shadow_list_lock.i.i.i.i.i) #15
  %tobool.not.i.i53.i.i = icmp eq ptr %shadow.0.i.i.i.i.i, null
  br i1 %tobool.not.i.i53.i.i, label %allegro_get_buffer.exit.i.i.i.i.do.end.i.i.i.i_crit_edge, label %allegro_get_buffer.exit.i.i.i.i.if.end.i.i.i.i_crit_edge

allegro_get_buffer.exit.i.i.i.i.if.end.i.i.i.i_crit_edge: ; preds = %allegro_get_buffer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i

allegro_get_buffer.exit.i.i.i.i.do.end.i.i.i.i_crit_edge: ; preds = %allegro_get_buffer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %allegro_get_buffer.exit.i.i.i.i.do.end.i.i.i.i_crit_edge, %allegro_get_buffer.exit.thread.i.i.i.i
  %name.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %143 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call2.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name.i.i.i.i, i32 noundef %144) #18
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %allegro_get_buffer.exit.i.i.i.i.if.end.i.i.i.i_crit_edge
  %tobool.not633.i.i.i.i = phi i1 [ true, %do.end.i.i.i.i ], [ false, %allegro_get_buffer.exit.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  %buffer.0.i630.i.i.i.i = phi ptr [ null, %do.end.i.i.i.i ], [ %shadow.0.i.i.i.i.i, %allegro_get_buffer.exit.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  %stream_shadow_list.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -100
  %dst_handle.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 2
  %145 = ptrtoint ptr %dst_handle.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %dst_handle.i.i.i.i, align 8
  call void @mutex_lock_nested(ptr noundef %shadow_list_lock.i.i.i.i.i, i32 noundef 0) #15
  br label %for.cond.i478.i.i.i.i

for.cond.i478.i.i.i.i:                            ; preds = %for.body.i482.i.i.i.i.for.cond.i478.i.i.i.i_crit_edge, %if.end.i.i.i.i
  %.pn.in.in.i475.i.i.i.i = phi ptr [ %stream_shadow_list.i.i.i.i, %if.end.i.i.i.i ], [ %.pn.in.i476.i.i.i.i, %for.body.i482.i.i.i.i.for.cond.i478.i.i.i.i_crit_edge ]
  %147 = ptrtoint ptr %.pn.in.in.i475.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pn.in.i476.i.i.i.i = load ptr, ptr %.pn.in.in.i475.i.i.i.i, align 4
  %cmp.not.i477.i.i.i.i = icmp eq ptr %.pn.in.i476.i.i.i.i, %stream_shadow_list.i.i.i.i
  br i1 %cmp.not.i477.i.i.i.i, label %allegro_get_buffer.exit491.thread.i.i.i.i, label %for.body.i482.i.i.i.i

allegro_get_buffer.exit491.thread.i.i.i.i:        ; preds = %for.cond.i478.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %shadow_list_lock.i.i.i.i.i) #15
  br label %err.i.thread.i.i.i

for.body.i482.i.i.i.i:                            ; preds = %for.cond.i478.i.i.i.i
  %shadow.0.i479.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -744
  %148 = ptrtoint ptr %shadow.0.i479.i.i.i.i to i32
  %conv.i.i480.i.i.i.i = zext i32 %148 to i64
  %cmp7.i481.i.i.i.i = icmp eq i64 %146, %conv.i.i480.i.i.i.i
  br i1 %cmp7.i481.i.i.i.i, label %if.then.i484.i.i.i.i, label %for.body.i482.i.i.i.i.for.cond.i478.i.i.i.i_crit_edge

for.body.i482.i.i.i.i.for.cond.i478.i.i.i.i_crit_edge: ; preds = %for.body.i482.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i478.i.i.i.i

if.then.i484.i.i.i.i:                             ; preds = %for.body.i482.i.i.i.i
  %call.i.i.i483.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i476.i.i.i.i) #15
  br i1 %call.i.i.i483.i.i.i.i, label %if.end.i.i.i487.i.i.i.i, label %if.then.i484.i.i.i.i.allegro_get_buffer.exit491.i.i.i.i_crit_edge

if.then.i484.i.i.i.i.allegro_get_buffer.exit491.i.i.i.i_crit_edge: ; preds = %if.then.i484.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_get_buffer.exit491.i.i.i.i

if.end.i.i.i487.i.i.i.i:                          ; preds = %if.then.i484.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i485.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i476.i.i.i.i, i32 0, i32 1
  %149 = ptrtoint ptr %prev.i.i.i485.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %prev.i.i.i485.i.i.i.i, align 4
  %151 = ptrtoint ptr %.pn.in.i476.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %.pn.in.i476.i.i.i.i, align 4
  %prev1.i.i.i.i486.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %prev1.i.i.i.i486.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %150, ptr %prev1.i.i.i.i486.i.i.i.i, align 4
  %154 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %152, ptr %150, align 4
  br label %allegro_get_buffer.exit491.i.i.i.i

allegro_get_buffer.exit491.i.i.i.i:               ; preds = %if.end.i.i.i487.i.i.i.i, %if.then.i484.i.i.i.i.allegro_get_buffer.exit491.i.i.i.i_crit_edge
  %155 = ptrtoint ptr %.pn.in.i476.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %.pn.in.i476.i.i.i.i, ptr %.pn.in.i476.i.i.i.i, align 4
  %prev.i3.i.i488.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i476.i.i.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %prev.i3.i.i488.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %.pn.in.i476.i.i.i.i, ptr %prev.i3.i.i488.i.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %shadow_list_lock.i.i.i.i.i) #15
  %tobool4.not.i.i.i.i = icmp eq ptr %shadow.0.i479.i.i.i.i, null
  br i1 %tobool4.not.i.i.i.i, label %allegro_get_buffer.exit491.i.i.i.i.err.i.thread.i.i.i_crit_edge, label %if.end15.i.i.i.i

allegro_get_buffer.exit491.i.i.i.i.err.i.thread.i.i.i_crit_edge: ; preds = %allegro_get_buffer.exit491.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.i.thread.i.i.i

if.end15.i.i.i.i:                                 ; preds = %allegro_get_buffer.exit491.i.i.i.i
  br i1 %tobool.not633.i.i.i.i, label %if.end15.i.i.i.i.if.then333.i.i.i.i_crit_edge, label %if.end19.i.i.i.i

if.end15.i.i.i.i.if.then333.i.i.i.i_crit_edge:    ; preds = %if.end15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then333.i.i.i.i

if.end19.i.i.i.i:                                 ; preds = %if.end15.i.i.i.i
  %m2m_ctx.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -560
  %157 = ptrtoint ptr %m2m_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %m2m_ctx.i.i.i.i, align 4
  %is_draining.i.i.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %is_draining.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %is_draining.i.i.i.i.i, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i.i.i.i.i = icmp eq i8 %160, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end19.i.i.i.i.if.end24.i.i.i.i_crit_edge, label %v4l2_m2m_is_last_draining_src_buf.exit.i.i.i.i

if.end19.i.i.i.i.if.end24.i.i.i.i_crit_edge:      ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i.i.i.i

v4l2_m2m_is_last_draining_src_buf.exit.i.i.i.i:   ; preds = %if.end19.i.i.i.i
  %last_src_buf.i.i.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %158, i32 0, i32 3
  %161 = ptrtoint ptr %last_src_buf.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %last_src_buf.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %162, %buffer.0.i630.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %if.then21.i.i.i.i, label %v4l2_m2m_is_last_draining_src_buf.exit.i.i.i.i.if.end24.i.i.i.i_crit_edge

v4l2_m2m_is_last_draining_src_buf.exit.i.i.i.i.if.end24.i.i.i.i_crit_edge: ; preds = %v4l2_m2m_is_last_draining_src_buf.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i.i.i.i

if.then21.i.i.i.i:                                ; preds = %v4l2_m2m_is_last_draining_src_buf.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -304
  %163 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %flags.i.i.i.i, align 8
  %or.i.i.i.i = or i32 %164, 1048576
  store i32 %or.i.i.i.i, ptr %flags.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %eos_event.i.i.i.i.i) #15
  %165 = call ptr @memset(ptr %eos_event.i.i.i.i.i, i32 0, i32 136)
  %166 = ptrtoint ptr %eos_event.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 2, ptr %eos_event.i.i.i.i.i, align 8
  %fh.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -748
  call void @v4l2_event_queue_fh(ptr noundef %fh.i.i.i.i.i, ptr noundef nonnull %eos_event.i.i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %eos_event.i.i.i.i.i) #15
  %167 = ptrtoint ptr %m2m_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %m2m_ctx.i.i.i.i, align 4
  %next_buf_last.i.i.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %next_buf_last.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %next_buf_last.i.i.i.i.i, align 4
  %is_draining.i492.i.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %168, i32 0, i32 2
  %170 = ptrtoint ptr %is_draining.i492.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %is_draining.i492.i.i.i.i, align 1
  %has_stopped.i.i.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %168, i32 0, i32 5
  %171 = ptrtoint ptr %has_stopped.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %has_stopped.i.i.i.i.i, align 1
  br label %if.end24.i.i.i.i

if.end24.i.i.i.i:                                 ; preds = %if.then21.i.i.i.i, %v4l2_m2m_is_last_draining_src_buf.exit.i.i.i.i.if.end24.i.i.i.i_crit_edge, %if.end19.i.i.i.i.if.end24.i.i.i.i_crit_edge
  %csequence.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -316
  %172 = ptrtoint ptr %csequence.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %csequence.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %173, 1
  store i32 %inc.i.i.i.i, ptr %csequence.i.i.i.i, align 4
  %sequence.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -280
  %174 = ptrtoint ptr %sequence.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %sequence.i.i.i.i, align 8
  %error_code.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 23
  %175 = ptrtoint ptr %error_code.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %error_code.i.i.i.i, align 8
  %and.i.i54.i.i = and i32 %176, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54.i.i)
  %tobool25.not.i.i.i.i = icmp eq i32 %and.i.i54.i.i, 0
  br i1 %tobool25.not.i.i.i.i, label %if.end39.i.i.i.i, label %do.end29.i.i.i.i

do.end29.i.i.i.i:                                 ; preds = %if.end24.i.i.i.i
  %name32.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %177 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %switch.tableidx43 = add i32 %176, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %switch.tableidx43)
  %179 = icmp ult i32 %switch.tableidx43, 18
  br i1 %179, label %switch.lookup42, label %do.end29.i.i.i.i.allegro_err_to_string.exit.i.i.i.i_crit_edge

do.end29.i.i.i.i.allegro_err_to_string.exit.i.i.i.i_crit_edge: ; preds = %do.end29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_err_to_string.exit.i.i.i.i

switch.lookup42:                                  ; preds = %do.end29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep44 = getelementptr inbounds [18 x ptr], ptr @switch.table.allegro_irq_thread.248, i32 0, i32 %switch.tableidx43
  %180 = ptrtoint ptr %switch.gep44 to i32
  call void @__asan_load4_noabort(i32 %180)
  %switch.load45 = load ptr, ptr %switch.gep44, align 4
  br label %allegro_err_to_string.exit.i.i.i.i

allegro_err_to_string.exit.i.i.i.i:               ; preds = %switch.lookup42, %do.end29.i.i.i.i.allegro_err_to_string.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %switch.load45, %switch.lookup42 ], [ @.str.77, %do.end29.i.i.i.i.allegro_err_to_string.exit.i.i.i.i_crit_edge ]
  %call38.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name32.i.i.i.i, i32 noundef %178, ptr noundef nonnull %retval.0.i.i.i.i.i, i32 noundef %176) #18
  br label %if.then333.i.sink.split.i.i.i

if.end39.i.i.i.i:                                 ; preds = %if.end24.i.i.i.i
  %partition_table_size.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 19
  %181 = ptrtoint ptr %partition_table_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %partition_table_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp.not.i2.i.i.i = icmp eq i32 %182, 1
  br i1 %cmp.not.i2.i.i.i, label %if.end39.i.i.i.i.if.end51.i.i.i.i_crit_edge, label %do.end43.i.i.i.i

if.end39.i.i.i.i.if.end51.i.i.i.i_crit_edge:      ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51.i.i.i.i

do.end43.i.i.i.i:                                 ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name46.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %183 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call50.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name46.i.i.i.i, i32 noundef %184, i32 noundef %182) #18
  br label %if.end51.i.i.i.i

if.end51.i.i.i.i:                                 ; preds = %do.end43.i.i.i.i, %if.end39.i.i.i.i.if.end51.i.i.i.i_crit_edge
  %partition_table_offset.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 18
  %185 = ptrtoint ptr %partition_table_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %partition_table_offset.i.i.i.i, align 4
  %187 = ptrtoint ptr %partition_table_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %partition_table_size.i.i.i.i, align 8
  %mul.i.i.i.i = shl i32 %188, 3
  %add.i.i55.i.i = add i32 %mul.i.i.i.i, %186
  %num_planes.i.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -728
  %189 = ptrtoint ptr %num_planes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %num_planes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp.not.i493.i.i.i.i = icmp eq i32 %190, 0
  br i1 %cmp.not.i493.i.i.i.i, label %if.end51.i.i.i.i.vb2_plane_size.exit.i.i.i.i_crit_edge, label %if.then.i494.i.i.i.i

if.end51.i.i.i.i.vb2_plane_size.exit.i.i.i.i_crit_edge: ; preds = %if.end51.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_plane_size.exit.i.i.i.i

if.then.i494.i.i.i.i:                             ; preds = %if.end51.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %length.i.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -656
  %191 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %length.i.i.i.i.i, align 8
  br label %vb2_plane_size.exit.i.i.i.i

vb2_plane_size.exit.i.i.i.i:                      ; preds = %if.then.i494.i.i.i.i, %if.end51.i.i.i.i.vb2_plane_size.exit.i.i.i.i_crit_edge
  %retval.0.i495.i.i.i.i = phi i32 [ %192, %if.then.i494.i.i.i.i ], [ 0, %if.end51.i.i.i.i.vb2_plane_size.exit.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i55.i.i, i32 %retval.0.i495.i.i.i.i)
  %cmp54.i.i.i.i = icmp ugt i32 %add.i.i55.i.i, %retval.0.i495.i.i.i.i
  br i1 %cmp54.i.i.i.i, label %do.end58.i.i.i.i, label %if.end65.i.i.i.i

do.end58.i.i.i.i:                                 ; preds = %vb2_plane_size.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name61.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %193 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call64.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name61.i.i.i.i, i32 noundef %194) #18
  br label %if.then333.i.sink.split.i.i.i

if.end65.i.i.i.i:                                 ; preds = %vb2_plane_size.exit.i.i.i.i
  %call67.i.i.i.i = call ptr @vb2_plane_vaddr(ptr noundef nonnull %shadow.0.i479.i.i.i.i, i32 noundef 0) #15
  %195 = ptrtoint ptr %partition_table_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %partition_table_offset.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call67.i.i.i.i, i32 %196
  %197 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %size.i.i56.i.i = getelementptr inbounds %struct.anon.122, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %199 = ptrtoint ptr %size.i.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %size.i.i56.i.i, align 4
  %add69.i.i.i.i = add i32 %200, %198
  %201 = ptrtoint ptr %num_planes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %num_planes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp.not.i497.i.i.i.i = icmp eq i32 %202, 0
  br i1 %cmp.not.i497.i.i.i.i, label %if.end65.i.i.i.i.vb2_plane_size.exit501.i.i.i.i_crit_edge, label %if.then.i499.i.i.i.i

if.end65.i.i.i.i.vb2_plane_size.exit501.i.i.i.i_crit_edge: ; preds = %if.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_plane_size.exit501.i.i.i.i

if.then.i499.i.i.i.i:                             ; preds = %if.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %length.i498.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -656
  %203 = ptrtoint ptr %length.i498.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %length.i498.i.i.i.i, align 8
  br label %vb2_plane_size.exit501.i.i.i.i

vb2_plane_size.exit501.i.i.i.i:                   ; preds = %if.then.i499.i.i.i.i, %if.end65.i.i.i.i.vb2_plane_size.exit501.i.i.i.i_crit_edge
  %retval.0.i500.i.i.i.i = phi i32 [ %204, %if.then.i499.i.i.i.i ], [ 0, %if.end65.i.i.i.i.vb2_plane_size.exit501.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add69.i.i.i.i, i32 %retval.0.i500.i.i.i.i)
  %cmp72.i.i.i.i = icmp ugt i32 %add69.i.i.i.i, %retval.0.i500.i.i.i.i
  br i1 %cmp72.i.i.i.i, label %do.end76.i.i.i.i, label %do.body86.i.i.i.i

do.end76.i.i.i.i:                                 ; preds = %vb2_plane_size.exit501.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name79.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %205 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call84.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name79.i.i.i.i, i32 noundef %206, i32 noundef %198, i32 noundef %200) #18
  br label %if.then333.i.sink.split.i.i.i

do.body86.i.i.i.i:                                ; preds = %vb2_plane_size.exit501.i.i.i.i
  %207 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %207)
  %cmp87.i.i.i.i = icmp sgt i32 %207, 1
  br i1 %cmp87.i.i.i.i, label %do.end91.i.i.i.i, label %do.body86.i.i.i.i.do.end102.i.i.i.i_crit_edge

do.body86.i.i.i.i.do.end102.i.i.i.i_crit_edge:    ; preds = %do.body86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end102.i.i.i.i

do.end91.i.i.i.i:                                 ; preds = %do.body86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name94.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %208 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call99.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name94.i.i.i.i, i32 noundef %209, i32 noundef %200, i32 noundef %198) #18
  br label %do.end102.i.i.i.i

do.end102.i.i.i.i:                                ; preds = %do.end91.i.i.i.i, %do.body86.i.i.i.i.do.end102.i.i.i.i_crit_edge
  %210 = ptrtoint ptr %num_planes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %num_planes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %cmp.i503.not.i.i.i.i = icmp eq i32 %211, 0
  br i1 %cmp.i503.not.i.i.i.i, label %do.end102.i.i.i.i.vb2_set_plane_payload.exit.i.i.i.i_crit_edge, label %if.then.i505.i.i.i.i

do.end102.i.i.i.i.vb2_set_plane_payload.exit.i.i.i.i_crit_edge: ; preds = %do.end102.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_set_plane_payload.exit.i.i.i.i

if.then.i505.i.i.i.i:                             ; preds = %do.end102.i.i.i.i
  %212 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %214 = ptrtoint ptr %size.i.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %size.i.i56.i.i, align 4
  %add106.i.i.i.i = add i32 %215, %213
  %length.i504.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -656
  %216 = ptrtoint ptr %length.i504.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %length.i504.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %add106.i.i.i.i)
  %cmp1.i.i.i.i.i = icmp ult i32 %217, %add106.i.i.i.i
  br i1 %cmp1.i.i.i.i.i, label %land.rhs.i506.i.i.i.i, label %if.then.i505.i.i.i.i.if.end42.i.i.i.i.i_crit_edge

if.then.i505.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %if.then.i505.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i.i.i.i.i

land.rhs.i506.i.i.i.i:                            ; preds = %if.then.i505.i.i.i.i
  %.b55.i.i.i.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i.i.i.i.i, label %land.rhs.i506.i.i.i.i.if.then38.i.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.i, !prof !464

land.rhs.i506.i.i.i.i.if.then38.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i506.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %land.rhs.i506.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.143, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %if.then38.i.i.i.i.i

if.then38.i.i.i.i.i:                              ; preds = %if.then8.i.i.i.i.i, %land.rhs.i506.i.i.i.i.if.then38.i.i.i.i.i_crit_edge
  %218 = ptrtoint ptr %length.i504.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %length.i504.i.i.i.i, align 8
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %if.then38.i.i.i.i.i, %if.then.i505.i.i.i.i.if.end42.i.i.i.i.i_crit_edge
  %size.addr.0.i.i.i.i.i = phi i32 [ %219, %if.then38.i.i.i.i.i ], [ %add106.i.i.i.i, %if.then.i505.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %bytesused.i.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -660
  %220 = ptrtoint ptr %bytesused.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %size.addr.0.i.i.i.i.i, ptr %bytesused.i.i.i.i.i, align 4
  br label %vb2_set_plane_payload.exit.i.i.i.i

vb2_set_plane_payload.exit.i.i.i.i:               ; preds = %if.end42.i.i.i.i.i, %do.end102.i.i.i.i.vb2_set_plane_payload.exit.i.i.i.i_crit_edge
  %call108.i.i.i.i = call ptr @vb2_plane_vaddr(ptr noundef nonnull %shadow.0.i479.i.i.i.i, i32 noundef 0) #15
  %221 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %codec.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -324
  %223 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %224)
  %cmp110.i.i.i.i = icmp eq i32 %224, 1129727304
  br i1 %cmp110.i.i.i.i, label %land.lhs.true.i.i.i.i, label %vb2_set_plane_payload.exit.i.i.i.i.if.end143.i.i.i.i_crit_edge

vb2_set_plane_payload.exit.i.i.i.i.if.end143.i.i.i.i_crit_edge: ; preds = %vb2_set_plane_payload.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end143.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %vb2_set_plane_payload.exit.i.i.i.i
  %is_idr.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 26
  %225 = ptrtoint ptr %is_idr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %is_idr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool111.not.i.i.i.i = icmp eq i8 %226, 0
  br i1 %tobool111.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end143.i.i.i.i_crit_edge, label %if.then112.i.i.i.i

land.lhs.true.i.i.i.i.if.end143.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end143.i.i.i.i

if.then112.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i
  %227 = ptrtoint ptr %channel.0.le.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %channel.0.le.i.i45.i.i, align 4
  %num_ref_idx_l0.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -268
  %229 = ptrtoint ptr %num_ref_idx_l0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %num_ref_idx_l0.i.i.i.i.i, align 4
  %mpeg_video_hevc_profile.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -192
  %231 = ptrtoint ptr %mpeg_video_hevc_profile.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mpeg_video_hevc_profile.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %232) #15
  %mpeg_video_hevc_level.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -188
  %233 = ptrtoint ptr %mpeg_video_hevc_level.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %mpeg_video_hevc_level.i.i.i.i.i, align 4
  %call2.i.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %234) #15
  %mpeg_video_hevc_tier.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -184
  %235 = ptrtoint ptr %mpeg_video_hevc_tier.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mpeg_video_hevc_tier.i.i.i.i.i, align 4
  %call3.i.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %236) #15
  %call1.i.i.i.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 262504, i32 noundef 3520, i32 noundef 7) #20
  %tobool.not.i507.i.i.i.i = icmp eq ptr %call1.i.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i507.i.i.i.i, label %if.then112.i.i.i.i.do.end119.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.then112.i.i.i.i.do.end119.i.i.i.i_crit_edge:   ; preds = %if.then112.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end119.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then112.i.i.i.i
  %base_layer_internal_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 1
  %237 = ptrtoint ptr %base_layer_internal_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 1, ptr %base_layer_internal_flag.i.i.i.i.i, align 4
  %base_layer_available_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 2
  %238 = ptrtoint ptr %base_layer_available_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 1, ptr %base_layer_available_flag.i.i.i.i.i, align 8
  %temporal_id_nesting_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 5
  %239 = ptrtoint ptr %temporal_id_nesting_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 1, ptr %temporal_id_nesting_flag.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i.i)
  %240 = icmp ult i32 %call.i.i.i.i.i, 3
  br i1 %240, label %switch.lookup46, label %if.end.i.i.i.i.i.nal_hevc_profile.exit.i.i.i.i.i_crit_edge

if.end.i.i.i.i.i.nal_hevc_profile.exit.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_profile.exit.i.i.i.i.i

switch.lookup46:                                  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep47 = getelementptr inbounds [3 x i32], ptr @switch.table.allegro_irq_thread.249, i32 0, i32 %call.i.i.i.i.i
  %241 = ptrtoint ptr %switch.gep47 to i32
  call void @__asan_load4_noabort(i32 %241)
  %switch.load48 = load i32, ptr %switch.gep47, align 4
  br label %nal_hevc_profile.exit.i.i.i.i.i

nal_hevc_profile.exit.i.i.i.i.i:                  ; preds = %switch.lookup46, %if.end.i.i.i.i.i.nal_hevc_profile.exit.i.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i.i = phi i32 [ %switch.load48, %switch.lookup46 ], [ -22, %if.end.i.i.i.i.i.nal_hevc_profile.exit.i.i.i.i.i_crit_edge ]
  %general_profile_idc.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 6, i32 2
  %242 = ptrtoint ptr %general_profile_idc.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %retval.0.i.i.i.i.i.i, ptr %general_profile_idc.i.i.i.i.i, align 32
  %arrayidx.i.i.i.i.i = getelementptr %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 6, i32 3, i32 %retval.0.i.i.i.i.i.i
  %243 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 1, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i.i.i.i)
  %switch.selectcmp.i.i.i.i.i.i = icmp eq i32 %call3.i.i.i.i.i, 1
  %switch.select.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i.i)
  %switch.selectcmp2.i.i.i.i.i.i = icmp eq i32 %call3.i.i.i.i.i, 0
  %switch.select3.i.i.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i.i.i, i32 0, i32 %switch.select.i.i.i.i.i.i
  %general_tier_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 6, i32 1
  %244 = ptrtoint ptr %general_tier_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %switch.select3.i.i.i.i.i.i, ptr %general_tier_flag.i.i.i.i.i, align 4
  %general_progressive_source_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 6, i32 4
  %245 = ptrtoint ptr %general_progressive_source_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 1, ptr %general_progressive_source_flag.i.i.i.i.i, align 4
  %general_frame_only_constraint_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 6, i32 7
  %246 = ptrtoint ptr %general_frame_only_constraint_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 1, ptr %general_frame_only_constraint_flag.i.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call2.i.i.i.i.i)
  %247 = icmp ult i32 %call2.i.i.i.i.i, 13
  br i1 %247, label %switch.lookup49, label %nal_hevc_profile.exit.i.i.i.i.i.allegro_hevc_write_vps.exit.i.i.i.i_crit_edge

nal_hevc_profile.exit.i.i.i.i.i.allegro_hevc_write_vps.exit.i.i.i.i_crit_edge: ; preds = %nal_hevc_profile.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_hevc_write_vps.exit.i.i.i.i

switch.lookup49:                                  ; preds = %nal_hevc_profile.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep50 = getelementptr inbounds [13 x i32], ptr @switch.table.allegro_irq_thread.250, i32 0, i32 %call2.i.i.i.i.i
  %248 = ptrtoint ptr %switch.gep50 to i32
  call void @__asan_load4_noabort(i32 %248)
  %switch.load51 = load i32, ptr %switch.gep50, align 4
  br label %allegro_hevc_write_vps.exit.i.i.i.i

allegro_hevc_write_vps.exit.i.i.i.i:              ; preds = %switch.lookup49, %nal_hevc_profile.exit.i.i.i.i.i.allegro_hevc_write_vps.exit.i.i.i.i_crit_edge
  %retval.0.i42.i.i.i.i.i = phi i32 [ %switch.load51, %switch.lookup49 ], [ -22, %nal_hevc_profile.exit.i.i.i.i.i.allegro_hevc_write_vps.exit.i.i.i.i_crit_edge ]
  %general_level_idc.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 6, i32 10
  %249 = ptrtoint ptr %general_level_idc.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %retval.0.i42.i.i.i.i.i, ptr %general_level_idc.i.i.i.i.i, align 4
  %sub_layer_ordering_info_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 7
  %250 = ptrtoint ptr %sub_layer_ordering_info_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %sub_layer_ordering_info_present_flag.i.i.i.i.i, align 8
  %251 = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 8
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %230, ptr %251, align 4
  %max_num_reorder_pics.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_vps, ptr %call1.i.i.i.i.i.i.i.i, i32 0, i32 8, i32 1
  %253 = ptrtoint ptr %max_num_reorder_pics.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %230, ptr %max_num_reorder_pics.i.i.i.i.i, align 8
  %plat_dev.i.i.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %228, i32 0, i32 3
  %254 = ptrtoint ptr %plat_dev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %plat_dev.i.i.i.i.i, align 4
  %dev11.i.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %255, i32 0, i32 3
  %call12.i.i.i.i.i = call i32 @nal_hevc_write_vps(ptr noundef %dev11.i.i.i.i.i, ptr noundef %call108.i.i.i.i, i32 noundef %222, ptr noundef nonnull %call1.i.i.i.i.i.i.i.i) #15
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.i.i)
  %cmp114.i.i.i.i = icmp slt i32 %call12.i.i.i.i.i, 0
  br i1 %cmp114.i.i.i.i, label %allegro_hevc_write_vps.exit.i.i.i.i.do.end119.i.i.i.i_crit_edge, label %if.end125.i.i.i.i

allegro_hevc_write_vps.exit.i.i.i.i.do.end119.i.i.i.i_crit_edge: ; preds = %allegro_hevc_write_vps.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end119.i.i.i.i

do.end119.i.i.i.i:                                ; preds = %allegro_hevc_write_vps.exit.i.i.i.i.do.end119.i.i.i.i_crit_edge, %if.then112.i.i.i.i.do.end119.i.i.i.i_crit_edge
  %name122.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %call124.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name122.i.i.i.i, i32 noundef %222) #18
  br label %if.then333.i.sink.split.i.i.i

if.end125.i.i.i.i:                                ; preds = %allegro_hevc_write_vps.exit.i.i.i.i
  %add.ptr126.i.i.i.i = getelementptr i8, ptr %call108.i.i.i.i, i32 %call12.i.i.i.i.i
  %sub.i.i.i36.i = sub i32 %222, %call12.i.i.i.i.i
  %256 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %cmp128.i.i.i.i = icmp sgt i32 %256, 0
  br i1 %cmp128.i.i.i.i, label %do.end133.i.i.i.i, label %if.end125.i.i.i.i.if.end143.i.i.i.i_crit_edge

if.end125.i.i.i.i.if.end143.i.i.i.i_crit_edge:    ; preds = %if.end125.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end143.i.i.i.i

do.end133.i.i.i.i:                                ; preds = %if.end125.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name136.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %257 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call139.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name136.i.i.i.i, i32 noundef %258, i32 noundef %call12.i.i.i.i.i) #18
  br label %if.end143.i.i.i.i

if.end143.i.i.i.i:                                ; preds = %do.end133.i.i.i.i, %if.end125.i.i.i.i.if.end143.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.end143.i.i.i.i_crit_edge, %vb2_set_plane_payload.exit.i.i.i.i.if.end143.i.i.i.i_crit_edge
  %free.0.i.i.i.i = phi i32 [ %sub.i.i.i36.i, %do.end133.i.i.i.i ], [ %sub.i.i.i36.i, %if.end125.i.i.i.i.if.end143.i.i.i.i_crit_edge ], [ %222, %land.lhs.true.i.i.i.i.if.end143.i.i.i.i_crit_edge ], [ %222, %vb2_set_plane_payload.exit.i.i.i.i.if.end143.i.i.i.i_crit_edge ]
  %curr.0.i.i.i.i = phi ptr [ %add.ptr126.i.i.i.i, %do.end133.i.i.i.i ], [ %add.ptr126.i.i.i.i, %if.end125.i.i.i.i.if.end143.i.i.i.i_crit_edge ], [ %call108.i.i.i.i, %land.lhs.true.i.i.i.i.if.end143.i.i.i.i_crit_edge ], [ %call108.i.i.i.i, %vb2_set_plane_payload.exit.i.i.i.i.if.end143.i.i.i.i_crit_edge ]
  %is_idr144.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 26
  %259 = ptrtoint ptr %is_idr144.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %is_idr144.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool145.not.i.i.i.i = icmp eq i8 %260, 0
  br i1 %tobool145.not.i.i.i.i, label %if.end143.i.i.i.i.if.end184.i.i.i.i_crit_edge, label %if.then146.i.i.i.i

if.end143.i.i.i.i.if.end184.i.i.i.i_crit_edge:    ; preds = %if.end143.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184.i.i.i.i

if.then146.i.i.i.i:                               ; preds = %if.end143.i.i.i.i
  %261 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %262)
  %cmp148.i.i.i.i = icmp eq i32 %262, 875967048
  %263 = ptrtoint ptr %channel.0.le.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %channel.0.le.i.i45.i.i, align 4
  br i1 %cmp148.i.i.i.i, label %if.then150.i.i.i.i, label %if.else.i.i.i.i

if.then150.i.i.i.i:                               ; preds = %if.then146.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %265 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %265, i32 noundef 3520, i32 noundef 1728) #19
  %tobool.not.i509.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i509.i.i.i.i, label %if.then150.i.i.i.i.do.end159.i.i.i.i_crit_edge, label %if.end.i512.i.i.i.i

if.then150.i.i.i.i.do.end159.i.i.i.i_crit_edge:   ; preds = %if.then150.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end159.i.i.i.i

if.end.i512.i.i.i.i:                              ; preds = %if.then150.i.i.i.i
  %mpeg_video_h264_profile.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -220
  %266 = ptrtoint ptr %mpeg_video_h264_profile.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %mpeg_video_h264_profile.i.i.i.i.i, align 4
  %call2.i510.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %267) #15
  %mpeg_video_h264_level.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -216
  %268 = ptrtoint ptr %mpeg_video_h264_level.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mpeg_video_h264_level.i.i.i.i.i, align 4
  %call3.i511.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %269) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call2.i510.i.i.i.i)
  %270 = icmp ult i32 %call2.i510.i.i.i.i, 5
  br i1 %270, label %switch.lookup52, label %if.end.i512.i.i.i.i.nal_h264_profile.exit.i.i.i.i.i_crit_edge

if.end.i512.i.i.i.i.nal_h264_profile.exit.i.i.i.i.i_crit_edge: ; preds = %if.end.i512.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_h264_profile.exit.i.i.i.i.i

switch.lookup52:                                  ; preds = %if.end.i512.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep53 = getelementptr inbounds [5 x i32], ptr @switch.table.allegro_irq_thread.251, i32 0, i32 %call2.i510.i.i.i.i
  %271 = ptrtoint ptr %switch.gep53 to i32
  call void @__asan_load4_noabort(i32 %271)
  %switch.load54 = load i32, ptr %switch.gep53, align 4
  br label %nal_h264_profile.exit.i.i.i.i.i

nal_h264_profile.exit.i.i.i.i.i:                  ; preds = %switch.lookup52, %if.end.i512.i.i.i.i.nal_h264_profile.exit.i.i.i.i.i_crit_edge
  %retval.0.i.i517.i.i.i.i = phi i32 [ %switch.load54, %switch.lookup52 ], [ -22, %if.end.i512.i.i.i.i.nal_h264_profile.exit.i.i.i.i.i_crit_edge ]
  %272 = ptrtoint ptr %call7.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %retval.0.i.i517.i.i.i.i, ptr %call7.i.i.i.i.i.i.i, align 8
  %constraint_set0_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1
  %273 = ptrtoint ptr %constraint_set0_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %constraint_set0_flag.i.i.i.i.i, align 4
  %constraint_set1_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 2
  %274 = ptrtoint ptr %constraint_set1_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 1, ptr %constraint_set1_flag.i.i.i.i.i, align 8
  %constraint_set2_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 3
  %275 = call ptr @memset(ptr %constraint_set2_flag.i.i.i.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i511.i.i.i.i)
  %276 = icmp ult i32 %call3.i511.i.i.i.i, 16
  br i1 %276, label %switch.lookup55, label %nal_h264_profile.exit.i.i.i.i.i.nal_h264_level.exit.i.i.i.i.i_crit_edge

nal_h264_profile.exit.i.i.i.i.i.nal_h264_level.exit.i.i.i.i.i_crit_edge: ; preds = %nal_h264_profile.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_h264_level.exit.i.i.i.i.i

switch.lookup55:                                  ; preds = %nal_h264_profile.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep56 = getelementptr inbounds [16 x i32], ptr @switch.table.allegro_irq_thread.252, i32 0, i32 %call3.i511.i.i.i.i
  %277 = ptrtoint ptr %switch.gep56 to i32
  call void @__asan_load4_noabort(i32 %277)
  %switch.load57 = load i32, ptr %switch.gep56, align 4
  br label %nal_h264_level.exit.i.i.i.i.i

nal_h264_level.exit.i.i.i.i.i:                    ; preds = %switch.lookup55, %nal_h264_profile.exit.i.i.i.i.i.nal_h264_level.exit.i.i.i.i.i_crit_edge
  %retval.0.i215.i.i.i.i.i = phi i32 [ %switch.load57, %switch.lookup55 ], [ -22, %nal_h264_profile.exit.i.i.i.i.i.nal_h264_level.exit.i.i.i.i.i_crit_edge ]
  %level_idc.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 8
  %278 = ptrtoint ptr %level_idc.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %retval.0.i215.i.i.i.i.i, ptr %level_idc.i.i.i.i.i, align 8
  %seq_parameter_set_id.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 9
  %279 = ptrtoint ptr %seq_parameter_set_id.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 0, ptr %seq_parameter_set_id.i.i.i.i.i, align 4
  %log2_max_frame_num_minus4.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 11
  %280 = ptrtoint ptr %log2_max_frame_num_minus4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 0, ptr %log2_max_frame_num_minus4.i.i.i.i.i, align 8
  %pic_order_cnt_type.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 12
  %281 = ptrtoint ptr %pic_order_cnt_type.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 0, ptr %pic_order_cnt_type.i.i.i.i.i, align 4
  %282 = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 13
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 6, ptr %282, align 8
  %max_num_ref_frames.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 14
  %284 = ptrtoint ptr %max_num_ref_frames.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 3, ptr %max_num_ref_frames.i.i.i.i.i, align 4
  %gaps_in_frame_num_value_allowed_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 15
  %285 = ptrtoint ptr %gaps_in_frame_num_value_allowed_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %gaps_in_frame_num_value_allowed_flag.i.i.i.i.i, align 8
  %width.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -372
  %286 = ptrtoint ptr %width.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %width.i.i.i.i.i, align 4
  %sub.i.i.i.i37.i = add i32 %287, 15
  %div205.i.i.i.i.i = lshr i32 %sub.i.i.i.i37.i, 4
  %sub6.i.i.i.i.i = add nsw i32 %div205.i.i.i.i.i, -1
  %pic_width_in_mbs_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 16
  %288 = ptrtoint ptr %pic_width_in_mbs_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %sub6.i.i.i.i.i, ptr %pic_width_in_mbs_minus1.i.i.i.i.i, align 4
  %height.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -368
  %289 = ptrtoint ptr %height.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %height.i.i.i.i.i, align 4
  %sub8.i.i.i.i.i = add i32 %290, 15
  %div9206.i.i.i.i.i = lshr i32 %sub8.i.i.i.i.i, 4
  %sub10.i.i.i.i.i = add nsw i32 %div9206.i.i.i.i.i, -1
  %pic_height_in_map_units_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 17
  %291 = ptrtoint ptr %pic_height_in_map_units_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %sub10.i.i.i.i.i, ptr %pic_height_in_map_units_minus1.i.i.i.i.i, align 8
  %frame_mbs_only_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 18
  %292 = ptrtoint ptr %frame_mbs_only_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 1, ptr %frame_mbs_only_flag.i.i.i.i.i, align 4
  %mb_adaptive_frame_field_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 19
  %293 = ptrtoint ptr %mb_adaptive_frame_field_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 0, ptr %mb_adaptive_frame_field_flag.i.i.i.i.i, align 8
  %direct_8x8_inference_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 20
  %294 = ptrtoint ptr %direct_8x8_inference_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 1, ptr %direct_8x8_inference_flag.i.i.i.i.i, align 4
  %rem.i.i.i.i.i = and i32 %287, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i.i.i)
  %tobool12.not.i.i.i.i.i = icmp eq i32 %rem.i.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i.i, label %lor.rhs.i.i.i.i.i, label %if.then18.critedge.i.i.i.i.i

lor.rhs.i.i.i.i.i:                                ; preds = %nal_h264_level.exit.i.i.i.i.i
  %rem14.i.i.i.i.i = and i32 %290, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem14.i.i.i.i.i)
  %tobool15.i.i.i.i.i = icmp ne i32 %rem14.i.i.i.i.i, 0
  %lor.ext.i.i.i.i.i = zext i1 %tobool15.i.i.i.i.i to i32
  %frame_cropping_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 21
  %295 = ptrtoint ptr %frame_cropping_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %lor.ext.i.i.i.i.i, ptr %frame_cropping_flag.i.i.i.i.i, align 8
  br i1 %tobool15.i.i.i.i.i, label %lor.rhs.i.i.i.i.i.if.then18.i.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i.i.if.end34.i.i.i.i.i_crit_edge

lor.rhs.i.i.i.i.i.if.end34.i.i.i.i.i_crit_edge:   ; preds = %lor.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34.i.i.i.i.i

lor.rhs.i.i.i.i.i.if.then18.i.i.i.i.i_crit_edge:  ; preds = %lor.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i.i.i.i.i

if.then18.critedge.i.i.i.i.i:                     ; preds = %nal_h264_level.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %frame_cropping_flag.c.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 21
  %296 = ptrtoint ptr %frame_cropping_flag.c.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 1, ptr %frame_cropping_flag.c.i.i.i.i.i, align 8
  br label %if.then18.i.i.i.i.i

if.then18.i.i.i.i.i:                              ; preds = %if.then18.critedge.i.i.i.i.i, %lor.rhs.i.i.i.i.i.if.then18.i.i.i.i.i_crit_edge
  %297 = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 22
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 0, ptr %297, align 4
  %sub20.i.i.i.i.i = add i32 %287, -1
  %or.i.i.i.i.i = or i32 %sub20.i.i.i.i.i, 15
  %add22.i.i.i.i.i = sub i32 1, %287
  %sub24.i.i.i.i.i = add i32 %add22.i.i.i.i.i, %or.i.i.i.i.i
  %div25209.i.i.i.i.i = lshr i32 %sub24.i.i.i.i.i, 1
  %crop_right.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 22, i32 1
  %299 = ptrtoint ptr %crop_right.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %div25209.i.i.i.i.i, ptr %crop_right.i.i.i.i.i, align 8
  %crop_top.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 22, i32 2
  %300 = ptrtoint ptr %crop_top.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 0, ptr %crop_top.i.i.i.i.i, align 4
  %sub27.i.i.i.i.i = add i32 %290, -1
  %or29.i.i.i.i.i = or i32 %sub27.i.i.i.i.i, 15
  %add30.i.i.i.i.i = sub i32 1, %290
  %sub32.i.i.i.i.i = add i32 %add30.i.i.i.i.i, %or29.i.i.i.i.i
  %div33210.i.i.i.i.i = lshr i32 %sub32.i.i.i.i.i, 1
  %crop_bottom.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 22, i32 3
  %301 = ptrtoint ptr %crop_bottom.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %div33210.i.i.i.i.i, ptr %crop_bottom.i.i.i.i.i, align 8
  br label %if.end34.i.i.i.i.i

if.end34.i.i.i.i.i:                               ; preds = %if.then18.i.i.i.i.i, %lor.rhs.i.i.i.i.i.if.end34.i.i.i.i.i_crit_edge
  %vui_parameters_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 23
  %302 = ptrtoint ptr %vui_parameters_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 1, ptr %vui_parameters_present_flag.i.i.i.i.i, align 4
  %vui.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24
  %303 = ptrtoint ptr %vui.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 0, ptr %vui.i.i.i.i.i, align 8
  %overscan_info_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 2
  %304 = ptrtoint ptr %overscan_info_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 0, ptr %overscan_info_present_flag.i.i.i.i.i, align 8
  %video_signal_type_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 4
  %305 = ptrtoint ptr %video_signal_type_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 1, ptr %video_signal_type_present_flag.i.i.i.i.i, align 8
  %306 = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 5
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 5, ptr %306, align 4
  %quantization.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -344
  %308 = ptrtoint ptr %quantization.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %quantization.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %309)
  %switch.selectcmp2.i.i524.i.i.i.i = icmp eq i32 %309, 1
  %switch.select3.i.i525.i.i.i.i = zext i1 %switch.selectcmp2.i.i524.i.i.i.i to i32
  %video_full_range_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 5, i32 1
  %310 = ptrtoint ptr %video_full_range_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %switch.select3.i.i525.i.i.i.i, ptr %video_full_range_flag.i.i.i.i.i, align 8
  %colour_description_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 5, i32 2
  %311 = ptrtoint ptr %colour_description_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 1, ptr %colour_description_present_flag.i.i.i.i.i, align 4
  %colorspace.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -352
  %312 = ptrtoint ptr %colorspace.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %colorspace.i.i.i.i.i, align 4
  %switch.tableidx59 = add i32 %313, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx59)
  %314 = icmp ult i32 %switch.tableidx59, 10
  br i1 %314, label %switch.lookup58, label %if.end34.i.i.i.i.i.nal_h264_color_primaries.exit.i.i.i.i.i_crit_edge

if.end34.i.i.i.i.i.nal_h264_color_primaries.exit.i.i.i.i.i_crit_edge: ; preds = %if.end34.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_h264_color_primaries.exit.i.i.i.i.i

switch.lookup58:                                  ; preds = %if.end34.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep60 = getelementptr inbounds [10 x i32], ptr @switch.table.allegro_irq_thread.253, i32 0, i32 %switch.tableidx59
  %315 = ptrtoint ptr %switch.gep60 to i32
  call void @__asan_load4_noabort(i32 %315)
  %switch.load61 = load i32, ptr %switch.gep60, align 4
  br label %nal_h264_color_primaries.exit.i.i.i.i.i

nal_h264_color_primaries.exit.i.i.i.i.i:          ; preds = %switch.lookup58, %if.end34.i.i.i.i.i.nal_h264_color_primaries.exit.i.i.i.i.i_crit_edge
  %retval.0.i222.i.i.i.i.i = phi i32 [ %switch.load61, %switch.lookup58 ], [ 2, %if.end34.i.i.i.i.i.nal_h264_color_primaries.exit.i.i.i.i.i_crit_edge ]
  %316 = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 5, i32 3
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %retval.0.i222.i.i.i.i.i, ptr %316, align 8
  %xfer_func.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -340
  %318 = ptrtoint ptr %xfer_func.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %xfer_func.i.i.i.i.i, align 4
  %320 = zext i32 %319 to i64
  call void @__sanitizer_cov_trace_switch(i64 %320, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %319, label %.thread.fold.split.i.i.i.i.i.i [
    i32 0, label %if.then.i.i.i.i.i.i
    i32 7, label %nal_h264_color_primaries.exit.i.i.i.i.i.nal_h264_transfer_characteristics.exit.i.i.i.i.i_crit_edge
    i32 1, label %nal_h264_color_primaries.exit.i.i.i.i.i.if.end.thread.thread43.i.i.i.i.i.i_crit_edge
  ]

nal_h264_color_primaries.exit.i.i.i.i.i.if.end.thread.thread43.i.i.i.i.i.i_crit_edge: ; preds = %nal_h264_color_primaries.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread.thread43.i.i.i.i.i.i

nal_h264_color_primaries.exit.i.i.i.i.i.nal_h264_transfer_characteristics.exit.i.i.i.i.i_crit_edge: ; preds = %nal_h264_color_primaries.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_h264_transfer_characteristics.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %nal_h264_color_primaries.exit.i.i.i.i.i
  %switch.tableidx63 = add i32 %313, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx63)
  %321 = icmp ult i32 %switch.tableidx63, 11
  br i1 %321, label %switch.lookup62, label %if.then.i.i.i.i.i.i.if.end.thread.thread43.i.i.i.i.i.i_crit_edge

if.then.i.i.i.i.i.i.if.end.thread.thread43.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread.thread43.i.i.i.i.i.i

if.end.thread.thread43.i.i.i.i.i.i:               ; preds = %if.then.i.i.i.i.i.i.if.end.thread.thread43.i.i.i.i.i.i_crit_edge, %nal_h264_color_primaries.exit.i.i.i.i.i.if.end.thread.thread43.i.i.i.i.i.i_crit_edge
  br label %nal_h264_transfer_characteristics.exit.i.i.i.i.i

.thread.fold.split.i.i.i.i.i.i:                   ; preds = %nal_h264_color_primaries.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_h264_transfer_characteristics.exit.i.i.i.i.i

switch.lookup62:                                  ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep64 = getelementptr inbounds [11 x i32], ptr @switch.table.allegro_irq_thread.254, i32 0, i32 %switch.tableidx63
  %322 = ptrtoint ptr %switch.gep64 to i32
  call void @__asan_load4_noabort(i32 %322)
  %switch.load65 = load i32, ptr %switch.gep64, align 4
  br label %nal_h264_transfer_characteristics.exit.i.i.i.i.i

nal_h264_transfer_characteristics.exit.i.i.i.i.i: ; preds = %switch.lookup62, %.thread.fold.split.i.i.i.i.i.i, %if.end.thread.thread43.i.i.i.i.i.i, %nal_h264_color_primaries.exit.i.i.i.i.i.nal_h264_transfer_characteristics.exit.i.i.i.i.i_crit_edge
  %323 = phi i32 [ 6, %if.end.thread.thread43.i.i.i.i.i.i ], [ 16, %nal_h264_color_primaries.exit.i.i.i.i.i.nal_h264_transfer_characteristics.exit.i.i.i.i.i_crit_edge ], [ 2, %.thread.fold.split.i.i.i.i.i.i ], [ %switch.load65, %switch.lookup62 ]
  %transfer_characteristics.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 5, i32 3, i32 1
  %324 = ptrtoint ptr %transfer_characteristics.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %transfer_characteristics.i.i.i.i.i, align 4
  %ycbcr_enc.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -348
  %325 = ptrtoint ptr %ycbcr_enc.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %ycbcr_enc.i.i.i.i.i, align 4
  %327 = zext i32 %326 to i64
  call void @__sanitizer_cov_trace_switch(i64 %327, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %326, label %nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.default.i227.i.i.i.i.i_crit_edge [
    i32 0, label %if.then.i223.i.i.i.i.i
    i32 1, label %nal_h264_transfer_characteristics.exit.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge
    i32 3, label %nal_h264_transfer_characteristics.exit.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge90
    i32 2, label %nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge
    i32 4, label %nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge91
    i32 6, label %nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.bb11.i225.i.i.i.i.i_crit_edge
    i32 7, label %sw.bb12.i226.i.i.i.i.i
  ]

nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.bb11.i225.i.i.i.i.i_crit_edge: ; preds = %nal_h264_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11.i225.i.i.i.i.i

nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge91: ; preds = %nal_h264_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10.i224.i.i.i.i.i

nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge: ; preds = %nal_h264_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10.i224.i.i.i.i.i

nal_h264_transfer_characteristics.exit.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge90: ; preds = %nal_h264_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_h264_matrix_coeffs.exit.i.i.i.i.i

nal_h264_transfer_characteristics.exit.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge: ; preds = %nal_h264_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_h264_matrix_coeffs.exit.i.i.i.i.i

nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.default.i227.i.i.i.i.i_crit_edge: ; preds = %nal_h264_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i227.i.i.i.i.i

if.then.i223.i.i.i.i.i:                           ; preds = %nal_h264_transfer_characteristics.exit.i.i.i.i.i
  %328 = zext i32 %313 to i64
  call void @__sanitizer_cov_trace_switch(i64 %328, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %313, label %if.then.i223.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge [
    i32 3, label %if.then.i223.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge
    i32 12, label %if.then.i223.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge92
    i32 10, label %if.then.i223.i.i.i.i.i.sw.bb11.i225.i.i.i.i.i_crit_edge
    i32 2, label %if.then.i223.i.i.i.i.i.sw.default.i227.i.i.i.i.i_crit_edge
  ]

if.then.i223.i.i.i.i.i.sw.default.i227.i.i.i.i.i_crit_edge: ; preds = %if.then.i223.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i227.i.i.i.i.i

if.then.i223.i.i.i.i.i.sw.bb11.i225.i.i.i.i.i_crit_edge: ; preds = %if.then.i223.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11.i225.i.i.i.i.i

if.then.i223.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge92: ; preds = %if.then.i223.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10.i224.i.i.i.i.i

if.then.i223.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge: ; preds = %if.then.i223.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10.i224.i.i.i.i.i

if.then.i223.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i223.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_h264_matrix_coeffs.exit.i.i.i.i.i

sw.bb10.i224.i.i.i.i.i:                           ; preds = %if.then.i223.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge, %if.then.i223.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge92, %nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge, %nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i224.i.i.i.i.i_crit_edge91
  br label %nal_h264_matrix_coeffs.exit.i.i.i.i.i

sw.bb11.i225.i.i.i.i.i:                           ; preds = %if.then.i223.i.i.i.i.i.sw.bb11.i225.i.i.i.i.i_crit_edge, %nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.bb11.i225.i.i.i.i.i_crit_edge
  br label %nal_h264_matrix_coeffs.exit.i.i.i.i.i

sw.bb12.i226.i.i.i.i.i:                           ; preds = %nal_h264_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_h264_matrix_coeffs.exit.i.i.i.i.i

sw.default.i227.i.i.i.i.i:                        ; preds = %if.then.i223.i.i.i.i.i.sw.default.i227.i.i.i.i.i_crit_edge, %nal_h264_transfer_characteristics.exit.i.i.i.i.i.sw.default.i227.i.i.i.i.i_crit_edge
  br label %nal_h264_matrix_coeffs.exit.i.i.i.i.i

nal_h264_matrix_coeffs.exit.i.i.i.i.i:            ; preds = %sw.default.i227.i.i.i.i.i, %sw.bb12.i226.i.i.i.i.i, %sw.bb11.i225.i.i.i.i.i, %sw.bb10.i224.i.i.i.i.i, %if.then.i223.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge, %nal_h264_transfer_characteristics.exit.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge, %nal_h264_transfer_characteristics.exit.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge90
  %retval.0.i228.i.i.i.i.i = phi i32 [ 2, %sw.default.i227.i.i.i.i.i ], [ 10, %sw.bb12.i226.i.i.i.i.i ], [ 9, %sw.bb11.i225.i.i.i.i.i ], [ 1, %sw.bb10.i224.i.i.i.i.i ], [ 5, %if.then.i223.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge ], [ 5, %nal_h264_transfer_characteristics.exit.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge ], [ 5, %nal_h264_transfer_characteristics.exit.i.i.i.i.i.nal_h264_matrix_coeffs.exit.i.i.i.i.i_crit_edge90 ]
  %matrix_coefficients.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 5, i32 3, i32 2
  %329 = ptrtoint ptr %matrix_coefficients.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %retval.0.i228.i.i.i.i.i, ptr %matrix_coefficients.i.i.i.i.i, align 8
  %chroma_loc_info_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 6
  %330 = ptrtoint ptr %chroma_loc_info_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 1, ptr %chroma_loc_info_present_flag.i.i.i.i.i, align 4
  %331 = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 7
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 0, ptr %331, align 8
  %chroma_sample_loc_type_bottom_field.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 7, i32 1
  %333 = ptrtoint ptr %chroma_sample_loc_type_bottom_field.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %chroma_sample_loc_type_bottom_field.i.i.i.i.i, align 4
  %timing_info_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 8
  %334 = ptrtoint ptr %timing_info_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 1, ptr %timing_info_present_flag.i.i.i.i.i, align 8
  %framerate.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -360
  %denominator.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -356
  %335 = ptrtoint ptr %denominator.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %denominator.i.i.i.i.i, align 4
  %337 = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 9
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %336, ptr %337, align 4
  %339 = ptrtoint ptr %framerate.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %framerate.i.i.i.i.i, align 4
  %mul.i.i.i.i.i = shl i32 %340, 1
  %time_scale.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 9, i32 1
  %341 = ptrtoint ptr %time_scale.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %mul.i.i.i.i.i, ptr %time_scale.i.i.i.i.i, align 8
  %fixed_frame_rate_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 9, i32 2
  %342 = ptrtoint ptr %fixed_frame_rate_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 1, ptr %fixed_frame_rate_flag.i.i.i.i.i, align 4
  %nal_hrd_parameters_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 10
  %343 = ptrtoint ptr %nal_hrd_parameters_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 0, ptr %nal_hrd_parameters_present_flag.i.i.i.i.i, align 8
  %vcl_hrd_parameters_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 12
  %344 = ptrtoint ptr %vcl_hrd_parameters_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 1, ptr %vcl_hrd_parameters_present_flag.i.i.i.i.i, align 8
  %vcl_hrd_parameters.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13
  %345 = ptrtoint ptr %vcl_hrd_parameters.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 0, ptr %vcl_hrd_parameters.i.i.i.i.i, align 4
  %bitrate_peak.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -304
  %346 = ptrtoint ptr %bitrate_peak.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %bitrate_peak.i.i.i.i.i, align 4
  %348 = call i32 @llvm.cttz.i32(i32 %347, i1 true) #15, !range !465
  %349 = add nuw nsw i32 %348, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %iszero.i.i.i.i.i = icmp eq i32 %347, 0
  %ffs.i.i.i.i.i = select i1 %iszero.i.i.i.i.i, i32 0, i32 %349
  %sub60.i.i.i.i.i = add nsw i32 %ffs.i.i.i.i.i, -6
  %bit_rate_scale.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13, i32 1
  %350 = ptrtoint ptr %bit_rate_scale.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %sub60.i.i.i.i.i, ptr %bit_rate_scale.i.i.i.i.i, align 8
  %div68207.i.i.i.i.i = lshr i32 %347, %ffs.i.i.i.i.i
  %sub69.i.i.i.i.i = add i32 %div68207.i.i.i.i.i, -1
  %351 = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13, i32 3
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %sub69.i.i.i.i.i, ptr %351, align 8
  %mpeg_video_cpb_size.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -144
  %353 = ptrtoint ptr %mpeg_video_cpb_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %mpeg_video_cpb_size.i.i.i.i.i, align 4
  %call72.i.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %354) #15
  %355 = call i32 @llvm.cttz.i32(i32 %call72.i.i.i.i.i, i1 true) #15, !range !465
  %356 = add nuw nsw i32 %355, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i.i.i.i)
  %iszero73.i.i.i.i.i = icmp eq i32 %call72.i.i.i.i.i, 0
  %ffs74.i.i.i.i.i = select i1 %iszero73.i.i.i.i.i, i32 0, i32 %356
  %sub75.i.i.i.i.i = add nsw i32 %ffs74.i.i.i.i.i, -4
  %cpb_size_scale78.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13, i32 2
  %357 = ptrtoint ptr %cpb_size_scale78.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %sub75.i.i.i.i.i, ptr %cpb_size_scale78.i.i.i.i.i, align 4
  %mul79.i.i.i.i.i = mul i32 %call72.i.i.i.i.i, 1000
  %div82208.i.i.i.i.i = lshr i32 %mul79.i.i.i.i.i, %ffs74.i.i.i.i.i
  %sub83.i.i.i.i.i = add i32 %div82208.i.i.i.i.i, -1
  %cpb_size_value_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13, i32 3, i32 1
  %358 = ptrtoint ptr %cpb_size_value_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %sub83.i.i.i.i.i, ptr %cpb_size_value_minus1.i.i.i.i.i, align 8
  %mpeg_video_frame_rc_enable.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -160
  %359 = ptrtoint ptr %mpeg_video_frame_rc_enable.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %mpeg_video_frame_rc_enable.i.i.i.i.i, align 4
  %call87.i.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %360) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i.i.i.i.i)
  %tobool88.not.i.i.i.i.i = icmp eq i32 %call87.i.i.i.i.i, 0
  %lnot.ext.i.i.i.i.i = zext i1 %tobool88.not.i.i.i.i.i to i32
  %cbr_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13, i32 3, i32 2
  %361 = ptrtoint ptr %cbr_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %lnot.ext.i.i.i.i.i, ptr %cbr_flag.i.i.i.i.i, align 8
  %initial_cpb_removal_delay_length_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13, i32 4
  %362 = ptrtoint ptr %initial_cpb_removal_delay_length_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 31, ptr %initial_cpb_removal_delay_length_minus1.i.i.i.i.i, align 8
  %cpb_removal_delay_length_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13, i32 5
  %363 = ptrtoint ptr %cpb_removal_delay_length_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 31, ptr %cpb_removal_delay_length_minus1.i.i.i.i.i, align 4
  %dpb_output_delay_length_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13, i32 6
  %364 = ptrtoint ptr %dpb_output_delay_length_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 31, ptr %dpb_output_delay_length_minus1.i.i.i.i.i, align 8
  %time_offset_length.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 13, i32 7
  %365 = ptrtoint ptr %time_offset_length.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 0, ptr %time_offset_length.i.i.i.i.i, align 4
  %low_delay_hrd_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 14
  %366 = ptrtoint ptr %low_delay_hrd_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 0, ptr %low_delay_hrd_flag.i.i.i.i.i, align 8
  %pic_struct_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 15
  %367 = ptrtoint ptr %pic_struct_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 1, ptr %pic_struct_present_flag.i.i.i.i.i, align 4
  %bitstream_restriction_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_sps, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 24, i32 16
  %368 = ptrtoint ptr %bitstream_restriction_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 0, ptr %bitstream_restriction_flag.i.i.i.i.i, align 8
  %plat_dev.i526.i.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %264, i32 0, i32 3
  %369 = ptrtoint ptr %plat_dev.i526.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %plat_dev.i526.i.i.i.i, align 4
  %dev103.i.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %370, i32 0, i32 3
  %call104.i.i.i.i.i = call i32 @nal_h264_write_sps(ptr noundef %dev103.i.i.i.i.i, ptr noundef %curr.0.i.i.i.i, i32 noundef %free.0.i.i.i.i, ptr noundef nonnull %call7.i.i.i.i.i.i.i) #15
  br label %if.end153.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then146.i.i.i.i
  %num_ref_idx_l0.i528.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -268
  %371 = ptrtoint ptr %num_ref_idx_l0.i528.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %num_ref_idx_l0.i528.i.i.i.i, align 4
  %mpeg_video_hevc_profile.i529.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -192
  %373 = ptrtoint ptr %mpeg_video_hevc_profile.i529.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %mpeg_video_hevc_profile.i529.i.i.i.i, align 4
  %call.i530.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %374) #15
  %mpeg_video_hevc_level.i531.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -188
  %375 = ptrtoint ptr %mpeg_video_hevc_level.i531.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %mpeg_video_hevc_level.i531.i.i.i.i, align 4
  %call2.i532.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %376) #15
  %mpeg_video_hevc_tier.i533.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -184
  %377 = ptrtoint ptr %mpeg_video_hevc_tier.i533.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %mpeg_video_hevc_tier.i533.i.i.i.i, align 4
  %call3.i534.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %378) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %379 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i535.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %379, i32 noundef 3520, i32 noundef 720) #19
  %tobool.not.i536.i.i.i.i = icmp eq ptr %call7.i.i.i535.i.i.i.i, null
  br i1 %tobool.not.i536.i.i.i.i, label %if.else.i.i.i.i.do.end159.i.i.i.i_crit_edge, label %if.end.i538.i.i.i.i

if.else.i.i.i.i.do.end159.i.i.i.i_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end159.i.i.i.i

if.end.i538.i.i.i.i:                              ; preds = %if.else.i.i.i.i
  %temporal_id_nesting_flag.i537.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 2
  %380 = ptrtoint ptr %temporal_id_nesting_flag.i537.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 1, ptr %temporal_id_nesting_flag.i537.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i530.i.i.i.i)
  %381 = icmp ult i32 %call.i530.i.i.i.i, 3
  br i1 %381, label %switch.lookup66, label %if.end.i538.i.i.i.i.nal_hevc_profile.exit.i552.i.i.i.i_crit_edge

if.end.i538.i.i.i.i.nal_hevc_profile.exit.i552.i.i.i.i_crit_edge: ; preds = %if.end.i538.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_profile.exit.i552.i.i.i.i

switch.lookup66:                                  ; preds = %if.end.i538.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep67 = getelementptr inbounds [3 x i32], ptr @switch.table.allegro_irq_thread.255, i32 0, i32 %call.i530.i.i.i.i
  %382 = ptrtoint ptr %switch.gep67 to i32
  call void @__asan_load4_noabort(i32 %382)
  %switch.load68 = load i32, ptr %switch.gep67, align 4
  br label %nal_hevc_profile.exit.i552.i.i.i.i

nal_hevc_profile.exit.i552.i.i.i.i:               ; preds = %switch.lookup66, %if.end.i538.i.i.i.i.nal_hevc_profile.exit.i552.i.i.i.i_crit_edge
  %retval.0.i.i542.i.i.i.i = phi i32 [ %switch.load68, %switch.lookup66 ], [ -22, %if.end.i538.i.i.i.i.nal_hevc_profile.exit.i552.i.i.i.i_crit_edge ]
  %general_profile_idc.i543.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 3, i32 2
  %383 = ptrtoint ptr %general_profile_idc.i543.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %retval.0.i.i542.i.i.i.i, ptr %general_profile_idc.i543.i.i.i.i, align 4
  %arrayidx.i544.i.i.i.i = getelementptr %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 3, i32 3, i32 %retval.0.i.i542.i.i.i.i
  %384 = ptrtoint ptr %arrayidx.i544.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 1, ptr %arrayidx.i544.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i534.i.i.i.i)
  %switch.selectcmp.i.i545.i.i.i.i = icmp eq i32 %call3.i534.i.i.i.i, 1
  %switch.select.i.i546.i.i.i.i = select i1 %switch.selectcmp.i.i545.i.i.i.i, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i534.i.i.i.i)
  %switch.selectcmp2.i.i547.i.i.i.i = icmp eq i32 %call3.i534.i.i.i.i, 0
  %switch.select3.i.i548.i.i.i.i = select i1 %switch.selectcmp2.i.i547.i.i.i.i, i32 0, i32 %switch.select.i.i546.i.i.i.i
  %general_tier_flag.i549.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 3, i32 1
  %385 = ptrtoint ptr %general_tier_flag.i549.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %switch.select3.i.i548.i.i.i.i, ptr %general_tier_flag.i549.i.i.i.i, align 8
  %general_progressive_source_flag.i550.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 3, i32 4
  %386 = ptrtoint ptr %general_progressive_source_flag.i550.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 1, ptr %general_progressive_source_flag.i550.i.i.i.i, align 8
  %general_frame_only_constraint_flag.i551.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 3, i32 7
  %387 = ptrtoint ptr %general_frame_only_constraint_flag.i551.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 1, ptr %general_frame_only_constraint_flag.i551.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call2.i532.i.i.i.i)
  %388 = icmp ult i32 %call2.i532.i.i.i.i, 13
  br i1 %388, label %switch.lookup69, label %nal_hevc_profile.exit.i552.i.i.i.i.nal_hevc_level.exit.i581.i.i.i.i_crit_edge

nal_hevc_profile.exit.i552.i.i.i.i.nal_hevc_level.exit.i581.i.i.i.i_crit_edge: ; preds = %nal_hevc_profile.exit.i552.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_level.exit.i581.i.i.i.i

switch.lookup69:                                  ; preds = %nal_hevc_profile.exit.i552.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep70 = getelementptr inbounds [13 x i32], ptr @switch.table.allegro_irq_thread.256, i32 0, i32 %call2.i532.i.i.i.i
  %389 = ptrtoint ptr %switch.gep70 to i32
  call void @__asan_load4_noabort(i32 %389)
  %switch.load71 = load i32, ptr %switch.gep70, align 4
  br label %nal_hevc_level.exit.i581.i.i.i.i

nal_hevc_level.exit.i581.i.i.i.i:                 ; preds = %switch.lookup69, %nal_hevc_profile.exit.i552.i.i.i.i.nal_hevc_level.exit.i581.i.i.i.i_crit_edge
  %retval.0.i174.i.i.i.i.i = phi i32 [ %switch.load71, %switch.lookup69 ], [ -22, %nal_hevc_profile.exit.i552.i.i.i.i.nal_hevc_level.exit.i581.i.i.i.i_crit_edge ]
  %general_level_idc.i564.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 3, i32 10
  %390 = ptrtoint ptr %general_level_idc.i564.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %retval.0.i174.i.i.i.i.i, ptr %general_level_idc.i564.i.i.i.i, align 8
  %seq_parameter_set_id.i565.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 4
  %391 = ptrtoint ptr %seq_parameter_set_id.i565.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 0, ptr %seq_parameter_set_id.i565.i.i.i.i, align 4
  %chroma_format_idc.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 5
  %392 = ptrtoint ptr %chroma_format_idc.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 1, ptr %chroma_format_idc.i.i.i.i.i, align 8
  %width.i566.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -372
  %393 = ptrtoint ptr %width.i566.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %width.i566.i.i.i.i, align 4
  %sub.i567.i.i.i.i = add i32 %394, -1
  %or.i568.i.i.i.i = or i32 %sub.i567.i.i.i.i, 7
  %add.i.i.i.i.i = add i32 %or.i568.i.i.i.i, 1
  %pic_width_in_luma_samples.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 7
  %395 = ptrtoint ptr %pic_width_in_luma_samples.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %add.i.i.i.i.i, ptr %pic_width_in_luma_samples.i.i.i.i.i, align 8
  %height.i569.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -368
  %396 = ptrtoint ptr %height.i569.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %height.i569.i.i.i.i, align 4
  %sub9.i.i.i.i.i = add i32 %397, -1
  %or10.i.i.i.i.i = or i32 %sub9.i.i.i.i.i, 7
  %add11.i.i.i.i.i = add i32 %or10.i.i.i.i.i, 1
  %pic_height_in_luma_samples.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 8
  %398 = ptrtoint ptr %pic_height_in_luma_samples.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %add11.i.i.i.i.i, ptr %pic_height_in_luma_samples.i.i.i.i.i, align 4
  %sub14.i.i.i.i.i = sub i32 %add.i.i.i.i.i, %394
  %conf_win_right_offset.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 10, i32 1
  %399 = ptrtoint ptr %conf_win_right_offset.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %sub14.i.i.i.i.i, ptr %conf_win_right_offset.i.i.i.i.i, align 8
  %sub17.i.i.i.i.i = sub i32 %add11.i.i.i.i.i, %397
  %conf_win_bottom_offset.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 10, i32 3
  %400 = ptrtoint ptr %conf_win_bottom_offset.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %sub17.i.i.i.i.i, ptr %conf_win_bottom_offset.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %394)
  %tobool19.not.i.i.i.i.i = icmp ne i32 %add.i.i.i.i.i, %394
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i.i.i.i, i32 %397)
  %tobool21.i.i.i.i.i = icmp ne i32 %add11.i.i.i.i.i, %397
  %narrow.i.i.i.i.i = select i1 %tobool19.not.i.i.i.i.i, i1 true, i1 %tobool21.i.i.i.i.i
  %401 = zext i1 %narrow.i.i.i.i.i to i32
  %conformance_window_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 9
  %402 = ptrtoint ptr %conformance_window_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %401, ptr %conformance_window_flag.i.i.i.i.i, align 8
  %log2_max_pic_order_cnt_lsb_minus4.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 13
  %403 = ptrtoint ptr %log2_max_pic_order_cnt_lsb_minus4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 6, ptr %log2_max_pic_order_cnt_lsb_minus4.i.i.i.i.i, align 4
  %sub_layer_ordering_info_present_flag.i570.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 14
  %404 = ptrtoint ptr %sub_layer_ordering_info_present_flag.i570.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 1, ptr %sub_layer_ordering_info_present_flag.i570.i.i.i.i, align 8
  %405 = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 15
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %372, ptr %405, align 4
  %max_num_reorder_pics.i571.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 15, i32 1
  %407 = ptrtoint ptr %max_num_reorder_pics.i571.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %372, ptr %max_num_reorder_pics.i571.i.i.i.i, align 8
  %min_cu_size.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -244
  %408 = ptrtoint ptr %min_cu_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %min_cu_size.i.i.i.i.i, align 4
  %sub24.i572.i.i.i.i = add i32 %409, -3
  %log2_min_luma_coding_block_size_minus3.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 16
  %410 = ptrtoint ptr %log2_min_luma_coding_block_size_minus3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %sub24.i572.i.i.i.i, ptr %log2_min_luma_coding_block_size_minus3.i.i.i.i.i, align 8
  %max_cu_size.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -240
  %411 = ptrtoint ptr %max_cu_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %max_cu_size.i.i.i.i.i, align 4
  %sub26.i.i.i.i.i = sub i32 %412, %409
  %log2_diff_max_min_luma_coding_block_size.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 17
  %413 = ptrtoint ptr %log2_diff_max_min_luma_coding_block_size.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %sub26.i.i.i.i.i, ptr %log2_diff_max_min_luma_coding_block_size.i.i.i.i.i, align 4
  %min_tu_size.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -236
  %414 = ptrtoint ptr %min_tu_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %min_tu_size.i.i.i.i.i, align 4
  %sub27.i573.i.i.i.i = add i32 %415, -2
  %log2_min_luma_transform_block_size_minus2.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 18
  %416 = ptrtoint ptr %log2_min_luma_transform_block_size_minus2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %sub27.i573.i.i.i.i, ptr %log2_min_luma_transform_block_size_minus2.i.i.i.i.i, align 8
  %max_tu_size.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -232
  %417 = ptrtoint ptr %max_tu_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %max_tu_size.i.i.i.i.i, align 4
  %sub29.i.i.i.i.i = sub i32 %418, %415
  %log2_diff_max_min_luma_transform_block_size.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 19
  %419 = ptrtoint ptr %log2_diff_max_min_luma_transform_block_size.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %sub29.i.i.i.i.i, ptr %log2_diff_max_min_luma_transform_block_size.i.i.i.i.i, align 4
  %max_transfo_depth_intra.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -228
  %420 = ptrtoint ptr %max_transfo_depth_intra.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %max_transfo_depth_intra.i.i.i.i.i, align 4
  %max_transform_hierarchy_depth_intra.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 21
  %422 = ptrtoint ptr %max_transform_hierarchy_depth_intra.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %421, ptr %max_transform_hierarchy_depth_intra.i.i.i.i.i, align 4
  %max_transfo_depth_inter.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -224
  %423 = ptrtoint ptr %max_transfo_depth_inter.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %max_transfo_depth_inter.i.i.i.i.i, align 4
  %max_transform_hierarchy_depth_inter.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 20
  %425 = ptrtoint ptr %max_transform_hierarchy_depth_inter.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %424, ptr %max_transform_hierarchy_depth_inter.i.i.i.i.i, align 8
  %temporal_mvp_enable.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -276
  %426 = ptrtoint ptr %temporal_mvp_enable.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %temporal_mvp_enable.i.i.i.i.i, align 4, !range !462
  %428 = zext i8 %427 to i32
  %sps_temporal_mvp_enabled_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 30
  %429 = ptrtoint ptr %sps_temporal_mvp_enabled_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %428, ptr %sps_temporal_mvp_enabled_flag.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %412)
  %cmp.i574.i.i.i.i = icmp sgt i32 %412, 4
  %conv32.i.i.i.i.i = zext i1 %cmp.i574.i.i.i.i to i32
  %strong_intra_smoothing_enabled_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 31
  %430 = ptrtoint ptr %strong_intra_smoothing_enabled_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %conv32.i.i.i.i.i, ptr %strong_intra_smoothing_enabled_flag.i.i.i.i.i, align 4
  %vui_parameters_present_flag.i575.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 32
  %431 = ptrtoint ptr %vui_parameters_present_flag.i575.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 1, ptr %vui_parameters_present_flag.i575.i.i.i.i, align 8
  %video_signal_type_present_flag.i576.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 4
  %432 = ptrtoint ptr %video_signal_type_present_flag.i576.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 1, ptr %video_signal_type_present_flag.i576.i.i.i.i, align 4
  %433 = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 5
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 5, ptr %433, align 8
  %quantization.i577.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -344
  %435 = ptrtoint ptr %quantization.i577.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %quantization.i577.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %436)
  %switch.selectcmp2.i175.i.i.i.i.i = icmp eq i32 %436, 1
  %switch.select3.i176.i.i.i.i.i = zext i1 %switch.selectcmp2.i175.i.i.i.i.i to i32
  %video_full_range_flag.i578.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 5, i32 1
  %437 = ptrtoint ptr %video_full_range_flag.i578.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %switch.select3.i176.i.i.i.i.i, ptr %video_full_range_flag.i578.i.i.i.i, align 4
  %colour_description_present_flag.i579.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 5, i32 2
  %438 = ptrtoint ptr %colour_description_present_flag.i579.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 1, ptr %colour_description_present_flag.i579.i.i.i.i, align 8
  %colorspace.i580.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -352
  %439 = ptrtoint ptr %colorspace.i580.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %colorspace.i580.i.i.i.i, align 4
  %switch.tableidx73 = add i32 %440, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx73)
  %441 = icmp ult i32 %switch.tableidx73, 10
  br i1 %441, label %switch.lookup72, label %nal_hevc_level.exit.i581.i.i.i.i.nal_hevc_color_primaries.exit.i.i.i.i.i_crit_edge

nal_hevc_level.exit.i581.i.i.i.i.nal_hevc_color_primaries.exit.i.i.i.i.i_crit_edge: ; preds = %nal_hevc_level.exit.i581.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_color_primaries.exit.i.i.i.i.i

switch.lookup72:                                  ; preds = %nal_hevc_level.exit.i581.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep74 = getelementptr inbounds [10 x i32], ptr @switch.table.allegro_irq_thread.257, i32 0, i32 %switch.tableidx73
  %442 = ptrtoint ptr %switch.gep74 to i32
  call void @__asan_load4_noabort(i32 %442)
  %switch.load75 = load i32, ptr %switch.gep74, align 4
  br label %nal_hevc_color_primaries.exit.i.i.i.i.i

nal_hevc_color_primaries.exit.i.i.i.i.i:          ; preds = %switch.lookup72, %nal_hevc_level.exit.i581.i.i.i.i.nal_hevc_color_primaries.exit.i.i.i.i.i_crit_edge
  %retval.0.i182.i.i.i.i.i = phi i32 [ %switch.load75, %switch.lookup72 ], [ 2, %nal_hevc_level.exit.i581.i.i.i.i.nal_hevc_color_primaries.exit.i.i.i.i.i_crit_edge ]
  %443 = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 5, i32 3
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %retval.0.i182.i.i.i.i.i, ptr %443, align 4
  %xfer_func.i583.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -340
  %445 = ptrtoint ptr %xfer_func.i583.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %xfer_func.i583.i.i.i.i, align 4
  %447 = zext i32 %446 to i64
  call void @__sanitizer_cov_trace_switch(i64 %447, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %446, label %.thread.fold.split.i.i586.i.i.i.i [
    i32 0, label %if.then.i.i584.i.i.i.i
    i32 7, label %nal_hevc_color_primaries.exit.i.i.i.i.i.nal_hevc_transfer_characteristics.exit.i.i.i.i.i_crit_edge
    i32 1, label %nal_hevc_color_primaries.exit.i.i.i.i.i.if.end.thread.thread43.i.i585.i.i.i.i_crit_edge
  ]

nal_hevc_color_primaries.exit.i.i.i.i.i.if.end.thread.thread43.i.i585.i.i.i.i_crit_edge: ; preds = %nal_hevc_color_primaries.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread.thread43.i.i585.i.i.i.i

nal_hevc_color_primaries.exit.i.i.i.i.i.nal_hevc_transfer_characteristics.exit.i.i.i.i.i_crit_edge: ; preds = %nal_hevc_color_primaries.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i

if.then.i.i584.i.i.i.i:                           ; preds = %nal_hevc_color_primaries.exit.i.i.i.i.i
  %switch.tableidx77 = add i32 %440, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx77)
  %448 = icmp ult i32 %switch.tableidx77, 11
  br i1 %448, label %switch.lookup76, label %if.then.i.i584.i.i.i.i.if.end.thread.thread43.i.i585.i.i.i.i_crit_edge

if.then.i.i584.i.i.i.i.if.end.thread.thread43.i.i585.i.i.i.i_crit_edge: ; preds = %if.then.i.i584.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread.thread43.i.i585.i.i.i.i

if.end.thread.thread43.i.i585.i.i.i.i:            ; preds = %if.then.i.i584.i.i.i.i.if.end.thread.thread43.i.i585.i.i.i.i_crit_edge, %nal_hevc_color_primaries.exit.i.i.i.i.i.if.end.thread.thread43.i.i585.i.i.i.i_crit_edge
  br label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i

.thread.fold.split.i.i586.i.i.i.i:                ; preds = %nal_hevc_color_primaries.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i

switch.lookup76:                                  ; preds = %if.then.i.i584.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep78 = getelementptr inbounds [11 x i32], ptr @switch.table.allegro_irq_thread.258, i32 0, i32 %switch.tableidx77
  %449 = ptrtoint ptr %switch.gep78 to i32
  call void @__asan_load4_noabort(i32 %449)
  %switch.load79 = load i32, ptr %switch.gep78, align 4
  br label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i

nal_hevc_transfer_characteristics.exit.i.i.i.i.i: ; preds = %switch.lookup76, %.thread.fold.split.i.i586.i.i.i.i, %if.end.thread.thread43.i.i585.i.i.i.i, %nal_hevc_color_primaries.exit.i.i.i.i.i.nal_hevc_transfer_characteristics.exit.i.i.i.i.i_crit_edge
  %450 = phi i32 [ 6, %if.end.thread.thread43.i.i585.i.i.i.i ], [ 16, %nal_hevc_color_primaries.exit.i.i.i.i.i.nal_hevc_transfer_characteristics.exit.i.i.i.i.i_crit_edge ], [ 2, %.thread.fold.split.i.i586.i.i.i.i ], [ %switch.load79, %switch.lookup76 ]
  %transfer_characteristics.i587.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 5, i32 3, i32 1
  %451 = ptrtoint ptr %transfer_characteristics.i587.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %450, ptr %transfer_characteristics.i587.i.i.i.i, align 8
  %ycbcr_enc.i588.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -348
  %452 = ptrtoint ptr %ycbcr_enc.i588.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %ycbcr_enc.i588.i.i.i.i, align 4
  %454 = zext i32 %453 to i64
  call void @__sanitizer_cov_trace_switch(i64 %454, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %453, label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.default.i185.i.i.i.i.i_crit_edge [
    i32 0, label %if.then.i183.i.i.i.i.i
    i32 1, label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge
    i32 3, label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge93
    i32 2, label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge
    i32 4, label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge94
    i32 6, label %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.bb11.i184.i.i.i.i.i_crit_edge
    i32 7, label %sw.bb12.i.i590.i.i.i.i
  ]

nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.bb11.i184.i.i.i.i.i_crit_edge: ; preds = %nal_hevc_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11.i184.i.i.i.i.i

nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge94: ; preds = %nal_hevc_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10.i.i589.i.i.i.i

nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge: ; preds = %nal_hevc_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10.i.i589.i.i.i.i

nal_hevc_transfer_characteristics.exit.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge93: ; preds = %nal_hevc_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_matrix_coeffs.exit.i.i.i.i.i

nal_hevc_transfer_characteristics.exit.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge: ; preds = %nal_hevc_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_matrix_coeffs.exit.i.i.i.i.i

nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.default.i185.i.i.i.i.i_crit_edge: ; preds = %nal_hevc_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i185.i.i.i.i.i

if.then.i183.i.i.i.i.i:                           ; preds = %nal_hevc_transfer_characteristics.exit.i.i.i.i.i
  %455 = zext i32 %440 to i64
  call void @__sanitizer_cov_trace_switch(i64 %455, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %440, label %if.then.i183.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge [
    i32 3, label %if.then.i183.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge
    i32 12, label %if.then.i183.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge95
    i32 10, label %if.then.i183.i.i.i.i.i.sw.bb11.i184.i.i.i.i.i_crit_edge
    i32 2, label %if.then.i183.i.i.i.i.i.sw.default.i185.i.i.i.i.i_crit_edge
  ]

if.then.i183.i.i.i.i.i.sw.default.i185.i.i.i.i.i_crit_edge: ; preds = %if.then.i183.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i185.i.i.i.i.i

if.then.i183.i.i.i.i.i.sw.bb11.i184.i.i.i.i.i_crit_edge: ; preds = %if.then.i183.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11.i184.i.i.i.i.i

if.then.i183.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge95: ; preds = %if.then.i183.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10.i.i589.i.i.i.i

if.then.i183.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge: ; preds = %if.then.i183.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb10.i.i589.i.i.i.i

if.then.i183.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i183.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_matrix_coeffs.exit.i.i.i.i.i

sw.bb10.i.i589.i.i.i.i:                           ; preds = %if.then.i183.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge, %if.then.i183.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge95, %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge, %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.bb10.i.i589.i.i.i.i_crit_edge94
  br label %nal_hevc_matrix_coeffs.exit.i.i.i.i.i

sw.bb11.i184.i.i.i.i.i:                           ; preds = %if.then.i183.i.i.i.i.i.sw.bb11.i184.i.i.i.i.i_crit_edge, %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.bb11.i184.i.i.i.i.i_crit_edge
  br label %nal_hevc_matrix_coeffs.exit.i.i.i.i.i

sw.bb12.i.i590.i.i.i.i:                           ; preds = %nal_hevc_transfer_characteristics.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nal_hevc_matrix_coeffs.exit.i.i.i.i.i

sw.default.i185.i.i.i.i.i:                        ; preds = %if.then.i183.i.i.i.i.i.sw.default.i185.i.i.i.i.i_crit_edge, %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.sw.default.i185.i.i.i.i.i_crit_edge
  br label %nal_hevc_matrix_coeffs.exit.i.i.i.i.i

nal_hevc_matrix_coeffs.exit.i.i.i.i.i:            ; preds = %sw.default.i185.i.i.i.i.i, %sw.bb12.i.i590.i.i.i.i, %sw.bb11.i184.i.i.i.i.i, %sw.bb10.i.i589.i.i.i.i, %if.then.i183.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge, %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge, %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge93
  %retval.0.i186.i.i.i.i.i = phi i32 [ 2, %sw.default.i185.i.i.i.i.i ], [ 10, %sw.bb12.i.i590.i.i.i.i ], [ 9, %sw.bb11.i184.i.i.i.i.i ], [ 1, %sw.bb10.i.i589.i.i.i.i ], [ 5, %if.then.i183.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge ], [ 5, %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge ], [ 5, %nal_hevc_transfer_characteristics.exit.i.i.i.i.i.nal_hevc_matrix_coeffs.exit.i.i.i.i.i_crit_edge93 ]
  %matrix_coeffs.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 5, i32 3, i32 2
  %456 = ptrtoint ptr %matrix_coeffs.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %retval.0.i186.i.i.i.i.i, ptr %matrix_coeffs.i.i.i.i.i, align 4
  %chroma_loc_info_present_flag.i591.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 6
  %457 = ptrtoint ptr %chroma_loc_info_present_flag.i591.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 1, ptr %chroma_loc_info_present_flag.i591.i.i.i.i, align 8
  %458 = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 7
  %459 = ptrtoint ptr %458 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 0, ptr %458, align 4
  %chroma_sample_loc_type_bottom_field.i592.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 7, i32 1
  %460 = ptrtoint ptr %chroma_sample_loc_type_bottom_field.i592.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 0, ptr %chroma_sample_loc_type_bottom_field.i592.i.i.i.i, align 8
  %vui_timing_info_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 13
  %461 = ptrtoint ptr %vui_timing_info_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 1, ptr %vui_timing_info_present_flag.i.i.i.i.i, align 4
  %framerate.i593.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -360
  %denominator.i594.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -356
  %462 = ptrtoint ptr %denominator.i594.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %denominator.i594.i.i.i.i, align 4
  %464 = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14
  %465 = ptrtoint ptr %464 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %463, ptr %464, align 8
  %466 = ptrtoint ptr %framerate.i593.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %framerate.i593.i.i.i.i, align 4
  %vui_time_scale.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 1
  %468 = ptrtoint ptr %vui_time_scale.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 %467, ptr %vui_time_scale.i.i.i.i.i, align 4
  %bitstream_restriction_flag.i595.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 15
  %469 = ptrtoint ptr %bitstream_restriction_flag.i595.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 1, ptr %bitstream_restriction_flag.i595.i.i.i.i, align 4
  %motion_vectors_over_pic_boundaries_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 16, i32 1
  %470 = ptrtoint ptr %motion_vectors_over_pic_boundaries_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 1, ptr %motion_vectors_over_pic_boundaries_flag.i.i.i.i.i, align 4
  %restricted_ref_pic_lists_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 16, i32 2
  %471 = ptrtoint ptr %restricted_ref_pic_lists_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 1, ptr %restricted_ref_pic_lists_flag.i.i.i.i.i, align 8
  %log2_max_mv_length_horizontal.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 16, i32 6
  %472 = ptrtoint ptr %log2_max_mv_length_horizontal.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 15, ptr %log2_max_mv_length_horizontal.i.i.i.i.i, align 8
  %log2_max_mv_length_vertical.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 16, i32 7
  %473 = ptrtoint ptr %log2_max_mv_length_vertical.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 15, ptr %log2_max_mv_length_vertical.i.i.i.i.i, align 4
  %vui_hrd_parameters_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 4
  %474 = ptrtoint ptr %vui_hrd_parameters_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 1, ptr %vui_hrd_parameters_present_flag.i.i.i.i.i, align 8
  %vcl_hrd_parameters_present_flag.i596.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 5, i32 1
  %475 = ptrtoint ptr %vcl_hrd_parameters_present_flag.i596.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 1, ptr %vcl_hrd_parameters_present_flag.i596.i.i.i.i, align 8
  %initial_cpb_removal_delay_length_minus1.i597.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 5, i32 2, i32 5
  %476 = ptrtoint ptr %initial_cpb_removal_delay_length_minus1.i597.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 31, ptr %initial_cpb_removal_delay_length_minus1.i597.i.i.i.i, align 4
  %au_cpb_removal_delay_length_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 5, i32 2, i32 6
  %477 = ptrtoint ptr %au_cpb_removal_delay_length_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 30, ptr %au_cpb_removal_delay_length_minus1.i.i.i.i.i, align 8
  %dpb_output_delay_length_minus1.i598.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 5, i32 2, i32 7
  %478 = ptrtoint ptr %dpb_output_delay_length_minus1.i598.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 30, ptr %dpb_output_delay_length_minus1.i598.i.i.i.i, align 4
  %bitrate_peak.i599.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -304
  %479 = ptrtoint ptr %bitrate_peak.i599.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %bitrate_peak.i599.i.i.i.i, align 4
  %481 = call i32 @llvm.cttz.i32(i32 %480, i1 true) #15, !range !465
  %482 = add nuw nsw i32 %481, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %iszero.i600.i.i.i.i = icmp eq i32 %480, 0
  %ffs.i601.i.i.i.i = select i1 %iszero.i600.i.i.i.i, i32 0, i32 %482
  %sub41.i.i.i.i.i = add nsw i32 %ffs.i601.i.i.i.i, -6
  %bit_rate_scale.i602.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 5, i32 2, i32 2
  %483 = ptrtoint ptr %bit_rate_scale.i602.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 %sub41.i.i.i.i.i, ptr %bit_rate_scale.i602.i.i.i.i, align 8
  %shr.i.i.i.i.i = lshr i32 %480, %ffs.i601.i.i.i.i
  %sub45.i.i.i.i.i = add i32 %shr.i.i.i.i.i, -1
  %vcl_hrd.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 5, i32 3, i32 6
  %484 = ptrtoint ptr %vcl_hrd.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %sub45.i.i.i.i.i, ptr %vcl_hrd.i.i.i.i.i, align 8
  %mpeg_video_cpb_size.i603.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -144
  %485 = ptrtoint ptr %mpeg_video_cpb_size.i603.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %mpeg_video_cpb_size.i603.i.i.i.i, align 4
  %call48.i.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %486) #15
  %mul.i604.i.i.i.i = mul i32 %call48.i.i.i.i.i, 1000
  %487 = call i32 @llvm.cttz.i32(i32 %mul.i604.i.i.i.i, i1 true) #15, !range !466
  %488 = add nuw nsw i32 %487, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i604.i.i.i.i)
  %iszero49.i.i.i.i.i = icmp eq i32 %mul.i604.i.i.i.i, 0
  %ffs50.i.i.i.i.i = select i1 %iszero49.i.i.i.i.i, i32 0, i32 %488
  %sub51.i.i.i.i.i = add nsw i32 %ffs50.i.i.i.i.i, -4
  %cpb_size_scale.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 5, i32 2, i32 3
  %489 = ptrtoint ptr %cpb_size_scale.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 %sub51.i.i.i.i.i, ptr %cpb_size_scale.i.i.i.i.i, align 4
  %shr54.i.i.i.i.i = lshr i32 %mul.i604.i.i.i.i, %ffs50.i.i.i.i.i
  %sub55.i.i.i.i.i = add i32 %shr54.i.i.i.i.i, -1
  %cpb_size_value_minus1.i605.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 5, i32 3, i32 6, i32 0, i32 1
  %490 = ptrtoint ptr %cpb_size_value_minus1.i605.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 %sub55.i.i.i.i.i, ptr %cpb_size_value_minus1.i605.i.i.i.i, align 4
  %mpeg_video_frame_rc_enable.i606.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -160
  %491 = ptrtoint ptr %mpeg_video_frame_rc_enable.i606.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %mpeg_video_frame_rc_enable.i606.i.i.i.i, align 4
  %call59.i.i.i.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %492) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i.i.i.i)
  %tobool60.not.i.i.i.i.i = icmp eq i32 %call59.i.i.i.i.i, 0
  %lnot.ext.i607.i.i.i.i = zext i1 %tobool60.not.i.i.i.i.i to i32
  %cbr_flag.i608.i.i.i.i = getelementptr inbounds %struct.nal_hevc_sps, ptr %call7.i.i.i535.i.i.i.i, i32 0, i32 33, i32 14, i32 5, i32 3, i32 6, i32 0, i32 2
  %493 = ptrtoint ptr %cbr_flag.i608.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %lnot.ext.i607.i.i.i.i, ptr %cbr_flag.i608.i.i.i.i, align 8
  %plat_dev.i609.i.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %264, i32 0, i32 3
  %494 = ptrtoint ptr %plat_dev.i609.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %plat_dev.i609.i.i.i.i, align 4
  %dev64.i.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %495, i32 0, i32 3
  %call65.i.i.i.i.i = call i32 @nal_hevc_write_sps(ptr noundef %dev64.i.i.i.i.i, ptr noundef %curr.0.i.i.i.i, i32 noundef %free.0.i.i.i.i, ptr noundef nonnull %call7.i.i.i535.i.i.i.i) #15
  br label %if.end153.i.i.i.i

if.end153.i.i.i.i:                                ; preds = %nal_hevc_matrix_coeffs.exit.i.i.i.i.i, %nal_h264_matrix_coeffs.exit.i.i.i.i.i
  %call7.i.i.i535.sink.i.i.i.i = phi ptr [ %call7.i.i.i535.i.i.i.i, %nal_hevc_matrix_coeffs.exit.i.i.i.i.i ], [ %call7.i.i.i.i.i.i.i, %nal_h264_matrix_coeffs.exit.i.i.i.i.i ]
  %len.0.i.i.i.i = phi i32 [ %call65.i.i.i.i.i, %nal_hevc_matrix_coeffs.exit.i.i.i.i.i ], [ %call104.i.i.i.i.i, %nal_h264_matrix_coeffs.exit.i.i.i.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i535.sink.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i.i.i.i)
  %cmp154.i.i.i.i = icmp slt i32 %len.0.i.i.i.i, 0
  br i1 %cmp154.i.i.i.i, label %if.end153.i.i.i.i.do.end159.i.i.i.i_crit_edge, label %if.end165.i.i.i.i

if.end153.i.i.i.i.do.end159.i.i.i.i_crit_edge:    ; preds = %if.end153.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end159.i.i.i.i

do.end159.i.i.i.i:                                ; preds = %if.end153.i.i.i.i.do.end159.i.i.i.i_crit_edge, %if.else.i.i.i.i.do.end159.i.i.i.i_crit_edge, %if.then150.i.i.i.i.do.end159.i.i.i.i_crit_edge
  %name162.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %call164.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name162.i.i.i.i, i32 noundef %free.0.i.i.i.i) #18
  br label %if.then333.i.sink.split.i.i.i

if.end165.i.i.i.i:                                ; preds = %if.end153.i.i.i.i
  %add.ptr166.i.i.i.i = getelementptr i8, ptr %curr.0.i.i.i.i, i32 %len.0.i.i.i.i
  %sub167.i.i.i.i = sub i32 %free.0.i.i.i.i, %len.0.i.i.i.i
  %496 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %496)
  %cmp169.i.i.i.i = icmp sgt i32 %496, 0
  br i1 %cmp169.i.i.i.i, label %do.end174.i.i.i.i, label %if.end165.i.i.i.i.if.end184.i.i.i.i_crit_edge

if.end165.i.i.i.i.if.end184.i.i.i.i_crit_edge:    ; preds = %if.end165.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184.i.i.i.i

do.end174.i.i.i.i:                                ; preds = %if.end165.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name177.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %497 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call180.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name177.i.i.i.i, i32 noundef %498, i32 noundef %len.0.i.i.i.i) #18
  br label %if.end184.i.i.i.i

if.end184.i.i.i.i:                                ; preds = %do.end174.i.i.i.i, %if.end165.i.i.i.i.if.end184.i.i.i.i_crit_edge, %if.end143.i.i.i.i.if.end184.i.i.i.i_crit_edge
  %free.1.i.i.i.i = phi i32 [ %sub167.i.i.i.i, %do.end174.i.i.i.i ], [ %sub167.i.i.i.i, %if.end165.i.i.i.i.if.end184.i.i.i.i_crit_edge ], [ %free.0.i.i.i.i, %if.end143.i.i.i.i.if.end184.i.i.i.i_crit_edge ]
  %curr.1.i.i.i.i = phi ptr [ %add.ptr166.i.i.i.i, %do.end174.i.i.i.i ], [ %add.ptr166.i.i.i.i, %if.end165.i.i.i.i.if.end184.i.i.i.i_crit_edge ], [ %curr.0.i.i.i.i, %if.end143.i.i.i.i.if.end184.i.i.i.i_crit_edge ]
  %slice_type.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 24
  %499 = ptrtoint ptr %slice_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %slice_type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %500)
  %cmp185.i.i.i.i = icmp eq i32 %500, 2
  br i1 %cmp185.i.i.i.i, label %if.then187.i.i.i.i, label %if.end184.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge

if.end184.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge: ; preds = %if.end184.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true230.i.i.i.i

if.then187.i.i.i.i:                               ; preds = %if.end184.i.i.i.i
  %501 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %502)
  %cmp189.i.i.i.i = icmp eq i32 %502, 875967048
  %503 = ptrtoint ptr %channel.0.le.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %channel.0.le.i.i45.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %505 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  br i1 %cmp189.i.i.i.i, label %if.then191.i.i.i.i, label %if.else193.i.i.i.i

if.then191.i.i.i.i:                               ; preds = %if.then187.i.i.i.i
  %call7.i.i.i611.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %505, i32 noundef 3520, i32 noundef 140) #19
  %tobool.not.i612.i.i.i.i = icmp eq ptr %call7.i.i.i611.i.i.i.i, null
  br i1 %tobool.not.i612.i.i.i.i, label %if.then191.i.i.i.i.do.end201.i.i.i.i_crit_edge, label %if.end.i616.i.i.i.i

if.then191.i.i.i.i.do.end201.i.i.i.i_crit_edge:   ; preds = %if.then191.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end201.i.i.i.i

if.end.i616.i.i.i.i:                              ; preds = %if.then191.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %num_ref_idx_l0.i613.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -268
  %506 = call ptr @memset(ptr %call7.i.i.i611.i.i.i.i, i32 0, i32 20)
  %507 = ptrtoint ptr %num_ref_idx_l0.i613.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %num_ref_idx_l0.i613.i.i.i.i, align 4
  %sub.i614.i.i.i.i = add i32 %508, -1
  %num_ref_idx_l0_default_active_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_pps, ptr %call7.i.i.i611.i.i.i.i, i32 0, i32 7
  %509 = ptrtoint ptr %num_ref_idx_l0_default_active_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %sub.i614.i.i.i.i, ptr %num_ref_idx_l0_default_active_minus1.i.i.i.i.i, align 8
  %num_ref_idx_l1.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -264
  %510 = ptrtoint ptr %num_ref_idx_l1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %num_ref_idx_l1.i.i.i.i.i, align 4
  %sub2.i.i.i.i.i = add i32 %511, -1
  %num_ref_idx_l1_default_active_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_pps, ptr %call7.i.i.i611.i.i.i.i, i32 0, i32 8
  %512 = ptrtoint ptr %num_ref_idx_l1_default_active_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %sub2.i.i.i.i.i, ptr %num_ref_idx_l1_default_active_minus1.i.i.i.i.i, align 4
  %weighted_pred_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_pps, ptr %call7.i.i.i611.i.i.i.i, i32 0, i32 9
  %deblocking_filter_control_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_pps, ptr %call7.i.i.i611.i.i.i.i, i32 0, i32 14
  %513 = call ptr @memset(ptr %weighted_pred_flag.i.i.i.i.i, i32 0, i32 20)
  %514 = ptrtoint ptr %deblocking_filter_control_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 1, ptr %deblocking_filter_control_present_flag.i.i.i.i.i, align 4
  %constrained_intra_pred_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_h264_pps, ptr %call7.i.i.i611.i.i.i.i, i32 0, i32 15
  %plat_dev.i615.i.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %504, i32 0, i32 3
  %515 = call ptr @memset(ptr %constrained_intra_pred_flag.i.i.i.i.i, i32 0, i32 20)
  %516 = ptrtoint ptr %plat_dev.i615.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %plat_dev.i615.i.i.i.i, align 4
  %dev3.i.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %517, i32 0, i32 3
  %call4.i.i.i.i.i = call i32 @nal_h264_write_pps(ptr noundef %dev3.i.i.i.i.i, ptr noundef %curr.1.i.i.i.i, i32 noundef %free.1.i.i.i.i, ptr noundef nonnull %call7.i.i.i611.i.i.i.i) #15
  br label %if.end195.i.i.i.i

if.else193.i.i.i.i:                               ; preds = %if.then187.i.i.i.i
  %call7.i.i.i618.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %505, i32 noundef 3520, i32 noundef 176) #19
  %tobool.not.i619.i.i.i.i = icmp eq ptr %call7.i.i.i618.i.i.i.i, null
  br i1 %tobool.not.i619.i.i.i.i, label %if.else193.i.i.i.i.do.end201.i.i.i.i_crit_edge, label %if.end.i621.i.i.i.i

if.else193.i.i.i.i.do.end201.i.i.i.i_crit_edge:   ; preds = %if.else193.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end201.i.i.i.i

if.end.i621.i.i.i.i:                              ; preds = %if.else193.i.i.i.i
  %518 = ptrtoint ptr %call7.i.i.i618.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 0, ptr %call7.i.i.i618.i.i.i.i, align 8
  %pps_seq_parameter_set_id.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 1
  %519 = ptrtoint ptr %pps_seq_parameter_set_id.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 0, ptr %pps_seq_parameter_set_id.i.i.i.i.i, align 4
  %num_column.i.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 13
  %520 = ptrtoint ptr %num_column.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %520)
  %521 = load i16, ptr %num_column.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %521)
  %cmp.i620.i.i.i.i = icmp ugt i16 %521, 1
  br i1 %cmp.i620.i.i.i.i, label %if.end.i621.i.i.i.i.if.then6.i.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i621.i.i.i.i.if.then6.i.i.i.i.i_crit_edge: ; preds = %if.end.i621.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i.i.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i621.i.i.i.i
  %num_row.i.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 14
  %522 = ptrtoint ptr %num_row.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %522)
  %523 = load i16, ptr %num_row.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %523)
  %cmp4.i.i.i.i.i = icmp ugt i16 %523, 1
  br i1 %cmp4.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.if.then6.i.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.if.end30.i.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.i.if.end30.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.if.then6.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i.i.i.i.i

if.then6.i.i.i.i.i:                               ; preds = %lor.lhs.false.i.i.i.i.i.if.then6.i.i.i.i.i_crit_edge, %if.end.i621.i.i.i.i.if.then6.i.i.i.i.i_crit_edge
  %tiles_enabled_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 20
  %524 = ptrtoint ptr %tiles_enabled_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %524)
  store i32 1, ptr %tiles_enabled_flag.i.i.i.i.i, align 8
  %conv8.i.i.i.i.i = zext i16 %521 to i32
  %sub.i622.i.i.i.i = add nsw i32 %conv8.i.i.i.i.i, -1
  %525 = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 22
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %sub.i622.i.i.i.i, ptr %525, align 8
  %num_row9.i.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 14
  %527 = ptrtoint ptr %num_row9.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %527)
  %528 = load i16, ptr %num_row9.i.i.i.i.i, align 2
  %conv10.i.i.i.i.i = zext i16 %528 to i32
  %sub11.i.i.i.i.i = add nsw i32 %conv10.i.i.i.i.i, -1
  %num_tile_rows_minus1.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 22, i32 1
  %529 = ptrtoint ptr %num_tile_rows_minus1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %sub11.i.i.i.i.i, ptr %num_tile_rows_minus1.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %521)
  %cmp1478.not.i.i.i.i.i = icmp eq i16 %521, 0
  br i1 %cmp1478.not.i.i.i.i.i, label %if.then6.i.i.i.i.i.for.cond18.preheader.i.i.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i.i

if.then6.i.i.i.i.i.for.cond18.preheader.i.i.i.i.i_crit_edge: ; preds = %if.then6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond18.preheader.i.i.i.i.i

for.body.lr.ph.i.i.i.i.i:                         ; preds = %if.then6.i.i.i.i.i
  %530 = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 22, i32 3
  br label %for.body.i624.i.i.i.i

for.cond18.preheader.i.i.i.i.i:                   ; preds = %for.body.i624.i.i.i.i.for.cond18.preheader.i.i.i.i.i_crit_edge, %if.then6.i.i.i.i.i.for.cond18.preheader.i.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %528)
  %cmp2180.not.i.i.i.i.i = icmp eq i16 %528, 0
  br i1 %cmp2180.not.i.i.i.i.i, label %for.cond18.preheader.i.i.i.i.i.if.end30.i.i.i.i.i_crit_edge, label %for.cond18.preheader.i.i.i.i.i.for.body23.i.i.i.i.i_crit_edge

for.cond18.preheader.i.i.i.i.i.for.body23.i.i.i.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i.i.i.i
  br label %for.body23.i.i.i.i.i

for.cond18.preheader.i.i.i.i.i.if.end30.i.i.i.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i.i.i.i

for.body.i624.i.i.i.i:                            ; preds = %for.body.i624.i.i.i.i.for.body.i624.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i.i
  %i.079.i.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i.i ], [ %inc.i.i.i.i.i, %for.body.i624.i.i.i.i.for.body.i624.i.i.i.i_crit_edge ]
  %arrayidx.i623.i.i.i.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 21, i32 %i.079.i.i.i.i.i
  %531 = ptrtoint ptr %arrayidx.i623.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %arrayidx.i623.i.i.i.i, align 4
  %sub16.i.i.i.i.i = add i32 %532, -1
  %arrayidx17.i.i.i.i.i = getelementptr [1 x i32], ptr %530, i32 0, i32 %i.079.i.i.i.i.i
  %533 = ptrtoint ptr %arrayidx17.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %sub16.i.i.i.i.i, ptr %arrayidx17.i.i.i.i.i, align 4
  %inc.i.i.i.i.i = add nuw nsw i32 %i.079.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %conv8.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %for.body.i624.i.i.i.i.for.cond18.preheader.i.i.i.i.i_crit_edge, label %for.body.i624.i.i.i.i.for.body.i624.i.i.i.i_crit_edge

for.body.i624.i.i.i.i.for.body.i624.i.i.i.i_crit_edge: ; preds = %for.body.i624.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i624.i.i.i.i

for.body.i624.i.i.i.i.for.cond18.preheader.i.i.i.i.i_crit_edge: ; preds = %for.body.i624.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond18.preheader.i.i.i.i.i

for.body23.i.i.i.i.i:                             ; preds = %for.body23.i.i.i.i.i.for.body23.i.i.i.i.i_crit_edge, %for.cond18.preheader.i.i.i.i.i.for.body23.i.i.i.i.i_crit_edge
  %i.181.i.i.i.i.i = phi i32 [ %inc28.i.i.i.i.i, %for.body23.i.i.i.i.i.for.body23.i.i.i.i.i_crit_edge ], [ 0, %for.cond18.preheader.i.i.i.i.i.for.body23.i.i.i.i.i_crit_edge ]
  %arrayidx24.i.i.i.i.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 22, i32 %i.181.i.i.i.i.i
  %534 = ptrtoint ptr %arrayidx24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %arrayidx24.i.i.i.i.i, align 4
  %sub25.i.i.i.i.i = add i32 %535, -1
  %arrayidx26.i.i.i.i.i = getelementptr %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 22, i32 3, i32 1, i32 %i.181.i.i.i.i.i
  %536 = ptrtoint ptr %arrayidx26.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 %sub25.i.i.i.i.i, ptr %arrayidx26.i.i.i.i.i, align 4
  %inc28.i.i.i.i.i = add nuw nsw i32 %i.181.i.i.i.i.i, 1
  %exitcond82.not.i.i.i.i.i = icmp eq i32 %inc28.i.i.i.i.i, %conv10.i.i.i.i.i
  br i1 %exitcond82.not.i.i.i.i.i, label %for.body23.i.i.i.i.i.if.end30.i.i.i.i.i_crit_edge, label %for.body23.i.i.i.i.i.for.body23.i.i.i.i.i_crit_edge

for.body23.i.i.i.i.i.for.body23.i.i.i.i.i_crit_edge: ; preds = %for.body23.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.i.i.i.i.i

for.body23.i.i.i.i.i.if.end30.i.i.i.i.i_crit_edge: ; preds = %for.body23.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i.i.i.i

if.end30.i.i.i.i.i:                               ; preds = %for.body23.i.i.i.i.i.if.end30.i.i.i.i.i_crit_edge, %for.cond18.preheader.i.i.i.i.i.if.end30.i.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.if.end30.i.i.i.i.i_crit_edge
  %enable_loop_filter_across_tiles.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -275
  %537 = ptrtoint ptr %enable_loop_filter_across_tiles.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %enable_loop_filter_across_tiles.i.i.i.i.i, align 1, !range !462
  %539 = zext i8 %538 to i32
  %loop_filter_across_tiles_enabled_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 22, i32 4
  %540 = ptrtoint ptr %loop_filter_across_tiles_enabled_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 %539, ptr %loop_filter_across_tiles_enabled_flag.i.i.i.i.i, align 4
  %enable_loop_filter_across_slices.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -274
  %541 = ptrtoint ptr %enable_loop_filter_across_slices.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %541)
  %542 = load i8, ptr %enable_loop_filter_across_slices.i.i.i.i.i, align 2, !range !462
  %543 = zext i8 %542 to i32
  %pps_loop_filter_across_slices_enabled_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 23
  %544 = ptrtoint ptr %pps_loop_filter_across_slices_enabled_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %543, ptr %pps_loop_filter_across_slices_enabled_flag.i.i.i.i.i, align 8
  %deblocking_filter_control_present_flag.i625.i.i.i.i = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 24
  %545 = ptrtoint ptr %deblocking_filter_control_present_flag.i625.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 1, ptr %deblocking_filter_control_present_flag.i625.i.i.i.i, align 4
  %enable_deblocking_filter_override.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -273
  %546 = ptrtoint ptr %enable_deblocking_filter_override.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %enable_deblocking_filter_override.i.i.i.i.i, align 1, !range !462
  %548 = zext i8 %547 to i32
  %549 = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 25
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %548, ptr %549, align 8
  %551 = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 25, i32 2
  %552 = ptrtoint ptr %551 to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 -1, ptr %551, align 8
  %pps_tc_offset_div2.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 25, i32 2, i32 1
  %553 = ptrtoint ptr %pps_tc_offset_div2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 -1, ptr %pps_tc_offset_div2.i.i.i.i.i, align 4
  %enable_reordering.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i38.i.i, i32 -272
  %554 = ptrtoint ptr %enable_reordering.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %enable_reordering.i.i.i.i.i, align 4, !range !462
  %556 = zext i8 %555 to i32
  %lists_modification_present_flag.i.i.i.i.i = getelementptr inbounds %struct.nal_hevc_pps, ptr %call7.i.i.i618.i.i.i.i, i32 0, i32 27
  %557 = ptrtoint ptr %lists_modification_present_flag.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 %556, ptr %lists_modification_present_flag.i.i.i.i.i, align 4
  %plat_dev.i626.i.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %504, i32 0, i32 3
  %558 = ptrtoint ptr %plat_dev.i626.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %plat_dev.i626.i.i.i.i, align 4
  %dev39.i.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %559, i32 0, i32 3
  %call40.i.i.i.i.i = call i32 @nal_hevc_write_pps(ptr noundef %dev39.i.i.i.i.i, ptr noundef %curr.1.i.i.i.i, i32 noundef %free.1.i.i.i.i, ptr noundef nonnull %call7.i.i.i618.i.i.i.i) #15
  br label %if.end195.i.i.i.i

if.end195.i.i.i.i:                                ; preds = %if.end30.i.i.i.i.i, %if.end.i616.i.i.i.i
  %call7.i.i.i618.sink.i.i.i.i = phi ptr [ %call7.i.i.i618.i.i.i.i, %if.end30.i.i.i.i.i ], [ %call7.i.i.i611.i.i.i.i, %if.end.i616.i.i.i.i ]
  %len.1.i.i.i.i = phi i32 [ %call40.i.i.i.i.i, %if.end30.i.i.i.i.i ], [ %call4.i.i.i.i.i, %if.end.i616.i.i.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i618.sink.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1.i.i.i.i)
  %cmp196.i.i.i.i = icmp slt i32 %len.1.i.i.i.i, 0
  br i1 %cmp196.i.i.i.i, label %if.end195.i.i.i.i.do.end201.i.i.i.i_crit_edge, label %if.end207.i.i.i.i

if.end195.i.i.i.i.do.end201.i.i.i.i_crit_edge:    ; preds = %if.end195.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end201.i.i.i.i

do.end201.i.i.i.i:                                ; preds = %if.end195.i.i.i.i.do.end201.i.i.i.i_crit_edge, %if.else193.i.i.i.i.do.end201.i.i.i.i_crit_edge, %if.then191.i.i.i.i.do.end201.i.i.i.i_crit_edge
  %name204.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %call206.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name204.i.i.i.i, i32 noundef %free.1.i.i.i.i) #18
  br label %if.then333.i.sink.split.i.i.i

if.end207.i.i.i.i:                                ; preds = %if.end195.i.i.i.i
  %add.ptr208.i.i.i.i = getelementptr i8, ptr %curr.1.i.i.i.i, i32 %len.1.i.i.i.i
  %sub209.i.i.i.i = sub i32 %free.1.i.i.i.i, %len.1.i.i.i.i
  %560 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %560)
  %cmp211.i.i.i.i = icmp sgt i32 %560, 0
  br i1 %cmp211.i.i.i.i, label %do.end216.i.i.i.i, label %if.end207.i.i.i.i.if.end226.i.i.i.i_crit_edge

if.end207.i.i.i.i.if.end226.i.i.i.i_crit_edge:    ; preds = %if.end207.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end226.i.i.i.i

do.end216.i.i.i.i:                                ; preds = %if.end207.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name219.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %561 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call222.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name219.i.i.i.i, i32 noundef %562, i32 noundef %len.1.i.i.i.i) #18
  br label %if.end226.i.i.i.i

if.end226.i.i.i.i:                                ; preds = %do.end216.i.i.i.i, %if.end207.i.i.i.i.if.end226.i.i.i.i_crit_edge
  %563 = ptrtoint ptr %slice_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %.pr.i.i.i.i = load i32, ptr %slice_type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i.i.i)
  %cmp228.not.i.i.i.i = icmp eq i32 %.pr.i.i.i.i, 2
  br i1 %cmp228.not.i.i.i.i, label %if.end226.i.i.i.i.if.else235.i.i.i.i_crit_edge, label %if.end226.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge

if.end226.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge: ; preds = %if.end226.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true230.i.i.i.i

if.end226.i.i.i.i.if.else235.i.i.i.i_crit_edge:   ; preds = %if.end226.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else235.i.i.i.i

land.lhs.true230.i.i.i.i:                         ; preds = %if.end226.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge, %if.end184.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge
  %curr.2661.i.i.i.i = phi ptr [ %add.ptr208.i.i.i.i, %if.end226.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge ], [ %curr.1.i.i.i.i, %if.end184.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge ]
  %free.2658.i.i.i.i = phi i32 [ %sub209.i.i.i.i, %if.end226.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge ], [ %free.1.i.i.i.i, %if.end184.i.i.i.i.land.lhs.true230.i.i.i.i_crit_edge ]
  %564 = ptrtoint ptr %is_idr144.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %is_idr144.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %565)
  %tobool232.not.i.i.i.i = icmp eq i8 %565, 0
  br i1 %tobool232.not.i.i.i.i, label %if.end277.thread.i.i.i.i, label %land.lhs.true230.i.i.i.i.if.else235.i.i.i.i_crit_edge

land.lhs.true230.i.i.i.i.if.else235.i.i.i.i_crit_edge: ; preds = %land.lhs.true230.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else235.i.i.i.i

if.end277.thread.i.i.i.i:                         ; preds = %land.lhs.true230.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %data_offset.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -644
  %566 = ptrtoint ptr %data_offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 %free.2658.i.i.i.i, ptr %data_offset.i.i.i.i, align 4
  br label %if.end289.i.i.i.i

if.else235.i.i.i.i:                               ; preds = %land.lhs.true230.i.i.i.i.if.else235.i.i.i.i_crit_edge, %if.end226.i.i.i.i.if.else235.i.i.i.i_crit_edge
  %curr.2662.i.i.i.i = phi ptr [ %curr.2661.i.i.i.i, %land.lhs.true230.i.i.i.i.if.else235.i.i.i.i_crit_edge ], [ %add.ptr208.i.i.i.i, %if.end226.i.i.i.i.if.else235.i.i.i.i_crit_edge ]
  %free.2659.i.i.i.i = phi i32 [ %free.2658.i.i.i.i, %land.lhs.true230.i.i.i.i.if.else235.i.i.i.i_crit_edge ], [ %sub209.i.i.i.i, %if.end226.i.i.i.i.if.else235.i.i.i.i_crit_edge ]
  %567 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %568)
  %cmp237.i.i.i.i = icmp eq i32 %568, 875967048
  %plat_dev.i.i57.i.i = getelementptr inbounds %struct.allegro_dev, ptr %130, i32 0, i32 3
  %569 = ptrtoint ptr %plat_dev.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %plat_dev.i.i57.i.i, align 4
  %dev240.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %570, i32 0, i32 3
  br i1 %cmp237.i.i.i.i, label %if.then239.i.i.i.i, label %if.else242.i.i.i.i

if.then239.i.i.i.i:                               ; preds = %if.else235.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call241.i.i.i.i = call i32 @nal_h264_write_filler(ptr noundef %dev240.i.i.i.i, ptr noundef %curr.2662.i.i.i.i, i32 noundef %free.2659.i.i.i.i) #15
  br label %if.end246.i.i.i.i

if.else242.i.i.i.i:                               ; preds = %if.else235.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call245.i.i.i.i = call i32 @nal_hevc_write_filler(ptr noundef %dev240.i.i.i.i, ptr noundef %curr.2662.i.i.i.i, i32 noundef %free.2659.i.i.i.i) #15
  br label %if.end246.i.i.i.i

if.end246.i.i.i.i:                                ; preds = %if.else242.i.i.i.i, %if.then239.i.i.i.i
  %len.2.i.i.i.i = phi i32 [ %call241.i.i.i.i, %if.then239.i.i.i.i ], [ %call245.i.i.i.i, %if.else242.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.2.i.i.i.i)
  %cmp247.i.i.i.i = icmp slt i32 %len.2.i.i.i.i, 0
  br i1 %cmp247.i.i.i.i, label %do.end252.i.i.i.i, label %if.end258.i.i.i.i

do.end252.i.i.i.i:                                ; preds = %if.end246.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name255.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %call257.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name255.i.i.i.i, i32 noundef %free.2659.i.i.i.i) #18
  br label %if.then333.i.sink.split.i.i.i

if.end258.i.i.i.i:                                ; preds = %if.end246.i.i.i.i
  %sub260.i.i.i.i = sub i32 %free.2659.i.i.i.i, %len.2.i.i.i.i
  %571 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %571)
  %cmp262.i.i.i.i = icmp sgt i32 %571, 1
  br i1 %cmp262.i.i.i.i, label %do.end267.i.i.i.i, label %if.end258.i.i.i.i.if.end277.i.i.i.i_crit_edge

if.end258.i.i.i.i.if.end277.i.i.i.i_crit_edge:    ; preds = %if.end258.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end277.i.i.i.i

do.end267.i.i.i.i:                                ; preds = %if.end258.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name270.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %572 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call273.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %name270.i.i.i.i, i32 noundef %573, i32 noundef %len.2.i.i.i.i) #18
  br label %if.end277.i.i.i.i

if.end277.i.i.i.i:                                ; preds = %do.end267.i.i.i.i, %if.end258.i.i.i.i.if.end277.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %free.2659.i.i.i.i, i32 %len.2.i.i.i.i)
  %cmp278.not.i.i.i.i = icmp eq i32 %free.2659.i.i.i.i, %len.2.i.i.i.i
  br i1 %cmp278.not.i.i.i.i, label %if.end277.i.i.i.i.if.end289.i.i.i.i_crit_edge, label %do.end283.i.i.i.i

if.end277.i.i.i.i.if.end289.i.i.i.i_crit_edge:    ; preds = %if.end277.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end289.i.i.i.i

do.end283.i.i.i.i:                                ; preds = %if.end277.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name286.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %call288.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name286.i.i.i.i, i32 noundef %sub260.i.i.i.i) #18
  br label %if.then333.i.sink.split.i.i.i

if.end289.i.i.i.i:                                ; preds = %if.end277.i.i.i.i.if.end289.i.i.i.i_crit_edge, %if.end277.thread.i.i.i.i
  call void @v4l2_m2m_buf_copy_metadata(ptr noundef nonnull %buffer.0.i630.i.i.i.i, ptr noundef nonnull %shadow.0.i479.i.i.i.i, i1 noundef zeroext false) #15
  %574 = ptrtoint ptr %is_idr144.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %is_idr144.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %575)
  %tobool291.not.i.i.i.i = icmp eq i8 %575, 0
  %flags296.i.i.i.i = getelementptr i8, ptr %.pn.in.i476.i.i.i.i, i32 -304
  %576 = ptrtoint ptr %flags296.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %flags296.i.i.i.i, align 8
  %..i.i.i.i = select i1 %tobool291.not.i.i.i.i, i32 16, i32 8
  %or294.i.i.i.i = or i32 %..i.i.i.i, %577
  store i32 %or294.i.i.i.i, ptr %flags296.i.i.i.i, align 8
  %578 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %578)
  %cmp300.i.i.i.i = icmp sgt i32 %578, 0
  br i1 %cmp300.i.i.i.i, label %do.end305.i.i.i.i, label %if.end289.i.i.i.i.if.then333.i.sink.split.i.i.i_crit_edge

if.end289.i.i.i.i.if.then333.i.sink.split.i.i.i_crit_edge: ; preds = %if.end289.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then333.i.sink.split.i.i.i

do.end305.i.i.i.i:                                ; preds = %if.end289.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name308.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %579 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %581 = ptrtoint ptr %sequence.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %sequence.i.i.i.i, align 8
  %583 = ptrtoint ptr %is_idr144.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %is_idr144.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %584)
  %tobool314.not.i.i.i.i = icmp eq i8 %584, 0
  %cond.i.i.i.i = select i1 %tobool314.not.i.i.i.i, ptr @.str.139, ptr @.str.138
  %585 = ptrtoint ptr %slice_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %slice_type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %586)
  %cmp316.i.i.i.i = icmp eq i32 %586, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %586)
  %cmp319.i.i.i.i = icmp eq i32 %586, 1
  %cond321.i.i.i.i = select i1 %cmp319.i.i.i.i, ptr @.str.141, ptr @.str.142
  %cond322.i.i.i.i = select i1 %cmp316.i.i.i.i, ptr @.str.140, ptr %cond321.i.i.i.i
  %qp.i.i.i.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %call7.i.i, i32 0, i32 15
  %587 = ptrtoint ptr %qp.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %587)
  %588 = load i16, ptr %qp.i.i.i.i, align 8
  %conv323.i.i.i.i = zext i16 %588 to i32
  %589 = ptrtoint ptr %size.i.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %size.i.i56.i.i, align 4
  %call325.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %name308.i.i.i.i, i32 noundef %580, i32 noundef %582, ptr noundef nonnull %cond.i.i.i.i, ptr noundef nonnull %cond322.i.i.i.i, i32 noundef %conv323.i.i.i.i, i32 noundef %590) #18
  br label %if.then333.i.sink.split.i.i.i

err.i.thread.i.i.i:                               ; preds = %allegro_get_buffer.exit491.i.i.i.i.err.i.thread.i.i.i_crit_edge, %allegro_get_buffer.exit491.thread.i.i.i.i
  %name11.i.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %130, i32 0, i32 4
  %591 = ptrtoint ptr %mcu_channel_id.i.i41.i.i.le to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %mcu_channel_id.i.i41.i.i.le, align 4
  %call14.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name11.i.i.i.i, i32 noundef %592) #18
  br i1 %tobool.not633.i.i.i.i, label %err.i.thread.i.i.i.out.i_crit_edge, label %if.then330.i.thread.i.i.i

err.i.thread.i.i.i.out.i_crit_edge:               ; preds = %err.i.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.then330.i.thread.i.i.i:                        ; preds = %err.i.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @vb2_buffer_done(ptr noundef %buffer.0.i630.i.i.i.i, i32 noundef 5) #15
  br label %out.i

if.then333.i.sink.split.i.i.i:                    ; preds = %do.end305.i.i.i.i, %if.end289.i.i.i.i.if.then333.i.sink.split.i.i.i_crit_edge, %do.end283.i.i.i.i, %do.end252.i.i.i.i, %do.end201.i.i.i.i, %do.end159.i.i.i.i, %do.end119.i.i.i.i, %do.end76.i.i.i.i, %do.end58.i.i.i.i, %allegro_err_to_string.exit.i.i.i.i
  %state.0686694.i.ph.i.i.i = phi i32 [ 6, %do.end159.i.i.i.i ], [ 6, %do.end119.i.i.i.i ], [ 6, %do.end76.i.i.i.i ], [ 6, %do.end58.i.i.i.i ], [ 6, %allegro_err_to_string.exit.i.i.i.i ], [ 6, %do.end201.i.i.i.i ], [ 6, %do.end252.i.i.i.i ], [ 6, %do.end283.i.i.i.i ], [ 5, %do.end305.i.i.i.i ], [ 5, %if.end289.i.i.i.i.if.then333.i.sink.split.i.i.i_crit_edge ]
  call void @vb2_buffer_done(ptr noundef %buffer.0.i630.i.i.i.i, i32 noundef 5) #15
  br label %if.then333.i.i.i.i

if.then333.i.i.i.i:                               ; preds = %if.then333.i.sink.split.i.i.i, %if.end15.i.i.i.i.if.then333.i.i.i.i_crit_edge
  %state.0686694.i.i.i.i = phi i32 [ 6, %if.end15.i.i.i.i.if.then333.i.i.i.i_crit_edge ], [ %state.0686694.i.ph.i.i.i, %if.then333.i.sink.split.i.i.i ]
  call void @vb2_buffer_done(ptr noundef nonnull %shadow.0.i479.i.i.i.i, i32 noundef %state.0686694.i.i.i.i) #15
  br label %out.i

do.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call8.i.i = call ptr @msg_type_name(i32 noundef %47) #15
  %call9.i38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name.i.i, ptr noundef nonnull @.str.43, ptr noundef %call8.i.i) #18
  br label %out.i

out.i:                                            ; preds = %do.end.i.i, %if.then333.i.i.i.i, %if.then330.i.thread.i.i.i, %err.i.thread.i.i.i.out.i_crit_edge, %do.end.i51.i.i, %do.end17.i.i.i, %do.end.i31.i.i, %allegro_handle_create_channel.exit.i.i, %sw.bb.i.i, %if.end10.i.out.i_crit_edge, %allegro_mbox_read.exit.thread.i, %if.end.i.out.i_crit_edge
  %retval.1.i42.i = phi ptr [ %call9.i.i, %if.end10.i.out.i_crit_edge ], [ null, %if.end.i.out.i_crit_edge ], [ %call9.i.i, %allegro_mbox_read.exit.thread.i ], [ %call9.i.i, %sw.bb.i.i ], [ %call9.i.i, %allegro_handle_create_channel.exit.i.i ], [ %call9.i.i, %do.end.i31.i.i ], [ %call9.i.i, %do.end17.i.i.i ], [ %call9.i.i, %do.end.i51.i.i ], [ %call9.i.i, %err.i.thread.i.i.i.out.i_crit_edge ], [ %call9.i.i, %if.then330.i.thread.i.i.i ], [ %call9.i.i, %if.then333.i.i.i.i ], [ %call9.i.i, %do.end.i.i ]
  call void @kfree(ptr noundef %retval.1.i42.i) #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %out.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allegro_decode_mail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_reg_stride(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msg_type_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allegro_decode_config_blob(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allocate_buffers_internal(ptr nocapture noundef readonly %channel, ptr noundef %list, i32 noundef %n, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp57.not = icmp eq i32 %n, 0
  br i1 %cmp57.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %plat_dev.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 20) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %for.body.err7_crit_edge, label %if.end

for.body.err7_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %err7

if.end:                                           ; preds = %for.body
  %head = getelementptr inbounds %struct.allegro_buffer, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.allegro_buffer, ptr %call7.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %prev.i, align 8
  %5 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plat_dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %paddr.i = getelementptr inbounds %struct.allegro_buffer, ptr %call7.i, i32 0, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef %size, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 0) #15
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %call7.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.err7_crit_edge, label %if.end5

if.end.err7_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err7

if.end5:                                          ; preds = %if.end
  %size3.i = getelementptr inbounds %struct.allegro_buffer, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %size3.i, align 8
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %call.i.i45 = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %list, ptr noundef %10) #15
  br i1 %call.i.i45, label %if.end.i.i, label %if.end5.list_add.exit_crit_edge

if.end5.list_add.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %head, align 4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev.i, align 8
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %head, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end5.list_add.exit_crit_edge
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %list_add.exit.cleanup_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

err7:                                             ; preds = %if.end.err7_crit_edge, %for.body.err7_crit_edge
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %cmp16.not59 = icmp eq ptr %16, %list
  br i1 %cmp16.not59, label %err7.cleanup_crit_edge, label %err7.for.body17_crit_edge

err7.for.body17_crit_edge:                        ; preds = %err7
  br label %for.body17

err7.cleanup_crit_edge:                           ; preds = %err7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body17:                                       ; preds = %allegro_free_buffer.exit.for.body17_crit_edge, %err7.for.body17_crit_edge
  %.pn.in60 = phi ptr [ %.pn, %allegro_free_buffer.exit.for.body17_crit_edge ], [ %16, %err7.for.body17_crit_edge ]
  %buffer.0 = getelementptr i8, ptr %.pn.in60, i32 -12
  %17 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in60, align 4
  %call.i.i46 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in60) #15
  br i1 %call.i.i46, label %if.end.i.i47, label %for.body17.list_del.exit_crit_edge

for.body17.list_del.exit_crit_edge:               ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i47:                                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in60, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i47, %for.body17.list_del.exit_crit_edge
  %24 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in60, align 4
  %prev.i48 = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i48, align 4
  %26 = ptrtoint ptr %buffer.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer.0, align 4
  %tobool.not.i49 = icmp eq ptr %27, null
  br i1 %tobool.not.i49, label %list_del.exit.allegro_free_buffer.exit_crit_edge, label %if.then.i

list_del.exit.allegro_free_buffer.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_free_buffer.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %plat_dev.i, align 4
  %dev1.i51 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %size.i = getelementptr i8, ptr %.pn.in60, i32 -4
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 4
  %paddr.i52 = getelementptr i8, ptr %.pn.in60, i32 -8
  %32 = ptrtoint ptr %paddr.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %paddr.i52, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i51, i32 noundef %31, ptr noundef nonnull %27, i32 noundef %33, i32 noundef 0) #15
  %34 = ptrtoint ptr %buffer.0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %buffer.0, align 4
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %size.i, align 4
  br label %allegro_free_buffer.exit

allegro_free_buffer.exit:                         ; preds = %if.then.i, %list_del.exit.allegro_free_buffer.exit_crit_edge
  tail call void @kfree(ptr noundef %buffer.0) #15
  %cmp16.not = icmp eq ptr %.pn, %list
  br i1 %cmp16.not, label %allegro_free_buffer.exit.cleanup_crit_edge, label %allegro_free_buffer.exit.for.body17_crit_edge

allegro_free_buffer.exit.for.body17_crit_edge:    ; preds = %allegro_free_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body17

allegro_free_buffer.exit.cleanup_crit_edge:       ; preds = %allegro_free_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %allegro_free_buffer.exit.cleanup_crit_edge, %err7.cleanup_crit_edge, %list_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err7.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %allegro_free_buffer.exit.cleanup_crit_edge ], [ 0, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allegro_mcu_push_buffer_internal(ptr noundef readonly %channel, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %phys.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 15, label %sw.bb
    i32 14, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %buffers_reference = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 62
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %buffers_intermediate = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 63
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %list.0 = phi ptr [ %buffers_intermediate, %sw.bb2 ], [ %buffers_reference, %sw.bb ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %sw.epilog
  %.pn.in = phi ptr [ %list.0, %sw.epilog ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %num_buffers.0 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.cond.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %list.0
  %inc = add i32 %num_buffers.0, 1
  br i1 %cmp.not, label %if.end8.i, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.end8.i:                                        ; preds = %for.cond
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_buffers.0, i32 12) #15
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 16) #15
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.end8.i
  %7 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %call9.i, align 128
  %fw_info = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_info, align 8
  %mailbox_version = getelementptr inbounds %struct.fw_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %mailbox_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mailbox_version, align 4
  %version = getelementptr inbounds %struct.mcu_msg_header, ptr %call9.i, i32 0, i32 1
  %12 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %version, align 4
  %mcu_channel_id = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 61
  %13 = ptrtoint ptr %mcu_channel_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mcu_channel_id, align 4
  %channel_id = getelementptr inbounds %struct.mcu_msg_push_buffers_internal, ptr %call9.i, i32 0, i32 1
  %15 = ptrtoint ptr %channel_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %channel_id, align 8
  %num_buffers11 = getelementptr inbounds %struct.mcu_msg_push_buffers_internal, ptr %call9.i, i32 0, i32 2
  %16 = ptrtoint ptr %num_buffers11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %num_buffers.0, ptr %num_buffers11, align 4
  %17 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn7274 = load ptr, ptr %list.0, align 4
  %cmp19.not75 = icmp eq ptr %.pn7274, %list.0
  br i1 %cmp19.not75, label %if.end.for.end34_crit_edge, label %for.body21.lr.ph

if.end.for.end34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end34

for.body21.lr.ph:                                 ; preds = %if.end
  %buffer12 = getelementptr inbounds %struct.mcu_msg_push_buffers_internal, ptr %call9.i, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  br label %for.body21

for.body21:                                       ; preds = %to_mcu_addr.exit.for.body21_crit_edge, %for.body21.lr.ph
  %.pn7277 = phi ptr [ %.pn7274, %for.body21.lr.ph ], [ %.pn72, %to_mcu_addr.exit.for.body21_crit_edge ]
  %buffer.076 = phi ptr [ %buffer12, %for.body21.lr.ph ], [ %incdec.ptr, %to_mcu_addr.exit.for.body21_crit_edge ]
  %paddr = getelementptr i8, ptr %.pn7277, i32 -8
  %18 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %paddr, align 4
  %20 = ptrtoint ptr %buffer.076 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buffer.076, align 4
  %21 = load i32, ptr %paddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.addr.i)
  %22 = ptrtoint ptr %phys.addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %phys.addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool3.not.i = icmp sgt i32 %21, -1
  br i1 %tobool3.not.i, label %for.body21.to_mcu_addr.exit_crit_edge, label %do.end.i

for.body21.to_mcu_addr.exit_crit_edge:            ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_mcu_addr.exit

do.end.i:                                         ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name.i, ptr noundef nonnull %phys.addr.i) #18
  br label %to_mcu_addr.exit

to_mcu_addr.exit:                                 ; preds = %do.end.i, %for.body21.to_mcu_addr.exit_crit_edge
  %23 = ptrtoint ptr %phys.addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys.addr.i, align 4
  %or.i = or i32 %24, -2147483648
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.addr.i)
  %mcu_addr = getelementptr inbounds %struct.mcu_msg_push_buffers_internal_buffer, ptr %buffer.076, i32 0, i32 1
  %25 = ptrtoint ptr %mcu_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %mcu_addr, align 4
  %size25 = getelementptr i8, ptr %.pn7277, i32 -4
  %26 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size25, align 4
  %size27 = getelementptr inbounds %struct.mcu_msg_push_buffers_internal_buffer, ptr %buffer.076, i32 0, i32 2
  %28 = ptrtoint ptr %size27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %size27, align 4
  %incdec.ptr = getelementptr %struct.mcu_msg_push_buffers_internal_buffer, ptr %buffer.076, i32 1
  %29 = ptrtoint ptr %.pn7277 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn72 = load ptr, ptr %.pn7277, align 4
  %cmp19.not = icmp eq ptr %.pn72, %list.0
  br i1 %cmp19.not, label %to_mcu_addr.exit.for.end34_crit_edge, label %to_mcu_addr.exit.for.body21_crit_edge

to_mcu_addr.exit.for.body21_crit_edge:            ; preds = %to_mcu_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body21

to_mcu_addr.exit.for.end34_crit_edge:             ; preds = %to_mcu_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end34

for.end34:                                        ; preds = %to_mcu_addr.exit.for.end34_crit_edge, %if.end.for.end34_crit_edge
  %mbox_command = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %mbox_command to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mbox_command, align 4
  %call35 = call fastcc i32 @allegro_mbox_send(ptr noundef %31, ptr noundef nonnull %call9.i)
  call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end34, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %for.end34 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allegro_mbox_send(ptr noundef %mbox, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  %tail.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox, align 4
  %size2 = getelementptr inbounds %struct.allegro_mbox, ptr %mbox, i32 0, i32 4
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size2, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #20
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i:                                         ; preds = %entry
  %call3 = tail call i32 @allegro_encode_mail(ptr noundef nonnull %call9.i.i, ptr noundef %msg) #15
  %4 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbox, align 4
  %sram1.i = getelementptr inbounds %struct.allegro_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %sram1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sram1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tail.i) #15
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tail.i, align 4, !annotation !463
  %call.i = tail call i32 @regmap_get_reg_stride(ptr noundef %7) #15
  %9 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call3)
  %cmp.i = icmp ult i32 %10, %call3
  br i1 %cmp.i, label %allegro_mbox_write.exit.thread, label %if.end4.i

allegro_mbox_write.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tail.i) #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %out

if.end4.i:                                        ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.allegro_mbox, ptr %mbox, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %tail5.i = getelementptr inbounds %struct.allegro_mbox, ptr %mbox, i32 0, i32 2
  %11 = ptrtoint ptr %tail5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail5.i, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %12, ptr noundef nonnull %tail.i) #15
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail.i, align 4
  %15 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp8.i = icmp ult i32 %16, %14
  br i1 %cmp8.i, label %if.end4.i.allegro_mbox_write.exit_crit_edge, label %if.end10.i

if.end4.i.allegro_mbox_write.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mbox_write.exit

if.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = sub i32 %16, %14
  %17 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %call3) #15
  %data.i = getelementptr inbounds %struct.allegro_mbox, ptr %mbox, i32 0, i32 3
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data.i, align 4
  %add.i = add i32 %19, %14
  %div.i = udiv i32 %17, %call.i
  %call13.i = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef %add.i, ptr noundef nonnull %call9.i.i, i32 noundef %div.i) #15
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data.i, align 4
  %div1553.i = lshr i32 %17, 2
  %add.ptr.i = getelementptr i32, ptr %call9.i.i, i32 %div1553.i
  %sub16.i = sub i32 %call3, %17
  %div17.i = udiv i32 %sub16.i, %call.i
  %call18.i = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef %21, ptr noundef %add.ptr.i, i32 noundef %div17.i) #15
  %22 = ptrtoint ptr %tail5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail5.i, align 4
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail.i, align 4
  %add20.i = add i32 %25, %call3
  %26 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size2, align 4
  %rem.i = urem i32 %add20.i, %27
  %call22.i = call i32 @regmap_write(ptr noundef %7, i32 noundef %23, i32 noundef %rem.i) #15
  br label %allegro_mbox_write.exit

allegro_mbox_write.exit:                          ; preds = %if.end10.i, %if.end4.i.allegro_mbox_write.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.end10.i ], [ -5, %if.end4.i.allegro_mbox_write.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tail.i) #15
  call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br i1 %cmp8.i, label %allegro_mbox_write.exit.out_crit_edge, label %if.end7

allegro_mbox_write.exit.out_crit_edge:            ; preds = %allegro_mbox_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end7:                                          ; preds = %allegro_mbox_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  %regmap.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i14 = call i32 @regmap_write(ptr noundef %29, i32 noundef 256, i32 noundef 1) #15
  br label %out

out:                                              ; preds = %if.end7, %allegro_mbox_write.exit.out_crit_edge, %allegro_mbox_write.exit.thread, %entry.out_crit_edge
  %err.0 = phi i32 [ %err.0.i, %allegro_mbox_write.exit.out_crit_edge ], [ 0, %if.end7 ], [ -12, %entry.out_crit_edge ], [ -22, %allegro_mbox_write.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allegro_encode_mail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nal_h264_write_filler(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nal_hevc_write_filler(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nal_hevc_write_vps(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nal_h264_write_sps(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nal_hevc_write_sps(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nal_h264_write_pps(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nal_hevc_write_pps(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @allegro_fw_callback(ptr noundef %fw, ptr noundef %context) #2 align 64 {
entry:
  %fw_codec = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_codec) #15
  %0 = ptrtoint ptr %fw_codec to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_codec, align 4, !annotation !463
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %do.body.do.end5_crit_edge

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %context, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %name, ptr noundef nonnull @.str.147) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %plat_dev = getelementptr inbounds %struct.allegro_dev, ptr %context, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev, align 4
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call7 = call i32 @request_firmware(ptr noundef nonnull %fw_codec, ptr noundef nonnull @.str.147, ptr noundef %dev6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end5.cleanup.sink.split_crit_edge

do.end5.cleanup.sink.split_crit_edge:             ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end10:                                         ; preds = %do.end5
  %4 = ptrtoint ptr %fw_codec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_codec, align 4
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %7, label %if.end10.do.end17_crit_edge [
    i32 18296, label %land.lhs.true.i
    i32 14680, label %land.lhs.true.1.i
  ]

if.end10.do.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

land.lhs.true.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 96272, i32 %9)
  %cmp6.i = icmp eq i32 %9, 96272
  br i1 %cmp6.i, label %land.lhs.true.i.do.end26_crit_edge, label %land.lhs.true.i.do.end17_crit_edge

land.lhs.true.i.do.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

land.lhs.true.i.do.end26_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26

land.lhs.true.1.i:                                ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 126572, i32 %9)
  %cmp6.1.i = icmp eq i32 %9, 126572
  br i1 %cmp6.1.i, label %land.lhs.true.1.i.do.end26_crit_edge, label %land.lhs.true.1.i.do.end17_crit_edge

land.lhs.true.1.i.do.end17_crit_edge:             ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

land.lhs.true.1.i.do.end26_crit_edge:             ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26

do.end17:                                         ; preds = %land.lhs.true.1.i.do.end17_crit_edge, %land.lhs.true.i.do.end17_crit_edge, %if.end10.do.end17_crit_edge
  %fw_info = getelementptr inbounds %struct.allegro_dev, ptr %context, i32 0, i32 10
  %11 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fw_info, align 8
  %name20 = getelementptr inbounds %struct.v4l2_device, ptr %context, i32 0, i32 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %name20) #18
  br label %cleanup.sink.split.sink.split

do.end26:                                         ; preds = %land.lhs.true.1.i.do.end26_crit_edge, %land.lhs.true.i.do.end26_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([2 x %struct.fw_info], ptr @supported_firmware, i32 0, i32 1), %land.lhs.true.1.i.do.end26_crit_edge ], [ @supported_firmware, %land.lhs.true.i.do.end26_crit_edge ]
  %fw_info159 = getelementptr inbounds %struct.allegro_dev, ptr %context, i32 0, i32 10
  %12 = ptrtoint ptr %fw_info159 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i.ph, ptr %fw_info159, align 8
  %name29 = getelementptr inbounds %struct.v4l2_device, ptr %context, i32 0, i32 4
  %version = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 2
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %version, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %name29, ptr noundef %14) #18
  %15 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %plat_dev, align 4
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  call void @pm_runtime_enable(ptr noundef %dev34) #15
  %17 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plat_dev, align 4
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %call37 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %do.end26.cleanup.sink.split.sink.split_crit_edge

do.end26.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split

if.end40:                                         ; preds = %do.end26
  %call41 = call fastcc i32 @allegro_mcu_reset(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end52, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %name29) #18
  br label %err_suspend

if.end52:                                         ; preds = %if.end40
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw, align 4
  call fastcc void @allegro_copy_firmware(ptr noundef %context, ptr noundef %20, i32 noundef %22)
  %23 = ptrtoint ptr %fw_codec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw_codec, align 4
  %data53 = getelementptr inbounds %struct.firmware, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %data53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data53, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  call fastcc void @allegro_copy_fw_codec(ptr noundef %context, ptr noundef %26, i32 noundef %28)
  %29 = ptrtoint ptr %fw_info159 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw_info159, align 8
  %call56 = call fastcc i32 @allegro_mcu_hw_init(ptr noundef %context, ptr noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end67, label %do.end61

do.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef %name29) #18
  br label %err_free_fw_codec

if.end67:                                         ; preds = %if.end52
  %call68 = call ptr @v4l2_m2m_init(ptr noundef nonnull @allegro_m2m_ops) #15
  %m2m_dev = getelementptr inbounds %struct.allegro_dev, ptr %context, i32 0, i32 2
  %31 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call68, ptr %m2m_dev, align 8
  %cmp.i = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end74, label %if.end80

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %name29) #18
  br label %err_mcu_hw_deinit

if.end80:                                         ; preds = %if.end67
  %call81 = call fastcc i32 @allegro_register_device(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.body93, label %do.end86

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %name29) #18
  %32 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m2m_dev, align 8
  call void @v4l2_m2m_release(ptr noundef %33) #15
  %34 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %m2m_dev, align 8
  br label %err_mcu_hw_deinit

do.body93:                                        ; preds = %if.end80
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp94 = icmp sgt i32 %35, 0
  br i1 %cmp94, label %do.end98, label %do.body93.do.end106_crit_edge

do.body93.do.end106_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end106

do.end98:                                         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #17
  %num = getelementptr inbounds %struct.allegro_dev, ptr %context, i32 0, i32 1, i32 16
  %36 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num, align 4
  %conv = zext i16 %37 to i32
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %name29, i32 noundef %conv) #18
  br label %do.end106

do.end106:                                        ; preds = %do.end98, %do.body93.do.end106_crit_edge
  %initialized = getelementptr inbounds %struct.allegro_dev, ptr %context, i32 0, i32 16
  %38 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %initialized, align 8
  br label %cleanup.sink.split.sink.split

err_mcu_hw_deinit:                                ; preds = %do.end86, %do.end74
  call fastcc void @allegro_mcu_hw_deinit(ptr noundef %context)
  br label %err_free_fw_codec

err_free_fw_codec:                                ; preds = %err_mcu_hw_deinit, %do.end61
  call fastcc void @allegro_free_fw_codec(ptr noundef %context)
  br label %err_suspend

err_suspend:                                      ; preds = %err_free_fw_codec, %do.end46
  %39 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %plat_dev, align 4
  %dev111 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %dev111, i32 noundef 5) #15
  %41 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %plat_dev, align 4
  %dev114 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  call void @__pm_runtime_disable(ptr noundef %dev114, i1 noundef zeroext true) #15
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %err_suspend, %do.end106, %do.end26.cleanup.sink.split.sink.split_crit_edge, %do.end17
  %43 = ptrtoint ptr %fw_codec to i32
  call void @__asan_load4_noabort(i32 %43)
  %.sink = load ptr, ptr %fw_codec, align 4
  call void @release_firmware(ptr noundef %.sink) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.end5.cleanup.sink.split_crit_edge
  call void @release_firmware(ptr noundef nonnull %fw) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_codec) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !467
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #15, !srcloc !468
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !469
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allegro_mcu_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 12, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 4, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #15
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status.i, align 4, !annotation !463
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %7, 10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call111.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 8, ptr noundef nonnull %status.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %cmp12.i = icmp eq i32 %call111.i, 0
  br i1 %cmp12.i, label %if.end9.land.rhs.i_crit_edge, label %if.end9.allegro_mcu_wait_for_sleep.exit_crit_edge

if.end9.allegro_mcu_wait_for_sleep.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mcu_wait_for_sleep.exit

if.end9.land.rhs.i_crit_edge:                     ; preds = %if.end9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %if.end9.land.rhs.i_crit_edge
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp2.not.i = icmp eq i32 %11, 1
  br i1 %cmp2.not.i, label %land.rhs.i.allegro_mcu_wait_for_sleep.exit_crit_edge, label %while.body.i

land.rhs.i.allegro_mcu_wait_for_sleep.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mcu_wait_for_sleep.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %while.body.i.allegro_mcu_wait_for_sleep.exit_crit_edge, label %do.end.i

while.body.i.allegro_mcu_wait_for_sleep.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mcu_wait_for_sleep.exit

do.end.i:                                         ; preds = %while.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !470
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !471
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 8, ptr noundef nonnull %status.i) #15
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i.land.rhs.i_crit_edge, label %do.end.i.allegro_mcu_wait_for_sleep.exit_crit_edge

do.end.i.allegro_mcu_wait_for_sleep.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mcu_wait_for_sleep.exit

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

allegro_mcu_wait_for_sleep.exit:                  ; preds = %do.end.i.allegro_mcu_wait_for_sleep.exit_crit_edge, %while.body.i.allegro_mcu_wait_for_sleep.exit_crit_edge, %land.rhs.i.allegro_mcu_wait_for_sleep.exit_crit_edge, %if.end9.allegro_mcu_wait_for_sleep.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.allegro_mcu_wait_for_sleep.exit_crit_edge ], [ -110, %while.body.i.allegro_mcu_wait_for_sleep.exit_crit_edge ], [ 0, %do.end.i.allegro_mcu_wait_for_sleep.exit_crit_edge ], [ 0, %land.rhs.i.allegro_mcu_wait_for_sleep.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #15
  br label %cleanup

cleanup:                                          ; preds = %allegro_mcu_wait_for_sleep.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %allegro_mcu_wait_for_sleep.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allegro_copy_firmware(ptr noundef %dev, ptr noundef %buf, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %name, i32 noundef %size) #18
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %sram = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sram, align 8
  %div19 = lshr i32 %size, 2
  %call4 = tail call i32 @regmap_bulk_write(ptr noundef %2, i32 noundef 0, ptr noundef %buf, i32 noundef %div19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end3.if.end14_crit_edge, label %do.end8

do.end3.if.end14_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #17
  %name11 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name11, i32 noundef %call4) #18
  br label %if.end14

if.end14:                                         ; preds = %do.end8, %do.end3.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allegro_copy_fw_codec(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 11
  %plat_dev.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %paddr.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 11, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef %size, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 0) #15
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %firmware, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %name, i32 noundef %size) #18
  br label %cleanup

do.body2:                                         ; preds = %entry
  %size3.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %size, ptr %size3.i, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end6, label %do.body2.do.end15_crit_edge

do.body2.do.end15_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.end6:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  %name9 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %name9, i32 noundef %size, ptr noundef %paddr.i) #18
  br label %do.end15

do.end15:                                         ; preds = %do.end6, %do.body2.do.end15_crit_edge
  %5 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %firmware, align 4
  %7 = call ptr @memcpy(ptr %6, ptr %buf, i32 %size)
  %regmap = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 520, i32 noundef 0) #15
  %10 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %paddr.i, align 4
  %sub = xor i32 %11, -2147483648
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp24 = icmp sgt i32 %12, 1
  br i1 %cmp24, label %do.end28, label %do.end15.do.end38_crit_edge

do.end15.do.end38_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38

do.end28:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  %name31 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %name31, i32 noundef 0, i32 noundef %sub) #18
  br label %do.end38

do.end38:                                         ; preds = %do.end28, %do.end15.do.end38_crit_edge
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call42 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 16, i32 noundef 0) #15
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call45 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 20, i32 noundef %sub) #15
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp52 = icmp sgt i32 %17, 1
  br i1 %cmp52, label %do.end57, label %do.end38.do.end68_crit_edge

do.end38.do.end68_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

do.end57:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #17
  %name60 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %name60, i32 noundef 0, i32 noundef -2147483648) #18
  br label %do.end68

do.end68:                                         ; preds = %do.end57, %do.end38.do.end68_crit_edge
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call72 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 24, i32 noundef 0) #15
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call75 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 28, i32 noundef -2147483648) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allegro_mcu_hw_init(ptr noundef %dev, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %phys.addr.i.i = alloca i32, align 4
  %msg.i = alloca %struct.mcu_msg_init_request, align 4
  %status.i = alloca i32, align 4
  %supports_10_bit.i = alloca i32, align 4
  %memory_depth.i = alloca i32, align 4
  %num_cores.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mailbox_cmd = getelementptr inbounds %struct.fw_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %mailbox_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox_cmd, align 4
  %mailbox_size = getelementptr inbounds %struct.fw_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %mailbox_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mailbox_size, align 4
  %plat_dev.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 112, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.allegro_mbox_init.exit_crit_edge, label %if.end.i

entry.allegro_mbox_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mbox_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %head.i = getelementptr inbounds %struct.allegro_mbox, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %head.i, align 4
  %add.i = add i32 %1, 4
  %tail.i = getelementptr inbounds %struct.allegro_mbox, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %tail.i, align 4
  %add4.i = add i32 %1, 8
  %data.i = getelementptr inbounds %struct.allegro_mbox, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add4.i, ptr %data.i, align 4
  %size5.i = getelementptr inbounds %struct.allegro_mbox, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %size5.i, align 4
  %lock.i = getelementptr inbounds %struct.allegro_mbox, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.203, ptr noundef nonnull @allegro_mbox_init.__key) #15
  %sram.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 6
  %11 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sram.i, align 8
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %14, i32 noundef 0) #15
  %15 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sram.i, align 8
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail.i, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %18, i32 noundef 0) #15
  br label %allegro_mbox_init.exit

allegro_mbox_init.exit:                           ; preds = %if.end.i, %entry.allegro_mbox_init.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ inttoptr (i32 -12 to ptr), %entry.allegro_mbox_init.exit_crit_edge ]
  %mbox_command = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 17
  %19 = ptrtoint ptr %mbox_command to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i, ptr %mbox_command, align 4
  %mailbox_status = getelementptr inbounds %struct.fw_info, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %mailbox_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mailbox_status, align 4
  %22 = ptrtoint ptr %mailbox_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mailbox_size, align 4
  %24 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %plat_dev.i, align 4
  %dev1.i101 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %call.i102 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i101, i32 noundef 112, i32 noundef 3264) #15
  %tobool.not.i103 = icmp eq ptr %call.i102, null
  br i1 %tobool.not.i103, label %allegro_mbox_init.exit116.thread, label %allegro_mbox_init.exit116

allegro_mbox_init.exit116.thread:                 ; preds = %allegro_mbox_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %mbox_status176 = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 18
  %26 = ptrtoint ptr %mbox_status176 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -12 to ptr), ptr %mbox_status176, align 8
  br label %do.end

allegro_mbox_init.exit116:                        ; preds = %allegro_mbox_init.exit
  %27 = ptrtoint ptr %call.i102 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %call.i102, align 4
  %head.i104 = getelementptr inbounds %struct.allegro_mbox, ptr %call.i102, i32 0, i32 1
  %28 = ptrtoint ptr %head.i104 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %head.i104, align 4
  %add.i105 = add i32 %21, 4
  %tail.i106 = getelementptr inbounds %struct.allegro_mbox, ptr %call.i102, i32 0, i32 2
  %29 = ptrtoint ptr %tail.i106 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i105, ptr %tail.i106, align 4
  %add4.i107 = add i32 %21, 8
  %data.i108 = getelementptr inbounds %struct.allegro_mbox, ptr %call.i102, i32 0, i32 3
  %30 = ptrtoint ptr %data.i108 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add4.i107, ptr %data.i108, align 4
  %size5.i109 = getelementptr inbounds %struct.allegro_mbox, ptr %call.i102, i32 0, i32 4
  %31 = ptrtoint ptr %size5.i109 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %23, ptr %size5.i109, align 4
  %lock.i110 = getelementptr inbounds %struct.allegro_mbox, ptr %call.i102, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock.i110, ptr noundef nonnull @.str.203, ptr noundef nonnull @allegro_mbox_init.__key) #15
  %sram.i111 = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 6
  %32 = ptrtoint ptr %sram.i111 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sram.i111, align 8
  %34 = ptrtoint ptr %head.i104 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %head.i104, align 4
  %call7.i112 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %35, i32 noundef 0) #15
  %36 = ptrtoint ptr %sram.i111 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sram.i111, align 8
  %38 = ptrtoint ptr %tail.i106 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail.i106, align 4
  %call10.i113 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %39, i32 noundef 0) #15
  %mbox_status = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 18
  %40 = ptrtoint ptr %mbox_status to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i102, ptr %mbox_status, align 8
  %41 = ptrtoint ptr %mbox_command to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mbox_command, align 4
  %cmp.i = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %cmp.i117 = icmp ugt ptr %call.i102, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i117
  br i1 %or.cond, label %allegro_mbox_init.exit116.do.end_crit_edge, label %if.end

allegro_mbox_init.exit116.do.end_crit_edge:       ; preds = %allegro_mbox_init.exit116
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %allegro_mbox_init.exit116.do.end_crit_edge, %allegro_mbox_init.exit116.thread
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef %name) #18
  br label %cleanup

if.end:                                           ; preds = %allegro_mbox_init.exit116
  %encoder_buffer = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 14
  %settings1.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 7
  %43 = ptrtoint ptr %settings1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %settings1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supports_10_bit.i) #15
  %45 = ptrtoint ptr %supports_10_bit.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %supports_10_bit.i, align 4, !annotation !463
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %memory_depth.i) #15
  %46 = ptrtoint ptr %memory_depth.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %memory_depth.i, align 4, !annotation !463
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cores.i) #15
  %47 = ptrtoint ptr %num_cores.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %num_cores.i, align 4, !annotation !463
  %fw_info.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 10
  %48 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw_info.i, align 8
  %mailbox_version.i = getelementptr inbounds %struct.fw_info, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %mailbox_version.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mailbox_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i118 = icmp eq i32 %51, 0
  %tobool.not.i119 = icmp eq ptr %44, null
  %or.cond174 = select i1 %cmp.i118, i1 true, i1 %tobool.not.i119
  br i1 %or.cond174, label %if.end.do.end13_crit_edge, label %if.end3.i

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.end3.i:                                        ; preds = %if.end
  %call.i121 = call i32 @regmap_read(ptr noundef nonnull %44, i32 noundef 12, ptr noundef nonnull %supports_10_bit.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp4.i = icmp slt i32 %call.i121, 0
  br i1 %cmp4.i, label %if.end3.i.do.end13_crit_edge, label %if.end6.i

if.end3.i.do.end13_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.end6.i:                                        ; preds = %if.end3.i
  %call7.i122 = call i32 @regmap_read(ptr noundef nonnull %44, i32 noundef 8, ptr noundef nonnull %memory_depth.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i122)
  %cmp8.i = icmp slt i32 %call7.i122, 0
  br i1 %cmp8.i, label %if.end6.i.do.end13_crit_edge, label %if.end10.i

if.end6.i.do.end13_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.end10.i:                                       ; preds = %if.end6.i
  %call11.i = call i32 @regmap_read(ptr noundef nonnull %44, i32 noundef 108, ptr noundef nonnull %num_cores.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.do.end13_crit_edge, label %if.end14.i

if.end10.i.do.end13_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.end14.i:                                       ; preds = %if.end10.i
  %clk_core.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 8
  %52 = ptrtoint ptr %clk_core.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk_core.i, align 8
  %call15.i = call i32 @clk_get_rate(ptr noundef %53) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end14.i.do.end13_crit_edge, label %if.end18.i

if.end14.i.do.end13_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.end18.i:                                       ; preds = %if.end14.i
  %54 = ptrtoint ptr %supports_10_bit.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %supports_10_bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool19.not.i = icmp eq i32 %55, 0
  %cond.i = select i1 %tobool19.not.i, i32 8, i32 10
  %mul.i = shl nuw nsw i32 %cond.i, 5
  %56 = ptrtoint ptr %memory_depth.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %memory_depth.i, align 4
  %mul20.i = mul i32 %mul.i, %57
  %58 = ptrtoint ptr %encoder_buffer to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul20.i, ptr %encoder_buffer, align 4
  %color_depth21.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 14, i32 1
  %59 = ptrtoint ptr %color_depth21.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %cond.i, ptr %color_depth21.i, align 4
  %60 = ptrtoint ptr %num_cores.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_cores.i, align 4
  %num_cores22.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 14, i32 2
  %62 = ptrtoint ptr %num_cores22.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %num_cores22.i, align 4
  %clk_rate23.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 14, i32 3
  %63 = ptrtoint ptr %clk_rate23.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call15.i, ptr %clk_rate23.i, align 4
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp24.i = icmp sgt i32 %64, 0
  br i1 %cmp24.i, label %do.end.i, label %if.end18.i.allegro_encoder_buffer_init.exit_crit_edge

if.end18.i.allegro_encoder_buffer_init.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_encoder_buffer_init.exit

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef %name.i, i32 noundef %mul20.i, i32 noundef %cond.i) #18
  br label %allegro_encoder_buffer_init.exit

allegro_encoder_buffer_init.exit:                 ; preds = %do.end.i, %if.end18.i.allegro_encoder_buffer_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cores.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %memory_depth.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supports_10_bit.i) #15
  %has_encoder_buffer = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 13
  %65 = ptrtoint ptr %has_encoder_buffer to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %has_encoder_buffer, align 4
  br label %if.end19

do.end13:                                         ; preds = %if.end14.i.do.end13_crit_edge, %if.end10.i.do.end13_crit_edge, %if.end6.i.do.end13_crit_edge, %if.end3.i.do.end13_crit_edge, %if.end.do.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cores.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %memory_depth.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supports_10_bit.i) #15
  %has_encoder_buffer164 = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 13
  %66 = ptrtoint ptr %has_encoder_buffer164 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %has_encoder_buffer164, align 4
  %name16 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef %name16) #18
  br label %if.end19

if.end19:                                         ; preds = %do.end13, %allegro_encoder_buffer_init.exit
  %has_encoder_buffer167 = phi ptr [ %has_encoder_buffer164, %do.end13 ], [ %has_encoder_buffer, %allegro_encoder_buffer_init.exit ]
  %regmap.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 5
  %67 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i, align 4
  %call.i124 = call i32 @regmap_write(ptr noundef %68, i32 noundef 260, i32 noundef 1) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #15
  %69 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %status.i, align 4, !annotation !463
  %70 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i, align 4
  %call.i126 = call i32 @regmap_write(ptr noundef %71, i32 noundef 12, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i127 = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i127, label %if.end.i129, label %if.end19.allegro_mcu_start.exit_crit_edge

if.end19.allegro_mcu_start.exit_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mcu_start.exit

if.end.i129:                                      ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %add.i128 = add i32 %72, 10
  %73 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i, align 4
  %call31.i = call i32 @regmap_read(ptr noundef %74, i32 noundef 8, ptr noundef nonnull %status.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp2.i = icmp eq i32 %call31.i, 0
  br i1 %cmp2.i, label %if.end.i129.land.rhs.i_crit_edge, label %if.end.i129.while.end.i_crit_edge

if.end.i129.while.end.i_crit_edge:                ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end.i129.land.rhs.i_crit_edge:                 ; preds = %if.end.i129
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end.i132.land.rhs.i_crit_edge, %if.end.i129.land.rhs.i_crit_edge
  %75 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp4.i130 = icmp eq i32 %76, 1
  br i1 %cmp4.i130, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i128, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i = icmp slt i32 %sub.i, 0
  br i1 %cmp5.i, label %while.body.i.allegro_mcu_start.exit_crit_edge, label %do.end.i132

while.body.i.allegro_mcu_start.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mcu_start.exit

do.end.i132:                                      ; preds = %while.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !472
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !473
  %78 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %79, i32 noundef 8, ptr noundef nonnull %status.i) #15
  %cmp.i131 = icmp eq i32 %call3.i, 0
  br i1 %cmp.i131, label %do.end.i132.land.rhs.i_crit_edge, label %do.end.i132.while.end.i_crit_edge

do.end.i132.while.end.i_crit_edge:                ; preds = %do.end.i132
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

do.end.i132.land.rhs.i_crit_edge:                 ; preds = %do.end.i132
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

while.end.i:                                      ; preds = %do.end.i132.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end.i129.while.end.i_crit_edge
  %80 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i, align 4
  %call15.i133 = call i32 @regmap_write(ptr noundef %81, i32 noundef 12, i32 noundef 0) #15
  br label %allegro_mcu_start.exit

allegro_mcu_start.exit:                           ; preds = %while.end.i, %while.body.i.allegro_mcu_start.exit_crit_edge, %if.end19.allegro_mcu_start.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #15
  %init_complete.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 15
  %call1.i = call i32 @wait_for_completion_timeout(ptr noundef %init_complete.i, i32 noundef 500) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i134 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i134, label %do.end27, label %if.end33

do.end27:                                         ; preds = %allegro_mcu_start.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name30 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef %name30) #18
  br label %err_disable_interrupts

if.end33:                                         ; preds = %allegro_mcu_start.exit
  %82 = ptrtoint ptr %init_complete.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %init_complete.i, align 4
  %suballocator = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 12
  %suballocator_size = getelementptr inbounds %struct.fw_info, ptr %info, i32 0, i32 7
  %83 = ptrtoint ptr %suballocator_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %suballocator_size, align 4
  %85 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %plat_dev.i, align 4
  %dev1.i138 = getelementptr inbounds %struct.platform_device, ptr %86, i32 0, i32 3
  %paddr.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 12, i32 1
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i138, i32 noundef %84, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 0) #15
  %87 = ptrtoint ptr %suballocator to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i.i, ptr %suballocator, align 4
  %tobool.not.i139 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i139, label %do.end39, label %if.end46

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %name42 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %88 = ptrtoint ptr %suballocator_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %suballocator_size, align 4
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %name42, i32 noundef %89) #18
  br label %err_reset_mcu

if.end46:                                         ; preds = %if.end33
  %size3.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 12, i32 2
  %90 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %84, ptr %size3.i, align 4
  %91 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %paddr.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %msg.i) #15
  %93 = call ptr @memset(ptr %msg.i, i32 0, i32 12)
  %94 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fw_info.i, align 8
  %mailbox_version.i143 = getelementptr inbounds %struct.fw_info, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %mailbox_version.i143 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mailbox_version.i143, align 4
  %version.i = getelementptr inbounds %struct.mcu_msg_header, ptr %msg.i, i32 0, i32 1
  %98 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %version.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.addr.i.i) #15
  %99 = ptrtoint ptr %phys.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %92, ptr %phys.addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %tobool3.not.i.i = icmp sgt i32 %92, -1
  br i1 %tobool3.not.i.i, label %if.end46.to_mcu_addr.exit.i_crit_edge, label %do.end.i.i

if.end46.to_mcu_addr.exit.i_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_mcu_addr.exit.i

do.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call.i.i144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name.i.i, ptr noundef nonnull %phys.addr.i.i) #18
  br label %to_mcu_addr.exit.i

to_mcu_addr.exit.i:                               ; preds = %do.end.i.i, %if.end46.to_mcu_addr.exit.i_crit_edge
  %100 = ptrtoint ptr %phys.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %phys.addr.i.i, align 4
  %or.i.i = or i32 %101, -2147483648
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.addr.i.i) #15
  %suballoc_dma2.i = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg.i, i32 0, i32 2
  %102 = ptrtoint ptr %suballoc_dma2.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i.i, ptr %suballoc_dma2.i, align 4
  %suballoc_size4.i = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg.i, i32 0, i32 3
  %103 = ptrtoint ptr %suballoc_size4.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %84, ptr %suballoc_size4.i, align 4
  %104 = ptrtoint ptr %has_encoder_buffer167 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %has_encoder_buffer167, align 4, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i145 = icmp eq i8 %105, 0
  br i1 %tobool.not.i145, label %to_mcu_addr.exit.i.allegro_mcu_send_init.exit_crit_edge, label %if.then.i

to_mcu_addr.exit.i.allegro_mcu_send_init.exit_crit_edge: ; preds = %to_mcu_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mcu_send_init.exit

if.then.i:                                        ; preds = %to_mcu_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %encoder_buffer to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %encoder_buffer, align 8
  %color_depth.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 14, i32 1
  %108 = ptrtoint ptr %color_depth.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %color_depth.i, align 4
  %num_cores.i146 = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 14, i32 2
  %110 = ptrtoint ptr %num_cores.i146 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_cores.i146, align 8
  %clk_rate.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 14, i32 3
  %112 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %clk_rate.i, align 4
  br label %allegro_mcu_send_init.exit

allegro_mcu_send_init.exit:                       ; preds = %if.then.i, %to_mcu_addr.exit.i.allegro_mcu_send_init.exit_crit_edge
  %.sink25.i = phi i32 [ %107, %if.then.i ], [ -1, %to_mcu_addr.exit.i.allegro_mcu_send_init.exit_crit_edge ]
  %.sink24.i = phi i32 [ %109, %if.then.i ], [ -1, %to_mcu_addr.exit.i.allegro_mcu_send_init.exit_crit_edge ]
  %.sink23.i = phi i32 [ %111, %if.then.i ], [ -1, %to_mcu_addr.exit.i.allegro_mcu_send_init.exit_crit_edge ]
  %.sink.i = phi i32 [ %113, %if.then.i ], [ -1, %to_mcu_addr.exit.i.allegro_mcu_send_init.exit_crit_edge ]
  %114 = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg.i, i32 0, i32 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %.sink25.i, ptr %114, align 4
  %116 = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg.i, i32 0, i32 5
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %.sink24.i, ptr %116, align 4
  %118 = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg.i, i32 0, i32 6
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.sink23.i, ptr %118, align 4
  %120 = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg.i, i32 0, i32 7
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %.sink.i, ptr %120, align 4
  %122 = ptrtoint ptr %mbox_command to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mbox_command, align 4
  %call14.i = call fastcc i32 @allegro_mbox_send(ptr noundef %123, ptr noundef nonnull %msg.i) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %msg.i) #15
  %call1.i149 = call i32 @wait_for_completion_timeout(ptr noundef %init_complete.i, i32 noundef 500) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i149)
  %cmp.i150 = icmp eq i32 %call1.i149, 0
  br i1 %cmp.i150, label %do.end54, label %allegro_mcu_wait_for_init_timeout.exit153

allegro_mcu_wait_for_init_timeout.exit153:        ; preds = %allegro_mcu_send_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %init_complete.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %init_complete.i, align 4
  br label %cleanup

do.end54:                                         ; preds = %allegro_mcu_send_init.exit
  %name57 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %name57) #18
  %125 = ptrtoint ptr %suballocator to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %suballocator, align 4
  %tobool.not.i154 = icmp eq ptr %126, null
  br i1 %tobool.not.i154, label %do.end54.err_reset_mcu_crit_edge, label %if.then.i158

do.end54.err_reset_mcu_crit_edge:                 ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_reset_mcu

if.then.i158:                                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #17
  %127 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %plat_dev.i, align 4
  %dev1.i156 = getelementptr inbounds %struct.platform_device, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size3.i, align 4
  %131 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %paddr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i156, i32 noundef %130, ptr noundef nonnull %126, i32 noundef %132, i32 noundef 0) #15
  %133 = ptrtoint ptr %suballocator to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %suballocator, align 4
  %134 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %size3.i, align 4
  br label %err_reset_mcu

err_reset_mcu:                                    ; preds = %if.then.i158, %do.end54.err_reset_mcu_crit_edge, %do.end39
  %err.0 = phi i32 [ -12, %do.end39 ], [ -5, %do.end54.err_reset_mcu_crit_edge ], [ -5, %if.then.i158 ]
  %call62 = call fastcc i32 @allegro_mcu_reset(ptr noundef %dev)
  br label %err_disable_interrupts

err_disable_interrupts:                           ; preds = %err_reset_mcu, %do.end27
  %err.1 = phi i32 [ -5, %do.end27 ], [ %err.0, %err_reset_mcu ]
  %135 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap.i, align 4
  %call.i161 = call i32 @regmap_write(ptr noundef %136, i32 noundef 260, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %err_disable_interrupts, %allegro_mcu_wait_for_init_timeout.exit153, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %err.1, %err_disable_interrupts ], [ 0, %allegro_mcu_wait_for_init_timeout.exit153 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allegro_register_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %video_dev1 = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1
  %name = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1, i32 12
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #15
  %fops = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @allegro_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1, i32 24
  %1 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @allegro_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1, i32 23
  %2 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 4
  %lock2 = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1, i32 26
  %3 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %lock, ptr %lock2, align 8
  %v4l2_dev3 = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %v4l2_dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %v4l2_dev3, align 4
  %vfl_dir = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1, i32 14
  %5 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67141632, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 1, i32 5, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %video_dev1, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null) #15
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allegro_mcu_hw_deinit(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @allegro_mcu_reset(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef %name) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %regmap.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 260, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %do.end7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %name10 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, ptr noundef %name10) #18
  br label %if.end13

if.end13:                                         ; preds = %do.end7, %if.end.if.end13_crit_edge
  %suballocator = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %suballocator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suballocator, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end13.allegro_free_buffer.exit_crit_edge, label %if.then.i

if.end13.allegro_free_buffer.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_free_buffer.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %plat_dev.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %paddr.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %7, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #15
  %10 = ptrtoint ptr %suballocator to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %suballocator, align 4
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %size.i, align 4
  br label %allegro_free_buffer.exit

allegro_free_buffer.exit:                         ; preds = %if.then.i, %if.end13.allegro_free_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allegro_free_fw_codec(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.allegro_free_buffer.exit_crit_edge, label %if.then.i

entry.allegro_free_buffer.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_free_buffer.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %plat_dev.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %paddr.i = getelementptr inbounds %struct.allegro_dev, ptr %dev, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #15
  %8 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %firmware, align 4
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %size.i, align 4
  br label %allegro_free_buffer.exit

allegro_free_buffer.exit:                         ; preds = %if.then.i, %entry.allegro_free_buffer.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @allegro_device_run(ptr noundef %priv) #2 align 64 {
entry:
  %msg.i46 = alloca %struct.mcu_msg_encode_frame, align 8
  %phys.addr.i.i = alloca i32, align 4
  %msg.i = alloca %struct.mcu_msg_put_stream_buffer, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %m2m_ctx = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #15
  %call.i35 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #15
  %4 = ptrtoint ptr %call.i35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i35, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %entry.vb2_plane_size.exit_crit_edge, label %if.then.i

entry.vb2_plane_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %entry.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ 0, %entry.vb2_plane_size.exit_crit_edge ]
  %stream_shadow_list = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 65
  %shadow_list_lock.i = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %shadow_list_lock.i, i32 noundef 0) #15
  %head.i = getelementptr inbounds %struct.allegro_m2m_buffer, ptr %call.i, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 65, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head.i, ptr noundef %11, ptr noundef %stream_shadow_list) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %vb2_plane_size.exit.allegro_put_buffer.exit_crit_edge

vb2_plane_size.exit.allegro_put_buffer.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_put_buffer.exit

if.end.i.i.i:                                     ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %head.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %stream_shadow_list, ptr %head.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.allegro_m2m_buffer, ptr %call.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %head.i, ptr %11, align 4
  br label %allegro_put_buffer.exit

allegro_put_buffer.exit:                          ; preds = %if.end.i.i.i, %vb2_plane_size.exit.allegro_put_buffer.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %shadow_list_lock.i) #15
  %16 = ptrtoint ptr %call.i to i32
  %conv.i.i = zext i32 %16 to i64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %msg.i) #15
  %17 = getelementptr inbounds i8, ptr %msg.i, i32 24
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 549755813888, ptr %17, align 8
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 18, ptr %msg.i, align 8
  %fw_info.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw_info.i, align 8
  %mailbox_version.i = getelementptr inbounds %struct.fw_info, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %mailbox_version.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mailbox_version.i, align 4
  %version.i = getelementptr inbounds %struct.mcu_msg_header, ptr %msg.i, i32 0, i32 1
  %24 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %version.i, align 4
  %mcu_channel_id.i = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 61
  %25 = ptrtoint ptr %mcu_channel_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mcu_channel_id.i, align 4
  %channel_id.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg.i, i32 0, i32 1
  %27 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %channel_id.i, align 8
  %dma_addr.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg.i, i32 0, i32 2
  %28 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %5, ptr %dma_addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.addr.i.i) #15
  %29 = ptrtoint ptr %phys.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %5, ptr %phys.addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool3.not.i.i = icmp sgt i32 %5, -1
  br i1 %tobool3.not.i.i, label %allegro_put_buffer.exit.allegro_mcu_send_put_stream_buffer.exit_crit_edge, label %do.end.i.i

allegro_put_buffer.exit.allegro_mcu_send_put_stream_buffer.exit_crit_edge: ; preds = %allegro_put_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mcu_send_put_stream_buffer.exit

do.end.i.i:                                       ; preds = %allegro_put_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name.i.i, ptr noundef nonnull %phys.addr.i.i) #18
  br label %allegro_mcu_send_put_stream_buffer.exit

allegro_mcu_send_put_stream_buffer.exit:          ; preds = %do.end.i.i, %allegro_put_buffer.exit.allegro_mcu_send_put_stream_buffer.exit_crit_edge
  %30 = ptrtoint ptr %phys.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phys.addr.i.i, align 4
  %or.i.i = or i32 %31, -2147483648
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.addr.i.i) #15
  %mcu_addr.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg.i, i32 0, i32 3
  %32 = ptrtoint ptr %mcu_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i, ptr %mcu_addr.i, align 8
  %size3.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg.i, i32 0, i32 4
  %33 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i, ptr %size3.i, align 4
  %dst_handle4.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg.i, i32 0, i32 6
  %34 = ptrtoint ptr %dst_handle4.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv.i.i, ptr %dst_handle4.i, align 8
  %mbox_command.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %mbox_command.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbox_command.i, align 4
  %call5.i = call fastcc i32 @allegro_mbox_send(ptr noundef %36, ptr noundef nonnull %msg.i) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %msg.i) #15
  %37 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %38, i32 0, i32 8
  %call.i36 = call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #15
  %osequence = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 13
  %39 = ptrtoint ptr %osequence to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %osequence, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %osequence, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i36, i32 0, i32 4
  %41 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %sequence, align 8
  %call.i37 = call ptr @vb2_plane_cookie(ptr noundef %call.i36, i32 noundef 0) #15
  %42 = ptrtoint ptr %call.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call.i37, align 4
  %stride = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 5
  %44 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stride, align 4
  %height = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 4
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height, align 4
  %source_shadow_list = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 64
  call void @mutex_lock_nested(ptr noundef %shadow_list_lock.i, i32 noundef 0) #15
  %head.i39 = getelementptr inbounds %struct.allegro_m2m_buffer, ptr %call.i36, i32 0, i32 1
  %prev.i.i40 = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 64, i32 1
  %48 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i40, align 4
  %call.i.i.i41 = call zeroext i1 @__list_add_valid(ptr noundef %head.i39, ptr noundef %49, ptr noundef %source_shadow_list) #15
  br i1 %call.i.i.i41, label %if.end.i.i.i43, label %allegro_mcu_send_put_stream_buffer.exit.allegro_put_buffer.exit45_crit_edge

allegro_mcu_send_put_stream_buffer.exit.allegro_put_buffer.exit45_crit_edge: ; preds = %allegro_mcu_send_put_stream_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_put_buffer.exit45

if.end.i.i.i43:                                   ; preds = %allegro_mcu_send_put_stream_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %head.i39, ptr %prev.i.i40, align 4
  %51 = ptrtoint ptr %head.i39 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %source_shadow_list, ptr %head.i39, align 4
  %prev3.i.i.i42 = getelementptr inbounds %struct.allegro_m2m_buffer, ptr %call.i36, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i42, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %head.i39, ptr %49, align 4
  br label %allegro_put_buffer.exit45

allegro_put_buffer.exit45:                        ; preds = %if.end.i.i.i43, %allegro_mcu_send_put_stream_buffer.exit.allegro_put_buffer.exit45_crit_edge
  %mul = mul i32 %47, %45
  %add = add i32 %mul, %43
  call void @mutex_unlock(ptr noundef %shadow_list_lock.i) #15
  %54 = ptrtoint ptr %call.i36 to i32
  %conv.i.i44 = zext i32 %54 to i64
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %msg.i46) #15
  %encoder_buffer.i = getelementptr inbounds %struct.allegro_channel, ptr %priv, i32 0, i32 59
  %55 = ptrtoint ptr %encoder_buffer.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %encoder_buffer.i, align 4
  %call.i47 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %56) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i = icmp eq i32 %call.i47, 0
  %57 = getelementptr inbounds i8, ptr %msg.i46, i32 8
  %58 = call ptr @memset(ptr %57, i32 0, i32 72)
  %59 = ptrtoint ptr %msg.i46 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 7, ptr %msg.i46, align 8
  %60 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fw_info.i, align 8
  %mailbox_version.i49 = getelementptr inbounds %struct.fw_info, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %mailbox_version.i49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mailbox_version.i49, align 4
  %version.i50 = getelementptr inbounds %struct.mcu_msg_header, ptr %msg.i46, i32 0, i32 1
  %64 = ptrtoint ptr %version.i50 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %version.i50, align 4
  %65 = ptrtoint ptr %mcu_channel_id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mcu_channel_id.i, align 4
  %67 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %57, align 8
  %spec.select.i = select i1 %tobool.not.i, i32 2, i32 6
  %encoding_options.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg.i46, i32 0, i32 3
  %68 = ptrtoint ptr %encoding_options.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %spec.select.i, ptr %encoding_options.i, align 8
  %pps_qp.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg.i46, i32 0, i32 4
  %69 = ptrtoint ptr %pps_qp.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 26, ptr %pps_qp.i, align 4
  %src_handle4.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg.i46, i32 0, i32 7
  %70 = ptrtoint ptr %src_handle4.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv.i.i44, ptr %src_handle4.i, align 8
  %src_y6.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg.i46, i32 0, i32 9
  %71 = ptrtoint ptr %src_y6.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %43, ptr %src_y6.i, align 4
  %src_uv8.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg.i46, i32 0, i32 10
  %72 = ptrtoint ptr %src_uv8.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add, ptr %src_uv8.i, align 8
  %73 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %stride, align 4
  %stride9.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg.i46, i32 0, i32 12
  %75 = ptrtoint ptr %stride9.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %stride9.i, align 8
  %76 = ptrtoint ptr %mbox_command.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mbox_command.i, align 4
  %call10.i = call fastcc i32 @allegro_mbox_send(ptr noundef %77, ptr noundef nonnull %msg.i46) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %msg.i46) #15
  %m2m_dev = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 2
  %78 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %m2m_dev, align 8
  %80 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %m2m_ctx, align 4
  call void @v4l2_m2m_job_finish(ptr noundef %79, ptr noundef %81) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 820) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %fh = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 1
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call) #15
  %completion = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 68
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %completion, align 8
  %wait.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 68, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #15
  %source_shadow_list = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 64
  %4 = ptrtoint ptr %source_shadow_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %source_shadow_list, ptr %source_shadow_list, align 4
  %prev.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 64, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %source_shadow_list, ptr %prev.i, align 8
  %stream_shadow_list = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 65
  %6 = ptrtoint ptr %stream_shadow_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %stream_shadow_list, ptr %stream_shadow_list, align 4
  %prev.i154 = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 65, i32 1
  %7 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %stream_shadow_list, ptr %prev.i154, align 8
  %shadow_list_lock = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 66
  tail call void @__mutex_init(ptr noundef %shadow_list_lock, ptr noundef nonnull @.str.206, ptr noundef nonnull @allegro_open.__key) #15
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %call7.i.i, align 8
  %width.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1920, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1080, ptr %height.i, align 8
  %stride.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %stride.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1920, ptr %stride.i, align 4
  %framerate.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %framerate.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %framerate.i, align 8
  %.compoundliteral.sroa.2.0.framerate.sroa_idx.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %.compoundliteral.sroa.2.0.framerate.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %.compoundliteral.sroa.2.0.framerate.sroa_idx.i, align 4
  %colorspace.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %colorspace.i, align 8
  %ycbcr_enc.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ycbcr_enc.i, align 4
  %quantization.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %quantization.i, align 8
  %xfer_func.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %xfer_func.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 842094158, ptr %pixelformat.i, align 8
  %sizeimage_raw.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %sizeimage_raw.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3110400, ptr %sizeimage_raw.i, align 4
  %codec.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 14
  %20 = ptrtoint ptr %codec.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 875967048, ptr %codec.i, align 4
  %ctrl_handler = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 2
  %call4 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 0, ptr noundef nonnull @allegro_open._key, ptr noundef nonnull @.str.207) #15
  %call5 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029675, i8 noundef zeroext 0, i64 noundef 0, i8 noundef zeroext 0) #15
  %mpeg_video_h264_profile = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 40
  %21 = ptrtoint ptr %mpeg_video_h264_profile to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5, ptr %mpeg_video_h264_profile, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029671, i8 noundef zeroext 15, i64 noundef 2, i8 noundef zeroext 15) #15
  %mpeg_video_h264_level = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 41
  %22 = ptrtoint ptr %mpeg_video_h264_level to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call6, ptr %mpeg_video_h264_level, align 8
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029662, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 30) #15
  %mpeg_video_h264_i_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 42
  %23 = ptrtoint ptr %mpeg_video_h264_i_frame_qp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7, ptr %mpeg_video_h264_i_frame_qp, align 4
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029666, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 51) #15
  %mpeg_video_h264_max_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 43
  %24 = ptrtoint ptr %mpeg_video_h264_max_qp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8, ptr %mpeg_video_h264_max_qp, align 8
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029665, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 0) #15
  %mpeg_video_h264_min_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 44
  %25 = ptrtoint ptr %mpeg_video_h264_min_qp to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9, ptr %mpeg_video_h264_min_qp, align 4
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029663, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 30) #15
  %mpeg_video_h264_p_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 45
  %26 = ptrtoint ptr %mpeg_video_h264_p_frame_qp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call10, ptr %mpeg_video_h264_p_frame_qp, align 8
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029664, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 30) #15
  %mpeg_video_h264_b_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 46
  %27 = ptrtoint ptr %mpeg_video_h264_b_frame_qp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call11, ptr %mpeg_video_h264_b_frame_qp, align 4
  %call12 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029927, i8 noundef zeroext 0, i64 noundef 0, i8 noundef zeroext 0) #15
  %mpeg_video_hevc_profile = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 47
  %28 = ptrtoint ptr %mpeg_video_hevc_profile to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call12, ptr %mpeg_video_hevc_profile, align 8
  %call13 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029928, i8 noundef zeroext 8, i64 noundef 0, i8 noundef zeroext 8) #15
  %mpeg_video_hevc_level = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 48
  %29 = ptrtoint ptr %mpeg_video_hevc_level to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call13, ptr %mpeg_video_hevc_level, align 4
  %call14 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029930, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #15
  %mpeg_video_hevc_tier = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 49
  %30 = ptrtoint ptr %mpeg_video_hevc_tier to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call14, ptr %mpeg_video_hevc_tier, align 8
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029914, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 30) #15
  %mpeg_video_hevc_i_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 50
  %31 = ptrtoint ptr %mpeg_video_hevc_i_frame_qp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call15, ptr %mpeg_video_hevc_i_frame_qp, align 4
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029913, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 51) #15
  %mpeg_video_hevc_max_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 51
  %32 = ptrtoint ptr %mpeg_video_hevc_max_qp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call16, ptr %mpeg_video_hevc_max_qp, align 8
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029912, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 0) #15
  %mpeg_video_hevc_min_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 52
  %33 = ptrtoint ptr %mpeg_video_hevc_min_qp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call17, ptr %mpeg_video_hevc_min_qp, align 4
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029915, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 30) #15
  %mpeg_video_hevc_p_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 53
  %34 = ptrtoint ptr %mpeg_video_hevc_p_frame_qp to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call18, ptr %mpeg_video_hevc_p_frame_qp, align 8
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029916, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 30) #15
  %mpeg_video_hevc_b_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 54
  %35 = ptrtoint ptr %mpeg_video_hevc_b_frame_qp to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call19, ptr %mpeg_video_hevc_b_frame_qp, align 4
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029527, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #15
  %mpeg_video_frame_rc_enable = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 55
  %36 = ptrtoint ptr %mpeg_video_frame_rc_enable to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call20, ptr %mpeg_video_frame_rc_enable, align 8
  %call21 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029518, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #15
  %37 = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 56
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call21, ptr %37, align 4
  %39 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %codec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %40)
  %cmp = icmp eq i32 %40, 875967048
  %bitrate_max.0 = select i1 %cmp, i32 240000000, i32 40000
  %cpb_size_def.0 = select i1 %cmp, i32 240000, i32 40000
  %conv = zext i32 %bitrate_max.0 to i64
  %call33 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029519, i64 noundef 0, i64 noundef %conv, i64 noundef 1, i64 noundef %conv) #15
  %mpeg_video_bitrate = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 56, i32 1
  %41 = ptrtoint ptr %mpeg_video_bitrate to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call33, ptr %mpeg_video_bitrate, align 8
  %call36 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029520, i64 noundef 0, i64 noundef %conv, i64 noundef 1, i64 noundef %conv) #15
  %mpeg_video_bitrate_peak = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 56, i32 2
  %42 = ptrtoint ptr %mpeg_video_bitrate_peak to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call36, ptr %mpeg_video_bitrate_peak, align 4
  %conv37 = zext i32 %cpb_size_def.0 to i64
  %call39 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029668, i64 noundef 0, i64 noundef %conv37, i64 noundef 1, i64 noundef %conv37) #15
  %mpeg_video_cpb_size = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 57
  %43 = ptrtoint ptr %mpeg_video_cpb_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call39, ptr %mpeg_video_cpb_size, align 8
  %call40 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 10029515, i64 noundef 0, i64 noundef 1000, i64 noundef 1, i64 noundef 25) #15
  %mpeg_video_gop_size = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 58
  %44 = ptrtoint ptr %mpeg_video_gop_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call40, ptr %mpeg_video_gop_size, align 4
  %call41 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_encoder_buffer_ctrl_config, ptr noundef null) #15
  %encoder_buffer = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 59
  %45 = ptrtoint ptr %encoder_buffer to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call41, ptr %encoder_buffer, align 8
  %call42 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @allegro_ctrl_ops, i32 noundef 9963816, i64 noundef 1, i64 noundef 32, i64 noundef 1, i64 noundef 1) #15
  %error = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 2, i32 9
  %46 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp43.not = icmp eq i32 %47, 0
  br i1 %cmp43.not, label %if.end47, label %if.end.error64_crit_edge

if.end.error64_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %error64

if.end47:                                         ; preds = %if.end
  %ctrl_handler49 = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %ctrl_handler49 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %ctrl_handler, ptr %ctrl_handler49, align 8
  tail call void @v4l2_ctrl_cluster(i32 noundef 3, ptr noundef %37) #15
  %call51 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #15
  %mcu_channel_id = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 61
  %49 = ptrtoint ptr %mcu_channel_id to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %mcu_channel_id, align 8
  %user_id = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 60
  %50 = ptrtoint ptr %user_id to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %user_id, align 4
  %buffers_reference = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 62
  %51 = ptrtoint ptr %buffers_reference to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %buffers_reference, ptr %buffers_reference, align 4
  %prev.i155 = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 62, i32 1
  %52 = ptrtoint ptr %prev.i155 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buffers_reference, ptr %prev.i155, align 8
  %buffers_intermediate = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 63
  %53 = ptrtoint ptr %buffers_intermediate to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %buffers_intermediate, ptr %buffers_intermediate, align 4
  %prev.i156 = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 63, i32 1
  %54 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buffers_intermediate, ptr %prev.i156, align 8
  %m2m_dev = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %m2m_dev, align 8
  %call52 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %56, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @allegro_queue_init) #15
  %m2m_ctx = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 1, i32 10
  %57 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call52, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %call52 to i32
  br label %error64

if.end61:                                         ; preds = %if.end47
  %list = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 67
  %channels = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 20
  %59 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %channels, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %channels, ptr noundef %60) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end61.list_add.exit_crit_edge

if.end61.list_add.exit_crit_edge:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list, ptr %prev1.i.i, align 4
  %62 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.allegro_channel, ptr %call7.i.i, i32 0, i32 67, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %channels, ptr %prev3.i.i, align 4
  %64 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %list, ptr %channels, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end61.list_add.exit_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %65 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #15
  tail call fastcc void @allegro_channel_adjust(ptr noundef nonnull %call7.i.i)
  br label %cleanup

error64:                                          ; preds = %if.then57, %if.end.error64_crit_edge
  %ret.0 = phi i32 [ %58, %if.then57 ], [ %47, %if.end.error64_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %error64, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error64 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_release(ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %3) #15
  %list = getelementptr i8, ptr %1, i32 748
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr i8, ptr %1, i32 752
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %1, i32 752
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ctrl_handler = getelementptr i8, ptr %1, i32 192
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #15
  tail call void @v4l2_fh_del(ptr noundef %1) #15
  tail call void @v4l2_fh_exit(ptr noundef %1) #15
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %plat_dev = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %dev2 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev2, align 4
  %5 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %6 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 17, ptr %io_modes, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %7 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %8 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %drv_priv, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %9 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16384, ptr %timestamp_flags, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @allegro_queue_ops, ptr %ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %11 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 752, ptr %buf_struct_size, align 4
  %12 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.allegro_dev, ptr %12, i32 0, i32 4
  %lock4 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %13 = ptrtoint ptr %lock4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lock, ptr %lock4, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %plat_dev6 = getelementptr inbounds %struct.allegro_dev, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %plat_dev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %plat_dev6, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %dev8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %18 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev7, ptr %dev8, align 4
  %19 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %dst_vq, align 4
  %io_modes10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %20 = ptrtoint ptr %io_modes10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 17, ptr %io_modes10, align 4
  %mem_ops11 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %21 = ptrtoint ptr %mem_ops11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops11, align 4
  %drv_priv12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %22 = ptrtoint ptr %drv_priv12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %priv, ptr %drv_priv12, align 4
  %timestamp_flags13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %23 = ptrtoint ptr %timestamp_flags13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16384, ptr %timestamp_flags13, align 4
  %ops14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %24 = ptrtoint ptr %ops14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @allegro_queue_ops, ptr %ops14, align 4
  %buf_struct_size15 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %25 = ptrtoint ptr %buf_struct_size15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 752, ptr %buf_struct_size15, align 4
  %26 = load ptr, ptr %priv, align 4
  %lock17 = getelementptr inbounds %struct.allegro_dev, ptr %26, i32 0, i32 4
  %lock18 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %27 = ptrtoint ptr %lock18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lock17, ptr %lock18, align 4
  %call19 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call19, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allegro_channel_adjust(ptr noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %codec2 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 14
  %2 = ptrtoint ptr %codec2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codec2, align 4
  %width = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 3
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 4
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %sub2.i = add i32 %7, 15
  %div310.i = lshr i32 %sub2.i, 4
  %sub.i = shl i32 %5, 4
  %8 = add i32 %sub.i, 240
  %mul.i = and i32 %8, -256
  %mul4.i = mul i32 %mul.i, %div310.i
  %add8.i = add i32 %mul4.i, 384
  %sizeimage_encoded = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 15
  %9 = ptrtoint ptr %sizeimage_encoded to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add8.i, ptr %sizeimage_encoded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %3)
  %cmp = icmp eq i32 %3, 875967048
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mpeg_video_h264_level = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 41
  %10 = ptrtoint ptr %mpeg_video_h264_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mpeg_video_h264_level, align 4
  %sub.i228 = add i32 %5, 15
  %div44.i = lshr i32 %sub.i228, 4
  %mul.i230 = mul i32 %div310.i, %div44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul.i230)
  %cmp.i = icmp ult i32 %mul.i230, 100
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.else.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 397, i32 %mul.i230)
  %cmp4.i = icmp ult i32 %mul.i230, 397
  br i1 %cmp4.i, label %if.else.i.if.end_crit_edge, label %if.else6.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 793, i32 %mul.i230)
  %cmp7.i = icmp ult i32 %mul.i230, 793
  br i1 %cmp7.i, label %if.else6.i.if.end_crit_edge, label %if.else9.i

if.else6.i.if.end_crit_edge:                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1621, i32 %mul.i230)
  %cmp10.i = icmp ult i32 %mul.i230, 1621
  br i1 %cmp10.i, label %if.else9.i.if.end_crit_edge, label %if.else12.i

if.else9.i.if.end_crit_edge:                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else12.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3601, i32 %mul.i230)
  %cmp13.i = icmp ult i32 %mul.i230, 3601
  br i1 %cmp13.i, label %if.else12.i.if.end_crit_edge, label %if.else15.i

if.else12.i.if.end_crit_edge:                     ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5121, i32 %mul.i230)
  %cmp16.i = icmp ult i32 %mul.i230, 5121
  br i1 %cmp16.i, label %if.else15.i.if.end_crit_edge, label %if.else18.i

if.else15.i.if.end_crit_edge:                     ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %mul.i230)
  %cmp19.i = icmp ult i32 %mul.i230, 8193
  br i1 %cmp19.i, label %if.else18.i.if.end_crit_edge, label %if.else21.i

if.else18.i.if.end_crit_edge:                     ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8705, i32 %mul.i230)
  %cmp22.i = icmp ult i32 %mul.i230, 8705
  br i1 %cmp22.i, label %if.else21.i.if.end_crit_edge, label %if.else24.i

if.else21.i.if.end_crit_edge:                     ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else24.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 22081, i32 %mul.i230)
  %cmp25.i = icmp ult i32 %mul.i230, 22081
  %..i = select i1 %cmp25.i, i32 14, i32 15
  br label %if.end

if.else:                                          ; preds = %entry
  %mpeg_video_hevc_level = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 48
  %12 = ptrtoint ptr %mpeg_video_hevc_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mpeg_video_hevc_level, align 4
  %mul.i231 = mul i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 36865, i32 %mul.i231)
  %cmp.i232 = icmp ult i32 %mul.i231, 36865
  br i1 %cmp.i232, label %if.else.if.end_crit_edge, label %if.else.i233

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else.i233:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 122881, i32 %mul.i231)
  %cmp1.i = icmp ult i32 %mul.i231, 122881
  br i1 %cmp1.i, label %if.else.i233.if.end_crit_edge, label %if.else3.i

if.else.i233.if.end_crit_edge:                    ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else3.i:                                       ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_const_cmp4(i32 245761, i32 %mul.i231)
  %cmp4.i234 = icmp ult i32 %mul.i231, 245761
  br i1 %cmp4.i234, label %if.else3.i.if.end_crit_edge, label %if.else6.i236

if.else3.i.if.end_crit_edge:                      ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else6.i236:                                    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 552961, i32 %mul.i231)
  %cmp7.i235 = icmp ult i32 %mul.i231, 552961
  br i1 %cmp7.i235, label %if.else6.i236.if.end_crit_edge, label %if.else9.i238

if.else6.i236.if.end_crit_edge:                   ; preds = %if.else6.i236
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else9.i238:                                    ; preds = %if.else6.i236
  call void @__sanitizer_cov_trace_const_cmp4(i32 983041, i32 %mul.i231)
  %cmp10.i237 = icmp ult i32 %mul.i231, 983041
  br i1 %cmp10.i237, label %if.else9.i238.if.end_crit_edge, label %if.else12.i240

if.else9.i238.if.end_crit_edge:                   ; preds = %if.else9.i238
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else12.i240:                                   ; preds = %if.else9.i238
  call void @__sanitizer_cov_trace_const_cmp4(i32 2228225, i32 %mul.i231)
  %cmp13.i239 = icmp ult i32 %mul.i231, 2228225
  br i1 %cmp13.i239, label %if.else12.i240.if.end_crit_edge, label %if.else15.i243

if.else12.i240.if.end_crit_edge:                  ; preds = %if.else12.i240
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else15.i243:                                   ; preds = %if.else12.i240
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8912897, i32 %mul.i231)
  %cmp16.i241 = icmp ult i32 %mul.i231, 8912897
  %..i242 = select i1 %cmp16.i241, i32 7, i32 10
  br label %if.end

if.end:                                           ; preds = %if.else15.i243, %if.else12.i240.if.end_crit_edge, %if.else9.i238.if.end_crit_edge, %if.else6.i236.if.end_crit_edge, %if.else3.i.if.end_crit_edge, %if.else.i233.if.end_crit_edge, %if.else.if.end_crit_edge, %if.else24.i, %if.else21.i.if.end_crit_edge, %if.else18.i.if.end_crit_edge, %if.else15.i.if.end_crit_edge, %if.else12.i.if.end_crit_edge, %if.else9.i.if.end_crit_edge, %if.else6.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ctrl.0 = phi ptr [ %11, %if.then.if.end_crit_edge ], [ %11, %if.else.i.if.end_crit_edge ], [ %11, %if.else6.i.if.end_crit_edge ], [ %11, %if.else9.i.if.end_crit_edge ], [ %11, %if.else12.i.if.end_crit_edge ], [ %11, %if.else15.i.if.end_crit_edge ], [ %11, %if.else18.i.if.end_crit_edge ], [ %11, %if.else21.i.if.end_crit_edge ], [ %11, %if.else24.i ], [ %13, %if.else.if.end_crit_edge ], [ %13, %if.else.i233.if.end_crit_edge ], [ %13, %if.else3.i.if.end_crit_edge ], [ %13, %if.else6.i236.if.end_crit_edge ], [ %13, %if.else9.i238.if.end_crit_edge ], [ %13, %if.else12.i240.if.end_crit_edge ], [ %13, %if.else15.i243 ]
  %min.0.in = phi i32 [ 0, %if.then.if.end_crit_edge ], [ 2, %if.else.i.if.end_crit_edge ], [ 6, %if.else6.i.if.end_crit_edge ], [ 7, %if.else9.i.if.end_crit_edge ], [ 9, %if.else12.i.if.end_crit_edge ], [ 10, %if.else15.i.if.end_crit_edge ], [ 11, %if.else18.i.if.end_crit_edge ], [ 13, %if.else21.i.if.end_crit_edge ], [ %..i, %if.else24.i ], [ 0, %if.else.if.end_crit_edge ], [ 1, %if.else.i233.if.end_crit_edge ], [ 2, %if.else3.i.if.end_crit_edge ], [ 3, %if.else6.i236.if.end_crit_edge ], [ 4, %if.else9.i238.if.end_crit_edge ], [ 5, %if.else12.i240.if.end_crit_edge ], [ %..i242, %if.else15.i243 ]
  %min.0 = zext i32 %min.0.in to i64
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.0, i32 0, i32 11
  %14 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %minimum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %min.0)
  %cmp10 = icmp sgt i64 %15, %min.0
  br i1 %cmp10, label %do.body, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.body:                                          ; preds = %if.end
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13 = icmp sgt i32 %16, 0
  br i1 %cmp13, label %do.end, label %do.body.if.end23_crit_edge

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.0, i32 0, i32 8
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 8
  %call17 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %18) #15
  %19 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %minimum, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef %name, ptr noundef %call17, i64 noundef %20, i64 noundef %min.0) #18
  br label %if.end23

if.end23:                                         ; preds = %do.end, %do.body.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.0, i32 0, i32 2
  %21 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %24, i32 noundef 0) #15
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.0, i32 0, i32 12
  %25 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %maximum, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.0, i32 0, i32 18
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %27, align 8
  %default_value = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.0, i32 0, i32 13
  %30 = ptrtoint ptr %default_value to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %default_value, align 8
  %call24 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %ctrl.0, i64 noundef %min.0, i64 noundef %26, i64 noundef %29, i64 noundef %31) #15
  %32 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handler.i, align 8
  %lock.i246 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %lock.i246 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lock.i246, align 4
  tail call void @mutex_unlock(ptr noundef %35) #15
  %mpeg_video_bitrate = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 56, i32 1
  %36 = ptrtoint ptr %mpeg_video_bitrate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mpeg_video_bitrate, align 4
  br i1 %cmp, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.end23
  %mpeg_video_h264_level28 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 41
  %38 = ptrtoint ptr %mpeg_video_h264_level28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mpeg_video_h264_level28, align 4
  %call29 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %39) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call29)
  %40 = icmp ult i32 %call29, 15
  br i1 %40, label %switch.lookup, label %if.then27.if.end37_crit_edge

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.else32:                                        ; preds = %if.end23
  %mpeg_video_hevc_level33 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 48
  %41 = ptrtoint ptr %mpeg_video_hevc_level33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mpeg_video_hevc_level33, align 4
  %call34 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %42) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call34)
  %43 = icmp ult i32 %call34, 8
  br i1 %43, label %switch.lookup269, label %if.else32.if.end37_crit_edge

if.else32.if.end37_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

switch.lookup:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.allegro_channel_adjust, i32 0, i32 %call29
  br label %if.end37.sink.split

switch.lookup269:                                 ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep270 = getelementptr inbounds [8 x i32], ptr @switch.table.allegro_channel_adjust.259, i32 0, i32 %call34
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %switch.lookup269, %switch.lookup
  %switch.gep270.sink = phi ptr [ %switch.gep270, %switch.lookup269 ], [ %switch.gep, %switch.lookup ]
  %44 = ptrtoint ptr %switch.gep270.sink to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load271 = load i32, ptr %switch.gep270.sink, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else32.if.end37_crit_edge, %if.then27.if.end37_crit_edge
  %max.0.in = phi i32 [ 240000000, %if.then27.if.end37_crit_edge ], [ 40000, %if.else32.if.end37_crit_edge ], [ %switch.load271, %if.end37.sink.split ]
  %max.0 = zext i32 %max.0.in to i64
  %maximum38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 12
  %45 = ptrtoint ptr %maximum38 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %maximum38, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %max.0)
  %cmp39 = icmp slt i64 %46, %max.0
  br i1 %cmp39, label %do.body42, label %if.end37.if.end60_crit_edge

if.end37.if.end60_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

do.body42:                                        ; preds = %if.end37
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp43 = icmp sgt i32 %47, 0
  br i1 %cmp43, label %do.end48, label %do.body42.if.end60_crit_edge

do.body42.if.end60_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #17
  %name51 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %id53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 8
  %48 = ptrtoint ptr %id53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id53, align 8
  %call54 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %49) #15
  %50 = ptrtoint ptr %maximum38 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %maximum38, align 8
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef %name51, ptr noundef %call54, i64 noundef %51, i64 noundef %max.0) #18
  br label %if.end60

if.end60:                                         ; preds = %do.end48, %do.body42.if.end60_crit_edge, %if.end37.if.end60_crit_edge
  %handler.i256 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 2
  %52 = ptrtoint ptr %handler.i256 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handler.i256, align 8
  %lock.i257 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %lock.i257 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lock.i257, align 4
  tail call void @mutex_lock_nested(ptr noundef %55, i32 noundef 0) #15
  %minimum61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 11
  %56 = ptrtoint ptr %minimum61 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %minimum61, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 18
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %58, align 8
  %default_value62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 13
  %61 = ptrtoint ptr %default_value62 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %default_value62, align 8
  %call63 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %37, i64 noundef %57, i64 noundef %max.0, i64 noundef %60, i64 noundef %62) #15
  %63 = ptrtoint ptr %handler.i256 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %handler.i256, align 8
  %lock.i259 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %lock.i259 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lock.i259, align 4
  tail call void @mutex_unlock(ptr noundef %66) #15
  %mpeg_video_bitrate_peak = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 56, i32 2
  %67 = ptrtoint ptr %mpeg_video_bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mpeg_video_bitrate_peak, align 4
  %handler.i260 = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %handler.i260 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handler.i260, align 8
  %lock.i261 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %lock.i261 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lock.i261, align 4
  tail call void @mutex_lock_nested(ptr noundef %72, i32 noundef 0) #15
  %minimum64 = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 11
  %73 = ptrtoint ptr %minimum64 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %minimum64, align 8
  %75 = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 18
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %75, align 8
  %default_value65 = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 13
  %78 = ptrtoint ptr %default_value65 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %default_value65, align 8
  %call66 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %68, i64 noundef %74, i64 noundef %max.0, i64 noundef %77, i64 noundef %79) #15
  %80 = ptrtoint ptr %handler.i260 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %handler.i260, align 8
  %lock.i263 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %lock.i263 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lock.i263, align 4
  tail call void @mutex_unlock(ptr noundef %83) #15
  %mpeg_video_h264_profile = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 40
  %84 = ptrtoint ptr %mpeg_video_h264_profile to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mpeg_video_h264_profile, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %85, i1 noundef zeroext %cmp) #15
  %mpeg_video_h264_level69 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 41
  %86 = ptrtoint ptr %mpeg_video_h264_level69 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mpeg_video_h264_level69, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %87, i1 noundef zeroext %cmp) #15
  %mpeg_video_h264_i_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 42
  %88 = ptrtoint ptr %mpeg_video_h264_i_frame_qp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mpeg_video_h264_i_frame_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %89, i1 noundef zeroext %cmp) #15
  %mpeg_video_h264_max_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 43
  %90 = ptrtoint ptr %mpeg_video_h264_max_qp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mpeg_video_h264_max_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %91, i1 noundef zeroext %cmp) #15
  %mpeg_video_h264_min_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 44
  %92 = ptrtoint ptr %mpeg_video_h264_min_qp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mpeg_video_h264_min_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %93, i1 noundef zeroext %cmp) #15
  %mpeg_video_h264_p_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 45
  %94 = ptrtoint ptr %mpeg_video_h264_p_frame_qp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mpeg_video_h264_p_frame_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %95, i1 noundef zeroext %cmp) #15
  %mpeg_video_h264_b_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 46
  %96 = ptrtoint ptr %mpeg_video_h264_b_frame_qp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mpeg_video_h264_b_frame_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %97, i1 noundef zeroext %cmp) #15
  %mpeg_video_hevc_profile = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 47
  %98 = ptrtoint ptr %mpeg_video_hevc_profile to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mpeg_video_hevc_profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %3)
  %cmp82 = icmp eq i32 %3, 1129727304
  tail call void @v4l2_ctrl_activate(ptr noundef %99, i1 noundef zeroext %cmp82) #15
  %mpeg_video_hevc_level84 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 48
  %100 = ptrtoint ptr %mpeg_video_hevc_level84 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mpeg_video_hevc_level84, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %101, i1 noundef zeroext %cmp82) #15
  %mpeg_video_hevc_tier = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 49
  %102 = ptrtoint ptr %mpeg_video_hevc_tier to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mpeg_video_hevc_tier, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %103, i1 noundef zeroext %cmp82) #15
  %mpeg_video_hevc_i_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 50
  %104 = ptrtoint ptr %mpeg_video_hevc_i_frame_qp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mpeg_video_hevc_i_frame_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %105, i1 noundef zeroext %cmp82) #15
  %mpeg_video_hevc_max_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 51
  %106 = ptrtoint ptr %mpeg_video_hevc_max_qp to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mpeg_video_hevc_max_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %107, i1 noundef zeroext %cmp82) #15
  %mpeg_video_hevc_min_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 52
  %108 = ptrtoint ptr %mpeg_video_hevc_min_qp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mpeg_video_hevc_min_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %109, i1 noundef zeroext %cmp82) #15
  %mpeg_video_hevc_p_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 53
  %110 = ptrtoint ptr %mpeg_video_hevc_p_frame_qp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mpeg_video_hevc_p_frame_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %111, i1 noundef zeroext %cmp82) #15
  %mpeg_video_hevc_b_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 54
  %112 = ptrtoint ptr %mpeg_video_hevc_b_frame_qp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mpeg_video_hevc_b_frame_qp, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %113, i1 noundef zeroext %cmp82) #15
  br i1 %cmp, label %if.then101, label %if.end60.if.end102_crit_edge

if.end60.if.end102_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.then101:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  %log2_max_frame_num = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 21
  %114 = ptrtoint ptr %log2_max_frame_num to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 4, ptr %log2_max_frame_num, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end60.if.end102_crit_edge
  %temporal_mvp_enable = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 22
  %115 = ptrtoint ptr %temporal_mvp_enable to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %temporal_mvp_enable, align 4
  %dbf_ovr_en = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 27
  %frombool = zext i1 %cmp to i8
  %116 = ptrtoint ptr %dbf_ovr_en to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %frombool, ptr %dbf_ovr_en, align 1
  %enable_deblocking_filter_override = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 25
  %frombool107 = zext i1 %cmp82 to i8
  %117 = ptrtoint ptr %enable_deblocking_filter_override to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %frombool107, ptr %enable_deblocking_filter_override, align 1
  %enable_reordering = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 26
  %118 = ptrtoint ptr %enable_reordering to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %frombool107, ptr %enable_reordering, align 4
  %enable_loop_filter_across_tiles = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 23
  %119 = ptrtoint ptr %enable_loop_filter_across_tiles to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %enable_loop_filter_across_tiles, align 1
  %enable_loop_filter_across_slices = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 24
  %120 = ptrtoint ptr %enable_loop_filter_across_slices to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %enable_loop_filter_across_slices, align 2
  br i1 %cmp, label %if.end102.if.end123_crit_edge, label %if.else114

if.end102.if.end123_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end123

if.else114:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end123

if.end123:                                        ; preds = %if.else114, %if.end102.if.end123_crit_edge
  %.sink268 = phi i32 [ 16, %if.else114 ], [ 8, %if.end102.if.end123_crit_edge ]
  %.sink266 = phi i32 [ 32, %if.else114 ], [ 16, %if.end102.if.end123_crit_edge ]
  %.sink264 = phi i32 [ 5, %if.else114 ], [ 4, %if.end102.if.end123_crit_edge ]
  %.sink = phi i32 [ 5, %if.else114 ], [ 2, %if.end102.if.end123_crit_edge ]
  %121 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 30
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %.sink268, ptr %121, align 4
  %123 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 31
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.sink268, ptr %123, align 4
  %125 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 32
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %.sink266, ptr %125, align 4
  %127 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 33
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %.sink266, ptr %127, align 4
  %129 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 35
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.sink264, ptr %129, align 4
  %131 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 34
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 3, ptr %131, align 4
  %133 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 37
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %.sink, ptr %133, align 4
  %135 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 36
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 2, ptr %135, align 4
  %max_transfo_depth_intra = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 38
  %137 = ptrtoint ptr %max_transfo_depth_intra to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %max_transfo_depth_intra, align 4
  %max_transfo_depth_inter = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 39
  %138 = ptrtoint ptr %max_transfo_depth_inter to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %max_transfo_depth_inter, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @allegro_try_ctrl(ptr nocapture noundef %ctrl) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 10029518, label %sw.bb
    i32 9968240, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %sw.bb
  %mpeg_video_bitrate_peak.i = getelementptr i8, ptr %1, i32 408
  %7 = ptrtoint ptr %mpeg_video_bitrate_peak.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mpeg_video_bitrate_peak.i, align 4
  %mpeg_video_bitrate.i = getelementptr i8, ptr %1, i32 404
  %9 = ptrtoint ptr %mpeg_video_bitrate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mpeg_video_bitrate.i, align 4
  %val1.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %11 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val1.i, align 4
  %val2.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %13 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3.i = icmp slt i32 %12, %14
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %val1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val1.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -196
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %has_encoder_buffer = getelementptr inbounds %struct.allegro_dev, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %has_encoder_buffer to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_encoder_buffer, align 4, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.then, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %land.lhs.true.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %1, i32 -196
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %call = tail call ptr @v4l2_ctrl_get_name(i32 noundef %6) #15
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, ptr noundef %name, ptr noundef %call, i32 noundef %8) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %id7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %9 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id7, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %10, label %do.end6.sw.epilog_crit_edge [
    i32 10029527, label %sw.bb
    i32 10029518, label %sw.bb9
    i32 10029662, label %do.end6.sw.bb15_crit_edge
    i32 10029663, label %do.end6.sw.bb15_crit_edge30
    i32 10029664, label %do.end6.sw.bb15_crit_edge31
  ]

do.end6.sw.bb15_crit_edge31:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb15

do.end6.sw.bb15_crit_edge30:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb15

do.end6.sw.bb15_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb15

do.end6.sw.epilog_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool = icmp ne i32 %13, 0
  %frame_rc_enable = getelementptr i8, ptr %1, i32 244
  %frombool = zext i1 %tobool to i8
  %14 = ptrtoint ptr %frame_rc_enable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %frame_rc_enable, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  %mpeg_video_bitrate = getelementptr i8, ptr %1, i32 404
  %15 = ptrtoint ptr %mpeg_video_bitrate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mpeg_video_bitrate, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val10, align 4
  %bitrate = getelementptr i8, ptr %1, i32 248
  %19 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bitrate, align 4
  %mpeg_video_bitrate_peak = getelementptr i8, ptr %1, i32 408
  %20 = ptrtoint ptr %mpeg_video_bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mpeg_video_bitrate_peak, align 4
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val11, align 4
  %bitrate_peak = getelementptr i8, ptr %1, i32 252
  %24 = ptrtoint ptr %bitrate_peak to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bitrate_peak, align 4
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp14 = icmp eq i32 %26, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %21, i1 noundef zeroext %cmp14) #15
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end6.sw.bb15_crit_edge, %do.end6.sw.bb15_crit_edge30, %do.end6.sw.bb15_crit_edge31
  %mpeg_video_h264_b_frame_qp.i = getelementptr i8, ptr %1, i32 360
  %mpeg_video_h264_p_frame_qp.i = getelementptr i8, ptr %1, i32 356
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end5.i, %sw.bb15
  %ctrl.tr.i = phi ptr [ %ctrl, %sw.bb15 ], [ %next_ctrl.0.i, %if.end5.i ]
  %id.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.tr.i, i32 0, i32 8
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %28, label %tailrecurse.i.sw.epilog_crit_edge [
    i32 10029662, label %tailrecurse.i.if.end5.i_crit_edge
    i32 10029663, label %if.then3.i
  ]

tailrecurse.i.if.end5.i_crit_edge:                ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

tailrecurse.i.sw.epilog_crit_edge:                ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then3.i:                                       ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %tailrecurse.i.if.end5.i_crit_edge
  %next_ctrl.0.in.i = phi ptr [ %mpeg_video_h264_b_frame_qp.i, %if.then3.i ], [ %mpeg_video_h264_p_frame_qp.i, %tailrecurse.i.if.end5.i_crit_edge ]
  %30 = ptrtoint ptr %next_ctrl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %next_ctrl.0.i = load ptr, ptr %next_ctrl.0.in.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.tr.i, i32 0, i32 22
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %conv.i = sext i32 %32 to i64
  %call.i = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %next_ctrl.0.i, i64 noundef %conv.i, i64 noundef 51, i64 noundef 1, i64 noundef %conv.i) #15
  br label %tailrecurse.i

sw.epilog:                                        ; preds = %tailrecurse.i.sw.epilog_crit_edge, %sw.bb9, %sw.bb, %do.end6.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end27_crit_edge

entry.do.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vq, align 4
  %switch.tableidx = add i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 11
  br i1 %7, label %switch.hole_check, label %do.end.lor.rhs_crit_edge

do.end.lor.rhs_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

lor.rhs:                                          ; preds = %switch.hole_check.lor.rhs_crit_edge, %do.end.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp22 = icmp eq i32 %6, 14
  %phi.sel = select i1 %cmp22, ptr @.str.213, ptr @.str.214
  br label %lor.end

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1387, %switch.maskindex
  %8 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.lobit.not = icmp eq i16 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs_crit_edge, label %switch.hole_check.lor.end_crit_edge

switch.hole_check.lor.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

switch.hole_check.lor.rhs_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

lor.end:                                          ; preds = %switch.hole_check.lor.end_crit_edge, %lor.rhs
  %9 = phi ptr [ %phi.sel, %lor.rhs ], [ @.str.213, %switch.hole_check.lor.end_crit_edge ]
  %10 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp23 = icmp eq i32 %11, 0
  %cond24 = select i1 %cmp23, ptr @.str.215, ptr @.str.216
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %name, ptr noundef nonnull %9, ptr noundef nonnull %cond24, i32 noundef %11) #18
  br label %do.end27

do.end27:                                         ; preds = %lor.end, %entry.do.end27_crit_edge
  %12 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp28.not = icmp eq i32 %13, 0
  br i1 %cmp28.not, label %if.else62, label %if.then29

if.then29:                                        ; preds = %do.end27
  %14 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vq, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %15, label %if.else [
    i32 2, label %if.then29.if.then53_crit_edge
    i32 10, label %if.then29.if.then53_crit_edge131
    i32 3, label %if.then29.if.then53_crit_edge132
    i32 8, label %if.then29.if.then53_crit_edge133
    i32 5, label %if.then29.if.then53_crit_edge134
    i32 7, label %if.then29.if.then53_crit_edge135
    i32 12, label %if.then29.if.then53_crit_edge136
    i32 14, label %if.then29.if.then53_crit_edge137
  ]

if.then29.if.then53_crit_edge137:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then29.if.then53_crit_edge136:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then29.if.then53_crit_edge135:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then29.if.then53_crit_edge134:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then29.if.then53_crit_edge133:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then29.if.then53_crit_edge132:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then29.if.then53_crit_edge131:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then29.if.then53_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then53:                                        ; preds = %if.then29.if.then53_crit_edge, %if.then29.if.then53_crit_edge131, %if.then29.if.then53_crit_edge132, %if.then29.if.then53_crit_edge133, %if.then29.if.then53_crit_edge134, %if.then29.if.then53_crit_edge135, %if.then29.if.then53_crit_edge136, %if.then29.if.then53_crit_edge137
  %17 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizes, align 4
  %sizeimage_raw = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %sizeimage_raw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizeimage_raw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp54 = icmp ult i32 %18, %20
  br i1 %cmp54, label %if.then53.cleanup_crit_edge, label %if.then53.if.end93_crit_edge

if.then53.if.end93_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %if.then29
  %21 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sizes, align 4
  %sizeimage_encoded = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %sizeimage_encoded to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sizeimage_encoded, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp58 = icmp ult i32 %22, %24
  br i1 %cmp58, label %if.else.cleanup_crit_edge, label %if.else.if.end93_crit_edge

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else62:                                        ; preds = %do.end27
  %25 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %nplanes, align 4
  %26 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vq, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %27, label %if.else89 [
    i32 2, label %if.else62.if.then86_crit_edge
    i32 10, label %if.else62.if.then86_crit_edge138
    i32 3, label %if.else62.if.then86_crit_edge139
    i32 8, label %if.else62.if.then86_crit_edge140
    i32 5, label %if.else62.if.then86_crit_edge141
    i32 7, label %if.else62.if.then86_crit_edge142
    i32 12, label %if.else62.if.then86_crit_edge143
    i32 14, label %if.else62.if.then86_crit_edge144
  ]

if.else62.if.then86_crit_edge144:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.else62.if.then86_crit_edge143:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.else62.if.then86_crit_edge142:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.else62.if.then86_crit_edge141:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.else62.if.then86_crit_edge140:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.else62.if.then86_crit_edge139:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.else62.if.then86_crit_edge138:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.else62.if.then86_crit_edge:                    ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.then86:                                        ; preds = %if.else62.if.then86_crit_edge, %if.else62.if.then86_crit_edge138, %if.else62.if.then86_crit_edge139, %if.else62.if.then86_crit_edge140, %if.else62.if.then86_crit_edge141, %if.else62.if.then86_crit_edge142, %if.else62.if.then86_crit_edge143, %if.else62.if.then86_crit_edge144
  %sizeimage_raw87 = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 12
  br label %if.end93.sink.split

if.else89:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #17
  %sizeimage_encoded90 = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 15
  br label %if.end93.sink.split

if.end93.sink.split:                              ; preds = %if.else89, %if.then86
  %sizeimage_raw87.sink = phi ptr [ %sizeimage_raw87, %if.then86 ], [ %sizeimage_encoded90, %if.else89 ]
  %29 = ptrtoint ptr %sizeimage_raw87.sink to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sizeimage_raw87.sink, align 4
  %31 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sizes, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end93.sink.split, %if.else.if.end93_crit_edge, %if.then53.if.end93_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.else.cleanup_crit_edge, %if.then53.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end93 ], [ -22, %if.then53.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge55
    i32 3, label %entry.if.then_crit_edge56
    i32 8, label %entry.if.then_crit_edge57
    i32 5, label %entry.if.then_crit_edge58
    i32 7, label %entry.if.then_crit_edge59
    i32 12, label %entry.if.then_crit_edge60
    i32 14, label %entry.if.then_crit_edge61
  ]

entry.if.then_crit_edge61:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge55, %entry.if.then_crit_edge56, %entry.if.then_crit_edge57, %entry.if.then_crit_edge58, %entry.if.then_crit_edge59, %entry.if.then_crit_edge60, %entry.if.then_crit_edge61
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %9 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %field, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %10, label %do.end [
    i32 0, label %if.end.thread
    i32 1, label %if.then.cleanup_crit_edge
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %mcu_channel_id = getelementptr inbounds %struct.allegro_channel, ptr %3, i32 0, i32 61
  %13 = ptrtoint ptr %mcu_channel_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mcu_channel_id, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef %name, i32 noundef %14) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.thread, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.thread ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_start_streaming(ptr noundef %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end25_crit_edge

entry.do.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end25

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q, align 4
  %switch.tableidx = add i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 11
  br i1 %7, label %switch.hole_check, label %do.end.lor.rhs_crit_edge

do.end.lor.rhs_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

lor.rhs:                                          ; preds = %switch.hole_check.lor.rhs_crit_edge, %do.end.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp22 = icmp eq i32 %6, 14
  %phi.sel = select i1 %cmp22, ptr @.str.213, ptr @.str.214
  br label %lor.end

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1387, %switch.maskindex
  %8 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.lobit.not = icmp eq i16 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs_crit_edge, label %switch.hole_check.lor.end_crit_edge

switch.hole_check.lor.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

switch.hole_check.lor.rhs_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

lor.end:                                          ; preds = %switch.hole_check.lor.end_crit_edge, %lor.rhs
  %9 = phi ptr [ %phi.sel, %lor.rhs ], [ @.str.213, %switch.hole_check.lor.end_crit_edge ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef %name, ptr noundef nonnull %9) #18
  br label %do.end25

do.end25:                                         ; preds = %lor.end, %entry.do.end25_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_update_start_streaming_state(ptr noundef %11, ptr noundef %q) #15
  %12 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.277)
  switch i32 %13, label %if.else [
    i32 2, label %do.end25.if.then49_crit_edge
    i32 10, label %do.end25.if.then49_crit_edge72
    i32 3, label %do.end25.if.then49_crit_edge73
    i32 8, label %do.end25.if.then49_crit_edge74
    i32 5, label %do.end25.if.then49_crit_edge75
    i32 7, label %do.end25.if.then49_crit_edge76
    i32 12, label %do.end25.if.then49_crit_edge77
    i32 14, label %do.end25.if.then49_crit_edge78
  ]

do.end25.if.then49_crit_edge78:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

do.end25.if.then49_crit_edge77:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

do.end25.if.then49_crit_edge76:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

do.end25.if.then49_crit_edge75:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

do.end25.if.then49_crit_edge74:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

do.end25.if.then49_crit_edge73:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

do.end25.if.then49_crit_edge72:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

do.end25.if.then49_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

if.then49:                                        ; preds = %do.end25.if.then49_crit_edge, %do.end25.if.then49_crit_edge72, %do.end25.if.then49_crit_edge73, %do.end25.if.then49_crit_edge74, %do.end25.if.then49_crit_edge75, %do.end25.if.then49_crit_edge76, %do.end25.if.then49_crit_edge77, %do.end25.if.then49_crit_edge78
  %osequence = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 13
  br label %if.end50

if.else:                                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  %csequence = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 16
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then49
  %csequence.sink = phi ptr [ %csequence, %if.else ], [ %osequence, %if.then49 ]
  %15 = ptrtoint ptr %csequence.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %csequence.sink, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @allegro_stop_streaming(ptr noundef %q) #2 align 64 {
entry:
  %eos_event.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end26_crit_edge

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q, align 4
  %switch.tableidx = add i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 13
  br i1 %7, label %switch.lookup, label %do.end.lor.end_crit_edge

do.end.lor.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.allegro_stop_streaming, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %lor.end

lor.end:                                          ; preds = %switch.lookup, %do.end.lor.end_crit_edge
  %9 = phi ptr [ @.str.214, %do.end.lor.end_crit_edge ], [ %switch.load, %switch.lookup ]
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef %name, ptr noundef nonnull %9) #18
  br label %do.end26

do.end26:                                         ; preds = %lor.end, %entry.do.end26_crit_edge
  %10 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %11, label %if.else [
    i32 2, label %do.end26.if.then50_crit_edge
    i32 10, label %do.end26.if.then50_crit_edge213
    i32 3, label %do.end26.if.then50_crit_edge214
    i32 8, label %do.end26.if.then50_crit_edge215
    i32 5, label %do.end26.if.then50_crit_edge216
    i32 7, label %do.end26.if.then50_crit_edge217
    i32 12, label %do.end26.if.then50_crit_edge218
    i32 14, label %do.end26.if.then50_crit_edge219
  ]

do.end26.if.then50_crit_edge219:                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

do.end26.if.then50_crit_edge218:                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

do.end26.if.then50_crit_edge217:                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

do.end26.if.then50_crit_edge216:                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

do.end26.if.then50_crit_edge215:                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

do.end26.if.then50_crit_edge214:                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

do.end26.if.then50_crit_edge213:                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

do.end26.if.then50_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

if.then50:                                        ; preds = %do.end26.if.then50_crit_edge, %do.end26.if.then50_crit_edge213, %do.end26.if.then50_crit_edge214, %do.end26.if.then50_crit_edge215, %do.end26.if.then50_crit_edge216, %do.end26.if.then50_crit_edge217, %do.end26.if.then50_crit_edge218, %do.end26.if.then50_crit_edge219
  %shadow_list_lock = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %shadow_list_lock, i32 noundef 0) #15
  %source_shadow_list = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 64
  %13 = ptrtoint ptr %source_shadow_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %source_shadow_list, align 4
  %cmp58.not195 = icmp eq ptr %14, %source_shadow_list
  br i1 %cmp58.not195, label %if.then50.for.end_crit_edge, label %if.then50.for.body_crit_edge

if.then50.for.body_crit_edge:                     ; preds = %if.then50
  br label %for.body

if.then50.for.end_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then50.for.body_crit_edge
  %.pn184.in196 = phi ptr [ %.pn184, %list_del.exit.for.body_crit_edge ], [ %14, %if.then50.for.body_crit_edge ]
  %shadow.0 = getelementptr i8, ptr %.pn184.in196, i32 -744
  %15 = ptrtoint ptr %.pn184.in196 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn184 = load ptr, ptr %.pn184.in196, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn184.in196) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn184.in196, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn184.in196 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn184.in196, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %22 = ptrtoint ptr %.pn184.in196 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn184.in196, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn184.in196, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %shadow.0, i32 noundef 6) #15
  %cmp58.not = icmp eq ptr %.pn184, %source_shadow_list
  br i1 %cmp58.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.then50.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %shadow_list_lock) #15
  %m2m_ctx = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 1, i32 10
  %24 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i198 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %25, i32 0, i32 8
  %call.i199 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i198) #15
  %tobool.not200 = icmp eq ptr %call.i199, null
  br i1 %tobool.not200, label %for.end.if.end101_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.if.end101_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %call.i201 = phi ptr [ %call.i, %while.body.while.body_crit_edge ], [ %call.i199, %for.end.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i201, i32 noundef 6) #15
  %26 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %27, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.body.if.end101_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.if.end101_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.else:                                          ; preds = %do.end26
  %shadow_list_lock67 = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %shadow_list_lock67, i32 noundef 0) #15
  %stream_shadow_list = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 65
  %28 = ptrtoint ptr %stream_shadow_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream_shadow_list, align 4
  %cmp80.not202 = icmp eq ptr %29, %stream_shadow_list
  br i1 %cmp80.not202, label %if.else.for.end92_crit_edge, label %if.else.for.body82_crit_edge

if.else.for.body82_crit_edge:                     ; preds = %if.else
  br label %for.body82

if.else.for.end92_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end92

for.body82:                                       ; preds = %list_del.exit192.for.body82_crit_edge, %if.else.for.body82_crit_edge
  %.pn.in203 = phi ptr [ %.pn, %list_del.exit192.for.body82_crit_edge ], [ %29, %if.else.for.body82_crit_edge ]
  %shadow.1 = getelementptr i8, ptr %.pn.in203, i32 -744
  %30 = ptrtoint ptr %.pn.in203 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn.in203, align 8
  %call.i.i187 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in203) #15
  br i1 %call.i.i187, label %if.end.i.i190, label %for.body82.list_del.exit192_crit_edge

for.body82.list_del.exit192_crit_edge:            ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit192

if.end.i.i190:                                    ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i188 = getelementptr inbounds %struct.list_head, ptr %.pn.in203, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i188 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i188, align 4
  %33 = ptrtoint ptr %.pn.in203 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn.in203, align 4
  %prev1.i.i.i189 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i189, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit192

list_del.exit192:                                 ; preds = %if.end.i.i190, %for.body82.list_del.exit192_crit_edge
  %37 = ptrtoint ptr %.pn.in203 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in203, align 4
  %prev.i191 = getelementptr inbounds %struct.list_head, ptr %.pn.in203, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i191 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i191, align 4
  tail call void @vb2_buffer_done(ptr noundef %shadow.1, i32 noundef 6) #15
  %cmp80.not = icmp eq ptr %.pn, %stream_shadow_list
  br i1 %cmp80.not, label %list_del.exit192.for.end92_crit_edge, label %list_del.exit192.for.body82_crit_edge

list_del.exit192.for.body82_crit_edge:            ; preds = %list_del.exit192
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body82

list_del.exit192.for.end92_crit_edge:             ; preds = %list_del.exit192
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end92

for.end92:                                        ; preds = %list_del.exit192.for.end92_crit_edge, %if.else.for.end92_crit_edge
  tail call void @mutex_unlock(ptr noundef %shadow_list_lock67) #15
  tail call fastcc void @allegro_destroy_channel(ptr noundef %1)
  %m2m_ctx96 = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 1, i32 10
  %39 = ptrtoint ptr %m2m_ctx96 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m2m_ctx96, align 4
  %cap_q_ctx.i205 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %40, i32 0, i32 7
  %call.i193206 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i205) #15
  %tobool98.not207 = icmp eq ptr %call.i193206, null
  br i1 %tobool98.not207, label %for.end92.if.end101_crit_edge, label %for.end92.while.body99_crit_edge

for.end92.while.body99_crit_edge:                 ; preds = %for.end92
  br label %while.body99

for.end92.if.end101_crit_edge:                    ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

while.body99:                                     ; preds = %while.body99.while.body99_crit_edge, %for.end92.while.body99_crit_edge
  %call.i193208 = phi ptr [ %call.i193, %while.body99.while.body99_crit_edge ], [ %call.i193206, %for.end92.while.body99_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i193208, i32 noundef 6) #15
  %41 = ptrtoint ptr %m2m_ctx96 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %m2m_ctx96, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %42, i32 0, i32 7
  %call.i193 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #15
  %tobool98.not = icmp eq ptr %call.i193, null
  br i1 %tobool98.not, label %while.body99.if.end101_crit_edge, label %while.body99.while.body99_crit_edge

while.body99.while.body99_crit_edge:              ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body99

while.body99.if.end101_crit_edge:                 ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.end101:                                        ; preds = %while.body99.if.end101_crit_edge, %for.end92.if.end101_crit_edge, %while.body.if.end101_crit_edge, %for.end.if.end101_crit_edge
  %m2m_ctx103 = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 1, i32 10
  %43 = ptrtoint ptr %m2m_ctx103 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %m2m_ctx103, align 4
  tail call void @v4l2_m2m_update_stop_streaming_state(ptr noundef %44, ptr noundef %q) #15
  %45 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %q, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.279)
  switch i32 %46, label %if.end101.if.end131_crit_edge [
    i32 2, label %if.end101.land.lhs.true_crit_edge
    i32 10, label %if.end101.land.lhs.true_crit_edge220
    i32 3, label %if.end101.land.lhs.true_crit_edge221
    i32 8, label %if.end101.land.lhs.true_crit_edge222
    i32 5, label %if.end101.land.lhs.true_crit_edge223
    i32 7, label %if.end101.land.lhs.true_crit_edge224
    i32 12, label %if.end101.land.lhs.true_crit_edge225
    i32 14, label %if.end101.land.lhs.true_crit_edge226
  ]

if.end101.land.lhs.true_crit_edge226:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end101.land.lhs.true_crit_edge225:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end101.land.lhs.true_crit_edge224:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end101.land.lhs.true_crit_edge223:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end101.land.lhs.true_crit_edge222:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end101.land.lhs.true_crit_edge221:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end101.land.lhs.true_crit_edge220:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end101.land.lhs.true_crit_edge:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.end101.if.end131_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end131

land.lhs.true:                                    ; preds = %if.end101.land.lhs.true_crit_edge, %if.end101.land.lhs.true_crit_edge220, %if.end101.land.lhs.true_crit_edge221, %if.end101.land.lhs.true_crit_edge222, %if.end101.land.lhs.true_crit_edge223, %if.end101.land.lhs.true_crit_edge224, %if.end101.land.lhs.true_crit_edge225, %if.end101.land.lhs.true_crit_edge226
  %48 = ptrtoint ptr %m2m_ctx103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %m2m_ctx103, align 4
  %has_stopped.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %has_stopped.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_stopped.i, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.i.not = icmp eq i8 %51, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end131_crit_edge, label %if.then130

land.lhs.true.if.end131_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end131

if.then130:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %eos_event.i) #15
  %52 = call ptr @memset(ptr %eos_event.i, i32 0, i32 136)
  %53 = ptrtoint ptr %eos_event.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %eos_event.i, align 8
  %fh.i = getelementptr inbounds %struct.allegro_channel, ptr %1, i32 0, i32 1
  call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull %eos_event.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %eos_event.i) #15
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %land.lhs.true.if.end131_crit_edge, %if.end101.if.end131_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @allegro_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  %eos_event.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %5, label %land.lhs.true [
    i32 2, label %entry.if.end_crit_edge
    i32 10, label %entry.if.end_crit_edge56
    i32 3, label %entry.if.end_crit_edge57
    i32 8, label %entry.if.end_crit_edge58
    i32 5, label %entry.if.end_crit_edge59
    i32 7, label %entry.if.end_crit_edge60
    i32 12, label %entry.if.end_crit_edge61
    i32 14, label %entry.if.end_crit_edge62
  ]

entry.if.end_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true23, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true23:                                  ; preds = %land.lhs.true
  %m2m_ctx = getelementptr inbounds %struct.allegro_channel, ptr %3, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %is_draining.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %is_draining.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_draining.i, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true23.if.end_crit_edge, label %v4l2_m2m_dst_buf_is_last.exit

land.lhs.true23.if.end_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

v4l2_m2m_dst_buf_is_last.exit:                    ; preds = %land.lhs.true23
  %next_buf_last.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %next_buf_last.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %next_buf_last.i, align 4, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.i.not = icmp eq i8 %13, 0
  br i1 %tobool1.i.not, label %v4l2_m2m_dst_buf_is_last.exit.if.end_crit_edge, label %for.cond.preheader

v4l2_m2m_dst_buf_is_last.exit.if.end_crit_edge:   ; preds = %v4l2_m2m_dst_buf_is_last.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader:                               ; preds = %v4l2_m2m_dst_buf_is_last.exit
  %num_planes = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2554.not = icmp eq i32 %15, 0
  br i1 %cmp2554.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.vb2_set_plane_payload.exit_crit_edge

for.cond.preheader.vb2_set_plane_payload.exit_crit_edge: ; preds = %for.cond.preheader
  br label %vb2_set_plane_payload.exit

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

vb2_set_plane_payload.exit:                       ; preds = %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge, %for.cond.preheader.vb2_set_plane_payload.exit_crit_edge
  %i.055 = phi i32 [ %inc, %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge ], [ 0, %for.cond.preheader.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.055, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bytesused.i, align 4
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %vb2_set_plane_payload.exit.for.end_crit_edge, label %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge

vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit.for.end_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %vb2_set_plane_payload.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %17 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field, align 4
  %csequence = getelementptr inbounds %struct.allegro_channel, ptr %3, i32 0, i32 16
  %18 = ptrtoint ptr %csequence to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %csequence, align 4
  %inc26 = add i32 %19, 1
  store i32 %inc26, ptr %csequence, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 4
  %20 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sequence, align 8
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_last_buffer_done(ptr noundef %22, ptr noundef %vb) #15
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %eos_event.i) #15
  %23 = call ptr @memset(ptr %eos_event.i, i32 0, i32 136)
  %24 = ptrtoint ptr %eos_event.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %eos_event.i, align 8
  %fh.i = getelementptr inbounds %struct.allegro_channel, ptr %3, i32 0, i32 1
  call void @v4l2_event_queue_fh(ptr noundef %fh.i, ptr noundef nonnull %eos_event.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %eos_event.i) #15
  br label %cleanup

if.end:                                           ; preds = %v4l2_m2m_dst_buf_is_last.exit.if.end_crit_edge, %land.lhs.true23.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge56, %entry.if.end_crit_edge57, %entry.if.end_crit_edge58, %entry.if.end_crit_edge59, %entry.if.end_crit_edge60, %entry.if.end_crit_edge61, %entry.if.end_crit_edge62
  %m2m_ctx30 = getelementptr inbounds %struct.allegro_channel, ptr %3, i32 0, i32 1, i32 10
  %25 = ptrtoint ptr %m2m_ctx30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx30, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %26, ptr noundef %vb) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_update_start_streaming_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allegro_destroy_channel(ptr noundef %channel) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.mcu_msg_destroy_channel, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %mcu_channel_id.i = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 61
  %2 = ptrtoint ptr %mcu_channel_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcu_channel_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, -1
  br i1 %cmp.i.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %entry
  %completion = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 68
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #15
  %5 = getelementptr inbounds %struct.mcu_msg_header, ptr %msg.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mcu_msg_destroy_channel, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %msg.i, align 4
  %fw_info.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_info.i, align 8
  %mailbox_version.i = getelementptr inbounds %struct.fw_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %mailbox_version.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mailbox_version.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %5, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %6, align 4
  %mbox_command.i = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %mbox_command.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbox_command.i, align 4
  %call.i = call fastcc i32 @allegro_mbox_send(ptr noundef %15, ptr noundef nonnull %msg.i) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #15
  %call5 = call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 500) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %mcu_channel_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mcu_channel_id.i, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %name, i32 noundef %17) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %18 = ptrtoint ptr %mcu_channel_id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %mcu_channel_id.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %buffers_intermediate.i = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 63
  %19 = ptrtoint ptr %buffers_intermediate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffers_intermediate.i, align 4
  %cmp.not21.i.i = icmp eq ptr %20, %buffers_intermediate.i
  br i1 %cmp.not21.i.i, label %if.end9.destroy_intermediate_buffers.exit_crit_edge, label %for.body.lr.ph.i.i

if.end9.destroy_intermediate_buffers.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_intermediate_buffers.exit

for.body.lr.ph.i.i:                               ; preds = %if.end9
  %21 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel, align 4
  %plat_dev.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %22, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %allegro_free_buffer.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn.in22.i.i = phi ptr [ %20, %for.body.lr.ph.i.i ], [ %.pn.i.i, %allegro_free_buffer.exit.i.i.for.body.i.i_crit_edge ]
  %buffer.0.i.i = getelementptr i8, ptr %.pn.in22.i.i, i32 -12
  %23 = ptrtoint ptr %.pn.in22.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i.i = load ptr, ptr %.pn.in22.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in22.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %.pn.in22.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.in22.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %30 = ptrtoint ptr %.pn.in22.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in22.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %buffer.0.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer.0.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %list_del.exit.i.i.allegro_free_buffer.exit.i.i_crit_edge, label %if.then.i.i.i

list_del.exit.i.i.allegro_free_buffer.exit.i.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_free_buffer.exit.i.i

if.then.i.i.i:                                    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %plat_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %plat_dev.i.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %size.i.i.i = getelementptr i8, ptr %.pn.in22.i.i, i32 -4
  %36 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i.i.i, align 4
  %paddr.i.i.i = getelementptr i8, ptr %.pn.in22.i.i, i32 -8
  %38 = ptrtoint ptr %paddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %paddr.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i.i.i, i32 noundef %37, ptr noundef nonnull %33, i32 noundef %39, i32 noundef 0) #15
  %40 = ptrtoint ptr %buffer.0.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %buffer.0.i.i, align 4
  %41 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %size.i.i.i, align 4
  br label %allegro_free_buffer.exit.i.i

allegro_free_buffer.exit.i.i:                     ; preds = %if.then.i.i.i, %list_del.exit.i.i.allegro_free_buffer.exit.i.i_crit_edge
  call void @kfree(ptr noundef %buffer.0.i.i) #15
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %buffers_intermediate.i
  br i1 %cmp.not.i.i, label %allegro_free_buffer.exit.i.i.destroy_intermediate_buffers.exit_crit_edge, label %allegro_free_buffer.exit.i.i.for.body.i.i_crit_edge

allegro_free_buffer.exit.i.i.for.body.i.i_crit_edge: ; preds = %allegro_free_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

allegro_free_buffer.exit.i.i.destroy_intermediate_buffers.exit_crit_edge: ; preds = %allegro_free_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_intermediate_buffers.exit

destroy_intermediate_buffers.exit:                ; preds = %allegro_free_buffer.exit.i.i.destroy_intermediate_buffers.exit_crit_edge, %if.end9.destroy_intermediate_buffers.exit_crit_edge
  %buffers_reference.i = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 62
  %42 = ptrtoint ptr %buffers_reference.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffers_reference.i, align 4
  %cmp.not21.i.i51 = icmp eq ptr %43, %buffers_reference.i
  br i1 %cmp.not21.i.i51, label %destroy_intermediate_buffers.exit.destroy_reference_buffers.exit_crit_edge, label %for.body.lr.ph.i.i53

destroy_intermediate_buffers.exit.destroy_reference_buffers.exit_crit_edge: ; preds = %destroy_intermediate_buffers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_reference_buffers.exit

for.body.lr.ph.i.i53:                             ; preds = %destroy_intermediate_buffers.exit
  %44 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %channel, align 4
  %plat_dev.i.i.i52 = getelementptr inbounds %struct.allegro_dev, ptr %45, i32 0, i32 3
  br label %for.body.i.i58

for.body.i.i58:                                   ; preds = %allegro_free_buffer.exit.i.i70.for.body.i.i58_crit_edge, %for.body.lr.ph.i.i53
  %.pn.in22.i.i54 = phi ptr [ %43, %for.body.lr.ph.i.i53 ], [ %.pn.i.i56, %allegro_free_buffer.exit.i.i70.for.body.i.i58_crit_edge ]
  %buffer.0.i.i55 = getelementptr i8, ptr %.pn.in22.i.i54, i32 -12
  %46 = ptrtoint ptr %.pn.in22.i.i54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i.i56 = load ptr, ptr %.pn.in22.i.i54, align 4
  %call.i.i.i.i57 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in22.i.i54) #15
  br i1 %call.i.i.i.i57, label %if.end.i.i.i.i61, label %for.body.i.i58.list_del.exit.i.i64_crit_edge

for.body.i.i58.list_del.exit.i.i64_crit_edge:     ; preds = %for.body.i.i58
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i64

if.end.i.i.i.i61:                                 ; preds = %for.body.i.i58
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %.pn.in22.i.i54, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i.i59, align 4
  %49 = ptrtoint ptr %.pn.in22.i.i54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %.pn.in22.i.i54, align 4
  %prev1.i.i.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i.i60, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit.i.i64

list_del.exit.i.i64:                              ; preds = %if.end.i.i.i.i61, %for.body.i.i58.list_del.exit.i.i64_crit_edge
  %53 = ptrtoint ptr %.pn.in22.i.i54 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in22.i.i54, align 4
  %prev.i.i.i62 = getelementptr inbounds %struct.list_head, ptr %.pn.in22.i.i54, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i62, align 4
  %55 = ptrtoint ptr %buffer.0.i.i55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer.0.i.i55, align 4
  %tobool.not.i.i.i63 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i63, label %list_del.exit.i.i64.allegro_free_buffer.exit.i.i70_crit_edge, label %if.then.i.i.i68

list_del.exit.i.i64.allegro_free_buffer.exit.i.i70_crit_edge: ; preds = %list_del.exit.i.i64
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_free_buffer.exit.i.i70

if.then.i.i.i68:                                  ; preds = %list_del.exit.i.i64
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %plat_dev.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %plat_dev.i.i.i52, align 4
  %dev1.i.i.i65 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  %size.i.i.i66 = getelementptr i8, ptr %.pn.in22.i.i54, i32 -4
  %59 = ptrtoint ptr %size.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size.i.i.i66, align 4
  %paddr.i.i.i67 = getelementptr i8, ptr %.pn.in22.i.i54, i32 -8
  %61 = ptrtoint ptr %paddr.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %paddr.i.i.i67, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i.i.i65, i32 noundef %60, ptr noundef nonnull %56, i32 noundef %62, i32 noundef 0) #15
  %63 = ptrtoint ptr %buffer.0.i.i55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %buffer.0.i.i55, align 4
  %64 = ptrtoint ptr %size.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %size.i.i.i66, align 4
  br label %allegro_free_buffer.exit.i.i70

allegro_free_buffer.exit.i.i70:                   ; preds = %if.then.i.i.i68, %list_del.exit.i.i64.allegro_free_buffer.exit.i.i70_crit_edge
  call void @kfree(ptr noundef %buffer.0.i.i55) #15
  %cmp.not.i.i69 = icmp eq ptr %.pn.i.i56, %buffers_reference.i
  br i1 %cmp.not.i.i69, label %allegro_free_buffer.exit.i.i70.destroy_reference_buffers.exit_crit_edge, label %allegro_free_buffer.exit.i.i70.for.body.i.i58_crit_edge

allegro_free_buffer.exit.i.i70.for.body.i.i58_crit_edge: ; preds = %allegro_free_buffer.exit.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i58

allegro_free_buffer.exit.i.i70.destroy_reference_buffers.exit_crit_edge: ; preds = %allegro_free_buffer.exit.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_reference_buffers.exit

destroy_reference_buffers.exit:                   ; preds = %allegro_free_buffer.exit.i.i70.destroy_reference_buffers.exit_crit_edge, %destroy_intermediate_buffers.exit.destroy_reference_buffers.exit_crit_edge
  %mpeg_video_h264_profile = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 40
  %65 = ptrtoint ptr %mpeg_video_h264_profile to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mpeg_video_h264_profile, align 4
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %destroy_reference_buffers.exit.v4l2_ctrl_grab.exit_crit_edge, label %if.end.i

destroy_reference_buffers.exit.v4l2_ctrl_grab.exit_crit_edge: ; preds = %destroy_reference_buffers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit

if.end.i:                                         ; preds = %destroy_reference_buffers.exit
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lock.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %70, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %66, i1 noundef zeroext false) #15
  %71 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %handler.i.i, align 8
  %lock.i6.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %lock.i6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lock.i6.i, align 4
  call void @mutex_unlock(ptr noundef %74) #15
  br label %v4l2_ctrl_grab.exit

v4l2_ctrl_grab.exit:                              ; preds = %if.end.i, %destroy_reference_buffers.exit.v4l2_ctrl_grab.exit_crit_edge
  %mpeg_video_h264_level = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 41
  %75 = ptrtoint ptr %mpeg_video_h264_level to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mpeg_video_h264_level, align 4
  %tobool.not.i71 = icmp eq ptr %76, null
  br i1 %tobool.not.i71, label %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit76_crit_edge, label %if.end.i75

v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit76_crit_edge: ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit76

if.end.i75:                                       ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i72 = getelementptr inbounds %struct.v4l2_ctrl, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %handler.i.i72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %handler.i.i72, align 8
  %lock.i.i73 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %lock.i.i73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lock.i.i73, align 4
  call void @mutex_lock_nested(ptr noundef %80, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %76, i1 noundef zeroext false) #15
  %81 = ptrtoint ptr %handler.i.i72 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %handler.i.i72, align 8
  %lock.i6.i74 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %lock.i6.i74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lock.i6.i74, align 4
  call void @mutex_unlock(ptr noundef %84) #15
  br label %v4l2_ctrl_grab.exit76

v4l2_ctrl_grab.exit76:                            ; preds = %if.end.i75, %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit76_crit_edge
  %mpeg_video_h264_i_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 42
  %85 = ptrtoint ptr %mpeg_video_h264_i_frame_qp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mpeg_video_h264_i_frame_qp, align 4
  %tobool.not.i77 = icmp eq ptr %86, null
  br i1 %tobool.not.i77, label %v4l2_ctrl_grab.exit76.v4l2_ctrl_grab.exit82_crit_edge, label %if.end.i81

v4l2_ctrl_grab.exit76.v4l2_ctrl_grab.exit82_crit_edge: ; preds = %v4l2_ctrl_grab.exit76
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit82

if.end.i81:                                       ; preds = %v4l2_ctrl_grab.exit76
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i78 = getelementptr inbounds %struct.v4l2_ctrl, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %handler.i.i78 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %handler.i.i78, align 8
  %lock.i.i79 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %lock.i.i79 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lock.i.i79, align 4
  call void @mutex_lock_nested(ptr noundef %90, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %86, i1 noundef zeroext false) #15
  %91 = ptrtoint ptr %handler.i.i78 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %handler.i.i78, align 8
  %lock.i6.i80 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %lock.i6.i80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lock.i6.i80, align 4
  call void @mutex_unlock(ptr noundef %94) #15
  br label %v4l2_ctrl_grab.exit82

v4l2_ctrl_grab.exit82:                            ; preds = %if.end.i81, %v4l2_ctrl_grab.exit76.v4l2_ctrl_grab.exit82_crit_edge
  %mpeg_video_h264_max_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 43
  %95 = ptrtoint ptr %mpeg_video_h264_max_qp to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mpeg_video_h264_max_qp, align 4
  %tobool.not.i83 = icmp eq ptr %96, null
  br i1 %tobool.not.i83, label %v4l2_ctrl_grab.exit82.v4l2_ctrl_grab.exit88_crit_edge, label %if.end.i87

v4l2_ctrl_grab.exit82.v4l2_ctrl_grab.exit88_crit_edge: ; preds = %v4l2_ctrl_grab.exit82
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit88

if.end.i87:                                       ; preds = %v4l2_ctrl_grab.exit82
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i84 = getelementptr inbounds %struct.v4l2_ctrl, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %handler.i.i84 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %handler.i.i84, align 8
  %lock.i.i85 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %lock.i.i85 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lock.i.i85, align 4
  call void @mutex_lock_nested(ptr noundef %100, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %96, i1 noundef zeroext false) #15
  %101 = ptrtoint ptr %handler.i.i84 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %handler.i.i84, align 8
  %lock.i6.i86 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %lock.i6.i86 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lock.i6.i86, align 4
  call void @mutex_unlock(ptr noundef %104) #15
  br label %v4l2_ctrl_grab.exit88

v4l2_ctrl_grab.exit88:                            ; preds = %if.end.i87, %v4l2_ctrl_grab.exit82.v4l2_ctrl_grab.exit88_crit_edge
  %mpeg_video_h264_min_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 44
  %105 = ptrtoint ptr %mpeg_video_h264_min_qp to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mpeg_video_h264_min_qp, align 4
  %tobool.not.i89 = icmp eq ptr %106, null
  br i1 %tobool.not.i89, label %v4l2_ctrl_grab.exit88.v4l2_ctrl_grab.exit94_crit_edge, label %if.end.i93

v4l2_ctrl_grab.exit88.v4l2_ctrl_grab.exit94_crit_edge: ; preds = %v4l2_ctrl_grab.exit88
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit94

if.end.i93:                                       ; preds = %v4l2_ctrl_grab.exit88
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %handler.i.i90 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %handler.i.i90, align 8
  %lock.i.i91 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %lock.i.i91 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lock.i.i91, align 4
  call void @mutex_lock_nested(ptr noundef %110, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %106, i1 noundef zeroext false) #15
  %111 = ptrtoint ptr %handler.i.i90 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %handler.i.i90, align 8
  %lock.i6.i92 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %lock.i6.i92 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %lock.i6.i92, align 4
  call void @mutex_unlock(ptr noundef %114) #15
  br label %v4l2_ctrl_grab.exit94

v4l2_ctrl_grab.exit94:                            ; preds = %if.end.i93, %v4l2_ctrl_grab.exit88.v4l2_ctrl_grab.exit94_crit_edge
  %mpeg_video_h264_p_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 45
  %115 = ptrtoint ptr %mpeg_video_h264_p_frame_qp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mpeg_video_h264_p_frame_qp, align 4
  %tobool.not.i95 = icmp eq ptr %116, null
  br i1 %tobool.not.i95, label %v4l2_ctrl_grab.exit94.v4l2_ctrl_grab.exit100_crit_edge, label %if.end.i99

v4l2_ctrl_grab.exit94.v4l2_ctrl_grab.exit100_crit_edge: ; preds = %v4l2_ctrl_grab.exit94
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit100

if.end.i99:                                       ; preds = %v4l2_ctrl_grab.exit94
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i96 = getelementptr inbounds %struct.v4l2_ctrl, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %handler.i.i96 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %handler.i.i96, align 8
  %lock.i.i97 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %lock.i.i97 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %lock.i.i97, align 4
  call void @mutex_lock_nested(ptr noundef %120, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %116, i1 noundef zeroext false) #15
  %121 = ptrtoint ptr %handler.i.i96 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %handler.i.i96, align 8
  %lock.i6.i98 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %lock.i6.i98 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %lock.i6.i98, align 4
  call void @mutex_unlock(ptr noundef %124) #15
  br label %v4l2_ctrl_grab.exit100

v4l2_ctrl_grab.exit100:                           ; preds = %if.end.i99, %v4l2_ctrl_grab.exit94.v4l2_ctrl_grab.exit100_crit_edge
  %mpeg_video_h264_b_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 46
  %125 = ptrtoint ptr %mpeg_video_h264_b_frame_qp to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mpeg_video_h264_b_frame_qp, align 4
  %tobool.not.i101 = icmp eq ptr %126, null
  br i1 %tobool.not.i101, label %v4l2_ctrl_grab.exit100.v4l2_ctrl_grab.exit106_crit_edge, label %if.end.i105

v4l2_ctrl_grab.exit100.v4l2_ctrl_grab.exit106_crit_edge: ; preds = %v4l2_ctrl_grab.exit100
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit106

if.end.i105:                                      ; preds = %v4l2_ctrl_grab.exit100
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i102 = getelementptr inbounds %struct.v4l2_ctrl, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %handler.i.i102 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %handler.i.i102, align 8
  %lock.i.i103 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %lock.i.i103 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %lock.i.i103, align 4
  call void @mutex_lock_nested(ptr noundef %130, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %126, i1 noundef zeroext false) #15
  %131 = ptrtoint ptr %handler.i.i102 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %handler.i.i102, align 8
  %lock.i6.i104 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %lock.i6.i104 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %lock.i6.i104, align 4
  call void @mutex_unlock(ptr noundef %134) #15
  br label %v4l2_ctrl_grab.exit106

v4l2_ctrl_grab.exit106:                           ; preds = %if.end.i105, %v4l2_ctrl_grab.exit100.v4l2_ctrl_grab.exit106_crit_edge
  %mpeg_video_hevc_profile = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 47
  %135 = ptrtoint ptr %mpeg_video_hevc_profile to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mpeg_video_hevc_profile, align 4
  %tobool.not.i107 = icmp eq ptr %136, null
  br i1 %tobool.not.i107, label %v4l2_ctrl_grab.exit106.v4l2_ctrl_grab.exit112_crit_edge, label %if.end.i111

v4l2_ctrl_grab.exit106.v4l2_ctrl_grab.exit112_crit_edge: ; preds = %v4l2_ctrl_grab.exit106
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit112

if.end.i111:                                      ; preds = %v4l2_ctrl_grab.exit106
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i108 = getelementptr inbounds %struct.v4l2_ctrl, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %handler.i.i108 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %handler.i.i108, align 8
  %lock.i.i109 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %lock.i.i109 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %lock.i.i109, align 4
  call void @mutex_lock_nested(ptr noundef %140, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %136, i1 noundef zeroext false) #15
  %141 = ptrtoint ptr %handler.i.i108 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %handler.i.i108, align 8
  %lock.i6.i110 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %lock.i6.i110 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %lock.i6.i110, align 4
  call void @mutex_unlock(ptr noundef %144) #15
  br label %v4l2_ctrl_grab.exit112

v4l2_ctrl_grab.exit112:                           ; preds = %if.end.i111, %v4l2_ctrl_grab.exit106.v4l2_ctrl_grab.exit112_crit_edge
  %mpeg_video_hevc_level = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 48
  %145 = ptrtoint ptr %mpeg_video_hevc_level to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mpeg_video_hevc_level, align 4
  %tobool.not.i113 = icmp eq ptr %146, null
  br i1 %tobool.not.i113, label %v4l2_ctrl_grab.exit112.v4l2_ctrl_grab.exit118_crit_edge, label %if.end.i117

v4l2_ctrl_grab.exit112.v4l2_ctrl_grab.exit118_crit_edge: ; preds = %v4l2_ctrl_grab.exit112
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit118

if.end.i117:                                      ; preds = %v4l2_ctrl_grab.exit112
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i114 = getelementptr inbounds %struct.v4l2_ctrl, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %handler.i.i114 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %handler.i.i114, align 8
  %lock.i.i115 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %lock.i.i115 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lock.i.i115, align 4
  call void @mutex_lock_nested(ptr noundef %150, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %146, i1 noundef zeroext false) #15
  %151 = ptrtoint ptr %handler.i.i114 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %handler.i.i114, align 8
  %lock.i6.i116 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %lock.i6.i116 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %lock.i6.i116, align 4
  call void @mutex_unlock(ptr noundef %154) #15
  br label %v4l2_ctrl_grab.exit118

v4l2_ctrl_grab.exit118:                           ; preds = %if.end.i117, %v4l2_ctrl_grab.exit112.v4l2_ctrl_grab.exit118_crit_edge
  %mpeg_video_hevc_tier = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 49
  %155 = ptrtoint ptr %mpeg_video_hevc_tier to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mpeg_video_hevc_tier, align 4
  %tobool.not.i119 = icmp eq ptr %156, null
  br i1 %tobool.not.i119, label %v4l2_ctrl_grab.exit118.v4l2_ctrl_grab.exit124_crit_edge, label %if.end.i123

v4l2_ctrl_grab.exit118.v4l2_ctrl_grab.exit124_crit_edge: ; preds = %v4l2_ctrl_grab.exit118
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit124

if.end.i123:                                      ; preds = %v4l2_ctrl_grab.exit118
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i120 = getelementptr inbounds %struct.v4l2_ctrl, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %handler.i.i120 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %handler.i.i120, align 8
  %lock.i.i121 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %lock.i.i121 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %lock.i.i121, align 4
  call void @mutex_lock_nested(ptr noundef %160, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %156, i1 noundef zeroext false) #15
  %161 = ptrtoint ptr %handler.i.i120 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %handler.i.i120, align 8
  %lock.i6.i122 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %lock.i6.i122 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %lock.i6.i122, align 4
  call void @mutex_unlock(ptr noundef %164) #15
  br label %v4l2_ctrl_grab.exit124

v4l2_ctrl_grab.exit124:                           ; preds = %if.end.i123, %v4l2_ctrl_grab.exit118.v4l2_ctrl_grab.exit124_crit_edge
  %mpeg_video_hevc_i_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 50
  %165 = ptrtoint ptr %mpeg_video_hevc_i_frame_qp to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mpeg_video_hevc_i_frame_qp, align 4
  %tobool.not.i125 = icmp eq ptr %166, null
  br i1 %tobool.not.i125, label %v4l2_ctrl_grab.exit124.v4l2_ctrl_grab.exit130_crit_edge, label %if.end.i129

v4l2_ctrl_grab.exit124.v4l2_ctrl_grab.exit130_crit_edge: ; preds = %v4l2_ctrl_grab.exit124
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit130

if.end.i129:                                      ; preds = %v4l2_ctrl_grab.exit124
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i126 = getelementptr inbounds %struct.v4l2_ctrl, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %handler.i.i126 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %handler.i.i126, align 8
  %lock.i.i127 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %lock.i.i127 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lock.i.i127, align 4
  call void @mutex_lock_nested(ptr noundef %170, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %166, i1 noundef zeroext false) #15
  %171 = ptrtoint ptr %handler.i.i126 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %handler.i.i126, align 8
  %lock.i6.i128 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %lock.i6.i128 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %lock.i6.i128, align 4
  call void @mutex_unlock(ptr noundef %174) #15
  br label %v4l2_ctrl_grab.exit130

v4l2_ctrl_grab.exit130:                           ; preds = %if.end.i129, %v4l2_ctrl_grab.exit124.v4l2_ctrl_grab.exit130_crit_edge
  %mpeg_video_hevc_max_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 51
  %175 = ptrtoint ptr %mpeg_video_hevc_max_qp to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mpeg_video_hevc_max_qp, align 4
  %tobool.not.i131 = icmp eq ptr %176, null
  br i1 %tobool.not.i131, label %v4l2_ctrl_grab.exit130.v4l2_ctrl_grab.exit136_crit_edge, label %if.end.i135

v4l2_ctrl_grab.exit130.v4l2_ctrl_grab.exit136_crit_edge: ; preds = %v4l2_ctrl_grab.exit130
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit136

if.end.i135:                                      ; preds = %v4l2_ctrl_grab.exit130
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i132 = getelementptr inbounds %struct.v4l2_ctrl, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %handler.i.i132 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %handler.i.i132, align 8
  %lock.i.i133 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %lock.i.i133 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %lock.i.i133, align 4
  call void @mutex_lock_nested(ptr noundef %180, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %176, i1 noundef zeroext false) #15
  %181 = ptrtoint ptr %handler.i.i132 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %handler.i.i132, align 8
  %lock.i6.i134 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %lock.i6.i134 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %lock.i6.i134, align 4
  call void @mutex_unlock(ptr noundef %184) #15
  br label %v4l2_ctrl_grab.exit136

v4l2_ctrl_grab.exit136:                           ; preds = %if.end.i135, %v4l2_ctrl_grab.exit130.v4l2_ctrl_grab.exit136_crit_edge
  %mpeg_video_hevc_min_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 52
  %185 = ptrtoint ptr %mpeg_video_hevc_min_qp to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mpeg_video_hevc_min_qp, align 4
  %tobool.not.i137 = icmp eq ptr %186, null
  br i1 %tobool.not.i137, label %v4l2_ctrl_grab.exit136.v4l2_ctrl_grab.exit142_crit_edge, label %if.end.i141

v4l2_ctrl_grab.exit136.v4l2_ctrl_grab.exit142_crit_edge: ; preds = %v4l2_ctrl_grab.exit136
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit142

if.end.i141:                                      ; preds = %v4l2_ctrl_grab.exit136
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i138 = getelementptr inbounds %struct.v4l2_ctrl, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %handler.i.i138 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %handler.i.i138, align 8
  %lock.i.i139 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %lock.i.i139 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %lock.i.i139, align 4
  call void @mutex_lock_nested(ptr noundef %190, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %186, i1 noundef zeroext false) #15
  %191 = ptrtoint ptr %handler.i.i138 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %handler.i.i138, align 8
  %lock.i6.i140 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %lock.i6.i140 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %lock.i6.i140, align 4
  call void @mutex_unlock(ptr noundef %194) #15
  br label %v4l2_ctrl_grab.exit142

v4l2_ctrl_grab.exit142:                           ; preds = %if.end.i141, %v4l2_ctrl_grab.exit136.v4l2_ctrl_grab.exit142_crit_edge
  %mpeg_video_hevc_p_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 53
  %195 = ptrtoint ptr %mpeg_video_hevc_p_frame_qp to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mpeg_video_hevc_p_frame_qp, align 4
  %tobool.not.i143 = icmp eq ptr %196, null
  br i1 %tobool.not.i143, label %v4l2_ctrl_grab.exit142.v4l2_ctrl_grab.exit148_crit_edge, label %if.end.i147

v4l2_ctrl_grab.exit142.v4l2_ctrl_grab.exit148_crit_edge: ; preds = %v4l2_ctrl_grab.exit142
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit148

if.end.i147:                                      ; preds = %v4l2_ctrl_grab.exit142
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i144 = getelementptr inbounds %struct.v4l2_ctrl, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %handler.i.i144 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %handler.i.i144, align 8
  %lock.i.i145 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %lock.i.i145 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %lock.i.i145, align 4
  call void @mutex_lock_nested(ptr noundef %200, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %196, i1 noundef zeroext false) #15
  %201 = ptrtoint ptr %handler.i.i144 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %handler.i.i144, align 8
  %lock.i6.i146 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %lock.i6.i146 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %lock.i6.i146, align 4
  call void @mutex_unlock(ptr noundef %204) #15
  br label %v4l2_ctrl_grab.exit148

v4l2_ctrl_grab.exit148:                           ; preds = %if.end.i147, %v4l2_ctrl_grab.exit142.v4l2_ctrl_grab.exit148_crit_edge
  %mpeg_video_hevc_b_frame_qp = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 54
  %205 = ptrtoint ptr %mpeg_video_hevc_b_frame_qp to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mpeg_video_hevc_b_frame_qp, align 4
  %tobool.not.i149 = icmp eq ptr %206, null
  br i1 %tobool.not.i149, label %v4l2_ctrl_grab.exit148.v4l2_ctrl_grab.exit154_crit_edge, label %if.end.i153

v4l2_ctrl_grab.exit148.v4l2_ctrl_grab.exit154_crit_edge: ; preds = %v4l2_ctrl_grab.exit148
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit154

if.end.i153:                                      ; preds = %v4l2_ctrl_grab.exit148
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i150 = getelementptr inbounds %struct.v4l2_ctrl, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %handler.i.i150 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %handler.i.i150, align 8
  %lock.i.i151 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %lock.i.i151 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %lock.i.i151, align 4
  call void @mutex_lock_nested(ptr noundef %210, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %206, i1 noundef zeroext false) #15
  %211 = ptrtoint ptr %handler.i.i150 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %handler.i.i150, align 8
  %lock.i6.i152 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %lock.i6.i152 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %lock.i6.i152, align 4
  call void @mutex_unlock(ptr noundef %214) #15
  br label %v4l2_ctrl_grab.exit154

v4l2_ctrl_grab.exit154:                           ; preds = %if.end.i153, %v4l2_ctrl_grab.exit148.v4l2_ctrl_grab.exit154_crit_edge
  %mpeg_video_frame_rc_enable = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 55
  %215 = ptrtoint ptr %mpeg_video_frame_rc_enable to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %mpeg_video_frame_rc_enable, align 4
  %tobool.not.i155 = icmp eq ptr %216, null
  br i1 %tobool.not.i155, label %v4l2_ctrl_grab.exit154.v4l2_ctrl_grab.exit160_crit_edge, label %if.end.i159

v4l2_ctrl_grab.exit154.v4l2_ctrl_grab.exit160_crit_edge: ; preds = %v4l2_ctrl_grab.exit154
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit160

if.end.i159:                                      ; preds = %v4l2_ctrl_grab.exit154
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i156 = getelementptr inbounds %struct.v4l2_ctrl, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %handler.i.i156 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %handler.i.i156, align 8
  %lock.i.i157 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %lock.i.i157 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %lock.i.i157, align 4
  call void @mutex_lock_nested(ptr noundef %220, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %216, i1 noundef zeroext false) #15
  %221 = ptrtoint ptr %handler.i.i156 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %handler.i.i156, align 8
  %lock.i6.i158 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %lock.i6.i158 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %lock.i6.i158, align 4
  call void @mutex_unlock(ptr noundef %224) #15
  br label %v4l2_ctrl_grab.exit160

v4l2_ctrl_grab.exit160:                           ; preds = %if.end.i159, %v4l2_ctrl_grab.exit154.v4l2_ctrl_grab.exit160_crit_edge
  %225 = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 56
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %tobool.not.i161 = icmp eq ptr %227, null
  br i1 %tobool.not.i161, label %v4l2_ctrl_grab.exit160.v4l2_ctrl_grab.exit166_crit_edge, label %if.end.i165

v4l2_ctrl_grab.exit160.v4l2_ctrl_grab.exit166_crit_edge: ; preds = %v4l2_ctrl_grab.exit160
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit166

if.end.i165:                                      ; preds = %v4l2_ctrl_grab.exit160
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i162 = getelementptr inbounds %struct.v4l2_ctrl, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %handler.i.i162 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %handler.i.i162, align 8
  %lock.i.i163 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %lock.i.i163 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %lock.i.i163, align 4
  call void @mutex_lock_nested(ptr noundef %231, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %227, i1 noundef zeroext false) #15
  %232 = ptrtoint ptr %handler.i.i162 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %handler.i.i162, align 8
  %lock.i6.i164 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %lock.i6.i164 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %lock.i6.i164, align 4
  call void @mutex_unlock(ptr noundef %235) #15
  br label %v4l2_ctrl_grab.exit166

v4l2_ctrl_grab.exit166:                           ; preds = %if.end.i165, %v4l2_ctrl_grab.exit160.v4l2_ctrl_grab.exit166_crit_edge
  %mpeg_video_bitrate = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 56, i32 1
  %236 = ptrtoint ptr %mpeg_video_bitrate to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %mpeg_video_bitrate, align 4
  %tobool.not.i167 = icmp eq ptr %237, null
  br i1 %tobool.not.i167, label %v4l2_ctrl_grab.exit166.v4l2_ctrl_grab.exit172_crit_edge, label %if.end.i171

v4l2_ctrl_grab.exit166.v4l2_ctrl_grab.exit172_crit_edge: ; preds = %v4l2_ctrl_grab.exit166
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit172

if.end.i171:                                      ; preds = %v4l2_ctrl_grab.exit166
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i168 = getelementptr inbounds %struct.v4l2_ctrl, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %handler.i.i168 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %handler.i.i168, align 8
  %lock.i.i169 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %lock.i.i169 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %lock.i.i169, align 4
  call void @mutex_lock_nested(ptr noundef %241, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %237, i1 noundef zeroext false) #15
  %242 = ptrtoint ptr %handler.i.i168 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %handler.i.i168, align 8
  %lock.i6.i170 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %lock.i6.i170 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %lock.i6.i170, align 4
  call void @mutex_unlock(ptr noundef %245) #15
  br label %v4l2_ctrl_grab.exit172

v4l2_ctrl_grab.exit172:                           ; preds = %if.end.i171, %v4l2_ctrl_grab.exit166.v4l2_ctrl_grab.exit172_crit_edge
  %mpeg_video_bitrate_peak = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 56, i32 2
  %246 = ptrtoint ptr %mpeg_video_bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mpeg_video_bitrate_peak, align 4
  %tobool.not.i173 = icmp eq ptr %247, null
  br i1 %tobool.not.i173, label %v4l2_ctrl_grab.exit172.v4l2_ctrl_grab.exit178_crit_edge, label %if.end.i177

v4l2_ctrl_grab.exit172.v4l2_ctrl_grab.exit178_crit_edge: ; preds = %v4l2_ctrl_grab.exit172
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit178

if.end.i177:                                      ; preds = %v4l2_ctrl_grab.exit172
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i174 = getelementptr inbounds %struct.v4l2_ctrl, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %handler.i.i174 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %handler.i.i174, align 8
  %lock.i.i175 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %lock.i.i175 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %lock.i.i175, align 4
  call void @mutex_lock_nested(ptr noundef %251, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %247, i1 noundef zeroext false) #15
  %252 = ptrtoint ptr %handler.i.i174 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %handler.i.i174, align 8
  %lock.i6.i176 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %lock.i6.i176 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %lock.i6.i176, align 4
  call void @mutex_unlock(ptr noundef %255) #15
  br label %v4l2_ctrl_grab.exit178

v4l2_ctrl_grab.exit178:                           ; preds = %if.end.i177, %v4l2_ctrl_grab.exit172.v4l2_ctrl_grab.exit178_crit_edge
  %mpeg_video_cpb_size = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 57
  %256 = ptrtoint ptr %mpeg_video_cpb_size to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %mpeg_video_cpb_size, align 4
  %tobool.not.i179 = icmp eq ptr %257, null
  br i1 %tobool.not.i179, label %v4l2_ctrl_grab.exit178.v4l2_ctrl_grab.exit184_crit_edge, label %if.end.i183

v4l2_ctrl_grab.exit178.v4l2_ctrl_grab.exit184_crit_edge: ; preds = %v4l2_ctrl_grab.exit178
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit184

if.end.i183:                                      ; preds = %v4l2_ctrl_grab.exit178
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i180 = getelementptr inbounds %struct.v4l2_ctrl, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %handler.i.i180 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %handler.i.i180, align 8
  %lock.i.i181 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %lock.i.i181 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %lock.i.i181, align 4
  call void @mutex_lock_nested(ptr noundef %261, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %257, i1 noundef zeroext false) #15
  %262 = ptrtoint ptr %handler.i.i180 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %handler.i.i180, align 8
  %lock.i6.i182 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %lock.i6.i182 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %lock.i6.i182, align 4
  call void @mutex_unlock(ptr noundef %265) #15
  br label %v4l2_ctrl_grab.exit184

v4l2_ctrl_grab.exit184:                           ; preds = %if.end.i183, %v4l2_ctrl_grab.exit178.v4l2_ctrl_grab.exit184_crit_edge
  %mpeg_video_gop_size = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 58
  %266 = ptrtoint ptr %mpeg_video_gop_size to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %mpeg_video_gop_size, align 4
  %tobool.not.i185 = icmp eq ptr %267, null
  br i1 %tobool.not.i185, label %v4l2_ctrl_grab.exit184.v4l2_ctrl_grab.exit190_crit_edge, label %if.end.i189

v4l2_ctrl_grab.exit184.v4l2_ctrl_grab.exit190_crit_edge: ; preds = %v4l2_ctrl_grab.exit184
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit190

if.end.i189:                                      ; preds = %v4l2_ctrl_grab.exit184
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i186 = getelementptr inbounds %struct.v4l2_ctrl, ptr %267, i32 0, i32 2
  %268 = ptrtoint ptr %handler.i.i186 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %handler.i.i186, align 8
  %lock.i.i187 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %lock.i.i187 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %lock.i.i187, align 4
  call void @mutex_lock_nested(ptr noundef %271, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %267, i1 noundef zeroext false) #15
  %272 = ptrtoint ptr %handler.i.i186 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %handler.i.i186, align 8
  %lock.i6.i188 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %lock.i6.i188 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %lock.i6.i188, align 4
  call void @mutex_unlock(ptr noundef %275) #15
  br label %v4l2_ctrl_grab.exit190

v4l2_ctrl_grab.exit190:                           ; preds = %if.end.i189, %v4l2_ctrl_grab.exit184.v4l2_ctrl_grab.exit190_crit_edge
  %encoder_buffer = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 59
  %276 = ptrtoint ptr %encoder_buffer to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %encoder_buffer, align 4
  %tobool.not.i191 = icmp eq ptr %277, null
  br i1 %tobool.not.i191, label %v4l2_ctrl_grab.exit190.v4l2_ctrl_grab.exit196_crit_edge, label %if.end.i195

v4l2_ctrl_grab.exit190.v4l2_ctrl_grab.exit196_crit_edge: ; preds = %v4l2_ctrl_grab.exit190
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit196

if.end.i195:                                      ; preds = %v4l2_ctrl_grab.exit190
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i192 = getelementptr inbounds %struct.v4l2_ctrl, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %handler.i.i192 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %handler.i.i192, align 8
  %lock.i.i193 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %lock.i.i193 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %lock.i.i193, align 4
  call void @mutex_lock_nested(ptr noundef %281, i32 noundef 0) #15
  call void @__v4l2_ctrl_grab(ptr noundef nonnull %277, i1 noundef zeroext false) #15
  %282 = ptrtoint ptr %handler.i.i192 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %handler.i.i192, align 8
  %lock.i6.i194 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %lock.i6.i194 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %lock.i6.i194, align 4
  call void @mutex_unlock(ptr noundef %285) #15
  br label %v4l2_ctrl_grab.exit196

v4l2_ctrl_grab.exit196:                           ; preds = %if.end.i195, %v4l2_ctrl_grab.exit190.v4l2_ctrl_grab.exit196_crit_edge
  %user_id = getelementptr inbounds %struct.allegro_channel, ptr %channel, i32 0, i32 60
  %286 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %user_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %287)
  %cmp10.not = icmp eq i32 %287, -1
  br i1 %cmp10.not, label %v4l2_ctrl_grab.exit196.if.end14_crit_edge, label %if.then11

v4l2_ctrl_grab.exit196.if.end14_crit_edge:        ; preds = %v4l2_ctrl_grab.exit196
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then11:                                        ; preds = %v4l2_ctrl_grab.exit196
  call void @__sanitizer_cov_trace_pc() #17
  %channel_user_ids = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 19
  call void @_clear_bit(i32 noundef %287, ptr noundef %channel_user_ids) #15
  %288 = ptrtoint ptr %user_id to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 -1, ptr %user_id, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %v4l2_ctrl_grab.exit196.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_update_stop_streaming_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_last_buffer_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #15
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #15
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.230, i32 noundef 32) #15
  %plat_dev = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.231, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @allegro_enum_fmt_vid(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.281)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 842094158, ptr %pixelformat, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp ugt i32 %7, 1
  br i1 %cmp3, label %sw.bb1.return_crit_edge, label %if.end5

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end5:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  %pixelformat9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  br i1 %cmp7, label %if.end10, label %if.then13

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 875967048, ptr %pixelformat9, align 4
  br label %return

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1129727304, ptr %pixelformat9, align 4
  br label %return

return:                                           ; preds = %if.then13, %if.end10, %sw.bb1.return_crit_edge, %if.end, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %if.end10 ], [ 0, %if.then13 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @allegro_g_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  %width = getelementptr i8, ptr %fh, i32 376
  %1 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %width, align 4
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %fmt, align 4
  %height = getelementptr i8, ptr %fh, i32 380
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %height4, align 4
  %colorspace = getelementptr i8, ptr %fh, i32 396
  %7 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %colorspace, align 4
  %colorspace6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %colorspace6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %colorspace6, align 4
  %ycbcr_enc = getelementptr i8, ptr %fh, i32 400
  %10 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ycbcr_enc, align 4
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %12, align 4
  %quantization = getelementptr i8, ptr %fh, i32 404
  %14 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quantization, align 4
  %quantization9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %quantization9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %quantization9, align 4
  %xfer_func = getelementptr i8, ptr %fh, i32 408
  %17 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xfer_func, align 4
  %xfer_func11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %19 = ptrtoint ptr %xfer_func11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %xfer_func11, align 4
  %codec = getelementptr i8, ptr %fh, i32 424
  %20 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %codec, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bytesperline, align 4
  %sizeimage_encoded = getelementptr i8, ptr %fh, i32 428
  %24 = ptrtoint ptr %sizeimage_encoded to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sizeimage_encoded, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @allegro_g_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  %width = getelementptr i8, ptr %fh, i32 376
  %1 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %width, align 4
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %fmt, align 4
  %height = getelementptr i8, ptr %fh, i32 380
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %height4, align 4
  %colorspace = getelementptr i8, ptr %fh, i32 396
  %7 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %colorspace, align 4
  %colorspace6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %colorspace6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %colorspace6, align 4
  %ycbcr_enc = getelementptr i8, ptr %fh, i32 400
  %10 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ycbcr_enc, align 4
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %12, align 4
  %quantization = getelementptr i8, ptr %fh, i32 404
  %14 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quantization, align 4
  %quantization9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %quantization9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %quantization9, align 4
  %xfer_func = getelementptr i8, ptr %fh, i32 408
  %17 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xfer_func, align 4
  %xfer_func11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %19 = ptrtoint ptr %xfer_func11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %xfer_func11, align 4
  %pixelformat = getelementptr i8, ptr %fh, i32 412
  %20 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat, align 4
  %pixelformat13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %pixelformat13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pixelformat13, align 4
  %stride = getelementptr i8, ptr %fh, i32 384
  %23 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stride, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %bytesperline, align 4
  %sizeimage_raw = getelementptr i8, ptr %fh, i32 416
  %26 = ptrtoint ptr %sizeimage_raw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sizeimage_raw, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fh, i32 -4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field.i, align 4
  %1 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fmt.i, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 128) #15
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 3840) #15
  %5 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height.i, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 64) #15
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 2160) #15
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.282)
  switch i32 %12, label %if.then.i [
    i32 1129727304, label %entry.allegro_try_fmt_vid_cap.exit_crit_edge
    i32 875967048, label %entry.allegro_try_fmt_vid_cap.exit_crit_edge18
  ]

entry.allegro_try_fmt_vid_cap.exit_crit_edge18:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_try_fmt_vid_cap.exit

entry.allegro_try_fmt_vid_cap.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_try_fmt_vid_cap.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 875967048, ptr %pixelformat.i, align 4
  br label %allegro_try_fmt_vid_cap.exit

allegro_try_fmt_vid_cap.exit:                     ; preds = %if.then.i, %entry.allegro_try_fmt_vid_cap.exit_crit_edge, %entry.allegro_try_fmt_vid_cap.exit_crit_edge18
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bytesperline.i, align 4
  %sub2.i.i = add nuw nsw i32 %9, 15
  %div310.i.i = lshr i32 %sub2.i.i, 4
  %sub.i.i = shl nuw nsw i32 %4, 4
  %16 = add nuw nsw i32 %sub.i.i, 240
  %mul.i.i = and i32 %16, 130816
  %mul4.i.i = mul nuw nsw i32 %div310.i.i, %mul.i.i
  %add8.i.i = add nuw nsw i32 %mul4.i.i, 384
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add8.i.i, ptr %sizeimage.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %fh, i32 0, i32 10
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx, align 4
  %20 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %19, i32 noundef %21) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %allegro_try_fmt_vid_cap.exit.cleanup_crit_edge, label %if.end5

allegro_try_fmt_vid_cap.exit.cleanup_crit_edge:   ; preds = %allegro_try_fmt_vid_cap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %allegro_try_fmt_vid_cap.exit
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %22 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.not = icmp eq i32 %23, 0
  br i1 %cmp.i.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixelformat.i, align 4
  %codec = getelementptr i8, ptr %fh, i32 424
  %26 = ptrtoint ptr %codec to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %codec, align 4
  tail call fastcc void @allegro_channel_adjust(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %allegro_try_fmt_vid_cap.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %allegro_try_fmt_vid_cap.exit.cleanup_crit_edge ], [ -16, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_s_fmt_vid_out(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field.i, align 4
  %1 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fmt.i, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 128) #15
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 3840) #15
  %5 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height.i, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 64) #15
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 2160) #15
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 842094158, ptr %pixelformat.i, align 4
  %sub.i = add nsw i32 %4, -1
  %or.i = or i32 %sub.i, 31
  %add.i = add nsw i32 %or.i, 1
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %bytesperline.i, align 4
  %mul.i = mul nuw nsw i32 %9, 3
  %mul33.i = mul nsw i32 %mul.i, %add.i
  %div54.i = lshr exact i32 %mul33.i, 1
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div54.i, ptr %sizeimage.i, align 4
  %add.ptr = getelementptr i8, ptr %fh, i32 -4
  %width1 = getelementptr i8, ptr %fh, i32 376
  %14 = ptrtoint ptr %width1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %4, ptr %width1, align 4
  %15 = load i32, ptr %height.i, align 4
  %height3 = getelementptr i8, ptr %fh, i32 380
  %16 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height3, align 4
  %17 = load i32, ptr %bytesperline.i, align 4
  %stride = getelementptr i8, ptr %fh, i32 384
  %18 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %stride, align 4
  %19 = load i32, ptr %sizeimage.i, align 4
  %sizeimage_raw = getelementptr i8, ptr %fh, i32 416
  %20 = ptrtoint ptr %sizeimage_raw to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sizeimage_raw, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %colorspace, align 4
  %colorspace7 = getelementptr i8, ptr %fh, i32 396
  %23 = ptrtoint ptr %colorspace7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %colorspace7, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %ycbcr_enc = getelementptr i8, ptr %fh, i32 400
  %27 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %quantization, align 4
  %quantization10 = getelementptr i8, ptr %fh, i32 404
  %30 = ptrtoint ptr %quantization10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %quantization10, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %31 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xfer_func, align 4
  %xfer_func12 = getelementptr i8, ptr %fh, i32 408
  %33 = ptrtoint ptr %xfer_func12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %xfer_func12, align 4
  tail call fastcc void @allegro_channel_adjust(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @allegro_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  %1 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fmt, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 128)
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 3840)
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 64)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 2160)
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.283)
  switch i32 %12, label %if.then [
    i32 1129727304, label %entry.if.end_crit_edge
    i32 875967048, label %entry.if.end_crit_edge59
  ]

entry.if.end_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 875967048, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge59
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bytesperline, align 4
  %sub2.i = add nuw nsw i32 %9, 15
  %div310.i = lshr i32 %sub2.i, 4
  %sub.i = shl nuw nsw i32 %4, 4
  %16 = add nuw nsw i32 %sub.i, 240
  %mul.i = and i32 %16, 130816
  %mul4.i = mul nuw nsw i32 %div310.i, %mul.i
  %add8.i = add nuw nsw i32 %mul4.i, 384
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add8.i, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @allegro_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  %1 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fmt, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 128)
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 3840)
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 64)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 2160)
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 842094158, ptr %pixelformat, align 4
  %sub = add nsw i32 %4, -1
  %or = or i32 %sub, 31
  %add = add nsw i32 %or, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %bytesperline, align 4
  %mul = mul nuw nsw i32 %9, 3
  %mul33 = mul nsw i32 %mul, %add
  %div54 = lshr exact i32 %mul33, 1
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div54, ptr %sizeimage, align 4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_ioctl_streamon(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type) #2 align 64 {
entry:
  %phys.addr.i.i.i = alloca i32, align 4
  %msg.i.i = alloca %struct.mcu_msg_create_channel, align 4
  %param.i.i = alloca %struct.create_channel_param, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %mcu_channel_id.i.i = getelementptr i8, ptr %1, i32 620
  %4 = ptrtoint ptr %mcu_channel_id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcu_channel_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef %name.i) #18
  br label %if.end2

if.end.i:                                         ; preds = %if.then
  %channel_user_ids.i.i = getelementptr inbounds %struct.allegro_dev, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %channel_user_ids.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_user_ids.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i107.i = icmp eq i32 %7, -1
  %neg.i.i = xor i32 %7, -1
  %8 = tail call i32 @llvm.cttz.i32(i32 %neg.i.i, i1 false) #15, !range !465
  %retval.0.i.i = select i1 %cmp.i107.i, i32 -16, i32 %8
  %user_id.i = getelementptr i8, ptr %1, i32 616
  %9 = ptrtoint ptr %user_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i.i, ptr %user_id.i, align 4
  br i1 %cmp.i107.i, label %allegro_create_channel.exit.thread12, label %if.end14.i

allegro_create_channel.exit.thread12:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %name11.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name11.i) #18
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  tail call void @_set_bit(i32 noundef %retval.0.i.i, ptr noundef %channel_user_ids.i.i) #15
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp17.i = icmp sgt i32 %10, 0
  br i1 %cmp17.i, label %do.end21.i, label %if.end14.i.do.end33.i_crit_edge

if.end14.i.do.end33.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33.i

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %name24.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %user_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %user_id.i, align 4
  %codec.i = getelementptr i8, ptr %1, i32 424
  %width.i = getelementptr i8, ptr %1, i32 376
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width.i, align 4
  %height.i = getelementptr i8, ptr %1, i32 380
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height.i, align 4
  %framerate.i = getelementptr i8, ptr %1, i32 388
  %17 = ptrtoint ptr %framerate.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %framerate.i, align 4
  %denominator.i = getelementptr i8, ptr %1, i32 392
  %19 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %denominator.i, align 4
  %add.i = add i32 %18, -1
  %sub.i = add i32 %add.i, %20
  %div.i = udiv i32 %sub.i, %20
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef %name24.i, i32 noundef %12, ptr noundef %codec.i, i32 noundef %14, i32 noundef %16, i32 noundef %div.i) #18
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.end21.i, %if.end14.i.do.end33.i_crit_edge
  %mpeg_video_h264_profile.i = getelementptr i8, ptr %1, i32 528
  %21 = ptrtoint ptr %mpeg_video_h264_profile.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mpeg_video_h264_profile.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %do.end33.i.v4l2_ctrl_grab.exit.i_crit_edge, label %if.end.i.i

do.end33.i.v4l2_ctrl_grab.exit.i_crit_edge:       ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit.i

if.end.i.i:                                       ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %26, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %22, i1 noundef zeroext true) #15
  %27 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i6.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %lock.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lock.i6.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %30) #15
  br label %v4l2_ctrl_grab.exit.i

v4l2_ctrl_grab.exit.i:                            ; preds = %if.end.i.i, %do.end33.i.v4l2_ctrl_grab.exit.i_crit_edge
  %mpeg_video_h264_level.i = getelementptr i8, ptr %1, i32 532
  %31 = ptrtoint ptr %mpeg_video_h264_level.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mpeg_video_h264_level.i, align 4
  %tobool.not.i108.i = icmp eq ptr %32, null
  br i1 %tobool.not.i108.i, label %v4l2_ctrl_grab.exit.i.v4l2_ctrl_grab.exit113.i_crit_edge, label %if.end.i112.i

v4l2_ctrl_grab.exit.i.v4l2_ctrl_grab.exit113.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit113.i

if.end.i112.i:                                    ; preds = %v4l2_ctrl_grab.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i109.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %handler.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handler.i.i109.i, align 8
  %lock.i.i110.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %lock.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lock.i.i110.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %36, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %32, i1 noundef zeroext true) #15
  %37 = ptrtoint ptr %handler.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %handler.i.i109.i, align 8
  %lock.i6.i111.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %lock.i6.i111.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lock.i6.i111.i, align 4
  tail call void @mutex_unlock(ptr noundef %40) #15
  br label %v4l2_ctrl_grab.exit113.i

v4l2_ctrl_grab.exit113.i:                         ; preds = %if.end.i112.i, %v4l2_ctrl_grab.exit.i.v4l2_ctrl_grab.exit113.i_crit_edge
  %mpeg_video_h264_i_frame_qp.i = getelementptr i8, ptr %1, i32 536
  %41 = ptrtoint ptr %mpeg_video_h264_i_frame_qp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mpeg_video_h264_i_frame_qp.i, align 4
  %tobool.not.i114.i = icmp eq ptr %42, null
  br i1 %tobool.not.i114.i, label %v4l2_ctrl_grab.exit113.i.v4l2_ctrl_grab.exit119.i_crit_edge, label %if.end.i118.i

v4l2_ctrl_grab.exit113.i.v4l2_ctrl_grab.exit119.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit113.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit119.i

if.end.i118.i:                                    ; preds = %v4l2_ctrl_grab.exit113.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i115.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %handler.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %handler.i.i115.i, align 8
  %lock.i.i116.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %lock.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lock.i.i116.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %46, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %42, i1 noundef zeroext true) #15
  %47 = ptrtoint ptr %handler.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %handler.i.i115.i, align 8
  %lock.i6.i117.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %lock.i6.i117.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lock.i6.i117.i, align 4
  tail call void @mutex_unlock(ptr noundef %50) #15
  br label %v4l2_ctrl_grab.exit119.i

v4l2_ctrl_grab.exit119.i:                         ; preds = %if.end.i118.i, %v4l2_ctrl_grab.exit113.i.v4l2_ctrl_grab.exit119.i_crit_edge
  %mpeg_video_h264_max_qp.i = getelementptr i8, ptr %1, i32 540
  %51 = ptrtoint ptr %mpeg_video_h264_max_qp.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mpeg_video_h264_max_qp.i, align 4
  %tobool.not.i120.i = icmp eq ptr %52, null
  br i1 %tobool.not.i120.i, label %v4l2_ctrl_grab.exit119.i.v4l2_ctrl_grab.exit125.i_crit_edge, label %if.end.i124.i

v4l2_ctrl_grab.exit119.i.v4l2_ctrl_grab.exit125.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit119.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit125.i

if.end.i124.i:                                    ; preds = %v4l2_ctrl_grab.exit119.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i121.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %handler.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %handler.i.i121.i, align 8
  %lock.i.i122.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %lock.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock.i.i122.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %56, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %52, i1 noundef zeroext true) #15
  %57 = ptrtoint ptr %handler.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %handler.i.i121.i, align 8
  %lock.i6.i123.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %lock.i6.i123.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lock.i6.i123.i, align 4
  tail call void @mutex_unlock(ptr noundef %60) #15
  br label %v4l2_ctrl_grab.exit125.i

v4l2_ctrl_grab.exit125.i:                         ; preds = %if.end.i124.i, %v4l2_ctrl_grab.exit119.i.v4l2_ctrl_grab.exit125.i_crit_edge
  %mpeg_video_h264_min_qp.i = getelementptr i8, ptr %1, i32 544
  %61 = ptrtoint ptr %mpeg_video_h264_min_qp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mpeg_video_h264_min_qp.i, align 4
  %tobool.not.i126.i = icmp eq ptr %62, null
  br i1 %tobool.not.i126.i, label %v4l2_ctrl_grab.exit125.i.v4l2_ctrl_grab.exit131.i_crit_edge, label %if.end.i130.i

v4l2_ctrl_grab.exit125.i.v4l2_ctrl_grab.exit131.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit125.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit131.i

if.end.i130.i:                                    ; preds = %v4l2_ctrl_grab.exit125.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i127.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %handler.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %handler.i.i127.i, align 8
  %lock.i.i128.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %lock.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lock.i.i128.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %66, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %62, i1 noundef zeroext true) #15
  %67 = ptrtoint ptr %handler.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %handler.i.i127.i, align 8
  %lock.i6.i129.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %lock.i6.i129.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lock.i6.i129.i, align 4
  tail call void @mutex_unlock(ptr noundef %70) #15
  br label %v4l2_ctrl_grab.exit131.i

v4l2_ctrl_grab.exit131.i:                         ; preds = %if.end.i130.i, %v4l2_ctrl_grab.exit125.i.v4l2_ctrl_grab.exit131.i_crit_edge
  %mpeg_video_h264_p_frame_qp.i = getelementptr i8, ptr %1, i32 548
  %71 = ptrtoint ptr %mpeg_video_h264_p_frame_qp.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mpeg_video_h264_p_frame_qp.i, align 4
  %tobool.not.i132.i = icmp eq ptr %72, null
  br i1 %tobool.not.i132.i, label %v4l2_ctrl_grab.exit131.i.v4l2_ctrl_grab.exit137.i_crit_edge, label %if.end.i136.i

v4l2_ctrl_grab.exit131.i.v4l2_ctrl_grab.exit137.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit131.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit137.i

if.end.i136.i:                                    ; preds = %v4l2_ctrl_grab.exit131.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i133.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %handler.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %handler.i.i133.i, align 8
  %lock.i.i134.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %lock.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lock.i.i134.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %76, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %72, i1 noundef zeroext true) #15
  %77 = ptrtoint ptr %handler.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %handler.i.i133.i, align 8
  %lock.i6.i135.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %lock.i6.i135.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lock.i6.i135.i, align 4
  tail call void @mutex_unlock(ptr noundef %80) #15
  br label %v4l2_ctrl_grab.exit137.i

v4l2_ctrl_grab.exit137.i:                         ; preds = %if.end.i136.i, %v4l2_ctrl_grab.exit131.i.v4l2_ctrl_grab.exit137.i_crit_edge
  %mpeg_video_h264_b_frame_qp.i = getelementptr i8, ptr %1, i32 552
  %81 = ptrtoint ptr %mpeg_video_h264_b_frame_qp.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mpeg_video_h264_b_frame_qp.i, align 4
  %tobool.not.i138.i = icmp eq ptr %82, null
  br i1 %tobool.not.i138.i, label %v4l2_ctrl_grab.exit137.i.v4l2_ctrl_grab.exit143.i_crit_edge, label %if.end.i142.i

v4l2_ctrl_grab.exit137.i.v4l2_ctrl_grab.exit143.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit137.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit143.i

if.end.i142.i:                                    ; preds = %v4l2_ctrl_grab.exit137.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i139.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %handler.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %handler.i.i139.i, align 8
  %lock.i.i140.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %lock.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lock.i.i140.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %86, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %82, i1 noundef zeroext true) #15
  %87 = ptrtoint ptr %handler.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %handler.i.i139.i, align 8
  %lock.i6.i141.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %lock.i6.i141.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lock.i6.i141.i, align 4
  tail call void @mutex_unlock(ptr noundef %90) #15
  br label %v4l2_ctrl_grab.exit143.i

v4l2_ctrl_grab.exit143.i:                         ; preds = %if.end.i142.i, %v4l2_ctrl_grab.exit137.i.v4l2_ctrl_grab.exit143.i_crit_edge
  %mpeg_video_hevc_profile.i = getelementptr i8, ptr %1, i32 556
  %91 = ptrtoint ptr %mpeg_video_hevc_profile.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mpeg_video_hevc_profile.i, align 4
  %tobool.not.i144.i = icmp eq ptr %92, null
  br i1 %tobool.not.i144.i, label %v4l2_ctrl_grab.exit143.i.v4l2_ctrl_grab.exit149.i_crit_edge, label %if.end.i148.i

v4l2_ctrl_grab.exit143.i.v4l2_ctrl_grab.exit149.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit143.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit149.i

if.end.i148.i:                                    ; preds = %v4l2_ctrl_grab.exit143.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i145.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %handler.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %handler.i.i145.i, align 8
  %lock.i.i146.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %lock.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lock.i.i146.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %96, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %92, i1 noundef zeroext true) #15
  %97 = ptrtoint ptr %handler.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %handler.i.i145.i, align 8
  %lock.i6.i147.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %lock.i6.i147.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lock.i6.i147.i, align 4
  tail call void @mutex_unlock(ptr noundef %100) #15
  br label %v4l2_ctrl_grab.exit149.i

v4l2_ctrl_grab.exit149.i:                         ; preds = %if.end.i148.i, %v4l2_ctrl_grab.exit143.i.v4l2_ctrl_grab.exit149.i_crit_edge
  %mpeg_video_hevc_level.i = getelementptr i8, ptr %1, i32 560
  %101 = ptrtoint ptr %mpeg_video_hevc_level.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mpeg_video_hevc_level.i, align 4
  %tobool.not.i150.i = icmp eq ptr %102, null
  br i1 %tobool.not.i150.i, label %v4l2_ctrl_grab.exit149.i.v4l2_ctrl_grab.exit155.i_crit_edge, label %if.end.i154.i

v4l2_ctrl_grab.exit149.i.v4l2_ctrl_grab.exit155.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit149.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit155.i

if.end.i154.i:                                    ; preds = %v4l2_ctrl_grab.exit149.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i151.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %handler.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %handler.i.i151.i, align 8
  %lock.i.i152.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %lock.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lock.i.i152.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %106, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %102, i1 noundef zeroext true) #15
  %107 = ptrtoint ptr %handler.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %handler.i.i151.i, align 8
  %lock.i6.i153.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %lock.i6.i153.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lock.i6.i153.i, align 4
  tail call void @mutex_unlock(ptr noundef %110) #15
  br label %v4l2_ctrl_grab.exit155.i

v4l2_ctrl_grab.exit155.i:                         ; preds = %if.end.i154.i, %v4l2_ctrl_grab.exit149.i.v4l2_ctrl_grab.exit155.i_crit_edge
  %mpeg_video_hevc_tier.i = getelementptr i8, ptr %1, i32 564
  %111 = ptrtoint ptr %mpeg_video_hevc_tier.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mpeg_video_hevc_tier.i, align 4
  %tobool.not.i156.i = icmp eq ptr %112, null
  br i1 %tobool.not.i156.i, label %v4l2_ctrl_grab.exit155.i.v4l2_ctrl_grab.exit161.i_crit_edge, label %if.end.i160.i

v4l2_ctrl_grab.exit155.i.v4l2_ctrl_grab.exit161.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit155.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit161.i

if.end.i160.i:                                    ; preds = %v4l2_ctrl_grab.exit155.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i157.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %handler.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %handler.i.i157.i, align 8
  %lock.i.i158.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %lock.i.i158.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %lock.i.i158.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %116, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %112, i1 noundef zeroext true) #15
  %117 = ptrtoint ptr %handler.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %handler.i.i157.i, align 8
  %lock.i6.i159.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %lock.i6.i159.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %lock.i6.i159.i, align 4
  tail call void @mutex_unlock(ptr noundef %120) #15
  br label %v4l2_ctrl_grab.exit161.i

v4l2_ctrl_grab.exit161.i:                         ; preds = %if.end.i160.i, %v4l2_ctrl_grab.exit155.i.v4l2_ctrl_grab.exit161.i_crit_edge
  %mpeg_video_hevc_i_frame_qp.i = getelementptr i8, ptr %1, i32 568
  %121 = ptrtoint ptr %mpeg_video_hevc_i_frame_qp.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mpeg_video_hevc_i_frame_qp.i, align 4
  %tobool.not.i162.i = icmp eq ptr %122, null
  br i1 %tobool.not.i162.i, label %v4l2_ctrl_grab.exit161.i.v4l2_ctrl_grab.exit167.i_crit_edge, label %if.end.i166.i

v4l2_ctrl_grab.exit161.i.v4l2_ctrl_grab.exit167.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit161.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit167.i

if.end.i166.i:                                    ; preds = %v4l2_ctrl_grab.exit161.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i163.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %handler.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %handler.i.i163.i, align 8
  %lock.i.i164.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %lock.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lock.i.i164.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %126, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %122, i1 noundef zeroext true) #15
  %127 = ptrtoint ptr %handler.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %handler.i.i163.i, align 8
  %lock.i6.i165.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %lock.i6.i165.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %lock.i6.i165.i, align 4
  tail call void @mutex_unlock(ptr noundef %130) #15
  br label %v4l2_ctrl_grab.exit167.i

v4l2_ctrl_grab.exit167.i:                         ; preds = %if.end.i166.i, %v4l2_ctrl_grab.exit161.i.v4l2_ctrl_grab.exit167.i_crit_edge
  %mpeg_video_hevc_max_qp.i = getelementptr i8, ptr %1, i32 572
  %131 = ptrtoint ptr %mpeg_video_hevc_max_qp.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mpeg_video_hevc_max_qp.i, align 4
  %tobool.not.i168.i = icmp eq ptr %132, null
  br i1 %tobool.not.i168.i, label %v4l2_ctrl_grab.exit167.i.v4l2_ctrl_grab.exit173.i_crit_edge, label %if.end.i172.i

v4l2_ctrl_grab.exit167.i.v4l2_ctrl_grab.exit173.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit167.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit173.i

if.end.i172.i:                                    ; preds = %v4l2_ctrl_grab.exit167.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i169.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %handler.i.i169.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %handler.i.i169.i, align 8
  %lock.i.i170.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %lock.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lock.i.i170.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %136, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %132, i1 noundef zeroext true) #15
  %137 = ptrtoint ptr %handler.i.i169.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %handler.i.i169.i, align 8
  %lock.i6.i171.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %lock.i6.i171.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %lock.i6.i171.i, align 4
  tail call void @mutex_unlock(ptr noundef %140) #15
  br label %v4l2_ctrl_grab.exit173.i

v4l2_ctrl_grab.exit173.i:                         ; preds = %if.end.i172.i, %v4l2_ctrl_grab.exit167.i.v4l2_ctrl_grab.exit173.i_crit_edge
  %mpeg_video_hevc_min_qp.i = getelementptr i8, ptr %1, i32 576
  %141 = ptrtoint ptr %mpeg_video_hevc_min_qp.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mpeg_video_hevc_min_qp.i, align 4
  %tobool.not.i174.i = icmp eq ptr %142, null
  br i1 %tobool.not.i174.i, label %v4l2_ctrl_grab.exit173.i.v4l2_ctrl_grab.exit179.i_crit_edge, label %if.end.i178.i

v4l2_ctrl_grab.exit173.i.v4l2_ctrl_grab.exit179.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit173.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit179.i

if.end.i178.i:                                    ; preds = %v4l2_ctrl_grab.exit173.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i175.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %handler.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %handler.i.i175.i, align 8
  %lock.i.i176.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %lock.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lock.i.i176.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %146, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %142, i1 noundef zeroext true) #15
  %147 = ptrtoint ptr %handler.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %handler.i.i175.i, align 8
  %lock.i6.i177.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %lock.i6.i177.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lock.i6.i177.i, align 4
  tail call void @mutex_unlock(ptr noundef %150) #15
  br label %v4l2_ctrl_grab.exit179.i

v4l2_ctrl_grab.exit179.i:                         ; preds = %if.end.i178.i, %v4l2_ctrl_grab.exit173.i.v4l2_ctrl_grab.exit179.i_crit_edge
  %mpeg_video_hevc_p_frame_qp.i = getelementptr i8, ptr %1, i32 580
  %151 = ptrtoint ptr %mpeg_video_hevc_p_frame_qp.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mpeg_video_hevc_p_frame_qp.i, align 4
  %tobool.not.i180.i = icmp eq ptr %152, null
  br i1 %tobool.not.i180.i, label %v4l2_ctrl_grab.exit179.i.v4l2_ctrl_grab.exit185.i_crit_edge, label %if.end.i184.i

v4l2_ctrl_grab.exit179.i.v4l2_ctrl_grab.exit185.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit179.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit185.i

if.end.i184.i:                                    ; preds = %v4l2_ctrl_grab.exit179.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i181.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %handler.i.i181.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %handler.i.i181.i, align 8
  %lock.i.i182.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %lock.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %lock.i.i182.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %156, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %152, i1 noundef zeroext true) #15
  %157 = ptrtoint ptr %handler.i.i181.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %handler.i.i181.i, align 8
  %lock.i6.i183.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %lock.i6.i183.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %lock.i6.i183.i, align 4
  tail call void @mutex_unlock(ptr noundef %160) #15
  br label %v4l2_ctrl_grab.exit185.i

v4l2_ctrl_grab.exit185.i:                         ; preds = %if.end.i184.i, %v4l2_ctrl_grab.exit179.i.v4l2_ctrl_grab.exit185.i_crit_edge
  %mpeg_video_hevc_b_frame_qp.i = getelementptr i8, ptr %1, i32 584
  %161 = ptrtoint ptr %mpeg_video_hevc_b_frame_qp.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mpeg_video_hevc_b_frame_qp.i, align 4
  %tobool.not.i186.i = icmp eq ptr %162, null
  br i1 %tobool.not.i186.i, label %v4l2_ctrl_grab.exit185.i.v4l2_ctrl_grab.exit191.i_crit_edge, label %if.end.i190.i

v4l2_ctrl_grab.exit185.i.v4l2_ctrl_grab.exit191.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit185.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit191.i

if.end.i190.i:                                    ; preds = %v4l2_ctrl_grab.exit185.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i187.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %handler.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %handler.i.i187.i, align 8
  %lock.i.i188.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %lock.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %lock.i.i188.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %166, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %162, i1 noundef zeroext true) #15
  %167 = ptrtoint ptr %handler.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %handler.i.i187.i, align 8
  %lock.i6.i189.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %lock.i6.i189.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lock.i6.i189.i, align 4
  tail call void @mutex_unlock(ptr noundef %170) #15
  br label %v4l2_ctrl_grab.exit191.i

v4l2_ctrl_grab.exit191.i:                         ; preds = %if.end.i190.i, %v4l2_ctrl_grab.exit185.i.v4l2_ctrl_grab.exit191.i_crit_edge
  %mpeg_video_frame_rc_enable.i = getelementptr i8, ptr %1, i32 588
  %171 = ptrtoint ptr %mpeg_video_frame_rc_enable.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mpeg_video_frame_rc_enable.i, align 4
  %tobool.not.i192.i = icmp eq ptr %172, null
  br i1 %tobool.not.i192.i, label %v4l2_ctrl_grab.exit191.i.v4l2_ctrl_grab.exit197.i_crit_edge, label %if.end.i196.i

v4l2_ctrl_grab.exit191.i.v4l2_ctrl_grab.exit197.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit191.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit197.i

if.end.i196.i:                                    ; preds = %v4l2_ctrl_grab.exit191.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i193.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %handler.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %handler.i.i193.i, align 8
  %lock.i.i194.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %lock.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %lock.i.i194.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %176, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %172, i1 noundef zeroext true) #15
  %177 = ptrtoint ptr %handler.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %handler.i.i193.i, align 8
  %lock.i6.i195.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %lock.i6.i195.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %lock.i6.i195.i, align 4
  tail call void @mutex_unlock(ptr noundef %180) #15
  br label %v4l2_ctrl_grab.exit197.i

v4l2_ctrl_grab.exit197.i:                         ; preds = %if.end.i196.i, %v4l2_ctrl_grab.exit191.i.v4l2_ctrl_grab.exit197.i_crit_edge
  %181 = getelementptr i8, ptr %1, i32 592
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %tobool.not.i198.i = icmp eq ptr %183, null
  br i1 %tobool.not.i198.i, label %v4l2_ctrl_grab.exit197.i.v4l2_ctrl_grab.exit203.i_crit_edge, label %if.end.i202.i

v4l2_ctrl_grab.exit197.i.v4l2_ctrl_grab.exit203.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit197.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit203.i

if.end.i202.i:                                    ; preds = %v4l2_ctrl_grab.exit197.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i199.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %handler.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %handler.i.i199.i, align 8
  %lock.i.i200.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %lock.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %lock.i.i200.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %187, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %183, i1 noundef zeroext true) #15
  %188 = ptrtoint ptr %handler.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %handler.i.i199.i, align 8
  %lock.i6.i201.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %lock.i6.i201.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %lock.i6.i201.i, align 4
  tail call void @mutex_unlock(ptr noundef %191) #15
  br label %v4l2_ctrl_grab.exit203.i

v4l2_ctrl_grab.exit203.i:                         ; preds = %if.end.i202.i, %v4l2_ctrl_grab.exit197.i.v4l2_ctrl_grab.exit203.i_crit_edge
  %mpeg_video_bitrate.i = getelementptr i8, ptr %1, i32 596
  %192 = ptrtoint ptr %mpeg_video_bitrate.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mpeg_video_bitrate.i, align 4
  %tobool.not.i204.i = icmp eq ptr %193, null
  br i1 %tobool.not.i204.i, label %v4l2_ctrl_grab.exit203.i.v4l2_ctrl_grab.exit209.i_crit_edge, label %if.end.i208.i

v4l2_ctrl_grab.exit203.i.v4l2_ctrl_grab.exit209.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit203.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit209.i

if.end.i208.i:                                    ; preds = %v4l2_ctrl_grab.exit203.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i205.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %handler.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %handler.i.i205.i, align 8
  %lock.i.i206.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %lock.i.i206.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %lock.i.i206.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %197, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %193, i1 noundef zeroext true) #15
  %198 = ptrtoint ptr %handler.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %handler.i.i205.i, align 8
  %lock.i6.i207.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %lock.i6.i207.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %lock.i6.i207.i, align 4
  tail call void @mutex_unlock(ptr noundef %201) #15
  br label %v4l2_ctrl_grab.exit209.i

v4l2_ctrl_grab.exit209.i:                         ; preds = %if.end.i208.i, %v4l2_ctrl_grab.exit203.i.v4l2_ctrl_grab.exit209.i_crit_edge
  %mpeg_video_bitrate_peak.i = getelementptr i8, ptr %1, i32 600
  %202 = ptrtoint ptr %mpeg_video_bitrate_peak.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mpeg_video_bitrate_peak.i, align 4
  %tobool.not.i210.i = icmp eq ptr %203, null
  br i1 %tobool.not.i210.i, label %v4l2_ctrl_grab.exit209.i.v4l2_ctrl_grab.exit215.i_crit_edge, label %if.end.i214.i

v4l2_ctrl_grab.exit209.i.v4l2_ctrl_grab.exit215.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit209.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit215.i

if.end.i214.i:                                    ; preds = %v4l2_ctrl_grab.exit209.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i211.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %handler.i.i211.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %handler.i.i211.i, align 8
  %lock.i.i212.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %lock.i.i212.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %lock.i.i212.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %207, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %203, i1 noundef zeroext true) #15
  %208 = ptrtoint ptr %handler.i.i211.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %handler.i.i211.i, align 8
  %lock.i6.i213.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %lock.i6.i213.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %lock.i6.i213.i, align 4
  tail call void @mutex_unlock(ptr noundef %211) #15
  br label %v4l2_ctrl_grab.exit215.i

v4l2_ctrl_grab.exit215.i:                         ; preds = %if.end.i214.i, %v4l2_ctrl_grab.exit209.i.v4l2_ctrl_grab.exit215.i_crit_edge
  %mpeg_video_cpb_size.i = getelementptr i8, ptr %1, i32 604
  %212 = ptrtoint ptr %mpeg_video_cpb_size.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mpeg_video_cpb_size.i, align 4
  %tobool.not.i216.i = icmp eq ptr %213, null
  br i1 %tobool.not.i216.i, label %v4l2_ctrl_grab.exit215.i.v4l2_ctrl_grab.exit221.i_crit_edge, label %if.end.i220.i

v4l2_ctrl_grab.exit215.i.v4l2_ctrl_grab.exit221.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit215.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit221.i

if.end.i220.i:                                    ; preds = %v4l2_ctrl_grab.exit215.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i217.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %handler.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %handler.i.i217.i, align 8
  %lock.i.i218.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %lock.i.i218.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %lock.i.i218.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %217, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %213, i1 noundef zeroext true) #15
  %218 = ptrtoint ptr %handler.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %handler.i.i217.i, align 8
  %lock.i6.i219.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %lock.i6.i219.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %lock.i6.i219.i, align 4
  tail call void @mutex_unlock(ptr noundef %221) #15
  br label %v4l2_ctrl_grab.exit221.i

v4l2_ctrl_grab.exit221.i:                         ; preds = %if.end.i220.i, %v4l2_ctrl_grab.exit215.i.v4l2_ctrl_grab.exit221.i_crit_edge
  %mpeg_video_gop_size.i = getelementptr i8, ptr %1, i32 608
  %222 = ptrtoint ptr %mpeg_video_gop_size.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mpeg_video_gop_size.i, align 4
  %tobool.not.i222.i = icmp eq ptr %223, null
  br i1 %tobool.not.i222.i, label %v4l2_ctrl_grab.exit221.i.v4l2_ctrl_grab.exit227.i_crit_edge, label %if.end.i226.i

v4l2_ctrl_grab.exit221.i.v4l2_ctrl_grab.exit227.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit221.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit227.i

if.end.i226.i:                                    ; preds = %v4l2_ctrl_grab.exit221.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i223.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %handler.i.i223.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %handler.i.i223.i, align 8
  %lock.i.i224.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %lock.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %lock.i.i224.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %227, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %223, i1 noundef zeroext true) #15
  %228 = ptrtoint ptr %handler.i.i223.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %handler.i.i223.i, align 8
  %lock.i6.i225.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %lock.i6.i225.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %lock.i6.i225.i, align 4
  tail call void @mutex_unlock(ptr noundef %231) #15
  br label %v4l2_ctrl_grab.exit227.i

v4l2_ctrl_grab.exit227.i:                         ; preds = %if.end.i226.i, %v4l2_ctrl_grab.exit221.i.v4l2_ctrl_grab.exit227.i_crit_edge
  %encoder_buffer.i = getelementptr i8, ptr %1, i32 612
  %232 = ptrtoint ptr %encoder_buffer.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %encoder_buffer.i, align 4
  %tobool.not.i228.i = icmp eq ptr %233, null
  br i1 %tobool.not.i228.i, label %v4l2_ctrl_grab.exit227.i.v4l2_ctrl_grab.exit233.i_crit_edge, label %if.end.i232.i

v4l2_ctrl_grab.exit227.i.v4l2_ctrl_grab.exit233.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit227.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_ctrl_grab.exit233.i

if.end.i232.i:                                    ; preds = %v4l2_ctrl_grab.exit227.i
  call void @__sanitizer_cov_trace_pc() #17
  %handler.i.i229.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %handler.i.i229.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %handler.i.i229.i, align 8
  %lock.i.i230.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %lock.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %lock.i.i230.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %237, i32 noundef 0) #15
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %233, i1 noundef zeroext true) #15
  %238 = ptrtoint ptr %handler.i.i229.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %handler.i.i229.i, align 8
  %lock.i6.i231.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %lock.i6.i231.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %lock.i6.i231.i, align 4
  tail call void @mutex_unlock(ptr noundef %241) #15
  br label %v4l2_ctrl_grab.exit233.i

v4l2_ctrl_grab.exit233.i:                         ; preds = %if.end.i232.i, %v4l2_ctrl_grab.exit227.i.v4l2_ctrl_grab.exit233.i_crit_edge
  %completion.i = getelementptr i8, ptr %1, i32 756
  %242 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %completion.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg.i.i) #15
  %243 = getelementptr inbounds %struct.mcu_msg_header, ptr %msg.i.i, i32 0, i32 1
  %244 = getelementptr inbounds %struct.mcu_msg_create_channel, ptr %msg.i.i, i32 0, i32 1
  %245 = getelementptr inbounds %struct.mcu_msg_create_channel, ptr %msg.i.i, i32 0, i32 2
  %246 = getelementptr inbounds %struct.mcu_msg_create_channel, ptr %msg.i.i, i32 0, i32 3
  %config_blob.i.i = getelementptr i8, ptr %1, i32 448
  %247 = call ptr @memset(ptr %msg.i.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %param.i.i) #15
  %248 = call ptr @memset(ptr %param.i.i, i32 0, i32 280)
  %codec.i.i.i.i = getelementptr i8, ptr %1, i32 424
  %249 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %250)
  %cmp.i.i.i.i = icmp eq i32 %250, 1129727304
  %mpeg_video_h264_i_frame_qp.sink.i.i.i.i = select i1 %cmp.i.i.i.i, ptr %mpeg_video_hevc_i_frame_qp.i, ptr %mpeg_video_h264_i_frame_qp.i
  %251 = ptrtoint ptr %mpeg_video_h264_i_frame_qp.sink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mpeg_video_h264_i_frame_qp.sink.i.i.i.i, align 4
  %call1.i.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %252) #15
  %253 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %254)
  %cmp.i2.i.i.i = icmp eq i32 %254, 1129727304
  %mpeg_video_h264_p_frame_qp.sink.i.i.i.i = select i1 %cmp.i2.i.i.i, ptr %mpeg_video_hevc_p_frame_qp.i, ptr %mpeg_video_h264_p_frame_qp.i
  %255 = ptrtoint ptr %mpeg_video_h264_p_frame_qp.sink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mpeg_video_h264_p_frame_qp.sink.i.i.i.i, align 4
  %call1.i3.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %256) #15
  %257 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %258)
  %cmp.i5.i.i.i = icmp eq i32 %258, 1129727304
  %mpeg_video_h264_b_frame_qp.sink.i.i.i.i = select i1 %cmp.i5.i.i.i, ptr %mpeg_video_hevc_b_frame_qp.i, ptr %mpeg_video_h264_b_frame_qp.i
  %259 = ptrtoint ptr %mpeg_video_h264_b_frame_qp.sink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %mpeg_video_h264_b_frame_qp.sink.i.i.i.i, align 4
  %call1.i6.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %260) #15
  %261 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %181, align 4
  %call3.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %262) #15
  %263 = ptrtoint ptr %mpeg_video_cpb_size.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mpeg_video_cpb_size.i, align 4
  %call4.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %264) #15
  %width.i.i.i = getelementptr i8, ptr %1, i32 376
  %265 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %width.i.i.i, align 4
  %conv.i.i.i = trunc i32 %266 to i16
  %width5.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 2
  %267 = ptrtoint ptr %width5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %conv.i.i.i, ptr %width5.i.i.i, align 4
  %height.i.i.i = getelementptr i8, ptr %1, i32 380
  %268 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %height.i.i.i, align 4
  %conv6.i.i.i = trunc i32 %269 to i16
  %height7.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 3
  %270 = ptrtoint ptr %height7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %conv6.i.i.i, ptr %height7.i.i.i, align 2
  %pixelformat.i.i.i = getelementptr i8, ptr %1, i32 412
  %271 = ptrtoint ptr %pixelformat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %pixelformat.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %272)
  %cond.i.i.i.i = icmp eq i32 %272, 842094158
  %..i.i.i.i = select i1 %cond.i.i.i.i, i32 392, i32 -22
  %format.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 5
  %273 = ptrtoint ptr %format.i.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %..i.i.i.i, ptr %format.i.i.i, align 4
  %colorspace.i.i.i = getelementptr i8, ptr %1, i32 396
  %274 = ptrtoint ptr %colorspace.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %colorspace.i.i.i, align 4
  %switch.tableidx = add i32 %275, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %276 = icmp ult i32 %switch.tableidx, 8
  br i1 %276, label %switch.lookup, label %v4l2_ctrl_grab.exit233.i.v4l2_colorspace_to_mcu_colorspace.exit.i.i.i_crit_edge

v4l2_ctrl_grab.exit233.i.v4l2_colorspace_to_mcu_colorspace.exit.i.i.i_crit_edge: ; preds = %v4l2_ctrl_grab.exit233.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_colorspace_to_mcu_colorspace.exit.i.i.i

switch.lookup:                                    ; preds = %v4l2_ctrl_grab.exit233.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.allegro_ioctl_streamon, i32 0, i32 %switch.tableidx
  %277 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %277)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %v4l2_colorspace_to_mcu_colorspace.exit.i.i.i

v4l2_colorspace_to_mcu_colorspace.exit.i.i.i:     ; preds = %switch.lookup, %v4l2_ctrl_grab.exit233.i.v4l2_colorspace_to_mcu_colorspace.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %v4l2_ctrl_grab.exit233.i.v4l2_colorspace_to_mcu_colorspace.exit.i.i.i_crit_edge ]
  %colorspace10.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 6
  %278 = ptrtoint ptr %colorspace10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %retval.0.i.i.i.i, ptr %colorspace10.i.i.i, align 4
  %src_mode.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 7
  %279 = ptrtoint ptr %src_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 0, ptr %src_mode.i.i.i, align 4
  %280 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %codec.i.i.i.i, align 4
  %codec11.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 11
  %282 = ptrtoint ptr %codec11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %codec11.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %281)
  %cmp.i.i.i = icmp eq i32 %281, 875967048
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %v4l2_colorspace_to_mcu_colorspace.exit.i.i.i
  %283 = ptrtoint ptr %mpeg_video_h264_profile.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mpeg_video_h264_profile.i, align 4
  %call14.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %284) #15
  %285 = ptrtoint ptr %mpeg_video_h264_level.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mpeg_video_h264_level.i, align 4
  %call15.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %286) #15
  %profile17.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 9
  %287 = ptrtoint ptr %profile17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 66, ptr %profile17.i.i.i, align 4
  %constraint_set_flags.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 10
  %288 = ptrtoint ptr %constraint_set_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 2, ptr %constraint_set_flags.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call15.i.i.i)
  %289 = icmp ult i32 %call15.i.i.i, 15
  br i1 %289, label %switch.lookup15, label %if.then.i.i.i.v4l2_level_to_mcu_level.exit.i.i.i_crit_edge

if.then.i.i.i.v4l2_level_to_mcu_level.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %v4l2_level_to_mcu_level.exit.i.i.i

switch.lookup15:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep16 = getelementptr inbounds [15 x i16], ptr @switch.table.allegro_ioctl_streamon.260, i32 0, i32 %call15.i.i.i
  %290 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load2_noabort(i32 %290)
  %switch.load17 = load i16, ptr %switch.gep16, align 2
  br label %v4l2_level_to_mcu_level.exit.i.i.i

v4l2_level_to_mcu_level.exit.i.i.i:               ; preds = %switch.lookup15, %if.then.i.i.i.v4l2_level_to_mcu_level.exit.i.i.i_crit_edge
  %retval.0.i11.i.i.i = phi i16 [ %switch.load17, %switch.lookup15 ], [ 51, %if.then.i.i.i.v4l2_level_to_mcu_level.exit.i.i.i_crit_edge ]
  %level19.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 12
  %291 = ptrtoint ptr %level19.i.i.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %retval.0.i11.i.i.i, ptr %level19.i.i.i, align 4
  br label %fill_create_channel_param.exit.i.i

if.else.i.i.i:                                    ; preds = %v4l2_colorspace_to_mcu_colorspace.exit.i.i.i
  %292 = ptrtoint ptr %mpeg_video_hevc_profile.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mpeg_video_hevc_profile.i, align 4
  %call22.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %293) #15
  %294 = ptrtoint ptr %mpeg_video_hevc_level.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %mpeg_video_hevc_level.i, align 4
  %call23.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %295) #15
  %296 = ptrtoint ptr %mpeg_video_hevc_tier.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %mpeg_video_hevc_tier.i, align 4
  %call24.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %297) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call22.i.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %call22.i.i.i, 2
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i8 2, i8 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22.i.i.i)
  %switch.selectcmp3.i.i.i.i = icmp eq i32 %call22.i.i.i, 1
  %switch.select4.i.i.i.i = select i1 %switch.selectcmp3.i.i.i.i, i8 3, i8 %switch.select.i.i.i.i
  %profile26.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 9
  %298 = ptrtoint ptr %profile26.i.i.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %switch.select4.i.i.i.i, ptr %profile26.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call23.i.i.i)
  %299 = icmp ult i32 %call23.i.i.i, 8
  br i1 %299, label %switch.lookup18, label %if.else.i.i.i.hevc_level_to_mcu_level.exit.i.i.i_crit_edge

if.else.i.i.i.hevc_level_to_mcu_level.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hevc_level_to_mcu_level.exit.i.i.i

switch.lookup18:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep19 = getelementptr inbounds [8 x i16], ptr @switch.table.allegro_ioctl_streamon.261, i32 0, i32 %call23.i.i.i
  %300 = ptrtoint ptr %switch.gep19 to i32
  call void @__asan_load2_noabort(i32 %300)
  %switch.load20 = load i16, ptr %switch.gep19, align 2
  br label %hevc_level_to_mcu_level.exit.i.i.i

hevc_level_to_mcu_level.exit.i.i.i:               ; preds = %switch.lookup18, %if.else.i.i.i.hevc_level_to_mcu_level.exit.i.i.i_crit_edge
  %retval.0.i20.i.i.i = phi i16 [ %switch.load20, %switch.lookup18 ], [ 51, %if.else.i.i.i.hevc_level_to_mcu_level.exit.i.i.i_crit_edge ]
  %level28.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 12
  %301 = ptrtoint ptr %level28.i.i.i to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 %retval.0.i20.i.i.i, ptr %level28.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24.i.i.i)
  %cond.i21.i.i.i = icmp eq i32 %call24.i.i.i, 1
  %conv30.i.i.i = zext i1 %cond.i21.i.i.i to i16
  %tier31.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 13
  %302 = ptrtoint ptr %tier31.i.i.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %conv30.i.i.i, ptr %tier31.i.i.i, align 2
  br label %fill_create_channel_param.exit.i.i

fill_create_channel_param.exit.i.i:               ; preds = %hevc_level_to_mcu_level.exit.i.i.i, %v4l2_level_to_mcu_level.exit.i.i.i
  %log2_max_poc.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 14
  %303 = ptrtoint ptr %log2_max_poc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 10, ptr %log2_max_poc.i.i.i, align 4
  %log2_max_frame_num.i.i.i = getelementptr i8, ptr %1, i32 468
  %304 = ptrtoint ptr %log2_max_frame_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %log2_max_frame_num.i.i.i, align 4
  %log2_max_frame_num32.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 15
  %306 = ptrtoint ptr %log2_max_frame_num32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %log2_max_frame_num32.i.i.i, align 4
  %temporal_mvp_enable.i.i.i = getelementptr i8, ptr %1, i32 472
  %307 = ptrtoint ptr %temporal_mvp_enable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %temporal_mvp_enable.i.i.i, align 4, !range !462
  %309 = zext i8 %308 to i32
  %temporal_mvp_enable34.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 16
  %310 = ptrtoint ptr %temporal_mvp_enable34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %temporal_mvp_enable34.i.i.i, align 4
  %dbf_ovr_en.i.i.i = getelementptr i8, ptr %1, i32 477
  %311 = ptrtoint ptr %dbf_ovr_en.i.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %dbf_ovr_en.i.i.i, align 1, !range !462
  %313 = zext i8 %312 to i32
  %dbf_ovr_en37.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 18
  %314 = ptrtoint ptr %dbf_ovr_en37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %dbf_ovr_en37.i.i.i, align 4
  %enable_deblocking_filter_override.i.i.i = getelementptr i8, ptr %1, i32 475
  %315 = ptrtoint ptr %enable_deblocking_filter_override.i.i.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %enable_deblocking_filter_override.i.i.i, align 1, !range !462
  %317 = zext i8 %316 to i32
  %override_lf.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 19
  %318 = ptrtoint ptr %override_lf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %317, ptr %override_lf.i.i.i, align 4
  %enable_reordering.i.i.i = getelementptr i8, ptr %1, i32 476
  %319 = ptrtoint ptr %enable_reordering.i.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %enable_reordering.i.i.i, align 4, !range !462
  %321 = zext i8 %320 to i32
  %enable_reordering42.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 17
  %322 = ptrtoint ptr %enable_reordering42.i.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %enable_reordering42.i.i.i, align 4
  %323 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %324)
  %cmp.i24.i.i.i = icmp eq i32 %324, 1129727304
  %..i25.i.i.i = zext i1 %cmp.i24.i.i.i to i32
  %entropy_mode.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 45
  %325 = ptrtoint ptr %entropy_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %..i25.i.i.i, ptr %entropy_mode.i.i.i, align 4
  %rdo_cost_mode.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 23
  %326 = ptrtoint ptr %rdo_cost_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 1, ptr %rdo_cost_mode.i.i.i, align 4
  %custom_lda.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 22
  %327 = ptrtoint ptr %custom_lda.i.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 1, ptr %custom_lda.i.i.i, align 4
  %lf.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 24
  %328 = ptrtoint ptr %lf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 1, ptr %lf.i.i.i, align 4
  %enable_loop_filter_across_tiles.i.i.i = getelementptr i8, ptr %1, i32 473
  %329 = ptrtoint ptr %enable_loop_filter_across_tiles.i.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %enable_loop_filter_across_tiles.i.i.i, align 1, !range !462
  %331 = zext i8 %330 to i32
  %lf_x_tile.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 25
  %332 = ptrtoint ptr %lf_x_tile.i.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %331, ptr %lf_x_tile.i.i.i, align 4
  %enable_loop_filter_across_slices.i.i.i = getelementptr i8, ptr %1, i32 474
  %333 = ptrtoint ptr %enable_loop_filter_across_slices.i.i.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %enable_loop_filter_across_slices.i.i.i, align 2, !range !462
  %335 = zext i8 %334 to i32
  %lf_x_slice.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 26
  %336 = ptrtoint ptr %lf_x_slice.i.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %lf_x_slice.i.i.i, align 4
  %src_bit_depth.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 8
  %337 = ptrtoint ptr %src_bit_depth.i.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 8, ptr %src_bit_depth.i.i.i, align 4
  %beta_offset.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 27
  %338 = ptrtoint ptr %beta_offset.i.i.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 -1, ptr %beta_offset.i.i.i, align 4
  %tc_offset.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 28
  %339 = ptrtoint ptr %tc_offset.i.i.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 -1, ptr %tc_offset.i.i.i, align 1
  %num_slices.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 32
  %340 = ptrtoint ptr %num_slices.i.i.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 1, ptr %num_slices.i.i.i, align 4
  %b_hrz_me_range.i.i.i = getelementptr i8, ptr %1, i32 488
  %341 = ptrtoint ptr %b_hrz_me_range.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %b_hrz_me_range.i.i.i, align 4
  %conv48.i.i.i = trunc i32 %342 to i16
  %me_range.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 37
  %343 = ptrtoint ptr %me_range.i.i.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %conv48.i.i.i, ptr %me_range.i.i.i, align 4
  %b_vrt_me_range.i.i.i = getelementptr i8, ptr %1, i32 492
  %344 = ptrtoint ptr %b_vrt_me_range.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %b_vrt_me_range.i.i.i, align 4
  %conv49.i.i.i = trunc i32 %345 to i16
  %arrayidx51.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 37, i32 1
  %346 = ptrtoint ptr %arrayidx51.i.i.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 %conv49.i.i.i, ptr %arrayidx51.i.i.i, align 2
  %p_hrz_me_range.i.i.i = getelementptr i8, ptr %1, i32 496
  %347 = ptrtoint ptr %p_hrz_me_range.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %p_hrz_me_range.i.i.i, align 4
  %conv52.i.i.i = trunc i32 %348 to i16
  %arrayidx54.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 37, i32 2
  %349 = ptrtoint ptr %arrayidx54.i.i.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 %conv52.i.i.i, ptr %arrayidx54.i.i.i, align 4
  %p_vrt_me_range.i.i.i = getelementptr i8, ptr %1, i32 500
  %350 = ptrtoint ptr %p_vrt_me_range.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %p_vrt_me_range.i.i.i, align 4
  %conv55.i.i.i = trunc i32 %351 to i16
  %arrayidx57.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 37, i32 3
  %352 = ptrtoint ptr %arrayidx57.i.i.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %conv55.i.i.i, ptr %arrayidx57.i.i.i, align 2
  %max_cu_size.i.i.i = getelementptr i8, ptr %1, i32 508
  %353 = ptrtoint ptr %max_cu_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %max_cu_size.i.i.i, align 4
  %conv58.i.i.i = trunc i32 %354 to i8
  %max_cu_size59.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 38
  %355 = ptrtoint ptr %max_cu_size59.i.i.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %conv58.i.i.i, ptr %max_cu_size59.i.i.i, align 4
  %min_cu_size.i.i.i = getelementptr i8, ptr %1, i32 504
  %356 = ptrtoint ptr %min_cu_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %min_cu_size.i.i.i, align 4
  %conv60.i.i.i = trunc i32 %357 to i8
  %min_cu_size61.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 39
  %358 = ptrtoint ptr %min_cu_size61.i.i.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %conv60.i.i.i, ptr %min_cu_size61.i.i.i, align 1
  %max_tu_size.i.i.i = getelementptr i8, ptr %1, i32 516
  %359 = ptrtoint ptr %max_tu_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %max_tu_size.i.i.i, align 4
  %conv62.i.i.i = trunc i32 %360 to i8
  %max_tu_size63.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 40
  %361 = ptrtoint ptr %max_tu_size63.i.i.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 %conv62.i.i.i, ptr %max_tu_size63.i.i.i, align 2
  %min_tu_size.i.i.i = getelementptr i8, ptr %1, i32 512
  %362 = ptrtoint ptr %min_tu_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %min_tu_size.i.i.i, align 4
  %conv64.i.i.i = trunc i32 %363 to i8
  %min_tu_size65.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 41
  %364 = ptrtoint ptr %min_tu_size65.i.i.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %conv64.i.i.i, ptr %min_tu_size65.i.i.i, align 1
  %max_transfo_depth_intra.i.i.i = getelementptr i8, ptr %1, i32 520
  %365 = ptrtoint ptr %max_transfo_depth_intra.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %max_transfo_depth_intra.i.i.i, align 4
  %conv66.i.i.i = trunc i32 %366 to i8
  %max_transfo_depth_intra67.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 43
  %367 = ptrtoint ptr %max_transfo_depth_intra67.i.i.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %conv66.i.i.i, ptr %max_transfo_depth_intra67.i.i.i, align 1
  %max_transfo_depth_inter.i.i.i = getelementptr i8, ptr %1, i32 524
  %368 = ptrtoint ptr %max_transfo_depth_inter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %max_transfo_depth_inter.i.i.i, align 4
  %conv68.i.i.i = trunc i32 %369 to i8
  %max_transfo_depth_inter69.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 42
  %370 = ptrtoint ptr %max_transfo_depth_inter69.i.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %conv68.i.i.i, ptr %max_transfo_depth_inter69.i.i.i, align 4
  %371 = ptrtoint ptr %encoder_buffer.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %encoder_buffer.i, align 4
  %call70.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %372) #15
  %encoder_buffer_enabled.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 34
  %373 = ptrtoint ptr %encoder_buffer_enabled.i.i.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %call70.i.i.i, ptr %encoder_buffer_enabled.i.i.i, align 4
  %encoder_buffer_offset.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 33
  %374 = ptrtoint ptr %encoder_buffer_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 0, ptr %encoder_buffer_offset.i.i.i, align 4
  %frame_rc_enable.i.i.i = getelementptr i8, ptr %1, i32 436
  %375 = ptrtoint ptr %frame_rc_enable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %frame_rc_enable.i.i.i, align 4, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %376)
  %tobool71.not.i.i.i = icmp eq i8 %376, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cond.i26.i.i.i = icmp eq i32 %call3.i.i.i, 0
  %..i27.i.i.i = select i1 %cond.i26.i.i.i, i32 2, i32 1
  %cond.i.i.i = select i1 %tobool71.not.i.i.i, i32 0, i32 %..i27.i.i.i
  %rate_control_mode.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 47
  %377 = ptrtoint ptr %rate_control_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %cond.i.i.i, ptr %rate_control_mode.i.i.i, align 4
  %bitrate_peak.i.i.i = getelementptr i8, ptr %1, i32 444
  %378 = ptrtoint ptr %bitrate_peak.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %bitrate_peak.i.i.i, align 4
  %div.i.i.i.i = udiv i32 %379, 1000
  %mul1.i.i.i.i = mul i32 %call4.i.i.i, 720000
  %div2.i.i.i.i = udiv i32 %mul1.i.i.i.i, %div.i.i.i.i
  %cpb_size75.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 49
  %380 = ptrtoint ptr %cpb_size75.i.i.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %div2.i.i.i.i, ptr %cpb_size75.i.i.i, align 4
  %initial_rem_delay.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 48
  %381 = ptrtoint ptr %initial_rem_delay.i.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %div2.i.i.i.i, ptr %initial_rem_delay.i.i.i, align 4
  %framerate.i.i.i = getelementptr i8, ptr %1, i32 388
  %382 = ptrtoint ptr %framerate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %framerate.i.i.i, align 4
  %denominator.i.i.i = getelementptr i8, ptr %1, i32 392
  %384 = ptrtoint ptr %denominator.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %denominator.i.i.i, align 4
  %add.i.i.i = add i32 %383, -1
  %sub.i.i.i = add i32 %add.i.i.i, %385
  %div.i.i.i = udiv i32 %sub.i.i.i, %385
  %conv80.i.i.i = trunc i32 %div.i.i.i to i16
  %framerate81.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 50
  %386 = ptrtoint ptr %framerate81.i.i.i to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 %conv80.i.i.i, ptr %framerate81.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %385)
  %cmp84.i.i.i = icmp eq i32 %385, 1001
  %conv87.i.i.i = select i1 %cmp84.i.i.i, i16 1001, i16 1000
  %clk_ratio.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 51
  %387 = ptrtoint ptr %clk_ratio.i.i.i to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 %conv87.i.i.i, ptr %clk_ratio.i.i.i, align 2
  %bitrate.i.i.i = getelementptr i8, ptr %1, i32 440
  %388 = ptrtoint ptr %bitrate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %bitrate.i.i.i, align 4
  %target_bitrate.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 52
  %390 = ptrtoint ptr %target_bitrate.i.i.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %389, ptr %target_bitrate.i.i.i, align 4
  %max_bitrate.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 53
  %391 = ptrtoint ptr %max_bitrate.i.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %379, ptr %max_bitrate.i.i.i, align 4
  %conv89.i.i.i = trunc i32 %call1.i.i.i.i to i16
  %initial_qp.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 54
  %392 = ptrtoint ptr %initial_qp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 %conv89.i.i.i, ptr %initial_qp.i.i.i, align 4
  %393 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %394)
  %cmp.i29.i.i.i = icmp eq i32 %394, 1129727304
  %mpeg_video_h264_min_qp.sink.i.i.i.i = select i1 %cmp.i29.i.i.i, ptr %mpeg_video_hevc_min_qp.i, ptr %mpeg_video_h264_min_qp.i
  %395 = ptrtoint ptr %mpeg_video_h264_min_qp.sink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %mpeg_video_h264_min_qp.sink.i.i.i.i, align 4
  %call1.i30.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %396) #15
  %conv91.i.i.i = trunc i32 %call1.i30.i.i.i to i16
  %min_qp.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 55
  %397 = ptrtoint ptr %min_qp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %conv91.i.i.i, ptr %min_qp.i.i.i, align 2
  %398 = ptrtoint ptr %codec.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %codec.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %399)
  %cmp.i32.i.i.i = icmp eq i32 %399, 1129727304
  %mpeg_video_h264_max_qp.sink.i.i.i.i = select i1 %cmp.i32.i.i.i, ptr %mpeg_video_hevc_max_qp.i, ptr %mpeg_video_h264_max_qp.i
  %400 = ptrtoint ptr %mpeg_video_h264_max_qp.sink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %mpeg_video_h264_max_qp.sink.i.i.i.i, align 4
  %call1.i33.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %401) #15
  %conv93.i.i.i = trunc i32 %call1.i33.i.i.i to i16
  %max_qp.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 56
  %402 = ptrtoint ptr %max_qp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 %conv93.i.i.i, ptr %max_qp.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i.i.i, i32 %call1.i3.i.i.i)
  %cmp.i34.i.i.i = icmp eq i32 %call1.i.i.i.i, %call1.i3.i.i.i
  %sub.i.i.i.i = sub i32 %call1.i.i.i.i, %call1.i3.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.i.i.i.i to i16
  %retval.0.i35.i.i.i = select i1 %cmp.i34.i.i.i, i16 -1, i16 %conv.i.i.i.i
  %ip_delta.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 57
  %403 = ptrtoint ptr %ip_delta.i.i.i to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 %retval.0.i35.i.i.i, ptr %ip_delta.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i3.i.i.i, i32 %call1.i6.i.i.i)
  %cmp.i36.i.i.i = icmp eq i32 %call1.i3.i.i.i, %call1.i6.i.i.i
  %sub.i37.i.i.i = sub i32 %call1.i3.i.i.i, %call1.i6.i.i.i
  %conv.i38.i.i.i = trunc i32 %sub.i37.i.i.i to i16
  %retval.0.i39.i.i.i = select i1 %cmp.i36.i.i.i, i16 -1, i16 %conv.i38.i.i.i
  %pb_delta.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 58
  %404 = ptrtoint ptr %pb_delta.i.i.i to i32
  call void @__asan_store2_noabort(i32 %404)
  store i16 %retval.0.i39.i.i.i, ptr %pb_delta.i.i.i, align 4
  %golden_ref.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 59
  %405 = ptrtoint ptr %golden_ref.i.i.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 0, ptr %golden_ref.i.i.i, align 2
  %golden_delta.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 60
  %406 = ptrtoint ptr %golden_delta.i.i.i to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 2, ptr %golden_delta.i.i.i, align 4
  %golden_ref_frequency.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 61
  %407 = ptrtoint ptr %golden_ref_frequency.i.i.i to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 10, ptr %golden_ref_frequency.i.i.i, align 2
  %rate_control_option.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 62
  %408 = ptrtoint ptr %rate_control_option.i.i.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 0, ptr %rate_control_option.i.i.i, align 4
  %409 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %width.i.i.i, align 4
  %411 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %height.i.i.i, align 4
  %add98.i.i.i = add i32 %412, %410
  %num_pixel.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 63
  %413 = ptrtoint ptr %num_pixel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %add98.i.i.i, ptr %num_pixel.i.i.i, align 4
  %max_psnr.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 64
  %414 = ptrtoint ptr %max_psnr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %414)
  store i16 4200, ptr %max_psnr.i.i.i, align 4
  %max_pixel_value.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 65
  %415 = ptrtoint ptr %max_pixel_value.i.i.i to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 255, ptr %max_pixel_value.i.i.i, align 2
  %gop_ctrl_mode.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 67
  %416 = ptrtoint ptr %gop_ctrl_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 2, ptr %gop_ctrl_mode.i.i.i, align 4
  %417 = ptrtoint ptr %mpeg_video_gop_size.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %mpeg_video_gop_size.i, align 4
  %call99.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %418) #15
  %freq_idr.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 68
  %419 = ptrtoint ptr %freq_idr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %call99.i.i.i, ptr %freq_idr.i.i.i, align 4
  %freq_lt.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 69
  %420 = ptrtoint ptr %freq_lt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 0, ptr %freq_lt.i.i.i, align 4
  %gdr_mode.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 70
  %421 = ptrtoint ptr %gdr_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 0, ptr %gdr_mode.i.i.i, align 4
  %422 = ptrtoint ptr %mpeg_video_gop_size.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %mpeg_video_gop_size.i, align 4
  %call101.i.i.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %423) #15
  %conv102.i.i.i = trunc i32 %call101.i.i.i to i16
  %gop_length.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 71
  %424 = ptrtoint ptr %gop_length.i.i.i to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 %conv102.i.i.i, ptr %gop_length.i.i.i, align 4
  %subframe_latency.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 76
  %425 = ptrtoint ptr %subframe_latency.i.i.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 0, ptr %subframe_latency.i.i.i, align 4
  %lda_factors.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 79
  %426 = ptrtoint ptr %lda_factors.i.i.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 51, ptr %lda_factors.i.i.i, align 4
  %arrayidx105.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 79, i32 1
  %427 = ptrtoint ptr %arrayidx105.i.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 90, ptr %arrayidx105.i.i.i, align 4
  %arrayidx107.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 79, i32 2
  %428 = ptrtoint ptr %arrayidx107.i.i.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 151, ptr %arrayidx107.i.i.i, align 4
  %arrayidx109.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 79, i32 3
  %429 = ptrtoint ptr %arrayidx109.i.i.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 151, ptr %arrayidx109.i.i.i, align 4
  %arrayidx111.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 79, i32 4
  %430 = ptrtoint ptr %arrayidx111.i.i.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 151, ptr %arrayidx111.i.i.i, align 4
  %arrayidx113.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 79, i32 5
  %431 = ptrtoint ptr %arrayidx113.i.i.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 151, ptr %arrayidx113.i.i.i, align 4
  %max_num_merge_cand.i.i.i = getelementptr inbounds %struct.create_channel_param, ptr %param.i.i, i32 0, i32 80
  %432 = ptrtoint ptr %max_num_merge_cand.i.i.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 5, ptr %max_num_merge_cand.i.i.i, align 4
  %plat_dev.i.i.i = getelementptr inbounds %struct.allegro_dev, ptr %3, i32 0, i32 3
  %433 = ptrtoint ptr %plat_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %plat_dev.i.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.platform_device, ptr %434, i32 0, i32 3
  %paddr.i.i.i = getelementptr i8, ptr %1, i32 452
  %call.i.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i.i, i32 noundef 280, ptr noundef %paddr.i.i.i, i32 noundef 3264, i32 noundef 0) #15
  %435 = ptrtoint ptr %config_blob.i.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %call.i.i.i.i, ptr %config_blob.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %fill_create_channel_param.exit.i.i.allegro_alloc_buffer.exit.i.i_crit_edge, label %if.end.i.i.i

fill_create_channel_param.exit.i.i.allegro_alloc_buffer.exit.i.i_crit_edge: ; preds = %fill_create_channel_param.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_alloc_buffer.exit.i.i

if.end.i.i.i:                                     ; preds = %fill_create_channel_param.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %size3.i.i.i = getelementptr i8, ptr %1, i32 456
  %436 = ptrtoint ptr %size3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 280, ptr %size3.i.i.i, align 4
  br label %allegro_alloc_buffer.exit.i.i

allegro_alloc_buffer.exit.i.i:                    ; preds = %if.end.i.i.i, %fill_create_channel_param.exit.i.i.allegro_alloc_buffer.exit.i.i_crit_edge
  %fw_info.i.i = getelementptr inbounds %struct.allegro_dev, ptr %3, i32 0, i32 10
  %437 = ptrtoint ptr %fw_info.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %fw_info.i.i, align 8
  %mailbox_version.i.i = getelementptr inbounds %struct.fw_info, ptr %438, i32 0, i32 6
  %439 = ptrtoint ptr %mailbox_version.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %mailbox_version.i.i, align 4
  %441 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %440, ptr %param.i.i, align 4
  %call2.i.i = call i32 @allegro_encode_config_blob(ptr noundef %call.i.i.i.i, ptr noundef nonnull %param.i.i) #15
  %442 = getelementptr inbounds i8, ptr %msg.i.i, i32 24
  %443 = ptrtoint ptr %442 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 0, ptr %442, align 4
  %444 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 5, ptr %msg.i.i, align 4
  %445 = ptrtoint ptr %fw_info.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %fw_info.i.i, align 8
  %mailbox_version4.i.i = getelementptr inbounds %struct.fw_info, ptr %446, i32 0, i32 6
  %447 = ptrtoint ptr %mailbox_version4.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %mailbox_version4.i.i, align 4
  %449 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %448, ptr %243, align 4
  %450 = ptrtoint ptr %user_id.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %user_id.i, align 4
  %452 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %451, ptr %244, align 4
  %453 = ptrtoint ptr %config_blob.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %config_blob.i.i, align 4
  %455 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %454, ptr %245, align 4
  %456 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %call2.i.i, ptr %246, align 4
  %457 = ptrtoint ptr %paddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %paddr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.addr.i.i.i) #15
  %459 = ptrtoint ptr %phys.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %458, ptr %phys.addr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %458)
  %tobool3.not.i.i.i = icmp sgt i32 %458, -1
  br i1 %tobool3.not.i.i.i, label %allegro_alloc_buffer.exit.i.i.allegro_mcu_send_create_channel.exit.i_crit_edge, label %do.end.i.i.i

allegro_alloc_buffer.exit.i.i.allegro_mcu_send_create_channel.exit.i_crit_edge: ; preds = %allegro_alloc_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_mcu_send_create_channel.exit.i

do.end.i.i.i:                                     ; preds = %allegro_alloc_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name.i.i.i, ptr noundef nonnull %phys.addr.i.i.i) #18
  br label %allegro_mcu_send_create_channel.exit.i

allegro_mcu_send_create_channel.exit.i:           ; preds = %do.end.i.i.i, %allegro_alloc_buffer.exit.i.i.allegro_mcu_send_create_channel.exit.i_crit_edge
  %460 = getelementptr inbounds %struct.mcu_msg_create_channel, ptr %msg.i.i, i32 0, i32 4
  %461 = ptrtoint ptr %phys.addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %phys.addr.i.i.i, align 4
  %or.i.i.i = or i32 %462, -2147483648
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.addr.i.i.i) #15
  %463 = ptrtoint ptr %460 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %or.i.i.i, ptr %460, align 4
  %mbox_command.i.i = getelementptr inbounds %struct.allegro_dev, ptr %3, i32 0, i32 17
  %464 = ptrtoint ptr %mbox_command.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %mbox_command.i.i, align 4
  %call11.i.i = call fastcc i32 @allegro_mbox_send(ptr noundef %465, ptr noundef nonnull %msg.i.i) #15
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %param.i.i) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg.i.i) #15
  %call37.i = call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 500) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp eq i32 %call37.i, 0
  br i1 %cmp38.i, label %if.then39.i, label %allegro_mcu_send_create_channel.exit.i.if.end40.i_crit_edge

allegro_mcu_send_create_channel.exit.i.if.end40.i_crit_edge: ; preds = %allegro_mcu_send_create_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

if.then39.i:                                      ; preds = %allegro_mcu_send_create_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %error.i = getelementptr i8, ptr %1, i32 812
  %466 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 -110, ptr %error.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %allegro_mcu_send_create_channel.exit.i.if.end40.i_crit_edge
  %error41.i = getelementptr i8, ptr %1, i32 812
  %467 = ptrtoint ptr %error41.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %error41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %468)
  %tobool.not.i = icmp eq i32 %468, 0
  br i1 %tobool.not.i, label %do.body44.i, label %allegro_create_channel.exit

do.body44.i:                                      ; preds = %if.end40.i
  %469 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %469)
  %cmp45.i = icmp sgt i32 %469, 0
  br i1 %cmp45.i, label %do.end49.i, label %do.body44.i.if.end2_crit_edge

do.body44.i.if.end2_crit_edge:                    ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

do.end49.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #17
  %name52.i = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %470 = ptrtoint ptr %mcu_channel_id.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %mcu_channel_id.i.i, align 4
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef %name52.i, i32 noundef %471) #18
  br label %if.end2

allegro_create_channel.exit:                      ; preds = %if.end40.i
  call fastcc void @allegro_destroy_channel(ptr noundef %add.ptr) #15
  %472 = ptrtoint ptr %error41.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %error41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %473)
  %tobool.not = icmp eq i32 %473, 0
  br i1 %tobool.not, label %allegro_create_channel.exit.if.end2_crit_edge, label %allegro_create_channel.exit.cleanup_crit_edge

allegro_create_channel.exit.cleanup_crit_edge:    ; preds = %allegro_create_channel.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

allegro_create_channel.exit.if.end2_crit_edge:    ; preds = %allegro_create_channel.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

if.end2:                                          ; preds = %allegro_create_channel.exit.if.end2_crit_edge, %do.end49.i, %do.body44.i.if.end2_crit_edge, %do.end.i, %entry.if.end2_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %474 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %m2m_ctx, align 4
  %call3 = call i32 @v4l2_m2m_streamon(ptr noundef %file, ptr noundef %475, i32 noundef %type) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %allegro_create_channel.exit.cleanup_crit_edge, %allegro_create_channel.exit.thread12
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ %473, %allegro_create_channel.exit.cleanup_crit_edge ], [ -16, %allegro_create_channel.exit.thread12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %cmd) #2 align 64 {
entry:
  %eos_event.i.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %cmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @v4l2_m2m_ioctl_encoder_cmd(ptr noundef %file, ptr noundef %fh, ptr noundef %cmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  %m2m_ctx.i = getelementptr i8, ptr %fh, i32 188
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %has_stopped.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %has_stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_stopped.i.i, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i, label %if.then6.if.end8thread-pre-split_crit_edge, label %if.then.i

if.then6.if.end8thread-pre-split_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8thread-pre-split

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %eos_event.i.i) #15
  %6 = call ptr @memset(ptr %eos_event.i.i, i32 0, i32 136)
  %7 = ptrtoint ptr %eos_event.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %eos_event.i.i, align 8
  call void @v4l2_event_queue_fh(ptr noundef %fh, ptr noundef nonnull %eos_event.i.i) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %eos_event.i.i) #15
  br label %if.end8thread-pre-split

if.end8thread-pre-split:                          ; preds = %if.then.i, %if.then6.if.end8thread-pre-split_crit_edge
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %cmd, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8thread-pre-split, %if.end4.if.end8_crit_edge
  %9 = phi i32 [ %.pr, %if.end8thread-pre-split ], [ %1, %if.end4.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %m2m_ctx.i26 = getelementptr i8, ptr %fh, i32 188
  %10 = ptrtoint ptr %m2m_ctx.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_ctx.i26, align 4
  %has_stopped.i.i27 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %has_stopped.i.i27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_stopped.i.i27, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.not.i28 = icmp eq i8 %13, 0
  br i1 %tobool.i.not.i28, label %if.then11.cleanup_crit_edge, label %if.then.i29

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i29:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %last_buffer_dequeued.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 7, i32 0, i32 28
  %14 = ptrtoint ptr %last_buffer_dequeued.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i = load i16, ptr %last_buffer_dequeued.i.i, align 4
  %bf.clear.i.i = and i16 %bf.load.i.i, -129
  store i16 %bf.clear.i.i, ptr %last_buffer_dequeued.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i29, %if.then11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.then.i29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_try_encoder_cmd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @allegro_g_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %a) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %timeperframe2 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %framerate = getelementptr i8, ptr %fh, i32 388
  %denominator = getelementptr i8, ptr %fh, i32 392
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %denominator, align 4
  %5 = ptrtoint ptr %timeperframe2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %timeperframe2, align 4
  %6 = ptrtoint ptr %framerate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %framerate, align 4
  %denominator5 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %denominator5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %denominator5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @allegro_s_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, ptr nocapture noundef %a) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %timeperframe2 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %timeperframe2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeperframe2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.end.allegro_g_parm.exit_crit_edge, label %lor.lhs.false

if.end.allegro_g_parm.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_g_parm.exit

lor.lhs.false:                                    ; preds = %if.end
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %lor.lhs.false.allegro_g_parm.exit_crit_edge, label %if.end6

lor.lhs.false.allegro_g_parm.exit_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %allegro_g_parm.exit

allegro_g_parm.exit:                              ; preds = %lor.lhs.false.allegro_g_parm.exit_crit_edge, %if.end.allegro_g_parm.exit_crit_edge
  %framerate.i = getelementptr i8, ptr %fh, i32 388
  %denominator.i = getelementptr i8, ptr %fh, i32 392
  %7 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %denominator.i, align 4
  %9 = ptrtoint ptr %timeperframe2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %timeperframe2, align 4
  %10 = ptrtoint ptr %framerate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %framerate.i, align 4
  %denominator5.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %denominator5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %denominator5.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 @gcd(i32 noundef %6, i32 noundef %4) #21
  %div11 = udiv i32 %6, %call9
  %framerate = getelementptr i8, ptr %fh, i32 388
  %13 = ptrtoint ptr %framerate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div11, ptr %framerate, align 4
  %14 = ptrtoint ptr %timeperframe2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeperframe2, align 4
  %div14 = udiv i32 %15, %call9
  %denominator16 = getelementptr i8, ptr %fh, i32 392
  %16 = ptrtoint ptr %denominator16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div14, ptr %denominator16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %allegro_g_parm.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %allegro_g_parm.exit ], [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @allegro_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %0 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.284)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1129727304, label %entry.sw.epilog_crit_edge
    i32 875967048, label %entry.sw.epilog_crit_edge9
    i32 842094158, label %entry.sw.epilog_crit_edge10
  ]

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge9, %entry.sw.epilog_crit_edge10
  %3 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.return_crit_edge

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %type, align 4
  %6 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %6, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3840, ptr %max_width, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %step_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %11 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2160, ptr %max_height, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %12 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %step_height, align 4
  br label %return

return:                                           ; preds = %if.end, %sw.epilog.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ], [ -22, %sw.epilog.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_subscribe_event(ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef null) #15
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #15
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call1, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allegro_encode_config_blob(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_encoder_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_runtime_suspend(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_mcu = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %clk_mcu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_mcu, align 4
  tail call void @clk_disable(ptr noundef %3) #15
  tail call void @clk_unprepare(ptr noundef %3) #15
  %clk_core = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %clk_core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_core, align 8
  tail call void @clk_disable(ptr noundef %5) #15
  tail call void @clk_unprepare(ptr noundef %5) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allegro_runtime_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  %clk_mcu = alloca i32, align 4
  %clk_core = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %settings1 = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %settings1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %settings1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_mcu) #15
  %4 = ptrtoint ptr %clk_mcu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %clk_mcu, align 4, !annotation !463
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_core) #15
  %5 = ptrtoint ptr %clk_core to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %clk_core, align 4, !annotation !463
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @regmap_read(ptr noundef nonnull %3, i32 noundef 40, ptr noundef nonnull %clk_core) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %clk_core5 = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %clk_core5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_core5, align 8
  %8 = ptrtoint ptr %clk_core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_core, align 4
  %mul6 = mul i32 %9, 1000000
  %call7 = call i32 @clk_set_rate(ptr noundef %7, i32 noundef %mul6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %clk_core5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_core5, align 8
  %call.i = call i32 @clk_prepare(ptr noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %call1.i = call i32 @clk_enable(ptr noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end15, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end.i
  %call16 = call i32 @regmap_read(ptr noundef nonnull %3, i32 noundef 36, ptr noundef nonnull %clk_mcu) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.disable_clk_core_crit_edge, label %if.end19

if.end15.disable_clk_core_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_clk_core

if.end19:                                         ; preds = %if.end15
  %clk_mcu20 = getelementptr inbounds %struct.allegro_dev, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %clk_mcu20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_mcu20, align 4
  %14 = ptrtoint ptr %clk_mcu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_mcu, align 4
  %mul22 = mul i32 %15, 1000000
  %call23 = call i32 @clk_set_rate(ptr noundef %13, i32 noundef %mul22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end19.disable_clk_core_crit_edge, label %if.end26

if.end19.disable_clk_core_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_clk_core

if.end26:                                         ; preds = %if.end19
  %16 = ptrtoint ptr %clk_mcu20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_mcu20, align 4
  %call.i53 = call i32 @clk_prepare(ptr noundef %17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i57, label %if.end26.disable_clk_core_crit_edge

if.end26.disable_clk_core_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %disable_clk_core

if.end.i57:                                       ; preds = %if.end26
  %call1.i55 = call i32 @clk_enable(ptr noundef %17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool2.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool2.not.i56, label %if.end.i57.cleanup_crit_edge, label %if.then3.i58

if.end.i57.cleanup_crit_edge:                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3.i58:                                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #17
  call void @clk_unprepare(ptr noundef %17) #15
  br label %disable_clk_core

disable_clk_core:                                 ; preds = %if.then3.i58, %if.end26.disable_clk_core_crit_edge, %if.end19.disable_clk_core_crit_edge, %if.end15.disable_clk_core_crit_edge
  %err.0 = phi i32 [ %call16, %if.end15.disable_clk_core_crit_edge ], [ %call23, %if.end19.disable_clk_core_crit_edge ], [ %call1.i55, %if.then3.i58 ], [ %call.i53, %if.end26.disable_clk_core_crit_edge ]
  %18 = ptrtoint ptr %clk_core5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_core5, align 8
  call void @clk_disable(ptr noundef %19) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %disable_clk_core, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %19, %disable_clk_core ], [ %11, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %err.0, %disable_clk_core ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i57.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end4.cleanup_crit_edge ], [ 0, %if.end.i57.cleanup_crit_edge ], [ %call.i, %if.end10.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_core) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_mcu) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 257)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 257)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !247, !248, !249, !250, !252, !253, !255, !257, !258, !259, !260, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !299, !301, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !353, !354, !355, !356, !358, !360, !362, !363, !365, !366, !368, !370, !371, !372, !373, !375, !377, !379, !381, !382, !383, !384, !385, !386, !387, !388, !390, !391, !392, !393, !395, !396, !397, !398, !400, !401, !402, !403, !405, !406, !407, !408, !410, !411, !412, !413, !415, !416, !417, !419, !421, !423, !425, !426, !427, !428, !430, !431, !432, !434, !435, !436, !438, !439, !440, !442, !443, !444, !445, !447, !448, !449, !451}
!llvm.module.flags = !{!453, !454, !455, !456, !457, !458, !459, !460}
!llvm.ident = !{!461}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 115, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype299, !1, !"__UNIQUE_ID_debugtype299", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug300, !4, !"__UNIQUE_ID_debug300", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 116, i32 1}
!5 = !{ptr @__initcall__kmod_allegro__321_4022_allegro_driver_init6, !6, !"__initcall__kmod_allegro__321_4022_allegro_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 4022, i32 1}
!7 = !{ptr @__exitcall_allegro_driver_exit, !6, !"__exitcall_allegro_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file322, !9, !"__UNIQUE_ID_file322", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 4024, i32 1}
!10 = !{ptr @__UNIQUE_ID_license323, !9, !"__UNIQUE_ID_license323", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author324, !12, !"__UNIQUE_ID_author324", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 4025, i32 1}
!13 = !{ptr @__UNIQUE_ID_description325, !14, !"__UNIQUE_ID_description325", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 4026, i32 1}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 114, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 4016, i32 11}
!20 = !{ptr @allegro_driver, !21, !"allegro_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 4012, i32 31}
!22 = !{ptr @allegro_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3845, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3849, i32 59}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3851, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @allegro_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @allegro_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3857, i32 3}
!37 = !{ptr @allegro_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @allegro_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @allegro_probe._key, !40, !"_key", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3860, i32 16}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3863, i32 3}
!44 = !{ptr @allegro_probe._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @allegro_probe._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3867, i32 64}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3869, i32 3}
!50 = !{ptr @allegro_probe._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @allegro_probe._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3877, i32 3}
!54 = !{ptr @allegro_probe._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @allegro_probe._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @allegro_probe._key.22, !57, !"_key", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3880, i32 14}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3883, i32 3}
!61 = !{ptr @allegro_probe._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @allegro_probe._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3887, i32 53}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3889, i32 3}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @allegro_probe._entry.28, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @allegro_probe._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3891, i32 43}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3895, i32 42}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3907, i32 3}
!76 = !{ptr @allegro_probe._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @allegro_probe._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3919, i32 3}
!80 = !{ptr @allegro_probe._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @allegro_probe._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @init_completion.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../include/linux/completion.h", i32 87, i32 2}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 184, i32 10}
!87 = !{ptr @allegro_regmap_config, !88, !"allegro_regmap_config", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 183, i32 29}
!89 = !{ptr @allegro_sram_config, !90, !"allegro_sram_config", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 192, i32 29}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2294, i32 3}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @allegro_handle_message._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @allegro_handle_message._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2164, i32 3}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @allegro_handle_create_channel._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @allegro_handle_create_channel._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2172, i32 3}
!103 = !{ptr @allegro_handle_create_channel._entry.46, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @allegro_handle_create_channel._entry_ptr.48, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2182, i32 2}
!107 = !{ptr @allegro_handle_create_channel._entry.49, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @allegro_handle_create_channel._entry_ptr.51, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2194, i32 2}
!111 = !{ptr @allegro_handle_create_channel._entry.52, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @allegro_handle_create_channel._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2201, i32 3}
!115 = !{ptr @allegro_handle_create_channel._entry.55, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @allegro_handle_create_channel._entry_ptr.57, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2210, i32 2}
!119 = !{ptr @allegro_handle_create_channel._entry.58, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @allegro_handle_create_channel._entry_ptr.60, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2217, i32 3}
!123 = !{ptr @allegro_handle_create_channel._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @allegro_handle_create_channel._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 482, i32 10}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 484, i32 10}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 486, i32 10}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 488, i32 10}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 490, i32 10}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 492, i32 10}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 494, i32 10}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 496, i32 10}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 498, i32 10}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 500, i32 10}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 502, i32 10}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 504, i32 10}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 506, i32 10}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 509, i32 10}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 409, i32 3}
!155 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @to_codec_addr._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @to_codec_addr._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 395, i32 3}
!160 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @to_mcu_addr._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @to_mcu_addr._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2242, i32 3}
!165 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @allegro_handle_destroy_channel._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @allegro_handle_destroy_channel._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2249, i32 2}
!170 = !{ptr @allegro_handle_destroy_channel._entry.84, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @allegro_handle_destroy_channel._entry_ptr.86, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2265, i32 3}
!174 = !{ptr @allegro_handle_encode_frame._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @allegro_handle_encode_frame._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 1972, i32 3}
!178 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @allegro_channel_finish_frame._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @allegro_channel_finish_frame._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 1979, i32 3}
!183 = !{ptr @allegro_channel_finish_frame._entry.90, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @allegro_channel_finish_frame._entry_ptr.92, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.94, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 1995, i32 3}
!187 = !{ptr @allegro_channel_finish_frame._entry.93, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @allegro_channel_finish_frame._entry_ptr.95, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2004, i32 3}
!191 = !{ptr @allegro_channel_finish_frame._entry.96, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @allegro_channel_finish_frame._entry_ptr.98, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2012, i32 3}
!195 = !{ptr @allegro_channel_finish_frame._entry.99, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @allegro_channel_finish_frame._entry_ptr.101, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2022, i32 3}
!199 = !{ptr @allegro_channel_finish_frame._entry.102, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @allegro_channel_finish_frame._entry_ptr.104, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.106, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2029, i32 2}
!203 = !{ptr @allegro_channel_finish_frame._entry.105, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @allegro_channel_finish_frame._entry_ptr.107, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.109, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2046, i32 4}
!207 = !{ptr @allegro_channel_finish_frame._entry.108, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @allegro_channel_finish_frame._entry_ptr.110, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.112, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2053, i32 3}
!211 = !{ptr @allegro_channel_finish_frame._entry.111, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @allegro_channel_finish_frame._entry_ptr.113, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.115, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2064, i32 4}
!215 = !{ptr @allegro_channel_finish_frame._entry.114, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @allegro_channel_finish_frame._entry_ptr.116, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2071, i32 3}
!219 = !{ptr @allegro_channel_finish_frame._entry.117, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @allegro_channel_finish_frame._entry_ptr.119, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.121, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2082, i32 4}
!223 = !{ptr @allegro_channel_finish_frame._entry.120, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @allegro_channel_finish_frame._entry_ptr.122, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.124, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2089, i32 3}
!227 = !{ptr @allegro_channel_finish_frame._entry.123, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @allegro_channel_finish_frame._entry_ptr.125, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.127, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2103, i32 4}
!231 = !{ptr @allegro_channel_finish_frame._entry.126, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @allegro_channel_finish_frame._entry_ptr.128, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2109, i32 3}
!235 = !{ptr @allegro_channel_finish_frame._entry.129, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @allegro_channel_finish_frame._entry_ptr.131, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.133, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2115, i32 3}
!239 = !{ptr @allegro_channel_finish_frame._entry.132, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @allegro_channel_finish_frame._entry_ptr.134, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.136, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2129, i32 2}
!243 = !{ptr @allegro_channel_finish_frame._entry.135, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @allegro_channel_finish_frame._entry_ptr.137, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.138, !242, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.139, !242, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.140, !242, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.141, !242, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.142, !242, !"<string literal>", i1 false, i1 false}
!250 = distinct !{null, !251, !"__already_done", i1 false, i1 false}
!251 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!252 = !{ptr @.str.143, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.144, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3821, i32 19}
!255 = !{ptr @.str.145, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3823, i32 2}
!257 = !{ptr @.str.146, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @allegro_firmware_request_nowait._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @allegro_firmware_request_nowait._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.147, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3737, i32 30}
!262 = !{ptr @.str.148, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3744, i32 2}
!264 = !{ptr @.str.149, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @allegro_fw_callback._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @allegro_fw_callback._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.151, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3752, i32 3}
!269 = !{ptr @allegro_fw_callback._entry.150, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @allegro_fw_callback._entry_ptr.152, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.154, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3756, i32 2}
!273 = !{ptr @allegro_fw_callback._entry.153, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @allegro_fw_callback._entry_ptr.155, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.157, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3767, i32 3}
!277 = !{ptr @allegro_fw_callback._entry.156, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @allegro_fw_callback._entry_ptr.158, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.160, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3776, i32 3}
!281 = !{ptr @allegro_fw_callback._entry.159, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @allegro_fw_callback._entry_ptr.161, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.163, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3782, i32 3}
!285 = !{ptr @allegro_fw_callback._entry.162, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @allegro_fw_callback._entry_ptr.164, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.166, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3788, i32 3}
!289 = !{ptr @allegro_fw_callback._entry.165, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @allegro_fw_callback._entry_ptr.167, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.169, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3792, i32 2}
!293 = !{ptr @allegro_fw_callback._entry.168, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @allegro_fw_callback._entry_ptr.170, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.171, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 374, i32 14}
!297 = !{ptr @.str.172, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 383, i32 14}
!299 = !{ptr @supported_firmware, !300, !"supported_firmware", i1 false, i1 false}
!300 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 370, i32 29}
!301 = !{ptr @.str.173, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2338, i32 2}
!303 = !{ptr @.str.174, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @allegro_copy_firmware._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @allegro_copy_firmware._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.176, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2342, i32 3}
!308 = !{ptr @allegro_copy_firmware._entry.175, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @allegro_copy_firmware._entry_ptr.177, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.178, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2360, i32 3}
!312 = !{ptr @.str.179, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @allegro_copy_fw_codec._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @allegro_copy_fw_codec._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.181, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2365, i32 2}
!317 = !{ptr @allegro_copy_fw_codec._entry.180, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @allegro_copy_fw_codec._entry_ptr.182, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.184, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2374, i32 2}
!321 = !{ptr @allegro_copy_fw_codec._entry.183, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @allegro_copy_fw_codec._entry_ptr.185, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.187, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2384, i32 2}
!325 = !{ptr @allegro_copy_fw_codec._entry.186, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @allegro_copy_fw_codec._entry_ptr.188, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.189, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3662, i32 3}
!329 = !{ptr @.str.190, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @allegro_mcu_hw_init._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @allegro_mcu_hw_init._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.192, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3670, i32 3}
!334 = !{ptr @allegro_mcu_hw_init._entry.191, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @allegro_mcu_hw_init._entry_ptr.193, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.195, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3678, i32 3}
!338 = !{ptr @allegro_mcu_hw_init._entry.194, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @allegro_mcu_hw_init._entry_ptr.196, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.198, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3687, i32 3}
!342 = !{ptr @allegro_mcu_hw_init._entry.197, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @allegro_mcu_hw_init._entry_ptr.199, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.201, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3697, i32 3}
!346 = !{ptr @allegro_mcu_hw_init._entry.200, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @allegro_mcu_hw_init._entry_ptr.202, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @allegro_mbox_init.__key, !349, !"__key", i1 false, i1 false}
!349 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 789, i32 2}
!350 = !{ptr @.str.203, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.204, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 989, i32 2}
!353 = !{ptr @.str.205, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @allegro_encoder_buffer_init._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @allegro_encoder_buffer_init._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @allegro_m2m_ops, !357, !"allegro_m2m_ops", i1 false, i1 false}
!357 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3648, i32 34}
!358 = !{ptr @allegro_fops, !359, !"allegro_fops", i1 false, i1 false}
!359 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3590, i32 42}
!360 = !{ptr @allegro_open.__key, !361, !"__key", i1 false, i1 false}
!361 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3056, i32 2}
!362 = !{ptr @.str.206, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @allegro_open._key, !364, !"_key", i1 false, i1 false}
!364 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3063, i32 2}
!365 = !{ptr @.str.207, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @allegro_ctrl_ops, !367, !"allegro_ctrl_ops", i1 false, i1 false}
!367 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3019, i32 35}
!368 = !{ptr @.str.208, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2996, i32 2}
!370 = !{ptr @.str.209, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @allegro_s_ctrl._entry, !369, !"_entry", i1 false, i1 false}
!372 = !{ptr @allegro_s_ctrl._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.210, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3026, i32 10}
!375 = !{ptr @allegro_encoder_buffer_ctrl_config, !376, !"allegro_encoder_buffer_ctrl_config", i1 false, i1 false}
!376 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3024, i32 38}
!377 = !{ptr @allegro_queue_ops, !378, !"allegro_queue_ops", i1 false, i1 false}
!378 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2893, i32 29}
!379 = !{ptr @.str.211, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2762, i32 2}
!381 = !{ptr @.str.212, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @allegro_queue_setup._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @allegro_queue_setup._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.213, !380, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.214, !380, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.215, !380, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.216, !380, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.217, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2796, i32 4}
!390 = !{ptr @.str.218, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @allegro_buf_prepare._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @allegro_buf_prepare._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.219, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2836, i32 2}
!395 = !{ptr @.str.220, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @allegro_start_streaming._entry, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @allegro_start_streaming._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.221, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2857, i32 2}
!400 = !{ptr @.str.222, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @allegro_stop_streaming._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @allegro_stop_streaming._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.223, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2493, i32 4}
!405 = !{ptr @.str.224, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @allegro_destroy_channel._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @allegro_destroy_channel._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.225, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2644, i32 3}
!410 = !{ptr @.str.226, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @allegro_channel_adjust._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @allegro_channel_adjust._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.228, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2658, i32 3}
!415 = !{ptr @allegro_channel_adjust._entry.227, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @allegro_channel_adjust._entry_ptr.229, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @allegro_ioctl_ops, !418, !"allegro_ioctl_ops", i1 false, i1 false}
!418 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3556, i32 36}
!419 = !{ptr @.str.230, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3256, i32 21}
!421 = !{ptr @.str.231, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3257, i32 49}
!423 = !{ptr @.str.232, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2551, i32 3}
!425 = !{ptr @.str.233, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @allegro_create_channel._entry, !424, !"_entry", i1 false, i1 false}
!427 = !{ptr @allegro_create_channel._entry_ptr, !424, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.235, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2558, i32 3}
!430 = !{ptr @allegro_create_channel._entry.234, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @allegro_create_channel._entry_ptr.236, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.238, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2564, i32 2}
!434 = !{ptr @allegro_create_channel._entry.237, !433, !"_entry", i1 false, i1 false}
!435 = !{ptr @allegro_create_channel._entry_ptr.239, !433, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.241, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 2606, i32 2}
!438 = !{ptr @allegro_create_channel._entry.240, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @allegro_create_channel._entry_ptr.242, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.243, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3721, i32 3}
!442 = !{ptr @.str.244, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @allegro_mcu_hw_deinit._entry, !441, !"_entry", i1 false, i1 false}
!444 = !{ptr @allegro_mcu_hw_deinit._entry_ptr, !441, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.246, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 3726, i32 3}
!447 = !{ptr @allegro_mcu_hw_deinit._entry.245, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @allegro_mcu_hw_deinit._entry_ptr.247, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @allegro_dt_ids, !450, !"allegro_dt_ids", i1 false, i1 false}
!450 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 4000, i32 34}
!451 = !{ptr @allegro_pm_ops, !452, !"allegro_pm_ops", i1 false, i1 false}
!452 = !{!"../drivers/media/platform/allegro-dvt/allegro-core.c", i32 4007, i32 32}
!453 = !{i32 1, !"wchar_size", i32 2}
!454 = !{i32 1, !"min_enum_size", i32 4}
!455 = !{i32 8, !"branch-target-enforcement", i32 0}
!456 = !{i32 8, !"sign-return-address", i32 0}
!457 = !{i32 8, !"sign-return-address-all", i32 0}
!458 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!459 = !{i32 7, !"uwtable", i32 1}
!460 = !{i32 7, !"frame-pointer", i32 2}
!461 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!462 = !{i8 0, i8 2}
!463 = !{!"auto-init"}
!464 = !{!"branch_weights", i32 2000, i32 1}
!465 = !{i32 0, i32 33}
!466 = !{i32 3, i32 33}
!467 = !{i64 2148350614}
!468 = !{i64 835437, i64 835462, i64 835484, i64 835500, i64 835512, i64 835532, i64 835556, i64 835572, i64 835584}
!469 = !{i64 2148350802}
!470 = !{i64 2156896352}
!471 = !{i64 2156896194}
!472 = !{i64 2156897148}
!473 = !{i64 2156896990}
