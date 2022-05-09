; ModuleID = '/llk/IR_all_yes/drivers/staging/vc04_services/bcm2835-camera/controls.c_pt.bc'
source_filename = "../drivers/staging/vc04_services/bcm2835-camera/controls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bcm2835_mmal_v4l2_ctrl = type { i32, i32, i64, i64, i64, i64, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_mmal_scene_config = type { i32, i32, i32 }
%struct.v4l2_to_mmal_effects_setting = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.bcm2835_mmal_dev = type { %struct.v4l2_device, %struct.video_device, %struct.mutex, %struct.v4l2_ctrl_handler, [29 x ptr], i32, %struct.mmal_colourfx, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, ptr, [4 x ptr], i32, %struct.v4l2_window, %struct.anon.114, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mmal_colourfx = type { i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.anon.114 = type { i32, i32, i32, i32, ptr, %struct.v4l2_fract, i32, i32, i32, i32, i32, %struct.vb2_queue, i64, i64, i32, ptr, ptr, ptr, i32, %struct.completion }
%struct.v4l2_fract = type { i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mmal_parameter_fps_range = type { %struct.mmal_parameter_rational, %struct.mmal_parameter_rational }
%struct.mmal_parameter_rational = type { i32, i32 }
%struct.vchiq_mmal_component = type { i8, i32, i32, i32, i32, %struct.vchiq_mmal_port, [4 x %struct.vchiq_mmal_port], [4 x %struct.vchiq_mmal_port], [4 x %struct.vchiq_mmal_port], i32 }
%struct.vchiq_mmal_port = type { i8, i32, i32, i32, ptr, ptr, %struct.vchiq_mmal_port_buffer, %struct.vchiq_mmal_port_buffer, %struct.vchiq_mmal_port_buffer, %struct.mmal_es_format_local, %union.mmal_es_specific_format, %struct.list_head, %struct.spinlock, %struct.atomic_t, ptr, ptr }
%struct.vchiq_mmal_port_buffer = type { i32, i32, i32 }
%struct.mmal_es_format_local = type { i32, i32, i32, ptr, i32, i32, i32, ptr }
%union.mmal_es_specific_format = type { %struct.mmal_video_format }
%struct.mmal_video_format = type { i32, i32, %struct.mmal_rect, %struct.mmal_rational, %struct.mmal_rational, i32 }
%struct.mmal_rect = type { i32, i32, i32, i32 }
%struct.mmal_rational = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.mmal_parameter_awbgains = type { %struct.mmal_parameter_rational, %struct.mmal_parameter_rational }
%struct.mmal_parameter_imagefx_parameters = type { i32, i32, [5 x i32] }
%struct.mmal_parameter_video_profile = type { i32, i32 }

@v4l2_ctrls = internal constant { [29 x %struct.bcm2835_mmal_v4l2_ctrl], [392 x i8] } { [29 x %struct.bcm2835_mmal_v4l2_ctrl] [%struct.bcm2835_mmal_v4l2_ctrl { i32 9963778, i32 0, i64 -100, i64 100, i64 0, i64 1, ptr null, i32 65583, ptr @ctrl_set_rational }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963803, i32 0, i64 -100, i64 100, i64 0, i64 1, ptr null, i32 65580, ptr @ctrl_set_rational }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963777, i32 0, i64 -100, i64 100, i64 0, i64 1, ptr null, i32 65581, ptr @ctrl_set_rational }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963776, i32 0, i64 0, i64 100, i64 50, i64 1, ptr null, i32 65582, ptr @ctrl_set_rational }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094871, i32 2, i64 0, i64 4, i64 0, i64 1, ptr @iso_qmenu, i32 65584, ptr @ctrl_set_iso }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094872, i32 1, i64 0, i64 1, i64 1, i64 1, ptr null, i32 65584, ptr @ctrl_set_iso }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094870, i32 0, i64 0, i64 1, i64 0, i64 1, ptr null, i32 65565, ptr @ctrl_set_value }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094849, i32 1, i64 -4, i64 3, i64 0, i64 0, ptr null, i32 65554, ptr @ctrl_set_exposure }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094850, i32 0, i64 1, i64 10000, i64 1000, i64 1, ptr null, i32 65603, ptr @ctrl_set_exposure }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094867, i32 2, i64 0, i64 24, i64 12, i64 0, ptr @ev_bias_qmenu, i32 65549, ptr @ctrl_set_value_ev }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094851, i32 0, i64 0, i64 1, i64 0, i64 1, ptr null, i32 0, ptr @ctrl_set_exposure }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094873, i32 1, i64 -16, i64 3, i64 0, i64 0, ptr null, i32 65555, ptr @ctrl_set_metering_mode }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094868, i32 1, i64 -1024, i64 9, i64 1, i64 0, ptr null, i32 65541, ptr @ctrl_set_awb_mode }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963790, i32 0, i64 1, i64 7999, i64 1000, i64 1, ptr null, i32 65604, ptr @ctrl_set_awb_gains }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963791, i32 0, i64 1, i64 7999, i64 1000, i64 1, ptr null, i32 65604, ptr @ctrl_set_awb_gains }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963807, i32 1, i64 0, i64 15, i64 0, i64 0, ptr null, i32 65542, ptr @ctrl_set_image_effect }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963818, i32 0, i64 0, i64 65535, i64 32896, i64 1, ptr null, i32 65543, ptr @ctrl_set_colfx }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963810, i32 0, i64 0, i64 360, i64 0, i64 90, ptr null, i32 65538, ptr @ctrl_set_rotate }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963796, i32 0, i64 0, i64 1, i64 0, i64 1, ptr null, i32 65551, ptr @ctrl_set_flip }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963797, i32 0, i64 0, i64 1, i64 0, i64 1, ptr null, i32 65551, ptr @ctrl_set_flip }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10029518, i32 1, i64 0, i64 1, i64 0, i64 0, ptr null, i32 131076, ptr @ctrl_set_bitrate_mode }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10029519, i32 0, i64 25000, i64 25000000, i64 10000000, i64 25000, ptr null, i32 131086, ptr @ctrl_set_bitrate }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10291459, i32 0, i64 1, i64 100, i64 30, i64 1, ptr null, i32 65561, ptr @ctrl_set_image_encode_output }, %struct.bcm2835_mmal_v4l2_ctrl { i32 9963800, i32 1, i64 0, i64 3, i64 1, i64 1, ptr null, i32 65544, ptr @ctrl_set_flicker_avoidance }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10029538, i32 0, i64 0, i64 1, i64 0, i64 1, ptr null, i32 131114, ptr @ctrl_set_video_encode_param_output }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10029675, i32 1, i64 4294967272, i64 4, i64 4, i64 1, ptr null, i32 131074, ptr @ctrl_set_video_encode_profile_level }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10029671, i32 1, i64 4294963200, i64 11, i64 11, i64 1, ptr null, i32 131074, ptr @ctrl_set_video_encode_profile_level }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10094874, i32 1, i64 -1, i64 13, i64 0, i64 1, ptr null, i32 131074, ptr @ctrl_set_scene_mode }, %struct.bcm2835_mmal_v4l2_ctrl { i32 10029670, i32 0, i64 0, i64 2147483647, i64 60, i64 1, ptr null, i32 131075, ptr @ctrl_set_video_encode_param_output }], [392 x i8] zeroinitializer }, align 32
@bcm2835_v4l2_debug = external dso_local local_unnamed_addr global i32, align 4
@bcm2835_mmal_set_all_camera_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: Failed when setting default values for ctrl %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bcm2835_mmal_set_all_camera_controls\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/staging/vc04_services/bcm2835-camera/controls.c\00", [40 x i8] zeroinitializer }, align 32
@bcm2835_mmal_set_all_camera_controls._entry_ptr = internal global ptr @bcm2835_mmal_set_all_camera_controls._entry, section ".printk_index", align 4
@set_framerate_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Set fps range to %d/%d to %d/%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_framerate_params\00", [43 x i8] zeroinitializer }, align 32
@set_framerate_params._entry_ptr = internal global ptr @set_framerate_params._entry, section ".printk_index", align 4
@set_framerate_params._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Failed to set fps ret %d\0A\00", [32 x i8] zeroinitializer }, align 32
@set_framerate_params._entry_ptr.7 = internal global ptr @set_framerate_params._entry.5, section ".printk_index", align 4
@bcm2835_mmal_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"controls:1319:(hdl)->_lock\00", [37 x i8] zeroinitializer }, align 32
@bcm2835_mmal_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @bcm2835_mmal_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@scene_configs = internal constant { [2 x %struct.v4l2_mmal_scene_config], [40 x i8] } { [2 x %struct.v4l2_mmal_scene_config] [%struct.v4l2_mmal_scene_config { i32 8, i32 2, i32 0 }, %struct.v4l2_mmal_scene_config { i32 11, i32 6, i32 0 }], [40 x i8] zeroinitializer }, align 32
@bcm2835_mmal_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013error adding control %d/%d id 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm2835_mmal_init_controls\00", [37 x i8] zeroinitializer }, align 32
@bcm2835_mmal_init_controls._entry_ptr = internal global ptr @bcm2835_mmal_init_controls._entry, section ".printk_index", align 4
@iso_qmenu = internal constant { [5 x i64], [56 x i8] } { [5 x i64] [i64 0, i64 100000, i64 200000, i64 400000, i64 800000], [56 x i8] zeroinitializer }, align 32
@ev_bias_qmenu = internal constant { [25 x i64], [56 x i8] } { [25 x i64] [i64 -4000, i64 -3667, i64 -3333, i64 -3000, i64 -2667, i64 -2333, i64 -2000, i64 -1667, i64 -1333, i64 -1000, i64 -667, i64 -333, i64 0, i64 333, i64 667, i64 1000, i64 1333, i64 1667, i64 2000, i64 2333, i64 2667, i64 3000, i64 3333, i64 3667, i64 4000], [56 x i8] zeroinitializer }, align 32
@iso_values = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 100, i32 200, i32 400, i32 800], [44 x i8] zeroinitializer }, align 32
@v4l2_to_mmal_effects_values = internal constant { [16 x %struct.v4l2_to_mmal_effects_setting], [192 x i8] } { [16 x %struct.v4l2_to_mmal_effects_setting] [%struct.v4l2_to_mmal_effects_setting zeroinitializer, %struct.v4l2_to_mmal_effects_setting { i32 1, i32 0, i32 1, i32 0, i32 128, i32 128, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 2, i32 0, i32 1, i32 0, i32 87, i32 151, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 4, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 6, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 7, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 8, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 9, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 10, i32 0, i32 1, i32 0, i32 171, i32 121, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 11, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 12, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.v4l2_to_mmal_effects_setting { i32 13, i32 2, i32 0, i32 0, i32 0, i32 0, i32 5, [5 x i32] [i32 1, i32 128, i32 160, i32 160, i32 48] }, %struct.v4l2_to_mmal_effects_setting { i32 14, i32 21, i32 0, i32 0, i32 0, i32 0, i32 3, [5 x i32] [i32 108, i32 274, i32 238, i32 0, i32 0] }, %struct.v4l2_to_mmal_effects_setting { i32 15, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }], [192 x i8] zeroinitializer }, align 32
@ctrl_set_image_effect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\017%s: mmal_ctrl:%p ctrl id:0x%x ctrl val:%d imagefx:0x%x color_effect:%s u:%d v:%d ret %d(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ctrl_set_image_effect\00", [42 x i8] zeroinitializer }, align 32
@ctrl_set_image_effect._entry_ptr = internal global ptr @ctrl_set_image_effect._entry, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@ctrl_set_colfx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s: %s: After: mmal_ctrl:%p ctrl id:0x%x ctrl val:%d ret %d(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ctrl_set_colfx\00", [17 x i8] zeroinitializer }, align 32
@ctrl_set_colfx._entry_ptr = internal global ptr @ctrl_set_colfx._entry, section ".printk_index", align 4
@ctrl_set_bitrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.17, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctrl_set_bitrate\00", [47 x i8] zeroinitializer }, align 32
@ctrl_set_bitrate._entry_ptr = internal global ptr @ctrl_set_bitrate._entry, section ".printk_index", align 4
@ctrl_set_scene_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: scene mode selected %d, was %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctrl_set_scene_mode\00", [44 x i8] zeroinitializer }, align 32
@ctrl_set_scene_mode._entry_ptr = internal global ptr @ctrl_set_scene_mode._entry, section ".printk_index", align 4
@ctrl_set_scene_mode._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s: %s: scene mode none: shut_speed %d, exp_mode %d, metering %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ctrl_set_scene_mode._entry_ptr.22 = internal global ptr @ctrl_set_scene_mode._entry.20, section ".printk_index", align 4
@ctrl_set_scene_mode._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ctrl_set_scene_mode._entry_ptr.24 = internal global ptr @ctrl_set_scene_mode._entry.23, section ".printk_index", align 4
@ctrl_set_scene_mode._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %s: Setting scene to %d, ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@ctrl_set_scene_mode._entry_ptr.27 = internal global ptr @ctrl_set_scene_mode._entry.25, section ".printk_index", align 4
@bcm2835_mmal_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014mmal_ctrl:%p ctrl id:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm2835_mmal_s_ctrl\00", [44 x i8] zeroinitializer }, align 32
@bcm2835_mmal_s_ctrl._entry_ptr = internal global ptr @bcm2835_mmal_s_ctrl._entry, section ".printk_index", align 4
@bcm2835_mmal_s_ctrl._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014ctrl id:%d/MMAL param %08X- returned ret %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bcm2835_mmal_s_ctrl._entry_ptr.32 = internal global ptr @bcm2835_mmal_s_ctrl._entry.30, section ".printk_index", align 4
@switch.table.ctrl_set_metering_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 1, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 10094871, i64 10094872]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 65554, i64 65603]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 9963790, i64 9963791]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 10029671, i64 10029675]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 11]
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"v4l2_ctrls\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 910, i32 44 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1259, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1288, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1308, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1319, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"bcm2835_mmal_ctrl_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 906, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"scene_configs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 137, i32 44 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1376, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [10 x i8] c"iso_qmenu\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 53, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"ev_bias_qmenu\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 38, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"iso_values\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 57, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant [28 x i8] c"v4l2_to_mmal_effects_values\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 96, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 549, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 575, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 597, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 788, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 805, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 855, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 879, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 895, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [59 x i8] c"../drivers/staging/vc04_services/bcm2835-camera/controls.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 901, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [36 x i8] c"switch.table.ctrl_set_metering_mode\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @bcm2835_mmal_init_controls._entry, ptr @bcm2835_mmal_init_controls._entry_ptr, ptr @bcm2835_mmal_s_ctrl._entry, ptr @bcm2835_mmal_s_ctrl._entry.30, ptr @bcm2835_mmal_s_ctrl._entry_ptr, ptr @bcm2835_mmal_s_ctrl._entry_ptr.32, ptr @bcm2835_mmal_set_all_camera_controls._entry, ptr @bcm2835_mmal_set_all_camera_controls._entry_ptr, ptr @ctrl_set_bitrate._entry, ptr @ctrl_set_bitrate._entry_ptr, ptr @ctrl_set_colfx._entry, ptr @ctrl_set_colfx._entry_ptr, ptr @ctrl_set_image_effect._entry, ptr @ctrl_set_image_effect._entry_ptr, ptr @ctrl_set_scene_mode._entry, ptr @ctrl_set_scene_mode._entry.20, ptr @ctrl_set_scene_mode._entry.23, ptr @ctrl_set_scene_mode._entry.25, ptr @ctrl_set_scene_mode._entry_ptr, ptr @ctrl_set_scene_mode._entry_ptr.22, ptr @ctrl_set_scene_mode._entry_ptr.24, ptr @ctrl_set_scene_mode._entry_ptr.27, ptr @set_framerate_params._entry, ptr @set_framerate_params._entry.5, ptr @set_framerate_params._entry_ptr, ptr @set_framerate_params._entry_ptr.7, ptr @v4l2_ctrls, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @bcm2835_mmal_init_controls._key, ptr @.str.8, ptr @bcm2835_mmal_ctrl_ops, ptr @scene_configs, ptr @.str.9, ptr @.str.10, ptr @iso_qmenu, ptr @ev_bias_qmenu, ptr @iso_values, ptr @v4l2_to_mmal_effects_values, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @switch.table.ctrl_set_metering_mode], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_ctrls to i32), i32 1624, i32 2016, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_set_all_camera_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_framerate_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_framerate_params._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scene_configs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso_qmenu to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ev_bias_qmenu to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso_values to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_to_mmal_effects_values to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_set_image_effect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_set_colfx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_set_bitrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_set_scene_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_set_scene_mode._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_set_scene_mode._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_set_scene_mode._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_s_ctrl._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ctrl_set_metering_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_mmal_set_all_camera_controls(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %c.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 4, i32 %c.031
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  %setter = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.031, i32 8
  %2 = ptrtoint ptr %setter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setter, align 8
  %arrayidx1 = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.031
  %call = tail call i32 %3(ptr noundef %dev, ptr noundef nonnull %1, ptr noundef %arrayidx1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then.for.inc_crit_edge, label %do.body

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %4 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10 = icmp sgt i32 %4, 0
  br i1 %cmp10, label %do.end, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %c.031) #7
  br label %for.end

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %c.031, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %do.body.for.end_crit_edge
  %ret.2 = phi i32 [ %call, %do.end ], [ %call, %do.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_framerate_params(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %fps_range = alloca %struct.mmal_parameter_fps_range, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fps_range) #4
  %0 = getelementptr inbounds %struct.mmal_parameter_rational, ptr %fps_range, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mmal_parameter_fps_range, ptr %fps_range, i32 0, i32 1
  %2 = getelementptr inbounds %struct.mmal_parameter_fps_range, ptr %fps_range, i32 0, i32 1, i32 1
  %timeperframe = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 5
  %denominator = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 5, i32 1
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %denominator, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %1, align 4
  %6 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeperframe, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %2, align 4
  %exposure_mode_active = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 13
  %9 = ptrtoint ptr %exposure_mode_active to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %exposure_mode_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %exp_auto_priority = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 16
  %11 = ptrtoint ptr %exp_auto_priority to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %exp_auto_priority, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.else, %land.lhs.true.do.body_crit_edge
  %storemerge76 = phi i32 [ %4, %if.else ], [ 1, %land.lhs.true.do.body_crit_edge ]
  %storemerge = phi i32 [ %7, %if.else ], [ 1, %land.lhs.true.do.body_crit_edge ]
  %13 = ptrtoint ptr %fps_range to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge76, ptr %fps_range, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %15 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15 = icmp sgt i32 %15, 0
  br i1 %cmp15, label %do.end, label %do.body.do.end28_crit_edge

do.body.do.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %fps_range to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fps_range, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %17, i32 noundef %storemerge, i32 noundef %4, i32 noundef %7) #7
  br label %do.end28

do.end28:                                         ; preds = %do.end, %do.body.do.end28_crit_edge
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %18 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %instance, align 4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %20 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %component, align 8
  %output = getelementptr inbounds %struct.vchiq_mmal_component, ptr %21, i32 0, i32 7
  %call30 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %19, ptr noundef %output, i32 noundef 65598, ptr noundef nonnull %fps_range, i32 noundef 16) #4
  %22 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %instance, align 4
  %24 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %component, align 8
  %arrayidx35 = getelementptr %struct.vchiq_mmal_component, ptr %25, i32 0, i32 7, i32 1
  %call36 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %23, ptr noundef %arrayidx35, i32 noundef 65598, ptr noundef nonnull %fps_range, i32 noundef 16) #4
  %add = add i32 %call36, %call30
  %26 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %instance, align 4
  %28 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %component, align 8
  %arrayidx41 = getelementptr %struct.vchiq_mmal_component, ptr %29, i32 0, i32 7, i32 2
  %call42 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %27, ptr noundef %arrayidx41, i32 noundef 65598, ptr noundef nonnull %fps_range, i32 noundef 16) #4
  %add43 = add i32 %add, %call42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add43)
  %tobool44.not = icmp eq i32 %add43, 0
  br i1 %tobool44.not, label %do.end28.if.end60_crit_edge, label %do.body46

do.end28.if.end60_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

do.body46:                                        ; preds = %do.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %30 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp47 = icmp sgt i32 %30, -1
  br i1 %cmp47, label %do.end51, label %do.body46.if.end60_crit_edge

do.body46.if.end60_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

do.end51:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %name54 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name54, i32 noundef %add43) #7
  br label %if.end60

if.end60:                                         ; preds = %do.end51, %do.body46.if.end60_crit_edge, %do.end28.if.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fps_range) #4
  ret i32 %add43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_port_parameter_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_mmal_init_controls(ptr nocapture noundef %dev, ptr noundef %hdl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 29, ptr noundef nonnull @bcm2835_mmal_init_controls._key, ptr noundef nonnull @.str.8) #4
  %error = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %entry
  %c.0112 = phi i32 [ 0, %entry ], [ %inc34, %for.inc33.for.body_crit_edge ]
  %arrayidx = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112
  %type = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb19
    i32 3, label %for.body.for.inc33_crit_edge
  ]

for.body.for.inc33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc33

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 8
  %min = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 2
  %5 = ptrtoint ptr %min to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %min, align 8
  %max = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 3
  %7 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %max, align 8
  %step = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 5
  %9 = ptrtoint ptr %step to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %step, align 8
  %def = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 4
  %11 = ptrtoint ptr %def to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %def, align 8
  %call1 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @bcm2835_mmal_ctrl_ops, i32 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %10, i64 noundef %12) #4
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %min4 = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 2
  %13 = ptrtoint ptr %min4 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %min4, align 8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10094874, i32 %16)
  %cmp6 = icmp eq i32 %16, 10094874
  %spec.select = select i1 %cmp6, i64 -2306, i64 %14
  %max12 = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 3
  %17 = ptrtoint ptr %max12 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %max12, align 8
  %conv13 = trunc i64 %18 to i8
  %def14 = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 4
  %19 = ptrtoint ptr %def14 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %def14, align 8
  %conv15 = trunc i64 %20 to i8
  %call16 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl, ptr noundef nonnull @bcm2835_mmal_ctrl_ops, i32 noundef %16, i8 noundef zeroext %conv13, i64 noundef %spec.select, i8 noundef zeroext %conv15) #4
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 8
  %max21 = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 3
  %23 = ptrtoint ptr %max21 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %max21, align 8
  %conv22 = trunc i64 %24 to i8
  %def23 = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 4
  %25 = ptrtoint ptr %def23 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %def23, align 8
  %conv24 = trunc i64 %26 to i8
  %imenu = getelementptr [29 x %struct.bcm2835_mmal_v4l2_ctrl], ptr @v4l2_ctrls, i32 0, i32 %c.0112, i32 6
  %27 = ptrtoint ptr %imenu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %imenu, align 8
  %call25 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %hdl, ptr noundef nonnull @bcm2835_mmal_ctrl_ops, i32 noundef %22, i8 noundef zeroext %conv22, i8 noundef zeroext %conv24, ptr noundef %28) #4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb19, %sw.bb3, %sw.bb
  %call25.sink = phi ptr [ %call25, %sw.bb19 ], [ %call16, %sw.bb3 ], [ %call1, %sw.bb ]
  %arrayidx27 = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 4, i32 %c.0112
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call25.sink, ptr %arrayidx27, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %30 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.end30, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end30:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx32 = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 4, i32 %c.0112
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx32, align 4
  %priv = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx, ptr %priv, align 8
  br label %for.inc33

for.inc33:                                        ; preds = %if.end30, %for.body.for.inc33_crit_edge
  %inc34 = add nuw nsw i32 %c.0112, 1
  %exitcond.not = icmp eq i32 %inc34, 29
  br i1 %exitcond.not, label %for.end35, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end35:                                        ; preds = %for.inc33
  %35 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool37.not = icmp eq i32 %.pr, 0
  br i1 %tobool37.not, label %for.end35.cleanup_crit_edge, label %for.end35.do.end_crit_edge

for.end35.do.end_crit_edge:                       ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.end35.cleanup_crit_edge:                      ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %for.end35.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  %c.0.lcssa116 = phi i32 [ 29, %for.end35.do.end_crit_edge ], [ %c.0112, %sw.epilog.do.end_crit_edge ]
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %c.0.lcssa116, i32 noundef 29, i32 noundef %37) #7
  %38 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %do.end ], [ 0, %for.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_rational(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %rational_value = alloca %struct.mmal_parameter_rational, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rational_value) #4
  %0 = getelementptr inbounds %struct.mmal_parameter_rational, ptr %rational_value, i32 0, i32 1
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %component, align 8
  %control1 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %2, i32 0, i32 5
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = ptrtoint ptr %rational_value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rational_value, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %0, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %9 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %8, ptr noundef %control1, i32 noundef %10, ptr noundef nonnull %rational_value, i32 noundef 8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rational_value) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_iso(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %u32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_value) #4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %conv = sext i32 %1 to i64
  %max = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp = icmp slt i64 %3, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %min = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 2
  %4 = ptrtoint ptr %min to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %min, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp4 = icmp sgt i64 %5, %conv
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %7, label %if.end.if.end18_crit_edge [
    i32 10094871, label %if.then8
    i32 10094872, label %if.then13
  ]

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [5 x i32], ptr @iso_values, i32 0, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %iso = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %iso to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %iso, align 8
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp eq i32 %1, 0
  %manual_iso_enabled = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 17
  %frombool = zext i1 %cmp15 to i8
  %12 = ptrtoint ptr %manual_iso_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %manual_iso_enabled, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then8, %if.end.if.end18_crit_edge
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %component, align 8
  %control20 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %14, i32 0, i32 5
  %manual_iso_enabled21 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 17
  %15 = ptrtoint ptr %manual_iso_enabled21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %manual_iso_enabled21, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %iso23 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 18
  %17 = ptrtoint ptr %iso23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iso23, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %storemerge = phi i32 [ %18, %if.then22 ], [ 0, %if.end18.if.end25_crit_edge ]
  %19 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %u32_value, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %instance, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %21, ptr noundef %control20, i32 noundef 65584, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end25 ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_value) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_value(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %u32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_value) #4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 8
  %control1 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %1, i32 0, i32 5
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %4 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %u32_value, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %7 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %6, ptr noundef %control1, i32 noundef %8, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_value) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_exposure(ptr noundef %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %exp_mode = alloca i32, align 4
  %shutter_speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exp_mode) #4
  %exposure_mode_user = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %exposure_mode_user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %exposure_mode_user, align 8
  %2 = ptrtoint ptr %exp_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %exp_mode, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shutter_speed) #4
  %3 = ptrtoint ptr %shutter_speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %shutter_speed, align 4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component, align 8
  %control1 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %5, i32 0, i32 5
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %6 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmal_id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %7, label %if.else9 [
    i32 65603, label %if.then
    i32 65554, label %if.then4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %mul = mul i32 %10, 100
  %manual_shutter_speed = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %manual_shutter_speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %manual_shutter_speed, align 8
  br label %if.end14

if.then4:                                         ; preds = %entry
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val5, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %13, label %if.then4.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.then4.sw.epilog_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %exp_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %exp_mode, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %exp_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %exp_mode, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %if.then4.sw.epilog_crit_edge
  %17 = ptrtoint ptr %exp_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %exp_mode, align 4
  %19 = ptrtoint ptr %exposure_mode_user to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %exposure_mode_user, align 8
  %20 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val5, align 4
  %exposure_mode_v4l2_user = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 12
  %22 = ptrtoint ptr %exposure_mode_v4l2_user to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %exposure_mode_v4l2_user, align 4
  br label %if.end14

if.else9:                                         ; preds = %entry
  %23 = ptrtoint ptr %mmal_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mmal_ctrl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10094851, i32 %24)
  %cmp10 = icmp eq i32 %24, 10094851
  br i1 %cmp10, label %if.then11, label %if.else9.if.end14_crit_edge

if.else9.if.end14_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then11:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool = icmp ne i32 %26, 0
  %exp_auto_priority = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 16
  %frombool = zext i1 %tobool to i8
  %27 = ptrtoint ptr %exp_auto_priority to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %exp_auto_priority, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.else9.if.end14_crit_edge, %sw.epilog, %if.then
  %scene_mode = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 5
  %28 = ptrtoint ptr %scene_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scene_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp15 = icmp eq i32 %29, 0
  br i1 %cmp15, label %if.then16, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then16:                                        ; preds = %if.end14
  %30 = ptrtoint ptr %exp_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %exp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp17 = icmp eq i32 %31, 0
  br i1 %cmp17, label %if.then18, label %if.then16.if.end20_crit_edge

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %manual_shutter_speed19 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 15
  %32 = ptrtoint ptr %manual_shutter_speed19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %manual_shutter_speed19, align 8
  %34 = ptrtoint ptr %shutter_speed to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %shutter_speed, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then16.if.end20_crit_edge
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %35 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %instance, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %36, ptr noundef %control1, i32 noundef 65603, ptr noundef nonnull %shutter_speed, i32 noundef 4) #4
  %37 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %instance, align 4
  %call22 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %38, ptr noundef %control1, i32 noundef 65554, ptr noundef nonnull %exp_mode, i32 noundef 4) #4
  %add = add i32 %call22, %call
  %39 = ptrtoint ptr %exp_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %exp_mode, align 4
  %exposure_mode_active = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 13
  %41 = ptrtoint ptr %exposure_mode_active to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %exposure_mode_active, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.end14.if.end23_crit_edge
  %ret.0 = phi i32 [ %add, %if.end20 ], [ 0, %if.end14.if.end23_crit_edge ]
  %call24 = call i32 @set_framerate_params(ptr noundef %dev)
  %add25 = add i32 %call24, %ret.0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shutter_speed) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exp_mode) #4
  ret i32 %add25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_value_ev(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %s32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s32_value) #4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 8
  %control1 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %1, i32 0, i32 5
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %sub = shl i32 %3, 1
  %mul = add i32 %sub, -24
  %4 = ptrtoint ptr %s32_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %s32_value, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %7 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %6, ptr noundef %control1, i32 noundef %8, ptr noundef nonnull %s32_value, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s32_value) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_metering_mode(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %u32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ctrl_set_metering_mode, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %metering_mode6 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %metering_mode6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.load, ptr %metering_mode6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %scene_mode = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %scene_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scene_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.epilog.return_crit_edge

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_value) #4
  %metering_mode7 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %metering_mode7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %metering_mode7, align 4
  %9 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %u32_value, align 4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %component, align 8
  %control8 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %11, i32 0, i32 5
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %14 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %13, ptr noundef %control8, i32 noundef %15, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_value) #4
  br label %return

return:                                           ; preds = %if.then, %sw.epilog.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %sw.epilog.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_awb_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %u32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_value) #4
  %0 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u32_value, align 4, !annotation !88
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %component, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 7, label %sw.bb8
    i32 8, label %sw.bb9
    i32 9, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %u32_value, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %control1 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %2, i32 0, i32 5
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %18 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %17, ptr noundef %control1, i32 noundef %19, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_value) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_awb_gains(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %gains = alloca %struct.mmal_parameter_awbgains, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gains) #4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %entry.if.end6_crit_edge [
    i32 9963790, label %if.then
    i32 9963791, label %if.then4
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %red_gain = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 9
  %7 = ptrtoint ptr %red_gain to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %red_gain, align 8
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val5, align 4
  %blue_gain = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 10
  %10 = ptrtoint ptr %blue_gain to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blue_gain, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then, %entry.if.end6_crit_edge
  %11 = getelementptr inbounds %struct.mmal_parameter_awbgains, ptr %gains, i32 0, i32 1, i32 1
  %12 = getelementptr inbounds %struct.mmal_parameter_awbgains, ptr %gains, i32 0, i32 1
  %13 = getelementptr inbounds %struct.mmal_parameter_rational, ptr %gains, i32 0, i32 1
  %control1 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %1, i32 0, i32 5
  %red_gain7 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 9
  %14 = ptrtoint ptr %red_gain7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %red_gain7, align 8
  %16 = ptrtoint ptr %gains to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %gains, align 4
  %blue_gain8 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 10
  %17 = ptrtoint ptr %blue_gain8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blue_gain8, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %12, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1000, ptr %11, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1000, ptr %13, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %22 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %24 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %23, ptr noundef %control1, i32 noundef %25, ptr noundef nonnull %gains, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gains) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_image_effect(ptr noundef %dev, ptr nocapture noundef readonly %ctrl, ptr noundef %mmal_ctrl) #0 align 64 {
entry:
  %imagefx = alloca %struct.mmal_parameter_imagefx_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %imagefx) #4
  %0 = getelementptr inbounds %struct.mmal_parameter_imagefx_parameters, ptr %imagefx, i32 0, i32 1
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %colourfx = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 6
  %u22 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 6, i32 1
  %v25 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 6, i32 2
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %1 = call ptr @memset(ptr %imagefx, i32 255, i32 28)
  br label %for.body

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %entry
  %ret.092 = phi i32 [ -22, %entry ], [ %ret.1, %for.inc35.for.body_crit_edge ]
  %i.088 = phi i32 [ 0, %entry ], [ %inc36, %for.inc35.for.body_crit_edge ]
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %arrayidx = getelementptr [16 x %struct.v4l2_to_mmal_effects_setting], ptr @v4l2_to_mmal_effects_values, i32 0, i32 %i.088
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1.not = icmp eq i32 %3, %5
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc35_crit_edge

for.body.for.inc35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc35

if.end:                                           ; preds = %for.body
  %mmal_effect = getelementptr [16 x %struct.v4l2_to_mmal_effects_setting], ptr @v4l2_to_mmal_effects_values, i32 0, i32 %i.088, i32 1
  %6 = ptrtoint ptr %mmal_effect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmal_effect, align 4
  %8 = ptrtoint ptr %imagefx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %imagefx, align 4
  %num_effect_params = getelementptr [16 x %struct.v4l2_to_mmal_effects_setting], ptr @v4l2_to_mmal_effects_values, i32 0, i32 %i.088, i32 6
  %9 = ptrtoint ptr %num_effect_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_effect_params, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  %12 = add nsw i32 %i.088, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %12)
  %13 = icmp ult i32 %12, -2
  br i1 %13, label %if.end.for.end_crit_edge, label %if.end.for.body13_crit_edge

if.end.for.body13_crit_edge:                      ; preds = %if.end
  br label %for.body13

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %if.end.for.body13_crit_edge
  %j.087 = phi i32 [ %inc, %for.body13.for.body13_crit_edge ], [ 0, %if.end.for.body13_crit_edge ]
  %arrayidx15 = getelementptr [16 x %struct.v4l2_to_mmal_effects_setting], ptr @v4l2_to_mmal_effects_values, i32 0, i32 %i.088, i32 7, i32 %j.087
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr %struct.mmal_parameter_imagefx_parameters, ptr %imagefx, i32 0, i32 2, i32 %j.087
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx16, align 4
  %inc = add nuw i32 %j.087, 1
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  %cmp12 = icmp ult i32 %inc, %18
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.for.end_crit_edge

for.body13.for.end_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body13

for.end:                                          ; preds = %for.body13.for.end_crit_edge, %if.end.for.end_crit_edge
  %col_fx_enable = getelementptr [16 x %struct.v4l2_to_mmal_effects_setting], ptr @v4l2_to_mmal_effects_values, i32 0, i32 %i.088, i32 2
  %19 = ptrtoint ptr %col_fx_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %col_fx_enable, align 4
  %21 = ptrtoint ptr %colourfx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %colourfx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.088)
  %tobool.not.not = icmp eq i32 %i.088, 15
  br i1 %tobool.not.not, label %for.end.if.end26_crit_edge, label %if.then19

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %u = getelementptr [16 x %struct.v4l2_to_mmal_effects_setting], ptr @v4l2_to_mmal_effects_values, i32 0, i32 %i.088, i32 4
  %22 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %u, align 4
  %24 = ptrtoint ptr %u22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %u22, align 4
  %v = getelementptr [16 x %struct.v4l2_to_mmal_effects_setting], ptr @v4l2_to_mmal_effects_values, i32 0, i32 %i.088, i32 5
  %25 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v, align 4
  %27 = ptrtoint ptr %v25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %v25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %for.end.if.end26_crit_edge
  %28 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %component, align 8
  %control28 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %instance, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %31, ptr noundef %control28, i32 noundef 65586, ptr noundef nonnull %imagefx, i32 noundef 28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.do.body_crit_edge

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %instance, align 4
  %call34 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %33, ptr noundef %control28, i32 noundef 65543, ptr noundef %colourfx, i32 noundef 12) #4
  br label %for.inc35

for.inc35:                                        ; preds = %if.end31, %for.body.for.inc35_crit_edge
  %ret.1 = phi i32 [ %ret.092, %for.body.for.inc35_crit_edge ], [ %call34, %if.end31 ]
  %inc36 = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc36, 16
  br i1 %exitcond.not, label %for.inc35.do.body_crit_edge, label %for.inc35.for.body_crit_edge

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc35.do.body_crit_edge:                      ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %for.inc35.do.body_crit_edge, %if.end26.do.body_crit_edge
  %ret.2 = phi i32 [ %call, %if.end26.do.body_crit_edge ], [ %ret.1, %for.inc35.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %34 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp38 = icmp sgt i32 %34, 0
  br i1 %cmp38, label %do.end, label %do.body.do.end55_crit_edge

do.body.do.end55_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end55

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 8
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %39 = ptrtoint ptr %imagefx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %imagefx, align 4
  %41 = ptrtoint ptr %colourfx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %colourfx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool45.not = icmp eq i32 %42, 0
  %cond = select i1 %tobool45.not, ptr @.str.14, ptr @.str.13
  %43 = ptrtoint ptr %u22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %u22, align 4
  %45 = ptrtoint ptr %v25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %v25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp50 = icmp eq i32 %ret.2, 0
  %cond51 = select i1 %cmp50, i32 0, i32 -22
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef %mmal_ctrl, i32 noundef %36, i32 noundef %38, i32 noundef %40, ptr noundef nonnull %cond, i32 noundef %44, i32 noundef %46, i32 noundef %ret.2, i32 noundef %cond51) #7
  br label %do.end55

do.end55:                                         ; preds = %do.end, %do.body.do.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp56 = icmp eq i32 %ret.2, 0
  %cond57 = select i1 %cmp56, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %imagefx) #4
  ret i32 %cond57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_colfx(ptr noundef %dev, ptr nocapture noundef readonly %ctrl, ptr noundef %mmal_ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 8
  %control1 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %1, i32 0, i32 5
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %and = lshr i32 %3, 8
  %4 = and i32 %and, 255
  %colourfx = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 6
  %u = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %u, align 4
  %6 = load i32, ptr %val, align 4
  %and3 = and i32 %6, 255
  %v = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and3, ptr %v, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %instance, align 4
  %call = tail call i32 @vchiq_mmal_port_parameter_set(ptr noundef %9, ptr noundef %control1, i32 noundef 65543, ptr noundef %colourfx, i32 noundef 12) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %10 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %do.end, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp eq i32 %call, 0
  %cond = select i1 %cmp8, i32 0, i32 -22
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, ptr noundef nonnull @.str.16, ptr noundef %mmal_ctrl, i32 noundef %12, i32 noundef %14, i32 noundef %call, i32 noundef %cond) #7
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp eq i32 %call, 0
  %cond13 = select i1 %cmp12, i32 0, i32 -22
  ret i32 %cond13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_rotate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %u32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_value) #4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %rem = srem i32 %3, 360
  %.lhs.trunc = trunc i32 %rem to i16
  %4 = srem i16 %.lhs.trunc, 90
  %.sext = sext i16 %4 to i32
  %mul = sub nsw i32 %rem, %.sext
  %5 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %u32_value, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instance, align 4
  %output = getelementptr inbounds %struct.vchiq_mmal_component, ptr %1, i32 0, i32 7
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %8 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %7, ptr noundef %output, i32 noundef %9, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %instance, align 4
  %arrayidx4 = getelementptr %struct.vchiq_mmal_component, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmal_id, align 4
  %call6 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %11, ptr noundef %arrayidx4, i32 noundef %13, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %instance, align 4
  %arrayidx12 = getelementptr %struct.vchiq_mmal_component, ptr %1, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mmal_id, align 4
  %call14 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %15, ptr noundef %arrayidx12, i32 noundef %17, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_value) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_flip(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %u32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_value) #4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963796, i32 %1)
  %cmp = icmp eq i32 %1, 9963796
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hflip = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %hflip, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vflip = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %vflip, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component, align 8
  %hflip2 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 7
  %8 = ptrtoint ptr %hflip2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hflip2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %vflip11 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %vflip11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vflip11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool12.not, label %if.then9, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %u32_value, align 4
  br label %if.end17

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %u32_value, align 4
  br label %if.end17

if.else10:                                        ; preds = %if.end
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %u32_value, align 4
  br label %if.end17

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %u32_value, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then13, %if.then9, %if.then5
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %instance, align 4
  %output = getelementptr inbounds %struct.vchiq_mmal_component, ptr %7, i32 0, i32 7
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %18 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %17, ptr noundef %output, i32 noundef %19, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp19 = icmp slt i32 %call, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %20 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %instance, align 4
  %arrayidx24 = getelementptr %struct.vchiq_mmal_component, ptr %7, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mmal_id, align 4
  %call26 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %21, ptr noundef %arrayidx24, i32 noundef %23, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end21.cleanup_crit_edge, label %if.end29

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %instance, align 4
  %arrayidx32 = getelementptr %struct.vchiq_mmal_component, ptr %7, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mmal_id, align 4
  %call34 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %25, ptr noundef %arrayidx32, i32 noundef %27, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end29 ], [ %call, %if.end17.cleanup_crit_edge ], [ %call26, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_value) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_bitrate_mode(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %bitrate_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitrate_mode) #4
  %arrayidx = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %encode_bitrate_mode = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 7
  %4 = ptrtoint ptr %encode_bitrate_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %encode_bitrate_mode, align 8
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cond = icmp eq i32 %5, 1
  %. = select i1 %cond, i32 2, i32 1
  %6 = ptrtoint ptr %bitrate_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %bitrate_mode, align 4
  %output = getelementptr inbounds %struct.vchiq_mmal_component, ptr %1, i32 0, i32 7
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %9 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %8, ptr noundef %output, i32 noundef %10, ptr noundef nonnull %bitrate_mode, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitrate_mode) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_bitrate(ptr noundef %dev, ptr noundef %ctrl, ptr noundef %mmal_ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %encode_bitrate = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 6
  %2 = ptrtoint ptr %encode_bitrate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %encode_bitrate, align 4
  %arrayidx = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %output = getelementptr inbounds %struct.vchiq_mmal_component, ptr %4, i32 0, i32 7
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %7 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmal_id, align 4
  %call = tail call i32 @vchiq_mmal_port_parameter_set(ptr noundef %6, ptr noundef %output, i32 noundef %8, ptr noundef %val, i32 noundef 4) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %9 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  %cond = select i1 %cmp5, i32 0, i32 -22
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, ptr noundef nonnull @.str.17, ptr noundef %mmal_ctrl, i32 noundef %11, i32 noundef %13, i32 noundef %call, i32 noundef %cond) #7
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_image_encode_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %u32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_value) #4
  %arrayidx = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %output = getelementptr inbounds %struct.vchiq_mmal_component, ptr %1, i32 0, i32 7
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %4 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %u32_value, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %7 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %6, ptr noundef %output, i32 noundef %8, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_value) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_flicker_avoidance(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %u32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_value) #4
  %0 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u32_value, align 4, !annotation !88
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %component, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %u32_value, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %u32_value, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %control1 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %2, i32 0, i32 5
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %12 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %11, ptr noundef %control1, i32 noundef %13, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_value) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_video_encode_param_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %u32_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_value) #4
  %arrayidx = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %output = getelementptr inbounds %struct.vchiq_mmal_component, ptr %1, i32 0, i32 7
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %4 = ptrtoint ptr %u32_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %u32_value, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instance, align 4
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %7 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %6, ptr noundef %output, i32 noundef %8, ptr noundef nonnull %u32_value, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_value) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_video_encode_profile_level(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readonly %mmal_ctrl) #0 align 64 {
entry:
  %param = alloca %struct.mmal_parameter_video_profile, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param) #4
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %param, align 4, !annotation !88
  %1 = getelementptr inbounds %struct.mmal_parameter_video_profile, ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !88
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %4, label %entry.if.then12_crit_edge [
    i32 10029675, label %if.then
    i32 10029671, label %if.then4
  ]

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %7, label %if.then.if.end52_crit_edge [
    i32 0, label %if.then.sw.bb_crit_edge
    i32 1, label %if.then.sw.bb_crit_edge66
    i32 2, label %if.then.sw.bb_crit_edge67
    i32 4, label %if.then.sw.bb_crit_edge68
  ]

if.then.sw.bb_crit_edge68:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.sw.bb_crit_edge67:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.sw.bb_crit_edge66:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.if.end52_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge66, %if.then.sw.bb_crit_edge67, %if.then.sw.bb_crit_edge68
  %enc_profile = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 8
  %9 = ptrtoint ptr %enc_profile to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %enc_profile, align 4
  br label %if.then12

if.then4:                                         ; preds = %entry
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %switch = icmp ult i32 %11, 12
  br i1 %switch, label %sw.bb6, label %if.then4.if.end52_crit_edge

if.then4.if.end52_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

sw.bb6:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %enc_level = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 9
  %12 = ptrtoint ptr %enc_level to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %enc_level, align 8
  br label %if.then12

if.then12:                                        ; preds = %sw.bb6, %sw.bb, %entry.if.then12_crit_edge
  %enc_profile14 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 8
  %13 = ptrtoint ptr %enc_profile14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enc_profile14, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %14, label %if.then12.sw.epilog23_crit_edge [
    i32 0, label %sw.bb15
    i32 1, label %sw.bb16
    i32 2, label %sw.bb18
    i32 4, label %sw.bb20
  ]

if.then12.sw.epilog23_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog23

sw.bb15:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 25, ptr %param, align 4
  br label %sw.epilog23

sw.bb16:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %param, align 4
  br label %sw.epilog23

sw.bb18:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 26, ptr %param, align 4
  br label %sw.epilog23

sw.bb20:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 28, ptr %param, align 4
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb15, %if.then12.sw.epilog23_crit_edge
  %enc_level25 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 9
  %20 = ptrtoint ptr %enc_level25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enc_level25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %22 = icmp ult i32 %21, 12
  br i1 %22, label %switch.lookup, label %sw.epilog23.sw.epilog50_crit_edge

sw.epilog23.sw.epilog50_crit_edge:                ; preds = %sw.epilog23
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog50

switch.lookup:                                    ; preds = %sw.epilog23
  call void @__sanitizer_cov_trace_pc() #6
  %switch.offset = add i32 %21, 17
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.offset, ptr %1, align 4
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %switch.lookup, %sw.epilog23.sw.epilog50_crit_edge
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %24 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %instance, align 4
  %arrayidx = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 3
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %output = getelementptr inbounds %struct.vchiq_mmal_component, ptr %27, i32 0, i32 7
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %mmal_ctrl, i32 0, i32 7
  %28 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mmal_id, align 4
  %call = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %25, ptr noundef %output, i32 noundef %29, ptr noundef nonnull %param, i32 noundef 8) #4
  br label %if.end52

if.end52:                                         ; preds = %sw.epilog50, %if.then4.if.end52_crit_edge, %if.then.if.end52_crit_edge
  %ret.1 = phi i32 [ %call, %sw.epilog50 ], [ -22, %if.then.if.end52_crit_edge ], [ -22, %if.then4.if.end52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param) #4
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_set_scene_mode(ptr noundef %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef readnone %mmal_ctrl) #0 align 64 {
entry:
  %shutter_speed = alloca i32, align 4
  %shutter_speed44 = alloca i32, align 4
  %exposure_mode = alloca i32, align 4
  %metering_mode45 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shutter_speed) #4
  %0 = ptrtoint ptr %shutter_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %shutter_speed, align 4, !annotation !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %1 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %scene_mode = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %scene_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scene_mode, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %3, i32 noundef %5) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component, align 8
  %control4 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %7, i32 0, i32 5
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val5, align 4
  %scene_mode6 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %scene_mode6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scene_mode6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp7 = icmp eq i32 %9, %11
  br i1 %cmp7, label %do.end3.cleanup119_crit_edge, label %if.end9

do.end3.cleanup119_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup119

if.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %if.then12, label %if.else43

if.then12:                                        ; preds = %if.end9
  %12 = ptrtoint ptr %scene_mode6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %scene_mode6, align 8
  %exposure_mode_user = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 11
  %13 = ptrtoint ptr %exposure_mode_user to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %exposure_mode_user, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then15, label %if.then12.do.body17_crit_edge

if.then12.do.body17_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body17

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %manual_shutter_speed = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 15
  %15 = ptrtoint ptr %manual_shutter_speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %manual_shutter_speed, align 8
  br label %do.body17

do.body17:                                        ; preds = %if.then15, %if.then12.do.body17_crit_edge
  %storemerge175 = phi i32 [ %16, %if.then15 ], [ 0, %if.then12.do.body17_crit_edge ]
  %17 = ptrtoint ptr %shutter_speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge175, ptr %shutter_speed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %18 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp18 = icmp sgt i32 %18, -1
  br i1 %cmp18, label %do.end22, label %do.body17.do.end31_crit_edge

do.body17.do.end31_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %name25 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %metering_mode = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 14
  %19 = ptrtoint ptr %metering_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %metering_mode, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name25, ptr noundef nonnull @.str.19, i32 noundef %storemerge175, i32 noundef %14, i32 noundef %20) #7
  br label %do.end31

do.end31:                                         ; preds = %do.end22, %do.body17.do.end31_crit_edge
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %instance, align 4
  %call32 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %22, ptr noundef %control4, i32 noundef 65603, ptr noundef nonnull %shutter_speed, i32 noundef 4) #4
  %23 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %instance, align 4
  %call35 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %24, ptr noundef %control4, i32 noundef 65554, ptr noundef %exposure_mode_user, i32 noundef 4) #4
  %add = add i32 %call35, %call32
  %25 = ptrtoint ptr %exposure_mode_user to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %exposure_mode_user, align 8
  %exposure_mode_active = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 13
  %27 = ptrtoint ptr %exposure_mode_active to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %exposure_mode_active, align 8
  %28 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %instance, align 4
  %metering_mode38 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 14
  %call39 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %29, ptr noundef %control4, i32 noundef 65555, ptr noundef %metering_mode38, i32 noundef 4) #4
  %add40 = add i32 %add, %call39
  %call41 = call i32 @set_framerate_params(ptr noundef %dev)
  %add42 = add i32 %add40, %call41
  br label %if.end100

if.else43:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shutter_speed44) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exposure_mode) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metering_mode45) #4
  %30 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %9, label %cleanup.thread [
    i32 8, label %if.else43.if.end57_crit_edge
    i32 11, label %if.end57.fold.split
  ]

if.else43.if.end57_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end57.fold.split:                              ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end57:                                         ; preds = %if.end57.fold.split, %if.else43.if.end57_crit_edge
  %i.0183.lcssa = phi i32 [ 0, %if.else43.if.end57_crit_edge ], [ 1, %if.end57.fold.split ]
  %31 = ptrtoint ptr %scene_mode6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %9, ptr %scene_mode6, align 8
  %exposure_mode60 = getelementptr [2 x %struct.v4l2_mmal_scene_config], ptr @scene_configs, i32 0, i32 %i.0183.lcssa, i32 1
  %32 = ptrtoint ptr %exposure_mode60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %exposure_mode60, align 4
  %34 = ptrtoint ptr %shutter_speed44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %shutter_speed44, align 4
  %35 = ptrtoint ptr %exposure_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %exposure_mode, align 4
  %metering_mode67 = getelementptr [2 x %struct.v4l2_mmal_scene_config], ptr @scene_configs, i32 0, i32 %i.0183.lcssa, i32 2
  %36 = ptrtoint ptr %metering_mode67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %metering_mode67, align 4
  %38 = ptrtoint ptr %metering_mode45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %metering_mode45, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %39 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp69 = icmp sgt i32 %39, 0
  br i1 %cmp69, label %do.end73, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end73:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  %name76 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name76, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef %33, i32 noundef %37) #7
  br label %cleanup

cleanup.thread:                                   ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metering_mode45) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exposure_mode) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shutter_speed44) #4
  br label %cleanup119

cleanup:                                          ; preds = %do.end73, %if.end57.cleanup_crit_edge
  %instance82 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %40 = ptrtoint ptr %instance82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %instance82, align 4
  %call83 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %41, ptr noundef %control4, i32 noundef 65603, ptr noundef nonnull %shutter_speed44, i32 noundef 4) #4
  %42 = ptrtoint ptr %instance82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %instance82, align 4
  %call85 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %43, ptr noundef %control4, i32 noundef 65554, ptr noundef nonnull %exposure_mode, i32 noundef 4) #4
  %add86 = add i32 %call85, %call83
  %44 = ptrtoint ptr %exposure_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %exposure_mode, align 4
  %exposure_mode_active87 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 13
  %46 = ptrtoint ptr %exposure_mode_active87 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %exposure_mode_active87, align 8
  %47 = ptrtoint ptr %instance82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %instance82, align 4
  %call89 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %48, ptr noundef %control4, i32 noundef 65554, ptr noundef nonnull %exposure_mode, i32 noundef 4) #4
  %add90 = add i32 %add86, %call89
  %49 = ptrtoint ptr %instance82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %instance82, align 4
  %call92 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %50, ptr noundef %control4, i32 noundef 65555, ptr noundef nonnull %metering_mode45, i32 noundef 4) #4
  %add93 = add i32 %add90, %call92
  %call94 = call i32 @set_framerate_params(ptr noundef %dev)
  %add95 = add i32 %add93, %call94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metering_mode45) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exposure_mode) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shutter_speed44) #4
  br label %if.end100

if.end100:                                        ; preds = %cleanup, %do.end31
  %ret.1 = phi i32 [ %add42, %do.end31 ], [ %add95, %cleanup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool101.not = icmp eq i32 %ret.1, 0
  br i1 %tobool101.not, label %if.end100.cleanup119_crit_edge, label %do.body103

if.end100.cleanup119_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup119

do.body103:                                       ; preds = %if.end100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32))
  %51 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp104 = icmp sgt i32 %51, 0
  br i1 %cmp104, label %do.end108, label %do.body103.cleanup119_crit_edge

do.body103.cleanup119_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup119

do.end108:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #6
  %name111 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %52 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val5, align 4
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name111, ptr noundef nonnull @.str.19, i32 noundef %53, i32 noundef %ret.1) #7
  br label %cleanup119

cleanup119:                                       ; preds = %do.end108, %do.body103.cleanup119_crit_edge, %if.end100.cleanup119_crit_edge, %cleanup.thread, %do.end3.cleanup119_crit_edge
  %retval.1 = phi i32 [ 0, %do.end3.cleanup119_crit_edge ], [ 0, %do.body103.cleanup119_crit_edge ], [ 0, %do.end108 ], [ 0, %if.end100.cleanup119_crit_edge ], [ -22, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shutter_speed) #4
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_mmal_s_ctrl(ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1572
  %priv = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 21
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %id1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %setter = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %setter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setter, align 8
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %if.end

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %id5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %10 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id5, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %3, i32 noundef %11) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %call7 = tail call i32 %9(ptr noundef %add.ptr, ptr noundef %ctrl, ptr noundef nonnull %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id1, align 8
  %mmal_id = getelementptr inbounds %struct.bcm2835_mmal_v4l2_ctrl, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %mmal_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmal_id, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %13, i32 noundef %15, i32 noundef %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call7, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 1259, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bcm2835_mmal_set_all_camera_controls._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bcm2835_mmal_set_all_camera_controls._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 1288, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @set_framerate_params._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @set_framerate_params._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 1308, i32 3}
!13 = !{ptr @set_framerate_params._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @set_framerate_params._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @bcm2835_mmal_init_controls._key, !16, !"_key", i1 false, i1 false}
!16 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 1319, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 1376, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bcm2835_mmal_init_controls._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @bcm2835_mmal_init_controls._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @v4l2_ctrls, !24, !"v4l2_ctrls", i1 false, i1 false}
!24 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 910, i32 44}
!25 = !{ptr @iso_qmenu, !26, !"iso_qmenu", i1 false, i1 false}
!26 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 53, i32 18}
!27 = !{ptr @iso_values, !28, !"iso_values", i1 false, i1 false}
!28 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 57, i32 18}
!29 = !{ptr @ev_bias_qmenu, !30, !"ev_bias_qmenu", i1 false, i1 false}
!30 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 38, i32 18}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 549, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ctrl_set_image_effect._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ctrl_set_image_effect._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @v4l2_to_mmal_effects_values, !39, !"v4l2_to_mmal_effects_values", i1 false, i1 false}
!39 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 96, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 575, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ctrl_set_colfx._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ctrl_set_colfx._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 597, i32 2}
!47 = !{ptr @ctrl_set_bitrate._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ctrl_set_bitrate._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 788, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ctrl_set_scene_mode._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ctrl_set_scene_mode._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 805, i32 3}
!56 = !{ptr @ctrl_set_scene_mode._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ctrl_set_scene_mode._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @ctrl_set_scene_mode._entry.23, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 855, i32 3}
!60 = !{ptr @ctrl_set_scene_mode._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 879, i32 3}
!63 = !{ptr @ctrl_set_scene_mode._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ctrl_set_scene_mode._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @bcm2835_mmal_ctrl_ops, !66, !"bcm2835_mmal_ctrl_ops", i1 false, i1 false}
!66 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 906, i32 35}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 895, i32 3}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bcm2835_mmal_s_ctrl._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @bcm2835_mmal_s_ctrl._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 901, i32 3}
!74 = !{ptr @bcm2835_mmal_s_ctrl._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bcm2835_mmal_s_ctrl._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @scene_configs, !77, !"scene_configs", i1 false, i1 false}
!77 = !{!"../drivers/staging/vc04_services/bcm2835-camera/controls.c", i32 137, i32 44}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i8 0, i8 2}
!88 = !{!"auto-init"}
