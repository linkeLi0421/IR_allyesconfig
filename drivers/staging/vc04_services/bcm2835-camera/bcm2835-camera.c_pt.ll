; ModuleID = '/llk/IR_all_yes/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c_pt.bc'
source_filename = "../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmal_fmt = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.97, i32, i32 }
%union.anon.97 = type { i32 }
%struct.mmal_parameter_camera_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmal_parameter_camera_info = type { i32, i32, [4 x %struct.mmal_parameter_camera_info_camera], [2 x %struct.mmal_parameter_camera_info_flash] }
%struct.mmal_parameter_camera_info_camera = type { i32, i32, i32, i32, [16 x i8] }
%struct.mmal_parameter_camera_info_flash = type { i32 }
%struct.vchiq_mmal_component = type { i8, i32, i32, i32, i32, %struct.vchiq_mmal_port, [4 x %struct.vchiq_mmal_port], [4 x %struct.vchiq_mmal_port], [4 x %struct.vchiq_mmal_port], i32 }
%struct.vchiq_mmal_port = type { i8, i32, i32, i32, ptr, ptr, %struct.vchiq_mmal_port_buffer, %struct.vchiq_mmal_port_buffer, %struct.vchiq_mmal_port_buffer, %struct.mmal_es_format_local, %union.mmal_es_specific_format, %struct.list_head, %struct.spinlock, %struct.atomic_t, ptr, ptr }
%struct.vchiq_mmal_port_buffer = type { i32, i32, i32 }
%struct.mmal_es_format_local = type { i32, i32, i32, ptr, i32, i32, i32, ptr }
%union.mmal_es_specific_format = type { %struct.mmal_video_format }
%struct.mmal_video_format = type { i32, i32, %struct.mmal_rect, %struct.mmal_rational, %struct.mmal_rational, i32 }
%struct.mmal_rect = type { i32, i32, i32, i32 }
%struct.mmal_rational = type { i32, i32 }
%struct.bcm2835_mmal_dev = type { %struct.v4l2_device, %struct.video_device, %struct.mutex, %struct.v4l2_ctrl_handler, [29 x ptr], i32, %struct.mmal_colourfx, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, ptr, [4 x ptr], i32, %struct.v4l2_window, %struct.anon.120, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mmal_colourfx = type { i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.anon.120 = type { i32, i32, i32, i32, ptr, %struct.v4l2_fract, i32, i32, i32, i32, i32, %struct.vb2_queue, i64, i64, i32, ptr, ptr, ptr, i32, %struct.completion }
%struct.v4l2_fract = type { i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.vb2_mmal_buffer = type { %struct.vb2_v4l2_buffer, %struct.mmal_buffer }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.mmal_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32, ptr, i32, i32, i64, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.mmal_parameter_displayregion = type { i32, i32, i32, i32, %struct.vchiq_mmal_rect, %struct.vchiq_mmal_rect, i32, i32, i32, i32, i32, i32, i32 }
%struct.vchiq_mmal_rect = type { i32, i32, i32, i32 }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.102 }
%struct.anon.102 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.114, [2 x i32] }
%union.anon.114 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@__param_str_debug = internal constant [19 x i8] c"bcm2835_v4l2.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bcm2835_v4l2_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @bcm2835_v4l2_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype298 = internal constant [32 x i8] c"bcm2835_v4l2.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bcm2835_v4l2_debug299 = internal constant [53 x i8] c"bcm2835_v4l2.parm=bcm2835_v4l2_debug:Debug level 0-2\00", section ".modinfo", align 1
@__param_str_video_nr = internal constant [22 x i8] c"bcm2835_v4l2.video_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype300 = internal constant [44 x i8] c"bcm2835_v4l2.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr301 = internal constant [66 x i8] c"bcm2835_v4l2.parm=video_nr:videoX start numbers, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_max_video_width = internal constant [29 x i8] c"bcm2835_v4l2.max_video_width\00", align 1
@max_video_width = internal global { i32, [28 x i8] } { i32 1280, [28 x i8] zeroinitializer }, align 32
@__param_max_video_width = internal constant %struct.kernel_param { ptr @__param_str_max_video_width, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @max_video_width } }, section "__param", align 4
@__UNIQUE_ID_max_video_widthtype302 = internal constant [42 x i8] c"bcm2835_v4l2.parmtype=max_video_width:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_video_width303 = internal constant [59 x i8] c"bcm2835_v4l2.parm=max_video_width:Threshold for video mode\00", section ".modinfo", align 1
@__param_str_max_video_height = internal constant [30 x i8] c"bcm2835_v4l2.max_video_height\00", align 1
@max_video_height = internal global { i32, [28 x i8] } { i32 720, [28 x i8] zeroinitializer }, align 32
@__param_max_video_height = internal constant %struct.kernel_param { ptr @__param_str_max_video_height, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @max_video_height } }, section "__param", align 4
@__UNIQUE_ID_max_video_heighttype304 = internal constant [43 x i8] c"bcm2835_v4l2.parmtype=max_video_height:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_video_height305 = internal constant [60 x i8] c"bcm2835_v4l2.parm=max_video_height:Threshold for video mode\00", section ".modinfo", align 1
@__initcall__kmod_bcm2835_v4l2__308_2006_bcm2835_camera_driver_init6 = internal global ptr @bcm2835_camera_driver_init, section ".initcall6.init", align 4
@bcm2835_camera_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_mmal_probe, ptr @bcm2835_mmal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_camera_driver_exit = internal global ptr @bcm2835_camera_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description309 = internal constant [58 x i8] c"bcm2835_v4l2.description=Broadcom 2835 MMAL video capture\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [36 x i8] c"bcm2835_v4l2.author=Vincent Sanders\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [76 x i8] c"bcm2835_v4l2.file=drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [25 x i8] c"bcm2835_v4l2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version313 = internal constant [27 x i8] c"bcm2835_v4l2.version=0.0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm2835_v4l2\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias314 = internal constant [43 x i8] c"bcm2835_v4l2.alias=platform:bcm2835-camera\00", section ".modinfo", align 1
@video_nr = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 -1, i32 -1], [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm2835-camera\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_mmal_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@formats = internal global { [14 x %struct.mmal_fmt], [120 x i8] } { [14 x %struct.mmal_fmt] [%struct.mmal_fmt { i32 842093913, i32 0, i32 808596553, i32 12, i32 0, i32 1, i8 1 }, %struct.mmal_fmt { i32 1448695129, i32 0, i32 1448695129, i32 16, i32 0, i32 2, i8 0 }, %struct.mmal_fmt { i32 859981650, i32 0, i32 859981650, i32 24, i32 0, i32 3, i8 0 }, %struct.mmal_fmt { i32 1195724874, i32 1, i32 1195724874, i32 8, i32 2, i32 0, i8 0 }, %struct.mmal_fmt { i32 875967048, i32 1, i32 875967048, i32 8, i32 3, i32 0, i8 0 }, %struct.mmal_fmt { i32 1196444237, i32 1, i32 1196444237, i32 8, i32 3, i32 0, i8 0 }, %struct.mmal_fmt { i32 1431918169, i32 0, i32 1431918169, i32 16, i32 0, i32 2, i8 0 }, %struct.mmal_fmt { i32 1498765654, i32 0, i32 1498765654, i32 16, i32 0, i32 2, i8 0 }, %struct.mmal_fmt { i32 1498831189, i32 0, i32 1498831189, i32 16, i32 0, i32 2, i8 0 }, %struct.mmal_fmt { i32 842094158, i32 0, i32 842094158, i32 12, i32 0, i32 1, i8 1 }, %struct.mmal_fmt { i32 861030210, i32 0, i32 861030210, i32 24, i32 0, i32 3, i8 0 }, %struct.mmal_fmt { i32 842094169, i32 0, i32 842094169, i32 12, i32 0, i32 1, i8 1 }, %struct.mmal_fmt { i32 825382478, i32 0, i32 825382478, i32 12, i32 0, i32 1, i8 1 }, %struct.mmal_fmt { i32 877807426, i32 0, i32 1095911234, i32 32, i32 0, i32 4, i8 0 }], [120 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm2835-v4l2\00", [19 x i8] zeroinitializer }, align 32
@camera_instance = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@bcm2835_mmal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1903, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: could not register V4L2 device: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm2835_mmal_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_mmal_probe._entry_ptr = internal global ptr @bcm2835_mmal_probe._entry, section ".printk_index", align 4
@bcm2835_mmal_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: %s: could not init controls: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bcm2835_mmal_probe._entry_ptr.13 = internal global ptr @bcm2835_mmal_probe._entry.11, section ".printk_index", align 4
@bcm2835_mmal_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 1921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: %s: mmal init failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm2835_mmal_probe._entry_ptr.16 = internal global ptr @bcm2835_mmal_probe._entry.14, section ".printk_index", align 4
@bcm2835_mmal_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @buffer_init, ptr @buffer_prepare, ptr null, ptr @buffer_cleanup, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@bcm2835_mmal_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 1943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: %s: could not init device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm2835_mmal_probe._entry_ptr.19 = internal global ptr @bcm2835_mmal_probe._entry.17, section ".printk_index", align 4
@bcm2835_mmal_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.8, i32 1953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: %s: could not setup components: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm2835_mmal_probe._entry_ptr.22 = internal global ptr @bcm2835_mmal_probe._entry.20, section ".printk_index", align 4
@bcm2835_mmal_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.8, i32 1959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s: Broadcom 2835 MMAL video capture ver %s loaded.\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm2835_mmal_probe._entry_ptr.25 = internal global ptr @bcm2835_mmal_probe._entry.23, section ".printk_index", align 4
@gdev = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"camera_info\00", [20 x i8] zeroinitializer }, align 32
@get_num_cameras._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.8, i32 1514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Failed to get camera info\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_num_cameras\00", [16 x i8] zeroinitializer }, align 32
@get_num_cameras._entry_ptr = internal global ptr @get_num_cameras._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mmal_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.8, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: %s: vchiq mmal init failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmal_init\00", [22 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr = internal global ptr @mmal_init._entry, section ".printk_index", align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ril.camera\00", [21 x i8] zeroinitializer }, align 32
@mmal_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.8, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s: too few camera outputs %d needed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.34 = internal global ptr @mmal_init._entry.32, section ".printk_index", align 4
@mmal_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.8, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s: unable to set camera parameters: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.37 = internal global ptr @mmal_init._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ril.video_render\00", [47 x i8] zeroinitializer }, align 32
@mmal_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.8, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: %s: too few input ports %d needed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.41 = internal global ptr @mmal_init._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ril.image_encode\00", [47 x i8] zeroinitializer }, align 32
@mmal_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.8, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.44 = internal global ptr @mmal_init._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ril.video_encode\00", [47 x i8] zeroinitializer }, align 32
@mmal_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.8, i32 1709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.47 = internal global ptr @mmal_init._entry.46, section ".printk_index", align 4
@mmal_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.30, ptr @.str.8, i32 1739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: %s: failed to set all camera controls: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.50 = internal global ptr @mmal_init._entry.48, section ".printk_index", align 4
@mmal_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.30, ptr @.str.8, i32 1746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Cleanup: Destroy video encoder\0A\00", [62 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.53 = internal global ptr @mmal_init._entry.51, section ".printk_index", align 4
@mmal_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.30, ptr @.str.8, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Cleanup: Destroy image encoder\0A\00", [62 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.56 = internal global ptr @mmal_init._entry.54, section ".printk_index", align 4
@mmal_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.30, ptr @.str.8, i32 1756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Cleanup: Destroy video render\0A\00", [63 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.59 = internal global ptr @mmal_init._entry.57, section ".printk_index", align 4
@mmal_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.30, ptr @.str.8, i32 1761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Cleanup: Destroy camera\0A\00", [37 x i8] zeroinitializer }, align 32
@mmal_init._entry_ptr.62 = internal global ptr @mmal_init._entry.60, section ".printk_index", align 4
@queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.8, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: %s: capture port not configured\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue_setup\00", [20 x i8] zeroinitializer }, align 32
@queue_setup._entry_ptr = internal global ptr @queue_setup._entry, section ".printk_index", align 4
@queue_setup._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.8, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\017%s: %s: dev:%p Invalid buffer request from CREATE_BUFS, size %u < %u, nplanes %u != 1\0A\00", [39 x i8] zeroinitializer }, align 32
@queue_setup._entry_ptr.67 = internal global ptr @queue_setup._entry.65, section ".printk_index", align 4
@queue_setup._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.8, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: %s: capture port buffer size is zero\0A\00", [52 x i8] zeroinitializer }, align 32
@queue_setup._entry_ptr.70 = internal global ptr @queue_setup._entry.68, section ".printk_index", align 4
@queue_setup._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.8, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: dev:%p\0A\00", [46 x i8] zeroinitializer }, align 32
@queue_setup._entry_ptr.73 = internal global ptr @queue_setup._entry.71, section ".printk_index", align 4
@buffer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.8, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: dev:%p, vb %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buffer_init\00", [20 x i8] zeroinitializer }, align 32
@buffer_init._entry_ptr = internal global ptr @buffer_init._entry, section ".printk_index", align 4
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.76, ptr @.str.8, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@buffer_prepare._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.8, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: %s data will not fit into plane (%lu < %lu)\0A\00", [45 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr.79 = internal global ptr @buffer_prepare._entry.77, section ".printk_index", align 4
@buffer_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.80, ptr @.str.8, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_cleanup\00", [17 x i8] zeroinitializer }, align 32
@buffer_cleanup._entry_ptr = internal global ptr @buffer_cleanup._entry, section ".printk_index", align 4
@start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.81, ptr @.str.8, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_streaming\00", [16 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr = internal global ptr @start_streaming._entry, section ".printk_index", align 4
@start_streaming._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.8, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Failed to enable camera\0A\00", [33 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr.84 = internal global ptr @start_streaming._entry.82, section ".printk_index", align 4
@start_streaming._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.8, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: Failed to enable encode tunnel - error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr.87 = internal global ptr @start_streaming._entry.85, section ".printk_index", align 4
@start_streaming._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.8, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: Failed to get VC start time - update your VC f/w\0A\00", [40 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr.90 = internal global ptr @start_streaming._entry.88, section ".printk_index", align 4
@start_streaming._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.81, ptr @.str.8, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Start time %lld size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr.93 = internal global ptr @start_streaming._entry.91, section ".printk_index", align 4
@start_streaming._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.81, ptr @.str.8, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013%s: Failed to enable capture port - error %d. Disabling camera port again\0A\00", [51 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr.96 = internal global ptr @start_streaming._entry.94, section ".printk_index", align 4
@start_streaming._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.81, ptr @.str.8, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Failed to disable camera\0A\00", [32 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr.99 = internal global ptr @start_streaming._entry.97, section ".printk_index", align 4
@enable_camera._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.8, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Failed setting camera num, ret %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enable_camera\00", [18 x i8] zeroinitializer }, align 32
@enable_camera._entry_ptr = internal global ptr @enable_camera._entry, section ".printk_index", align 4
@enable_camera._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.8, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed enabling camera, ret %d\0A\00", [58 x i8] zeroinitializer }, align 32
@enable_camera._entry_ptr.104 = internal global ptr @enable_camera._entry.102, section ".printk_index", align 4
@enable_camera._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.8, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: enabled camera (refcount %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@enable_camera._entry_ptr.107 = internal global ptr @enable_camera._entry.105, section ".printk_index", align 4
@buffer_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.8, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: %s: status:%d, buf:%p, length:%lu, flags %u, pts %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"buffer_cb\00", [22 x i8] zeroinitializer }, align 32
@buffer_cb._entry_ptr = internal global ptr @buffer_cb._entry, section ".printk_index", align 4
@buffer_cb._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.8, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Grab another frame\00", [39 x i8] zeroinitializer }, align 32
@buffer_cb._entry_ptr.112 = internal global ptr @buffer_cb._entry.110, section ".printk_index", align 4
@buffer_cb._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.8, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Failed to return EOS buffer\00", [62 x i8] zeroinitializer }, align 32
@buffer_cb._entry_ptr.115 = internal global ptr @buffer_cb._entry.113, section ".printk_index", align 4
@buffer_cb._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.8, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017%s: Convert start time %llu and %llu with offset %llu to %llu\0A\00", [63 x i8] zeroinitializer }, align 32
@buffer_cb._entry_ptr.118 = internal global ptr @buffer_cb._entry.116, section ".printk_index", align 4
@buffer_cb._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.109, ptr @.str.8, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: Grab another frame as buffer has EOS\00", [53 x i8] zeroinitializer }, align 32
@buffer_cb._entry_ptr.121 = internal global ptr @buffer_cb._entry.119, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@disable_camera._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.8, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: Disabled the camera when already disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disable_camera\00", [17 x i8] zeroinitializer }, align 32
@disable_camera._entry_ptr = internal global ptr @disable_camera._entry, section ".printk_index", align 4
@disable_camera._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.8, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Disabling camera\0A\00", [40 x i8] zeroinitializer }, align 32
@disable_camera._entry_ptr.127 = internal global ptr @disable_camera._entry.125, section ".printk_index", align 4
@disable_camera._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.8, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed disabling camera, ret %d\0A\00", [57 x i8] zeroinitializer }, align 32
@disable_camera._entry_ptr.130 = internal global ptr @disable_camera._entry.128, section ".printk_index", align 4
@disable_camera._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.124, ptr @.str.8, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Camera refcount now %d\0A\00", [34 x i8] zeroinitializer }, align 32
@disable_camera._entry_ptr.133 = internal global ptr @disable_camera._entry.131, section ".printk_index", align 4
@stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.134, ptr @.str.8, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stop_streaming\00", [17 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr = internal global ptr @stop_streaming._entry, section ".printk_index", align 4
@stop_streaming._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.8, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: no capture port - stream not started?\0A\00", [51 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.137 = internal global ptr @stop_streaming._entry.135, section ".printk_index", align 4
@stop_streaming._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.134, ptr @.str.8, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: stopping capturing\0A\00", [38 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.140 = internal global ptr @stop_streaming._entry.138, section ".printk_index", align 4
@stop_streaming._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.134, ptr @.str.8, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: disabling connection\0A\00", [36 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.143 = internal global ptr @stop_streaming._entry.141, section ".printk_index", align 4
@stop_streaming._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.134, ptr @.str.8, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: disabling port\0A\00", [42 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.146 = internal global ptr @stop_streaming._entry.144, section ".printk_index", align 4
@stop_streaming._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.134, ptr @.str.8, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: port_disable failed, error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.149 = internal global ptr @stop_streaming._entry.147, section ".printk_index", align 4
@stop_streaming._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.134, ptr @.str.8, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: %s: Waiting for buffers to be returned - %d outstanding\0A\00", [33 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.152 = internal global ptr @stop_streaming._entry.150, section ".printk_index", align 4
@stop_streaming._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.134, ptr @.str.8, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013%s: %s: Timeout waiting for buffers to be returned - %d outstanding\0A\00", [57 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.155 = internal global ptr @stop_streaming._entry.153, section ".printk_index", align 4
@stop_streaming._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.134, ptr @.str.8, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr.157 = internal global ptr @stop_streaming._entry.156, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.8, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: dev:%p buf:%p, idx %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@buffer_queue._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.8, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: %s: error submitting buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.163 = internal global ptr @buffer_queue._entry.161, section ".printk_index", align 4
@vdev_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @camera0_fops, i32 83886085, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"camera0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @camera0_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@bcm2835_mmal_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.8, i32 1793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: V4L2 device registered as %s - stills mode > %dx%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm2835_mmal_init_device\00", [39 x i8] zeroinitializer }, align 32
@bcm2835_mmal_init_device._entry_ptr = internal global ptr @bcm2835_mmal_init_device._entry, section ".printk_index", align 4
@camera0_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@camera0_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr @vidioc_enum_fmt_vid_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr @vidioc_g_fmt_vid_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr @vidioc_s_fmt_vid_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr @vidioc_try_fmt_vid_overlay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr @vidioc_overlay, ptr @vidioc_g_fbuf, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr @vidioc_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enum_framesizes, ptr @vidioc_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm2835 mmal\00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmal service %d.%d\00", [45 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.8, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\017%s: %s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_g_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_g_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.8, i32 1298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: vid_cap - vidioc_try_fmt_vid_cap failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_s_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_s_fmt_vid_cap._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.8, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: %s device busy\0A\00", [42 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr.175 = internal global ptr @vidioc_s_fmt_vid_cap._entry.173, section ".printk_index", align 4
@vidioc_s_fmt_vid_cap._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.172, ptr @.str.8, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Fourcc format (0x%08x) unknown.\0A\00", [57 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr.178 = internal global ptr @vidioc_s_fmt_vid_cap._entry.176, section ".printk_index", align 4
@vidioc_s_fmt_vid_cap._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.172, ptr @.str.8, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s: failed to setup mmal components: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr.181 = internal global ptr @vidioc_s_fmt_vid_cap._entry.179, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.182, ptr @.str.8, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.8, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: Clipping/aligning %dx%d format %08X\0A\00", [53 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr.185 = internal global ptr @vidioc_try_fmt_vid_cap._entry.183, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.182, ptr @.str.8, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: Not removing padding, so bytes/line = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr.188 = internal global ptr @vidioc_try_fmt_vid_cap._entry.186, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.182, ptr @.str.8, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Now %dx%d format %08X\0A\00", [35 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr.191 = internal global ptr @vidioc_try_fmt_vid_cap._entry.189, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.182, ptr @.str.8, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr.193 = internal global ptr @vidioc_try_fmt_vid_cap._entry.192, section ".printk_index", align 4
@vidioc_try_fmt_vid_overlay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.8, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Overlay: Now w/h %dx%d l/t %dx%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vidioc_try_fmt_vid_overlay\00", [37 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_overlay._entry_ptr = internal global ptr @vidioc_try_fmt_vid_overlay._entry, section ".printk_index", align 4
@vidioc_try_fmt_vid_overlay._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.195, ptr @.str.8, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\017%s: %s: w %u h %u l %u t %u  field %u chromakey %06X clip %p clipcount %u bitmap %p\0A\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_overlay._entry_ptr.198 = internal global ptr @vidioc_try_fmt_vid_overlay._entry.196, section ".printk_index", align 4
@vidioc_overlay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.8, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: connecting %p to %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_overlay\00", [17 x i8] zeroinitializer }, align 32
@vidioc_overlay._entry_ptr = internal global ptr @vidioc_overlay._entry, section ".printk_index", align 4
@.str.201 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Camera %u\00", [22 x i8] zeroinitializer }, align 32
@vidioc_enum_framesizes.sizes = internal constant { %struct.v4l2_frmsize_stepwise, [40 x i8] } { %struct.v4l2_frmsize_stepwise { i32 32, i32 0, i32 2, i32 32, i32 0, i32 2 }, [40 x i8] zeroinitializer }, align 32
@mmal_setup_components._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.8, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: vid_cap - disconnect previous tunnel\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmal_setup_components\00", [42 x i8] zeroinitializer }, align 32
@mmal_setup_components._entry_ptr = internal global ptr @mmal_setup_components._entry, section ".printk_index", align 4
@mmal_setup_components._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.203, ptr @.str.8, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Failed to disable encode component %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mmal_setup_components._entry_ptr.206 = internal global ptr @mmal_setup_components._entry.204, section ".printk_index", align 4
@mmal_setup_components._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.203, ptr @.str.8, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: %s failed to set format %dx%d %08X\0A\00", [54 x i8] zeroinitializer }, align 32
@mmal_setup_components._entry_ptr.209 = internal global ptr @mmal_setup_components._entry.207, section ".printk_index", align 4
@mmal_setup_components._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.203, ptr @.str.8, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: Set dev->capture.fmt %08X, %dx%d, stride %d, size %d\00", [37 x i8] zeroinitializer }, align 32
@mmal_setup_components._entry_ptr.212 = internal global ptr @mmal_setup_components._entry.210, section ".printk_index", align 4
@mmal_setup_encode_component._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.8, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: vid_cap - set up encode comp\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mmal_setup_encode_component\00", [36 x i8] zeroinitializer }, align 32
@mmal_setup_encode_component._entry_ptr = internal global ptr @mmal_setup_encode_component._entry, section ".printk_index", align 4
@mmal_setup_encode_component._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.8, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: %s failed to create connection\0A\00", [58 x i8] zeroinitializer }, align 32
@mmal_setup_encode_component._entry_ptr.217 = internal global ptr @mmal_setup_encode_component._entry.215, section ".printk_index", align 4
@mmal_setup_encode_component._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.214, ptr @.str.8, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %s failed to set format %dx%d fmt %08X\0A\00", [50 x i8] zeroinitializer }, align 32
@mmal_setup_encode_component._entry_ptr.220 = internal global ptr @mmal_setup_encode_component._entry.218, section ".printk_index", align 4
@mmal_setup_encode_component._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.214, ptr @.str.8, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s Failed to enable encode components\0A\00", [51 x i8] zeroinitializer }, align 32
@mmal_setup_encode_component._entry_ptr.223 = internal global ptr @mmal_setup_encode_component._entry.221, section ".printk_index", align 4
@mmal_setup_encode_component._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.214, ptr @.str.8, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: JPG - buf size now %d was %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mmal_setup_encode_component._entry_ptr.226 = internal global ptr @mmal_setup_encode_component._entry.224, section ".printk_index", align 4
@mmal_setup_encode_component._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.214, ptr @.str.8, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: vid_cap - cur_buf.size set to %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mmal_setup_encode_component._entry_ptr.229 = internal global ptr @mmal_setup_encode_component._entry.227, section ".printk_index", align 4
@default_v4l2_format = internal global { { i32, { %struct.v4l2_pix_format, [152 x i8] } }, [52 x i8] } { { i32, { %struct.v4l2_pix_format, [152 x i8] } } { i32 0, { %struct.v4l2_pix_format, [152 x i8] } { %struct.v4l2_pix_format { i32 1024, i32 768, i32 1195724874, i32 0, i32 0, i32 786432, i32 0, i32 0, i32 0, %union.anon.97 zeroinitializer, i32 0, i32 0 }, [152 x i8] undef } }, [52 x i8] zeroinitializer }, align 32
@bcm2835_cleanup_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.8, i32 1804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: unregistering %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm2835_cleanup_instance\00", [39 x i8] zeroinitializer }, align 32
@bcm2835_cleanup_instance._entry_ptr = internal global ptr @bcm2835_cleanup_instance._entry, section ".printk_index", align 4
@bcm2835_cleanup_instance._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.232, ptr @.str.8, i32 1810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: mmal_exit - disconnect tunnel\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm2835_cleanup_instance._entry_ptr.235 = internal global ptr @bcm2835_cleanup_instance._entry.233, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 859981650, i64 861030210]
@__sancov_gen_cov_switch_values.236 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 859981650, i64 861030210]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"bcm2835_v4l2_debug\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 47, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant [16 x i8] c"max_video_width\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 56, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"max_video_height\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 57, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant [22 x i8] c"bcm2835_camera_driver\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1998, i32 31 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 2011, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 52, i32 12 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 2002, i32 11 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1881, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 85, i32 24 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1898, i32 14 }
@___asan_gen_.278 = private unnamed_addr constant [16 x i8] c"camera_instance\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 64, i32 17 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1902, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1910, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1920, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant [24 x i8] c"bcm2835_mmal_video_qops\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 657, i32 29 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1942, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1952, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1957, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [5 x i8] c"gdev\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 67, i32 33 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1503, i32 44 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1514, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1566, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1572, i32 49 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1579, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1589, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1673, i32 49 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1680, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1686, i32 49 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1693, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1700, i32 49 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1707, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1738, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1746, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1751, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1756, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1761, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 218, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 227, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 241, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 260, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 273, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 286, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 294, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 310, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 508, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 516, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 540, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 554, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 560, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 572, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 579, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 430, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 438, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 444, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 331, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 352, i32 5 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 363, i32 5 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 388, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 408, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1163, i32 7 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 455, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 463, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 468, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 478, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 602, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 610, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 615, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 624, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 630, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 634, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 640, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 646, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 654, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 87, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 491, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 498, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant [14 x i8] c"vdev_template\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1481, i32 34 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1790, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant [13 x i8] c"camera0_fops\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1471, i32 42 }
@___asan_gen_.689 = private unnamed_addr constant [18 x i8] c"camera0_ioctl_ops\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1426, i32 36 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 887, i32 23 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 888, i32 49 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 890, i32 57 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 929, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1297, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1304, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1313, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1322, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 942, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 951, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 978, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1001, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1005, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 741, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 746, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 817, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 859, i32 29 }
@___asan_gen_.791 = private unnamed_addr constant [6 x i8] c"sizes\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1335, i32 44 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1158, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1168, i32 4 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1243, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1276, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1066, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1076, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1110, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1121, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1130, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1138, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant [20 x i8] c"default_v4l2_format\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1838, i32 27 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1803, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.875 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.876 = private constant [65 x i8] c"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.876, i32 1809, i32 3 }
@llvm.compiler.used = appending global [317 x ptr] [ptr @__UNIQUE_ID_alias314, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_bcm2835_v4l2_debug299, ptr @__UNIQUE_ID_debugtype298, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__UNIQUE_ID_max_video_height305, ptr @__UNIQUE_ID_max_video_heighttype304, ptr @__UNIQUE_ID_max_video_width303, ptr @__UNIQUE_ID_max_video_widthtype302, ptr @__UNIQUE_ID_version313, ptr @__UNIQUE_ID_video_nr301, ptr @__UNIQUE_ID_video_nrtype300, ptr @__exitcall_bcm2835_camera_driver_exit, ptr @__initcall__kmod_bcm2835_v4l2__308_2006_bcm2835_camera_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_max_video_height, ptr @__param_max_video_width, ptr @__param_video_nr, ptr @bcm2835_camera_driver_exit, ptr @bcm2835_cleanup_instance._entry, ptr @bcm2835_cleanup_instance._entry.233, ptr @bcm2835_cleanup_instance._entry_ptr, ptr @bcm2835_cleanup_instance._entry_ptr.235, ptr @bcm2835_mmal_init_device._entry, ptr @bcm2835_mmal_init_device._entry_ptr, ptr @bcm2835_mmal_probe._entry, ptr @bcm2835_mmal_probe._entry.11, ptr @bcm2835_mmal_probe._entry.14, ptr @bcm2835_mmal_probe._entry.17, ptr @bcm2835_mmal_probe._entry.20, ptr @bcm2835_mmal_probe._entry.23, ptr @bcm2835_mmal_probe._entry_ptr, ptr @bcm2835_mmal_probe._entry_ptr.13, ptr @bcm2835_mmal_probe._entry_ptr.16, ptr @bcm2835_mmal_probe._entry_ptr.19, ptr @bcm2835_mmal_probe._entry_ptr.22, ptr @bcm2835_mmal_probe._entry_ptr.25, ptr @buffer_cb._entry, ptr @buffer_cb._entry.110, ptr @buffer_cb._entry.113, ptr @buffer_cb._entry.116, ptr @buffer_cb._entry.119, ptr @buffer_cb._entry_ptr, ptr @buffer_cb._entry_ptr.112, ptr @buffer_cb._entry_ptr.115, ptr @buffer_cb._entry_ptr.118, ptr @buffer_cb._entry_ptr.121, ptr @buffer_cleanup._entry, ptr @buffer_cleanup._entry_ptr, ptr @buffer_init._entry, ptr @buffer_init._entry_ptr, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry.77, ptr @buffer_prepare._entry_ptr, ptr @buffer_prepare._entry_ptr.79, ptr @buffer_queue._entry, ptr @buffer_queue._entry.161, ptr @buffer_queue._entry_ptr, ptr @buffer_queue._entry_ptr.163, ptr @disable_camera._entry, ptr @disable_camera._entry.125, ptr @disable_camera._entry.128, ptr @disable_camera._entry.131, ptr @disable_camera._entry_ptr, ptr @disable_camera._entry_ptr.127, ptr @disable_camera._entry_ptr.130, ptr @disable_camera._entry_ptr.133, ptr @enable_camera._entry, ptr @enable_camera._entry.102, ptr @enable_camera._entry.105, ptr @enable_camera._entry_ptr, ptr @enable_camera._entry_ptr.104, ptr @enable_camera._entry_ptr.107, ptr @get_num_cameras._entry, ptr @get_num_cameras._entry_ptr, ptr @mmal_init._entry, ptr @mmal_init._entry.32, ptr @mmal_init._entry.35, ptr @mmal_init._entry.39, ptr @mmal_init._entry.43, ptr @mmal_init._entry.46, ptr @mmal_init._entry.48, ptr @mmal_init._entry.51, ptr @mmal_init._entry.54, ptr @mmal_init._entry.57, ptr @mmal_init._entry.60, ptr @mmal_init._entry_ptr, ptr @mmal_init._entry_ptr.34, ptr @mmal_init._entry_ptr.37, ptr @mmal_init._entry_ptr.41, ptr @mmal_init._entry_ptr.44, ptr @mmal_init._entry_ptr.47, ptr @mmal_init._entry_ptr.50, ptr @mmal_init._entry_ptr.53, ptr @mmal_init._entry_ptr.56, ptr @mmal_init._entry_ptr.59, ptr @mmal_init._entry_ptr.62, ptr @mmal_setup_components._entry, ptr @mmal_setup_components._entry.204, ptr @mmal_setup_components._entry.207, ptr @mmal_setup_components._entry.210, ptr @mmal_setup_components._entry_ptr, ptr @mmal_setup_components._entry_ptr.206, ptr @mmal_setup_components._entry_ptr.209, ptr @mmal_setup_components._entry_ptr.212, ptr @mmal_setup_encode_component._entry, ptr @mmal_setup_encode_component._entry.215, ptr @mmal_setup_encode_component._entry.218, ptr @mmal_setup_encode_component._entry.221, ptr @mmal_setup_encode_component._entry.224, ptr @mmal_setup_encode_component._entry.227, ptr @mmal_setup_encode_component._entry_ptr, ptr @mmal_setup_encode_component._entry_ptr.217, ptr @mmal_setup_encode_component._entry_ptr.220, ptr @mmal_setup_encode_component._entry_ptr.223, ptr @mmal_setup_encode_component._entry_ptr.226, ptr @mmal_setup_encode_component._entry_ptr.229, ptr @queue_setup._entry, ptr @queue_setup._entry.65, ptr @queue_setup._entry.68, ptr @queue_setup._entry.71, ptr @queue_setup._entry_ptr, ptr @queue_setup._entry_ptr.67, ptr @queue_setup._entry_ptr.70, ptr @queue_setup._entry_ptr.73, ptr @start_streaming._entry, ptr @start_streaming._entry.82, ptr @start_streaming._entry.85, ptr @start_streaming._entry.88, ptr @start_streaming._entry.91, ptr @start_streaming._entry.94, ptr @start_streaming._entry.97, ptr @start_streaming._entry_ptr, ptr @start_streaming._entry_ptr.84, ptr @start_streaming._entry_ptr.87, ptr @start_streaming._entry_ptr.90, ptr @start_streaming._entry_ptr.93, ptr @start_streaming._entry_ptr.96, ptr @start_streaming._entry_ptr.99, ptr @stop_streaming._entry, ptr @stop_streaming._entry.135, ptr @stop_streaming._entry.138, ptr @stop_streaming._entry.141, ptr @stop_streaming._entry.144, ptr @stop_streaming._entry.147, ptr @stop_streaming._entry.150, ptr @stop_streaming._entry.153, ptr @stop_streaming._entry.156, ptr @stop_streaming._entry_ptr, ptr @stop_streaming._entry_ptr.137, ptr @stop_streaming._entry_ptr.140, ptr @stop_streaming._entry_ptr.143, ptr @stop_streaming._entry_ptr.146, ptr @stop_streaming._entry_ptr.149, ptr @stop_streaming._entry_ptr.152, ptr @stop_streaming._entry_ptr.155, ptr @stop_streaming._entry_ptr.157, ptr @vidioc_g_fmt_vid_cap._entry, ptr @vidioc_g_fmt_vid_cap._entry_ptr, ptr @vidioc_overlay._entry, ptr @vidioc_overlay._entry_ptr, ptr @vidioc_s_fmt_vid_cap._entry, ptr @vidioc_s_fmt_vid_cap._entry.173, ptr @vidioc_s_fmt_vid_cap._entry.176, ptr @vidioc_s_fmt_vid_cap._entry.179, ptr @vidioc_s_fmt_vid_cap._entry_ptr, ptr @vidioc_s_fmt_vid_cap._entry_ptr.175, ptr @vidioc_s_fmt_vid_cap._entry_ptr.178, ptr @vidioc_s_fmt_vid_cap._entry_ptr.181, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry.183, ptr @vidioc_try_fmt_vid_cap._entry.186, ptr @vidioc_try_fmt_vid_cap._entry.189, ptr @vidioc_try_fmt_vid_cap._entry.192, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @vidioc_try_fmt_vid_cap._entry_ptr.185, ptr @vidioc_try_fmt_vid_cap._entry_ptr.188, ptr @vidioc_try_fmt_vid_cap._entry_ptr.191, ptr @vidioc_try_fmt_vid_cap._entry_ptr.193, ptr @vidioc_try_fmt_vid_overlay._entry, ptr @vidioc_try_fmt_vid_overlay._entry.196, ptr @vidioc_try_fmt_vid_overlay._entry_ptr, ptr @vidioc_try_fmt_vid_overlay._entry_ptr.198, ptr @bcm2835_v4l2_debug, ptr @max_video_width, ptr @max_video_height, ptr @bcm2835_camera_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @video_nr, ptr @.str.3, ptr @bcm2835_mmal_probe.__key, ptr @.str.4, ptr @formats, ptr @.str.5, ptr @camera_instance, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @bcm2835_mmal_video_qops, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @gdev, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @init_completion.__key, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @vdev_template, ptr @.str.164, ptr @.str.165, ptr @camera0_fops, ptr @camera0_ioctl_ops, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @vidioc_enum_framesizes.sizes, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @default_v4l2_format, ptr @.str.231, ptr @.str.232, ptr @.str.234], section "llvm.metadata"
@0 = internal global [213 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_v4l2_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_video_width to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_video_height to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_camera_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camera_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_num_cameras._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_setup._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_setup._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_setup._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_camera._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_camera._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_camera._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_cb._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_cb._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_cb._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_cb._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_camera._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_camera._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_camera._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_camera._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdev_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_mmal_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camera0_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camera0_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_overlay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_overlay._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_overlay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_framesizes.sizes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_components._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_components._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_components._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_components._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_encode_component._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_encode_component._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_encode_component._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_encode_component._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_encode_component._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmal_setup_encode_component._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_v4l2_format to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_cleanup_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_cleanup_instance._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_camera_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_camera_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_camera_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_camera_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_mmal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cam_config.i.i = alloca %struct.mmal_parameter_camera_config, align 4
  %supported_encodings.i = alloca [20 x i32], align 4
  %param_size.i184 = alloca i32, align 4
  %enable.i = alloca i32, align 4
  %cam_info_component.i = alloca ptr, align 4
  %cam_info.i = alloca %struct.mmal_parameter_camera_info, align 4
  %param_size.i = alloca i32, align 4
  %instance = alloca ptr, align 4
  %resolutions = alloca [2 x [2 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %instance) #12
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %instance, align 4, !annotation !461
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resolutions) #12
  %1 = call ptr @memset(ptr %resolutions, i32 255, i32 16)
  %call = call i32 @vchiq_mmal_init(ptr noundef nonnull %instance) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cam_info_component.i) #12
  %4 = ptrtoint ptr %cam_info_component.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %cam_info_component.i, align 4, !annotation !461
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cam_info.i) #12
  %5 = call ptr @memset(ptr %cam_info.i, i32 0, i32 144)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param_size.i) #12
  %6 = ptrtoint ptr %param_size.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 144, ptr %param_size.i, align 4
  %call.i = call i32 @vchiq_mmal_component_init(ptr noundef %3, ptr noundef nonnull @.str.26, ptr noundef nonnull %cam_info_component.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %get_num_cameras.exit.thread, label %if.end.i

get_num_cameras.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_size.i) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cam_info.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cam_info_component.i) #12
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %cam_info_component.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cam_info_component.i, align 4
  %control.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %8, i32 0, i32 5
  %call1.i = call i32 @vchiq_mmal_port_parameter_get(ptr noundef %3, ptr noundef %control.i, i32 noundef 65564, ptr noundef nonnull %cam_info.i, ptr noundef nonnull %param_size.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %do.end.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.i.if.end4.i_crit_edge
  %9 = ptrtoint ptr %cam_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cam_info.i, align 4
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp71.not.i = icmp eq i32 %11, 0
  br i1 %cmp71.not.i, label %if.end4.i.get_num_cameras.exit_crit_edge, label %for.body.i

if.end4.i.get_num_cameras.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_num_cameras.exit

for.body.i:                                       ; preds = %if.end4.i
  %max_width.i = getelementptr inbounds %struct.mmal_parameter_camera_info, ptr %cam_info.i, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %max_width.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_width.i, align 4
  %14 = ptrtoint ptr %resolutions to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %resolutions, align 4
  %max_height.i = getelementptr inbounds %struct.mmal_parameter_camera_info, ptr %cam_info.i, i32 0, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %max_height.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_height.i, align 4
  %arrayidx13.i = getelementptr inbounds [2 x i32], ptr %resolutions, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %exitcond.not.i = icmp eq i32 %11, 1
  br i1 %exitcond.not.i, label %for.body.i.get_num_cameras.exit_crit_edge, label %for.body.i.1

for.body.i.get_num_cameras.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_num_cameras.exit

for.body.i.1:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_width.i.1 = getelementptr inbounds %struct.mmal_parameter_camera_info, ptr %cam_info.i, i32 0, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %max_width.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_width.i.1, align 4
  %arrayidx8.i.1 = getelementptr inbounds [2 x i32], ptr %resolutions, i32 1
  %20 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx8.i.1, align 4
  %max_height.i.1 = getelementptr inbounds %struct.mmal_parameter_camera_info, ptr %cam_info.i, i32 0, i32 2, i32 1, i32 2
  %21 = ptrtoint ptr %max_height.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_height.i.1, align 4
  %arrayidx13.i.1 = getelementptr inbounds [2 x i32], ptr %resolutions, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx13.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx13.i.1, align 4
  br label %get_num_cameras.exit

get_num_cameras.exit:                             ; preds = %for.body.i.1, %for.body.i.get_num_cameras.exit_crit_edge, %if.end4.i.get_num_cameras.exit_crit_edge
  %24 = ptrtoint ptr %cam_info_component.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cam_info_component.i, align 4
  %call14.i = call i32 @vchiq_mmal_component_finalise(ptr noundef %3, ptr noundef %25) #12
  %26 = ptrtoint ptr %cam_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cam_info.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_size.i) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cam_info.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cam_info_component.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2 = icmp eq i32 %27, 0
  br i1 %cmp2, label %get_num_cameras.exit.cleanup_mmal_crit_edge, label %get_num_cameras.exit.if.end4_crit_edge

get_num_cameras.exit.if.end4_crit_edge:           ; preds = %get_num_cameras.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

get_num_cameras.exit.cleanup_mmal_crit_edge:      ; preds = %get_num_cameras.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_mmal

if.end4:                                          ; preds = %get_num_cameras.exit.if.end4_crit_edge, %get_num_cameras.exit.thread
  %retval.0.i203 = phi i32 [ 1, %get_num_cameras.exit.thread ], [ %27, %get_num_cameras.exit.if.end4_crit_edge ]
  %28 = call i32 @llvm.umin.i32(i32 %retval.0.i203, i32 2)
  %max_stills_h.i.i = getelementptr inbounds %struct.mmal_parameter_camera_config, ptr %cam_config.i.i, i32 0, i32 1
  %stills_yuv422.i.i = getelementptr inbounds %struct.mmal_parameter_camera_config, ptr %cam_config.i.i, i32 0, i32 2
  %one_shot_stills.i.i = getelementptr inbounds %struct.mmal_parameter_camera_config, ptr %cam_config.i.i, i32 0, i32 3
  %max_preview_video_w.i.i = getelementptr inbounds %struct.mmal_parameter_camera_config, ptr %cam_config.i.i, i32 0, i32 4
  %max_preview_video_h.i.i = getelementptr inbounds %struct.mmal_parameter_camera_config, ptr %cam_config.i.i, i32 0, i32 5
  %num_preview_video_frames.i.i = getelementptr inbounds %struct.mmal_parameter_camera_config, ptr %cam_config.i.i, i32 0, i32 6
  %stills_capture_circular_buffer_height.i.i = getelementptr inbounds %struct.mmal_parameter_camera_config, ptr %cam_config.i.i, i32 0, i32 7
  %fast_preview_resume.i.i = getelementptr inbounds %struct.mmal_parameter_camera_config, ptr %cam_config.i.i, i32 0, i32 8
  %use_stc_timestamp.i.i = getelementptr inbounds %struct.mmal_parameter_camera_config, ptr %cam_config.i.i, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %do.end92.for.body_crit_edge, %if.end4
  %camera.0445 = phi i32 [ 0, %if.end4 ], [ %inc, %do.end92.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 2672) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.cleanup_gdev_crit_edge, label %do.body

for.body.cleanup_gdev_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_gdev

do.body:                                          ; preds = %for.body
  %mutex = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @bcm2835_mmal_probe.__key) #12
  %arrayidx = getelementptr [2 x [2 x i32]], ptr %resolutions, i32 0, i32 %camera.0445
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %max_width = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 25
  %32 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_width, align 4
  %arrayidx14 = getelementptr [2 x [2 x i32]], ptr %resolutions, i32 0, i32 %camera.0445, i32 1
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx14, align 4
  %max_height = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 26
  %35 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_height, align 8
  %overlay = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 22
  %36 = ptrtoint ptr %overlay to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 150, ptr %overlay, align 4
  %top = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 1
  %37 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 50, ptr %top, align 8
  %width = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 2
  %38 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1024, ptr %width, align 4
  %height = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 3
  %39 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 768, ptr %height, align 8
  %clipcount = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 22, i32 4
  %40 = ptrtoint ptr %clipcount to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %clipcount, align 8
  %field = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 22, i32 1
  %41 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %field, align 4
  %global_alpha = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 22, i32 6
  %42 = ptrtoint ptr %global_alpha to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %global_alpha, align 8
  %fmt = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 4
  %43 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), ptr %fmt, align 8
  %call24 = call i32 @v4l2_device_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @camera_instance) #12
  %camera_num = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 24
  %44 = ptrtoint ptr %camera_num to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call24, ptr %camera_num, align 8
  %call26 = call i32 @v4l2_device_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %call26) #15
  br label %free_dev

if.end33:                                         ; preds = %do.body
  %ctrl_handler = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 3
  %call34 = call i32 @bcm2835_mmal_init_controls(ptr noundef nonnull %call7.i.i, ptr noundef %ctrl_handler) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull @.str.7, i32 noundef %call34) #15
  br label %unreg_dev

if.end43:                                         ; preds = %if.end33
  %ctrl_handler46 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %ctrl_handler46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ctrl_handler, ptr %ctrl_handler46, align 4
  %46 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %instance, align 4
  %instance47 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 19
  %48 = ptrtoint ptr %instance47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %instance47, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %supported_encodings.i) #12
  %49 = call ptr @memset(ptr %supported_encodings.i, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param_size.i184) #12
  %50 = ptrtoint ptr %param_size.i184 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %param_size.i184, align 4, !annotation !461
  %call.i185 = call i32 @vchiq_mmal_init(ptr noundef %instance47) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp.i186 = icmp slt i32 %call.i185, 0
  br i1 %cmp.i186, label %do.end.i188, label %if.end.i190

do.end.i188:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call1.i187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i, ptr noundef nonnull @.str.30, i32 noundef %call.i185) #15
  br label %do.end53

if.end.i190:                                      ; preds = %if.end43
  %51 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %instance47, align 4
  %component.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 20
  %call3.i189 = call i32 @vchiq_mmal_component_init(ptr noundef %52, ptr noundef nonnull @.str.31, ptr noundef %component.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i189)
  %cmp4.i = icmp slt i32 %call3.i189, 0
  br i1 %cmp4.i, label %if.end.i190.unreg_mmal.i_crit_edge, label %if.end6.i

if.end.i190.unreg_mmal.i_crit_edge:               ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %unreg_mmal.i

if.end6.i:                                        ; preds = %if.end.i190
  %53 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %component.i, align 8
  %outputs.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %outputs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %outputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp9.i = icmp ult i32 %56, 3
  br i1 %cmp9.i, label %do.end13.i, label %if.end20.i

do.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %name16.i = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name16.i, ptr noundef nonnull @.str.30, i32 noundef %56, i32 noundef 3) #15
  br label %do.end260.i

if.end20.i:                                       ; preds = %if.end6.i
  %57 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %instance47, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cam_config.i.i) #12
  %59 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_width, align 4
  %61 = ptrtoint ptr %cam_config.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %cam_config.i.i, align 4
  %62 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_height, align 8
  %64 = ptrtoint ptr %max_stills_h.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max_stills_h.i.i, align 4
  %65 = ptrtoint ptr %stills_yuv422.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %stills_yuv422.i.i, align 4
  %66 = ptrtoint ptr %one_shot_stills.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %one_shot_stills.i.i, align 4
  %67 = load i32, ptr @max_video_width, align 4
  %68 = call i32 @llvm.smax.i32(i32 %67, i32 1920) #12
  %69 = ptrtoint ptr %max_preview_video_w.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %max_preview_video_w.i.i, align 4
  %70 = load i32, ptr @max_video_height, align 4
  %71 = call i32 @llvm.smax.i32(i32 %70, i32 1088) #12
  %72 = ptrtoint ptr %max_preview_video_h.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %max_preview_video_h.i.i, align 4
  %73 = ptrtoint ptr %num_preview_video_frames.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3, ptr %num_preview_video_frames.i.i, align 4
  %74 = ptrtoint ptr %stills_capture_circular_buffer_height.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %stills_capture_circular_buffer_height.i.i, align 4
  %75 = ptrtoint ptr %fast_preview_resume.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %fast_preview_resume.i.i, align 4
  %76 = ptrtoint ptr %use_stc_timestamp.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %use_stc_timestamp.i.i, align 4
  %control.i.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %54, i32 0, i32 5
  %call.i.i = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %58, ptr noundef %control.i.i, i32 noundef 65557, ptr noundef nonnull %cam_config.i.i, i32 noundef 40) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cam_config.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp23.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp23.i, label %do.end27.i, label %if.end33.i

do.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %name30.i = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name30.i, ptr noundef nonnull @.str.30, i32 noundef %call.i.i) #15
  br label %do.end260.i

if.end33.i:                                       ; preds = %if.end20.i
  %rgb_bgr_swapped.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 27
  %77 = ptrtoint ptr %rgb_bgr_swapped.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %rgb_bgr_swapped.i, align 4
  %78 = ptrtoint ptr %param_size.i184 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 80, ptr %param_size.i184, align 4
  %79 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %instance47, align 4
  %arrayidx35.i = getelementptr %struct.vchiq_mmal_component, ptr %54, i32 0, i32 7, i32 2
  %call36.i = call i32 @vchiq_mmal_port_parameter_get(ptr noundef %80, ptr noundef %arrayidx35.i, i32 noundef 1, ptr noundef nonnull %supported_encodings.i, ptr noundef nonnull %param_size.i184) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp eq i32 %call36.i, 0
  br i1 %cmp37.i, label %for.cond.preheader.i, label %if.end33.i.if.end49.i_crit_edge

if.end33.i.if.end49.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

for.cond.preheader.i:                             ; preds = %if.end33.i
  %81 = ptrtoint ptr %param_size.i184 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %param_size.i184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %cmp39380.not.i = icmp ult i32 %82, 4
  br i1 %cmp39380.not.i, label %for.cond.preheader.i.if.end49.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.if.end49.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %div379.i = lshr i32 %82, 2
  br label %for.body.i191

for.body.i191:                                    ; preds = %for.inc.i.for.body.i191_crit_edge, %for.body.preheader.i
  %i.0381.i = phi i32 [ %inc.i192, %for.inc.i.for.body.i191_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx40.i = getelementptr [20 x i32], ptr %supported_encodings.i, i32 0, i32 %i.0381.i
  %83 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx40.i, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %84, label %for.inc.i [
    i32 861030210, label %for.body.i191.if.end49.i_crit_edge
    i32 859981650, label %if.then46.i
  ]

for.body.i191.if.end49.i_crit_edge:               ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.then46.i:                                      ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %rgb_bgr_swapped.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %rgb_bgr_swapped.i, align 4
  br label %if.end49.i

for.inc.i:                                        ; preds = %for.body.i191
  %inc.i192 = add nuw nsw i32 %i.0381.i, 1
  %exitcond.not.i193 = icmp eq i32 %inc.i192, %div379.i
  br i1 %exitcond.not.i193, label %for.inc.i.if.end49.i_crit_edge, label %for.inc.i.for.body.i191_crit_edge

for.inc.i.for.body.i191_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i191

for.inc.i.if.end49.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.end49.i:                                       ; preds = %for.inc.i.if.end49.i_crit_edge, %if.then46.i, %for.body.i191.if.end49.i_crit_edge, %for.cond.preheader.i.if.end49.i_crit_edge, %if.end33.i.if.end49.i_crit_edge
  %encoding.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %54, i32 0, i32 7, i32 0, i32 9, i32 1
  %87 = ptrtoint ptr %encoding.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1448169551, ptr %encoding.i, align 4
  %encoding_variant.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %54, i32 0, i32 7, i32 0, i32 9, i32 2
  %88 = ptrtoint ptr %encoding_variant.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 808596553, ptr %encoding_variant.i, align 4
  %es.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %54, i32 0, i32 7, i32 0, i32 9, i32 3
  %89 = ptrtoint ptr %es.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %es.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1024, ptr %90, align 4
  %92 = load ptr, ptr %es.i, align 4
  %height.i = getelementptr inbounds %struct.mmal_video_format, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 768, ptr %height.i, align 4
  %94 = load ptr, ptr %es.i, align 4
  %crop.i = getelementptr inbounds %struct.mmal_video_format, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %crop.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %crop.i, align 4
  %96 = load ptr, ptr %es.i, align 4
  %y.i = getelementptr inbounds %struct.mmal_video_format, ptr %96, i32 0, i32 2, i32 1
  %97 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %y.i, align 4
  %98 = load ptr, ptr %es.i, align 4
  %width59.i = getelementptr inbounds %struct.mmal_video_format, ptr %98, i32 0, i32 2, i32 2
  %99 = ptrtoint ptr %width59.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1024, ptr %width59.i, align 4
  %100 = load ptr, ptr %es.i, align 4
  %height62.i = getelementptr inbounds %struct.mmal_video_format, ptr %100, i32 0, i32 2, i32 3
  %101 = ptrtoint ptr %height62.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 768, ptr %height62.i, align 4
  %102 = load ptr, ptr %es.i, align 4
  %frame_rate.i = getelementptr inbounds %struct.mmal_video_format, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %frame_rate.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %frame_rate.i, align 4
  %104 = load ptr, ptr %es.i, align 4
  %den.i = getelementptr inbounds %struct.mmal_video_format, ptr %104, i32 0, i32 3, i32 1
  %105 = ptrtoint ptr %den.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %den.i, align 4
  %encoding69.i = getelementptr %struct.vchiq_mmal_component, ptr %54, i32 0, i32 7, i32 1, i32 9, i32 1
  %106 = ptrtoint ptr %encoding69.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1448169551, ptr %encoding69.i, align 4
  %encoding_variant70.i = getelementptr %struct.vchiq_mmal_component, ptr %54, i32 0, i32 7, i32 1, i32 9, i32 2
  %107 = ptrtoint ptr %encoding_variant70.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 808596553, ptr %encoding_variant70.i, align 4
  %es71.i = getelementptr %struct.vchiq_mmal_component, ptr %54, i32 0, i32 7, i32 1, i32 9, i32 3
  %108 = ptrtoint ptr %es71.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %es71.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1024, ptr %109, align 4
  %111 = load ptr, ptr %es71.i, align 4
  %height74.i = getelementptr inbounds %struct.mmal_video_format, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %height74.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 768, ptr %height74.i, align 4
  %113 = load ptr, ptr %es71.i, align 4
  %crop76.i = getelementptr inbounds %struct.mmal_video_format, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %crop76.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %crop76.i, align 4
  %115 = load ptr, ptr %es71.i, align 4
  %y80.i = getelementptr inbounds %struct.mmal_video_format, ptr %115, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %y80.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %y80.i, align 4
  %117 = load ptr, ptr %es71.i, align 4
  %width83.i = getelementptr inbounds %struct.mmal_video_format, ptr %117, i32 0, i32 2, i32 2
  %118 = ptrtoint ptr %width83.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1024, ptr %width83.i, align 4
  %119 = load ptr, ptr %es71.i, align 4
  %height86.i = getelementptr inbounds %struct.mmal_video_format, ptr %119, i32 0, i32 2, i32 3
  %120 = ptrtoint ptr %height86.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 768, ptr %height86.i, align 4
  %121 = load ptr, ptr %es71.i, align 4
  %frame_rate88.i = getelementptr inbounds %struct.mmal_video_format, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %frame_rate88.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %frame_rate88.i, align 4
  %123 = load ptr, ptr %es71.i, align 4
  %den92.i = getelementptr inbounds %struct.mmal_video_format, ptr %123, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %den92.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %den92.i, align 4
  %encoding96.i = getelementptr %struct.vchiq_mmal_component, ptr %54, i32 0, i32 7, i32 2, i32 9, i32 1
  %125 = ptrtoint ptr %encoding96.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1448169551, ptr %encoding96.i, align 4
  %es97.i = getelementptr %struct.vchiq_mmal_component, ptr %54, i32 0, i32 7, i32 2, i32 9, i32 3
  %126 = ptrtoint ptr %es97.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %es97.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2592, ptr %127, align 4
  %129 = load ptr, ptr %es97.i, align 4
  %height100.i = getelementptr inbounds %struct.mmal_video_format, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %height100.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1944, ptr %height100.i, align 4
  %131 = load ptr, ptr %es97.i, align 4
  %crop102.i = getelementptr inbounds %struct.mmal_video_format, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %crop102.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %crop102.i, align 4
  %133 = load ptr, ptr %es97.i, align 4
  %y106.i = getelementptr inbounds %struct.mmal_video_format, ptr %133, i32 0, i32 2, i32 1
  %134 = ptrtoint ptr %y106.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %y106.i, align 4
  %135 = load ptr, ptr %es97.i, align 4
  %width109.i = getelementptr inbounds %struct.mmal_video_format, ptr %135, i32 0, i32 2, i32 2
  %136 = ptrtoint ptr %width109.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 2592, ptr %width109.i, align 4
  %137 = load ptr, ptr %es97.i, align 4
  %height112.i = getelementptr inbounds %struct.mmal_video_format, ptr %137, i32 0, i32 2, i32 3
  %138 = ptrtoint ptr %height112.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1944, ptr %height112.i, align 4
  %139 = load ptr, ptr %es97.i, align 4
  %frame_rate114.i = getelementptr inbounds %struct.mmal_video_format, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %frame_rate114.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %frame_rate114.i, align 4
  %141 = load ptr, ptr %es97.i, align 4
  %den118.i = getelementptr inbounds %struct.mmal_video_format, ptr %141, i32 0, i32 3, i32 1
  %142 = ptrtoint ptr %den118.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %den118.i, align 4
  %143 = load ptr, ptr %es97.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %capture.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23
  %146 = ptrtoint ptr %capture.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %capture.i, align 8
  %147 = load ptr, ptr %es97.i, align 4
  %height123.i = getelementptr inbounds %struct.mmal_video_format, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %height123.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %height123.i, align 4
  %height125.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 1
  %150 = ptrtoint ptr %height125.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %height125.i, align 4
  %151 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @formats, ptr %fmt, align 8
  %encode_component.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 17
  %152 = ptrtoint ptr %encode_component.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %encode_component.i, align 4
  %timeperframe.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 5
  %153 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 8)
  store i64 4294967326000, ptr %timeperframe.i, align 4
  %enc_profile.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 8
  %154 = ptrtoint ptr %enc_profile.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 4, ptr %enc_profile.i, align 4
  %enc_level.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 9
  %155 = ptrtoint ptr %enc_level.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 11, ptr %enc_level.i, align 8
  %156 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %instance47, align 4
  %arrayidx133.i = getelementptr %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 20, i32 1
  %call134.i = call i32 @vchiq_mmal_component_init(ptr noundef %157, ptr noundef nonnull @.str.38, ptr noundef %arrayidx133.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %cmp135.i = icmp slt i32 %call134.i, 0
  br i1 %cmp135.i, label %if.end49.i.do.end260.i_crit_edge, label %if.end137.i

if.end49.i.do.end260.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end260.i

if.end137.i:                                      ; preds = %if.end49.i
  %158 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx133.i, align 4
  %inputs.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %inputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp140.i = icmp eq i32 %161, 0
  br i1 %cmp140.i, label %if.then141.i, label %if.end153.i

if.then141.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #14
  %name147.i = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call152.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name147.i, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 1) #15
  br label %do.end251.i

if.end153.i:                                      ; preds = %if.end137.i
  %162 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %instance47, align 4
  %arrayidx156.i = getelementptr %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 20, i32 2
  %call157.i = call i32 @vchiq_mmal_component_init(ptr noundef %163, ptr noundef nonnull @.str.42, ptr noundef %arrayidx156.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %cmp158.i = icmp slt i32 %call157.i, 0
  br i1 %cmp158.i, label %if.end153.i.do.end251.i_crit_edge, label %if.end160.i

if.end153.i.do.end251.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end251.i

if.end160.i:                                      ; preds = %if.end153.i
  %164 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx156.i, align 8
  %inputs163.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %inputs163.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %inputs163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp164.i = icmp eq i32 %167, 0
  br i1 %cmp164.i, label %if.then165.i, label %if.end177.i

if.then165.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #14
  %name171.i = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call176.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name171.i, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 1) #15
  br label %do.end242.i

if.end177.i:                                      ; preds = %if.end160.i
  %168 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %instance47, align 4
  %arrayidx180.i = getelementptr %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 20, i32 3
  %call181.i = call i32 @vchiq_mmal_component_init(ptr noundef %169, ptr noundef nonnull @.str.45, ptr noundef %arrayidx180.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181.i)
  %cmp182.i = icmp slt i32 %call181.i, 0
  br i1 %cmp182.i, label %if.end177.i.do.end242.i_crit_edge, label %if.end184.i

if.end177.i.do.end242.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end242.i

if.end184.i:                                      ; preds = %if.end177.i
  %170 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx180.i, align 4
  %inputs187.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %inputs187.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %inputs187.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp188.i = icmp eq i32 %173, 0
  br i1 %cmp188.i, label %if.then189.i, label %if.end201.i

if.then189.i:                                     ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #14
  %name195.i = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call200.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name195.i, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 1) #15
  br label %do.end233.i

if.end201.i:                                      ; preds = %if.end184.i
  %output204.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %171, i32 0, i32 7
  %encoding207.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %171, i32 0, i32 7, i32 0, i32 9, i32 1
  %174 = ptrtoint ptr %encoding207.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 875967048, ptr %encoding207.i, align 4
  %175 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %instance47, align 4
  %call209.i = call i32 @vchiq_mmal_port_set_format(ptr noundef %176, ptr noundef %output204.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable.i) #12
  %177 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %enable.i, align 4
  %178 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %instance47, align 4
  %180 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx180.i, align 4
  %control.i194 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %181, i32 0, i32 5
  %call213.i = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %179, ptr noundef %control.i194, i32 noundef 131085, ptr noundef nonnull %enable.i, i32 noundef 4) #12
  %182 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %instance47, align 4
  %184 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx180.i, align 4
  %control217.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %185, i32 0, i32 5
  %call218.i = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %183, ptr noundef %control217.i, i32 noundef 131078, ptr noundef nonnull %enable.i, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable.i) #12
  %call219.i = call i32 @bcm2835_mmal_set_all_camera_controls(ptr noundef %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219.i)
  %cmp220.i = icmp slt i32 %call219.i, 0
  br i1 %cmp220.i, label %do.end224.i, label %if.end59

do.end224.i:                                      ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #14
  %name227.i = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call229.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name227.i, ptr noundef nonnull @.str.30, i32 noundef %call219.i) #15
  br label %do.end233.i

do.end233.i:                                      ; preds = %do.end224.i, %if.then189.i
  %ret.0.i = phi i32 [ -22, %if.then189.i ], [ %call219.i, %do.end224.i ]
  %call235.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #15
  %186 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %instance47, align 4
  %188 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx180.i, align 4
  %call239.i = call i32 @vchiq_mmal_component_finalise(ptr noundef %187, ptr noundef %189) #12
  br label %do.end242.i

do.end242.i:                                      ; preds = %do.end233.i, %if.end177.i.do.end242.i_crit_edge, %if.then165.i
  %ret.1.i = phi i32 [ -22, %if.then165.i ], [ %ret.0.i, %do.end233.i ], [ %call181.i, %if.end177.i.do.end242.i_crit_edge ]
  %call244.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #15
  %190 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %instance47, align 4
  %192 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx156.i, align 8
  %call248.i = call i32 @vchiq_mmal_component_finalise(ptr noundef %191, ptr noundef %193) #12
  br label %do.end251.i

do.end251.i:                                      ; preds = %do.end242.i, %if.end153.i.do.end251.i_crit_edge, %if.then141.i
  %ret.2.i = phi i32 [ -22, %if.then141.i ], [ %ret.1.i, %do.end242.i ], [ %call157.i, %if.end153.i.do.end251.i_crit_edge ]
  %call253.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #15
  %194 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %instance47, align 4
  %196 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx133.i, align 4
  %call257.i = call i32 @vchiq_mmal_component_finalise(ptr noundef %195, ptr noundef %197) #12
  br label %do.end260.i

do.end260.i:                                      ; preds = %do.end251.i, %if.end49.i.do.end260.i_crit_edge, %do.end27.i, %do.end13.i
  %ret.3.i = phi i32 [ -22, %do.end13.i ], [ %call.i.i, %do.end27.i ], [ %ret.2.i, %do.end251.i ], [ %call134.i, %if.end49.i.do.end260.i_crit_edge ]
  %call262.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #15
  %198 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %instance47, align 4
  %200 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %component.i, align 8
  %call266.i = call i32 @vchiq_mmal_component_finalise(ptr noundef %199, ptr noundef %201) #12
  br label %unreg_mmal.i

unreg_mmal.i:                                     ; preds = %do.end260.i, %if.end.i190.unreg_mmal.i_crit_edge
  %ret.4.i = phi i32 [ %ret.3.i, %do.end260.i ], [ %call3.i189, %if.end.i190.unreg_mmal.i_crit_edge ]
  %202 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %instance47, align 4
  %call268.i = call i32 @vchiq_mmal_finalise(ptr noundef %203) #12
  br label %do.end53

do.end53:                                         ; preds = %unreg_mmal.i, %do.end.i188
  %retval.0.i195.ph = phi i32 [ %ret.4.i, %unreg_mmal.i ], [ %call.i185, %do.end.i188 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_size.i184) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %supported_encodings.i) #12
  %name56 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name56, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i195.ph) #15
  br label %unreg_dev

if.end59:                                         ; preds = %if.end201.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_size.i184) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %supported_encodings.i) #12
  %vb_vidq = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 11
  %204 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 11, i32 2
  %205 = call ptr @memset(ptr %204, i32 0, i32 504)
  %206 = ptrtoint ptr %vb_vidq to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %vb_vidq, align 8
  %io_modes = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 11, i32 1
  %207 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 7, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 11, i32 10
  %208 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call7.i.i, ptr %drv_priv, align 8
  %buf_struct_size = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 11, i32 12
  %209 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 1520, ptr %buf_struct_size, align 8
  %ops = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 11, i32 7
  %210 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @bcm2835_mmal_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 11, i32 8
  %211 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 8
  %timestamp_flags = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 11, i32 13
  %212 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 23, i32 11, i32 5
  %213 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %mutex, ptr %lock, align 4
  %call62 = call i32 @vb2_queue_init(ptr noundef %vb_vidq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end59.unreg_dev_crit_edge, label %if.end65

if.end59.unreg_dev_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %unreg_dev

if.end65:                                         ; preds = %if.end59
  %vdev = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 1
  %214 = call ptr @memcpy(ptr %vdev, ptr @vdev_template, i32 1352)
  %v4l2_dev1.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 1, i32 7
  %215 = ptrtoint ptr %v4l2_dev1.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call7.i.i, ptr %v4l2_dev1.i, align 4
  %lock.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 1, i32 26
  %216 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %mutex, ptr %lock.i, align 8
  %queue.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 1, i32 10
  %217 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %vb_vidq, ptr %queue.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 8
  %218 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %219 = ptrtoint ptr %camera_num to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %camera_num, align 8
  %arrayidx.i = getelementptr [2 x i32], ptr @video_nr, i32 0, i32 %220
  %221 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx.i, align 4
  %call.i.i196 = call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef %222, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i196)
  %cmp.i197 = icmp slt i32 %call.i.i196, 0
  br i1 %cmp.i197, label %do.end71, label %do.end.i199

do.end.i199:                                      ; preds = %if.end65
  %223 = ptrtoint ptr %v4l2_dev1.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %v4l2_dev1.i, align 4
  %name.i198 = getelementptr inbounds %struct.v4l2_device, ptr %224, i32 0, i32 4
  %init_name.i.i.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 3
  %225 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %226, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i199.if.end77_crit_edge

do.end.i199.if.end77_crit_edge:                   ; preds = %do.end.i199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.end.i.i.i:                                     ; preds = %do.end.i199
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %call7.i.i, i32 0, i32 1, i32 5
  %227 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev.i.i, align 8
  br label %if.end77

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %name74 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name74, ptr noundef nonnull @.str.7, i32 noundef %call.i.i196) #15
  br label %unreg_dev

if.end77:                                         ; preds = %if.end.i.i.i, %do.end.i199.if.end77_crit_edge
  %retval.0.i.i.i = phi ptr [ %228, %if.end.i.i.i ], [ %226, %do.end.i199.if.end77_crit_edge ]
  %229 = load i32, ptr @max_video_width, align 4
  %230 = load i32, ptr @max_video_height, align 4
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %name.i198, ptr noundef %retval.0.i.i.i, i32 noundef %229, i32 noundef %230) #15
  %call78 = call fastcc i32 @mmal_setup_components(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @default_v4l2_format)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  %name86 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  br i1 %cmp79, label %do.end83, label %do.end92

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name86, ptr noundef nonnull @.str.7, i32 noundef %call78) #15
  br label %unreg_dev

do.end92:                                         ; preds = %if.end77
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name86, ptr noundef nonnull @.str.2) #15
  %arrayidx98 = getelementptr [2 x ptr], ptr @gdev, i32 0, i32 %camera.0445
  %231 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call7.i.i, ptr %arrayidx98, align 4
  %inc = add nuw nsw i32 %camera.0445, 1
  %exitcond.not = icmp eq i32 %inc, %28
  br i1 %exitcond.not, label %do.end92.cleanup_crit_edge, label %do.end92.for.body_crit_edge

do.end92.for.body_crit_edge:                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end92.cleanup_crit_edge:                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

unreg_dev:                                        ; preds = %do.end83, %do.end71, %if.end59.unreg_dev_crit_edge, %do.end53, %do.end39
  %ret.0 = phi i32 [ %call34, %do.end39 ], [ %retval.0.i195.ph, %do.end53 ], [ %call.i.i196, %do.end71 ], [ %call78, %do.end83 ], [ %call62, %if.end59.unreg_dev_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  call void @v4l2_device_unregister(ptr noundef nonnull %call7.i.i) #12
  br label %free_dev

free_dev:                                         ; preds = %unreg_dev, %do.end31
  %ret.1 = phi i32 [ %call26, %do.end31 ], [ %ret.0, %unreg_dev ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup_gdev

cleanup_gdev:                                     ; preds = %free_dev, %for.body.cleanup_gdev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %free_dev ], [ -12, %for.body.cleanup_gdev_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %camera.0445)
  %cmp102446.not = icmp eq i32 %camera.0445, 0
  br i1 %cmp102446.not, label %cleanup_gdev.cleanup_mmal_crit_edge, label %for.body103.preheader

cleanup_gdev.cleanup_mmal_crit_edge:              ; preds = %cleanup_gdev
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_mmal

for.body103.preheader:                            ; preds = %cleanup_gdev
  call void @__sanitizer_cov_trace_pc() #14
  %232 = load ptr, ptr @gdev, align 4
  call fastcc void @bcm2835_cleanup_instance(ptr noundef %232)
  store ptr null, ptr @gdev, align 4
  br label %cleanup_mmal

cleanup_mmal:                                     ; preds = %for.body103.preheader, %cleanup_gdev.cleanup_mmal_crit_edge, %get_num_cameras.exit.cleanup_mmal_crit_edge
  %ret.3 = phi i32 [ -19, %get_num_cameras.exit.cleanup_mmal_crit_edge ], [ %ret.2, %cleanup_gdev.cleanup_mmal_crit_edge ], [ %ret.2, %for.body103.preheader ]
  %233 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %instance, align 4
  %call109 = call i32 @vchiq_mmal_finalise(ptr noundef %234) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup_mmal, %do.end92.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %cleanup_mmal ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resolutions) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %instance) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_mmal_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gdev, align 4
  %instance1 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %0, i32 0, i32 19
  %1 = ptrtoint ptr %instance1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %instance1, align 4
  tail call fastcc void @bcm2835_cleanup_instance(ptr noundef %0)
  store ptr null, ptr @gdev, align 4
  %3 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @gdev, i32 0, i32 1), align 4
  tail call fastcc void @bcm2835_cleanup_instance(ptr noundef %3)
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @gdev, i32 0, i32 1), align 4
  %call = tail call i32 @vchiq_mmal_finalise(ptr noundef %2) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_set_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_mmal_init_controls(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmal_setup_components(ptr noundef %dev, ptr nocapture noundef readonly %f) unnamed_addr #2 align 64 {
entry:
  %remove_padding = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp2.i = icmp eq i32 %2, %1
  br i1 %cmp2.i, label %entry.if.end_crit_edge, label %for.cond.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.i:                                       ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp2.1.i = icmp eq i32 %3, %1
  br i1 %cmp2.1.i, label %for.cond.i.if.end_crit_edge, label %for.cond.1.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %4 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp2.2.i = icmp eq i32 %4, %1
  br i1 %cmp2.2.i, label %for.cond.1.i.if.end_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %5 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp2.3.i = icmp eq i32 %5, %1
  br i1 %cmp2.3.i, label %for.cond.2.i.if.end_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %6 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp2.4.i = icmp eq i32 %6, %1
  br i1 %cmp2.4.i, label %for.cond.3.i.if.end_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end_crit_edge:                    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %7 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp2.5.i = icmp eq i32 %7, %1
  br i1 %cmp2.5.i, label %for.cond.4.i.if.end_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end_crit_edge:                    ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %8 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp2.6.i = icmp eq i32 %8, %1
  br i1 %cmp2.6.i, label %for.cond.5.i.if.end_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end_crit_edge:                    ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %9 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp2.7.i = icmp eq i32 %9, %1
  br i1 %cmp2.7.i, label %for.cond.6.i.if.end_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end_crit_edge:                    ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %10 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp2.8.i = icmp eq i32 %10, %1
  br i1 %cmp2.8.i, label %for.cond.7.i.if.end_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end_crit_edge:                    ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %11 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp2.9.i = icmp eq i32 %11, %1
  br i1 %cmp2.9.i, label %for.cond.8.i.if.end_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end_crit_edge:                    ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %12 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %1)
  %cmp2.10.i = icmp eq i32 %12, %1
  br i1 %cmp2.10.i, label %for.cond.9.i.if.end_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end_crit_edge:                    ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %13 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp2.11.i = icmp eq i32 %13, %1
  br i1 %cmp2.11.i, label %for.cond.10.i.if.end_crit_edge, label %for.cond.11.i

for.cond.10.i.if.end_crit_edge:                   ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %14 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp2.12.i = icmp eq i32 %14, %1
  br i1 %cmp2.12.i, label %for.cond.11.i.if.end_crit_edge, label %for.cond.12.i

for.cond.11.i.if.end_crit_edge:                   ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %15 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp2.13.i = icmp eq i32 %15, %1
  br i1 %cmp2.13.i, label %for.cond.12.i.if.end_crit_edge, label %get_format.exit

for.cond.12.i.if.end_crit_edge:                   ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

get_format.exit:                                  ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remove_padding) #12
  %16 = ptrtoint ptr %remove_padding to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %remove_padding, align 4, !annotation !461
  br label %cleanup

if.end:                                           ; preds = %for.cond.12.i.if.end_crit_edge, %for.cond.11.i.if.end_crit_edge, %for.cond.10.i.if.end_crit_edge, %for.cond.9.i.if.end_crit_edge, %for.cond.8.i.if.end_crit_edge, %for.cond.7.i.if.end_crit_edge, %for.cond.6.i.if.end_crit_edge, %for.cond.5.i.if.end_crit_edge, %for.cond.4.i.if.end_crit_edge, %for.cond.3.i.if.end_crit_edge, %for.cond.2.i.if.end_crit_edge, %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 12), %for.cond.11.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 11), %for.cond.10.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 10), %for.cond.9.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 9), %for.cond.8.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 8), %for.cond.7.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 7), %for.cond.6.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 6), %for.cond.5.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 5), %for.cond.4.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 4), %for.cond.3.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), %for.cond.2.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 2), %for.cond.1.i.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 1), %for.cond.i.if.end_crit_edge ], [ @formats, %entry.if.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 13), %for.cond.12.i.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remove_padding) #12
  %capture = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23
  %encode_component1 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 17
  %17 = ptrtoint ptr %encode_component1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encode_component1, align 4
  %tobool2.not = icmp eq ptr %18, null
  br i1 %tobool2.not, label %if.end.if.end32_crit_edge, label %do.body

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.body:                                          ; preds = %if.end
  %19 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp sgt i32 %19, 0
  br i1 %cmp, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef %name) #15
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %instance, align 4
  %camera_port11 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 16
  %22 = ptrtoint ptr %camera_port11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %camera_port11, align 8
  %call12 = tail call i32 @vchiq_mmal_port_connect_tunnel(ptr noundef %21, ptr noundef %23, ptr noundef null) #12
  %24 = ptrtoint ptr %camera_port11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %camera_port11, align 8
  %25 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %instance, align 4
  %27 = ptrtoint ptr %encode_component1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %encode_component1, align 4
  %call18 = tail call i32 @vchiq_mmal_component_disable(ptr noundef %26, ptr noundef %28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end9.if.end29_crit_edge, label %do.end23

do.end9.if.end29_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.end23:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %name26 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %name26, i32 noundef %call18) #15
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %do.end9.if.end29_crit_edge
  %29 = ptrtoint ptr %encode_component1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %encode_component1, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end.if.end32_crit_edge
  %mmal_component = getelementptr inbounds %struct.mmal_fmt, ptr %retval.0.i.ph, i32 0, i32 4
  %30 = ptrtoint ptr %mmal_component to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mmal_component, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %31, label %if.end32.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb43
    i32 3, label %sw.bb54
  ]

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end32
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %33 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt, align 4
  %35 = load i32, ptr @max_video_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %35)
  %cmp33.not = icmp ugt i32 %34, %35
  br i1 %cmp33.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height, align 4
  %38 = load i32, ptr @max_video_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %38)
  %cmp35.not = icmp ugt i32 %37, %38
  br i1 %cmp35.not, label %land.lhs.true.if.else_crit_edge, label %if.then36

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %39 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %component, align 8
  %arrayidx37 = getelementptr %struct.vchiq_mmal_component, ptr %40, i32 0, i32 7, i32 1
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %component38 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %41 = ptrtoint ptr %component38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %component38, align 8
  %arrayidx41 = getelementptr %struct.vchiq_mmal_component, ptr %42, i32 0, i32 7, i32 2
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %component44 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %arrayidx45 = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 2
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx45, align 8
  %output48 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %component44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %component44, align 8
  %arrayidx53 = getelementptr %struct.vchiq_mmal_component, ptr %46, i32 0, i32 7, i32 2
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %component55 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %arrayidx56 = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 3
  %47 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx56, align 4
  %output59 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %component55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %component55, align 8
  %arrayidx64 = getelementptr %struct.vchiq_mmal_component, ptr %50, i32 0, i32 7, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb54, %sw.bb43, %if.else, %if.then36
  %encode_component.0 = phi ptr [ %48, %sw.bb54 ], [ %44, %sw.bb43 ], [ null, %if.else ], [ null, %if.then36 ]
  %camera_port.1 = phi ptr [ %arrayidx64, %sw.bb54 ], [ %arrayidx53, %sw.bb43 ], [ %arrayidx41, %if.else ], [ %arrayidx37, %if.then36 ]
  %port.0 = phi ptr [ %output59, %sw.bb54 ], [ %output48, %sw.bb43 ], [ %arrayidx41, %if.else ], [ %arrayidx37, %if.then36 ]
  %tobool65.not = icmp eq ptr %port.0, null
  br i1 %tobool65.not, label %sw.epilog.cleanup_crit_edge, label %if.end67

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end67:                                         ; preds = %sw.epilog
  %tobool68.not = icmp eq ptr %encode_component.0, null
  br i1 %tobool68.not, label %if.else70, label %if.end67.if.end73_crit_edge

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.else70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %mmal = getelementptr inbounds %struct.mmal_fmt, ptr %retval.0.i.ph, i32 0, i32 2
  %51 = ptrtoint ptr %mmal to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mmal, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else70, %if.end67.if.end73_crit_edge
  %.sink = phi i32 [ %52, %if.else70 ], [ 1448169551, %if.end67.if.end73_crit_edge ]
  %53 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %53, align 4
  %rgb_bgr_swapped = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 27
  %55 = ptrtoint ptr %rgb_bgr_swapped to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rgb_bgr_swapped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool74.not = icmp eq i32 %56, 0
  br i1 %tobool74.not, label %if.end73.if.end91_crit_edge, label %if.then75

if.end73.if.end91_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then75:                                        ; preds = %if.end73
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %53, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %58, label %if.then75.if.end91_crit_edge [
    i32 859981650, label %if.then75.if.end91.sink.split_crit_edge
    i32 861030210, label %if.then86
  ]

if.then75.if.end91.sink.split_crit_edge:          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split

if.then75.if.end91_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then86:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split

if.end91.sink.split:                              ; preds = %if.then86, %if.then75.if.end91.sink.split_crit_edge
  %.sink348 = phi i32 [ 859981650, %if.then86 ], [ 861030210, %if.then75.if.end91.sink.split_crit_edge ]
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink348, ptr %53, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end91.sink.split, %if.then75.if.end91_crit_edge, %if.end73.if.end91_crit_edge
  %remove_padding92 = getelementptr inbounds %struct.mmal_fmt, ptr %retval.0.i.ph, i32 0, i32 6
  %61 = ptrtoint ptr %remove_padding92 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %remove_padding92, align 4, !range !462
  %63 = zext i8 %62 to i32
  %64 = ptrtoint ptr %remove_padding to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %remove_padding, align 4
  %instance94 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %65 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %instance94, align 4
  %call95 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %66, ptr noundef %camera_port.1, i32 noundef 14, ptr noundef nonnull %remove_padding, i32 noundef 4) #12
  %encoding_variant = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 9, i32 2
  %67 = ptrtoint ptr %encoding_variant to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %encoding_variant, align 4
  %fmt97 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %68 = ptrtoint ptr %fmt97 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fmt97, align 4
  %es = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 10
  %70 = ptrtoint ptr %es to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %es, align 4
  %height101 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %71 = ptrtoint ptr %height101 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %height101, align 4
  %height103 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 10, i32 0, i32 1
  %73 = ptrtoint ptr %height103 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %height103, align 4
  %crop = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 10, i32 0, i32 2
  %74 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %crop, align 4
  %y = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 10, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %y, align 4
  %76 = load i32, ptr %fmt97, align 4
  %width111 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 10, i32 0, i32 2, i32 2
  %77 = ptrtoint ptr %width111 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %width111, align 4
  %78 = load i32, ptr %height101, align 4
  %height116 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 10, i32 0, i32 2, i32 3
  %79 = ptrtoint ptr %height116 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %height116, align 4
  %frame_rate = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 10, i32 0, i32 3
  %80 = ptrtoint ptr %frame_rate to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %frame_rate, align 4
  %den = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 10, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %den to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %den, align 4
  %color_space = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 10, i32 0, i32 5
  %82 = ptrtoint ptr %color_space to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1229343321, ptr %color_space, align 4
  %83 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %instance94, align 4
  %call122 = call i32 @vchiq_mmal_port_set_format(ptr noundef %84, ptr noundef %camera_port.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.lhs.true124, label %if.end91.do.body136_crit_edge

if.end91.do.body136_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

land.lhs.true124:                                 ; preds = %if.end91
  %component125 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %85 = ptrtoint ptr %component125 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %component125, align 8
  %arrayidx128 = getelementptr %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7, i32 1
  %cmp129 = icmp eq ptr %camera_port.1, %arrayidx128
  br i1 %cmp129, label %if.then131, label %land.lhs.true124.if.end158_crit_edge

land.lhs.true124.if.end158_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.then131:                                       ; preds = %land.lhs.true124
  %arrayidx.i = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 1
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load.i = load i8, ptr %88, align 4
  %90 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i = icmp eq i8 %90, 0
  %output.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7
  br i1 %tobool.not.i, label %if.then131.if.end10.i_crit_edge, label %if.then.i

if.then131.if.end10.i_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then.i:                                        ; preds = %if.then131
  %91 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %instance94, align 4
  %call.i = call i32 @vchiq_mmal_port_disable(ptr noundef %92, ptr noundef %output.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %instance94, align 4
  %call9.i = call i32 @vchiq_mmal_port_connect_tunnel(ptr noundef %94, ptr noundef %output.i, ptr noundef null) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.then.i.if.end10.i_crit_edge, %if.then131.if.end10.i_crit_edge
  %95 = ptrtoint ptr %fmt97 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fmt97, align 4
  %es.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7, i32 0, i32 10
  %97 = ptrtoint ptr %es.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %es.i, align 4
  %98 = ptrtoint ptr %height101 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %height101, align 4
  %height14.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7, i32 0, i32 10, i32 0, i32 1
  %100 = ptrtoint ptr %height14.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %height14.i, align 4
  %crop.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7, i32 0, i32 10, i32 0, i32 2
  %101 = ptrtoint ptr %crop.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %crop.i, align 4
  %y.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7, i32 0, i32 10, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %y.i, align 4
  %103 = load i32, ptr %fmt97, align 4
  %width22.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7, i32 0, i32 10, i32 0, i32 2, i32 2
  %104 = ptrtoint ptr %width22.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %width22.i, align 4
  %105 = load i32, ptr %height101, align 4
  %height27.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7, i32 0, i32 10, i32 0, i32 2, i32 3
  %106 = ptrtoint ptr %height27.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %height27.i, align 4
  %timeperframe.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 5
  %denominator.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 5, i32 1
  %107 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %denominator.i, align 4
  %frame_rate.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7, i32 0, i32 10, i32 0, i32 3
  %109 = ptrtoint ptr %frame_rate.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %frame_rate.i, align 4
  %110 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %timeperframe.i, align 4
  %den.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %86, i32 0, i32 7, i32 0, i32 10, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %den.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %den.i, align 4
  %113 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %instance94, align 4
  %call34.i = call i32 @vchiq_mmal_port_set_format(ptr noundef %114, ptr noundef %output.i) #12
  br i1 %tobool.not.i, label %if.end10.i.if.end133_crit_edge, label %if.then36.i

if.end10.i.if.end133_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then36.i:                                      ; preds = %if.end10.i
  %115 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %instance94, align 4
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i, align 4
  %input.i = getelementptr inbounds %struct.vchiq_mmal_component, ptr %118, i32 0, i32 6
  %call41.i = call i32 @vchiq_mmal_port_connect_tunnel(ptr noundef %116, ptr noundef %output.i, ptr noundef %input.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.then36.i.do.body136_crit_edge

if.then36.i.do.body136_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

if.end44.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %instance94, align 4
  %call46.i = call i32 @vchiq_mmal_port_enable(ptr noundef %120, ptr noundef %output.i, ptr noundef null) #12
  br label %if.end133

if.end133:                                        ; preds = %if.end44.i, %if.end10.i.if.end133_crit_edge
  %ret.0 = phi i32 [ %call46.i, %if.end44.i ], [ %call34.i, %if.end10.i.if.end133_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool134.not = icmp eq i32 %ret.0, 0
  br i1 %tobool134.not, label %if.end133.if.end158_crit_edge, label %if.end133.do.body136_crit_edge

if.end133.do.body136_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

if.end133.if.end158_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

do.body136:                                       ; preds = %if.end133.do.body136_crit_edge, %if.then36.i.do.body136_crit_edge, %if.end91.do.body136_crit_edge
  %ret.0342 = phi i32 [ %ret.0, %if.end133.do.body136_crit_edge ], [ %call41.i, %if.then36.i.do.body136_crit_edge ], [ %call122, %if.end91.do.body136_crit_edge ]
  %121 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp137 = icmp sgt i32 %121, 0
  br i1 %cmp137, label %do.end142, label %do.body136.do.end155_crit_edge

do.body136.do.end155_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end155

do.end142:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  %name145 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %122 = ptrtoint ptr %fmt97 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %fmt97, align 4
  %124 = ptrtoint ptr %height101 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %height101, align 4
  %126 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pixelformat.i, align 4
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, ptr noundef %name145, ptr noundef nonnull @.str.203, i32 noundef %123, i32 noundef %125, i32 noundef %127) #15
  br label %do.end155

do.end155:                                        ; preds = %do.end142, %do.body136.do.end155_crit_edge
  %port157 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 15
  %128 = ptrtoint ptr %port157 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %port157, align 4
  br label %cleanup

if.end158:                                        ; preds = %if.end133.if.end158_crit_edge, %land.lhs.true124.if.end158_crit_edge
  br i1 %tobool68.not, label %if.else165, label %if.then160

if.then160:                                       ; preds = %if.end158
  %129 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pixelformat.i, align 4
  %131 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %130)
  %cmp2.i.i = icmp eq i32 %131, %130
  br i1 %cmp2.i.i, label %if.then160.get_format.exit.i_crit_edge, label %for.cond.i.i

if.then160.get_format.exit.i_crit_edge:           ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.i.i:                                     ; preds = %if.then160
  %132 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %130)
  %cmp2.1.i.i = icmp eq i32 %132, %130
  br i1 %cmp2.1.i.i, label %for.cond.i.i.get_format.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.get_format.exit.i_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %133 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %130)
  %cmp2.2.i.i = icmp eq i32 %133, %130
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.get_format.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.get_format.exit.i_crit_edge:       ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %134 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %130)
  %cmp2.3.i.i = icmp eq i32 %134, %130
  br i1 %cmp2.3.i.i, label %for.cond.2.i.i.get_format.exit.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.get_format.exit.i_crit_edge:       ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %135 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %130)
  %cmp2.4.i.i = icmp eq i32 %135, %130
  br i1 %cmp2.4.i.i, label %for.cond.3.i.i.get_format.exit.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.get_format.exit.i_crit_edge:       ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %136 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %130)
  %cmp2.5.i.i = icmp eq i32 %136, %130
  br i1 %cmp2.5.i.i, label %for.cond.4.i.i.get_format.exit.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.get_format.exit.i_crit_edge:       ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %137 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %130)
  %cmp2.6.i.i = icmp eq i32 %137, %130
  br i1 %cmp2.6.i.i, label %for.cond.5.i.i.get_format.exit.i_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.get_format.exit.i_crit_edge:       ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %138 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %130)
  %cmp2.7.i.i = icmp eq i32 %138, %130
  br i1 %cmp2.7.i.i, label %for.cond.6.i.i.get_format.exit.i_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.get_format.exit.i_crit_edge:       ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %139 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %130)
  %cmp2.8.i.i = icmp eq i32 %139, %130
  br i1 %cmp2.8.i.i, label %for.cond.7.i.i.get_format.exit.i_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.get_format.exit.i_crit_edge:       ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %140 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %130)
  %cmp2.9.i.i = icmp eq i32 %140, %130
  br i1 %cmp2.9.i.i, label %for.cond.8.i.i.get_format.exit.i_crit_edge, label %for.cond.9.i.i

for.cond.8.i.i.get_format.exit.i_crit_edge:       ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  %141 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %130)
  %cmp2.10.i.i = icmp eq i32 %141, %130
  br i1 %cmp2.10.i.i, label %for.cond.9.i.i.get_format.exit.i_crit_edge, label %for.cond.10.i.i

for.cond.9.i.i.get_format.exit.i_crit_edge:       ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.10.i.i:                                  ; preds = %for.cond.9.i.i
  %142 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %130)
  %cmp2.11.i.i = icmp eq i32 %142, %130
  br i1 %cmp2.11.i.i, label %for.cond.10.i.i.get_format.exit.i_crit_edge, label %for.cond.11.i.i

for.cond.10.i.i.get_format.exit.i_crit_edge:      ; preds = %for.cond.10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.11.i.i:                                  ; preds = %for.cond.10.i.i
  %143 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %130)
  %cmp2.12.i.i = icmp eq i32 %143, %130
  br i1 %cmp2.12.i.i, label %for.cond.11.i.i.get_format.exit.i_crit_edge, label %for.cond.12.i.i

for.cond.11.i.i.get_format.exit.i_crit_edge:      ; preds = %for.cond.11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit.i

for.cond.12.i.i:                                  ; preds = %for.cond.11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %144 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %130)
  %cmp2.13.i.i = icmp eq i32 %144, %130
  %spec.select.i.i = select i1 %cmp2.13.i.i, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 13), ptr null
  br label %get_format.exit.i

get_format.exit.i:                                ; preds = %for.cond.12.i.i, %for.cond.11.i.i.get_format.exit.i_crit_edge, %for.cond.10.i.i.get_format.exit.i_crit_edge, %for.cond.9.i.i.get_format.exit.i_crit_edge, %for.cond.8.i.i.get_format.exit.i_crit_edge, %for.cond.7.i.i.get_format.exit.i_crit_edge, %for.cond.6.i.i.get_format.exit.i_crit_edge, %for.cond.5.i.i.get_format.exit.i_crit_edge, %for.cond.4.i.i.get_format.exit.i_crit_edge, %for.cond.3.i.i.get_format.exit.i_crit_edge, %for.cond.2.i.i.get_format.exit.i_crit_edge, %for.cond.1.i.i.get_format.exit.i_crit_edge, %for.cond.i.i.get_format.exit.i_crit_edge, %if.then160.get_format.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @formats, %if.then160.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 1), %for.cond.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 2), %for.cond.1.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), %for.cond.2.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 4), %for.cond.3.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 5), %for.cond.4.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 6), %for.cond.5.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 7), %for.cond.6.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 8), %for.cond.7.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 9), %for.cond.8.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 10), %for.cond.9.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 11), %for.cond.10.i.i.get_format.exit.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 12), %for.cond.11.i.i.get_format.exit.i_crit_edge ], [ %spec.select.i.i, %for.cond.12.i.i ]
  %145 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i = icmp sgt i32 %145, 0
  br i1 %cmp.i, label %do.end.i, label %get_format.exit.i.do.end4.i_crit_edge

get_format.exit.i.do.end4.i_crit_edge:            ; preds = %get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i

do.end.i:                                         ; preds = %get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef %name.i) #15
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %get_format.exit.i.do.end4.i_crit_edge
  %recommended_buffer.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 7
  %size.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 7, i32 1
  %146 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %size.i, align 4
  %current_buffer.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 8
  %size5.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 8, i32 1
  %148 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %size5.i, align 4
  %149 = ptrtoint ptr %recommended_buffer.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %recommended_buffer.i, align 4
  %151 = ptrtoint ptr %current_buffer.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %current_buffer.i, align 4
  %152 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %instance94, align 4
  %input.i320 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %encode_component.0, i32 0, i32 6
  %call9.i321 = call i32 @vchiq_mmal_port_connect_tunnel(ptr noundef %153, ptr noundef %camera_port.1, ptr noundef %input.i320) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i321)
  %tobool.not.i322 = icmp eq i32 %call9.i321, 0
  br i1 %tobool.not.i322, label %if.end26.i, label %do.body11.i

do.body11.i:                                      ; preds = %do.end4.i
  %154 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp12.i = icmp sgt i32 %154, 0
  br i1 %cmp12.i, label %do.end16.i, label %do.body11.i.do.end24.i_crit_edge

do.body11.i.do.end24.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24.i

do.end16.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  %name19.i = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef %name19.i, ptr noundef nonnull @.str.214) #15
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end16.i, %do.body11.i.do.end24.i_crit_edge
  %port25.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 15
  %155 = ptrtoint ptr %port25.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %port25.i, align 4
  br label %cleanup

if.end26.i:                                       ; preds = %do.end4.i
  %156 = ptrtoint ptr %fmt97 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %fmt97, align 4
  %es.i324 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 10
  %158 = ptrtoint ptr %es.i324 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %es.i324, align 4
  %159 = ptrtoint ptr %height101 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %height101, align 4
  %height30.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 10, i32 0, i32 1
  %161 = ptrtoint ptr %height30.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %height30.i, align 4
  %crop.i326 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 10, i32 0, i32 2
  %162 = ptrtoint ptr %crop.i326 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %crop.i326, align 4
  %y.i327 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 10, i32 0, i32 2, i32 1
  %163 = ptrtoint ptr %y.i327 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %y.i327, align 4
  %164 = load i32, ptr %fmt97, align 4
  %width38.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 10, i32 0, i32 2, i32 2
  %165 = ptrtoint ptr %width38.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %width38.i, align 4
  %166 = load i32, ptr %height101, align 4
  %height43.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 10, i32 0, i32 2, i32 3
  %167 = ptrtoint ptr %height43.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %height43.i, align 4
  %timeperframe.i328 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 5
  %denominator.i329 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 5, i32 1
  %168 = ptrtoint ptr %denominator.i329 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %denominator.i329, align 4
  %frame_rate.i330 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 10, i32 0, i32 3
  %170 = ptrtoint ptr %frame_rate.i330 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %frame_rate.i330, align 4
  %171 = ptrtoint ptr %timeperframe.i328 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %timeperframe.i328, align 4
  %den.i331 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 10, i32 0, i32 3, i32 1
  %173 = ptrtoint ptr %den.i331 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %den.i331, align 4
  %mmal.i = getelementptr inbounds %struct.mmal_fmt, ptr %retval.0.i.i, i32 0, i32 2
  %174 = ptrtoint ptr %mmal.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mmal.i, align 4
  %encoding.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 9, i32 1
  %176 = ptrtoint ptr %encoding.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %encoding.i, align 4
  %encoding_variant.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 9, i32 2
  %177 = ptrtoint ptr %encoding_variant.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %encoding_variant.i, align 4
  %mmal_component.i = getelementptr inbounds %struct.mmal_fmt, ptr %retval.0.i.i, i32 0, i32 4
  %178 = ptrtoint ptr %mmal_component.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mmal_component.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %179)
  %cond150.i = icmp eq i32 %179, 3
  br i1 %cond150.i, label %sw.bb.i, label %if.end26.i.sw.epilog.i_crit_edge

if.end26.i.sw.epilog.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %encode_bitrate.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 6
  %180 = ptrtoint ptr %encode_bitrate.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %encode_bitrate.i, align 4
  %bitrate.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 9, i32 4
  %182 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %bitrate.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end26.i.sw.epilog.i_crit_edge
  %183 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %instance94, align 4
  %call55.i = call i32 @vchiq_mmal_port_set_format(ptr noundef %184, ptr noundef nonnull %port.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end77.i, label %do.body58.i

do.body58.i:                                      ; preds = %sw.epilog.i
  %185 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp59.i = icmp sgt i32 %185, 0
  br i1 %cmp59.i, label %do.end63.i, label %do.body58.i.cleanup_crit_edge

do.body58.i.cleanup_crit_edge:                    ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end63.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #14
  %name66.i = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %186 = ptrtoint ptr %fmt97 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %fmt97, align 4
  %188 = ptrtoint ptr %height101 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %height101, align 4
  %190 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %pixelformat.i, align 4
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef %name66.i, ptr noundef nonnull @.str.214, i32 noundef %187, i32 noundef %189, i32 noundef %191) #15
  br label %cleanup

if.end77.i:                                       ; preds = %sw.epilog.i
  %192 = ptrtoint ptr %instance94 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %instance94, align 4
  %call79.i = call i32 @vchiq_mmal_component_enable(ptr noundef %193, ptr noundef nonnull %encode_component.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end96.i, label %do.body82.i

do.body82.i:                                      ; preds = %if.end77.i
  %194 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp83.i = icmp sgt i32 %194, 0
  br i1 %cmp83.i, label %do.end87.i, label %do.body82.i.cleanup_crit_edge

do.body82.i.cleanup_crit_edge:                    ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end87.i:                                       ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  %name90.i = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %name90.i, ptr noundef nonnull @.str.214) #15
  br label %cleanup

if.end96.i:                                       ; preds = %if.end77.i
  %current_buffer97.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 8
  %195 = ptrtoint ptr %current_buffer97.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 1, ptr %current_buffer97.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %196 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %sizeimage.i, align 4
  %size101.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 8, i32 1
  %198 = ptrtoint ptr %size101.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %size101.i, align 4
  %199 = ptrtoint ptr %encoding.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %200)
  %cmp104.i = icmp eq i32 %200, 1195724874
  br i1 %cmp104.i, label %do.body106.i, label %if.end96.i.do.body132.i_crit_edge

if.end96.i.do.body132.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132.i

do.body106.i:                                     ; preds = %if.end96.i
  %201 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp107.i = icmp sgt i32 %201, 0
  br i1 %cmp107.i, label %do.end111.i, label %do.body106.i.do.end123.i_crit_edge

do.body106.i.do.end123.i_crit_edge:               ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123.i

do.end111.i:                                      ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #14
  %name114.i = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %202 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %sizeimage.i, align 4
  %call120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef %name114.i, i32 noundef %203, i32 noundef %197) #15
  br label %do.end123.i

do.end123.i:                                      ; preds = %do.end111.i, %do.body106.i.do.end123.i_crit_edge
  %204 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %sizeimage.i, align 4
  %206 = call i32 @llvm.umax.i32(i32 %205, i32 102400) #12
  %207 = ptrtoint ptr %size101.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %size101.i, align 4
  br label %do.body132.i

do.body132.i:                                     ; preds = %do.end123.i, %if.end96.i.do.body132.i_crit_edge
  %208 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp133.i = icmp sgt i32 %208, 0
  br i1 %cmp133.i, label %do.end137.i, label %do.body132.i.if.end170_crit_edge

do.body132.i.if.end170_crit_edge:                 ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

do.end137.i:                                      ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #14
  %name140.i = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %209 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %sizeimage.i, align 4
  %call144.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef %name140.i, i32 noundef %210) #15
  br label %if.end170

if.else165:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  %current_buffer = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 8
  %211 = ptrtoint ptr %current_buffer to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 1, ptr %current_buffer, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %212 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %sizeimage, align 4
  %size = getelementptr inbounds %struct.vchiq_mmal_port, ptr %camera_port.1, i32 0, i32 8, i32 1
  %214 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %size, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.else165, %do.end137.i, %do.body132.i.if.end170_crit_edge
  %port.0.sink = phi ptr [ %camera_port.1, %if.else165 ], [ %port.0, %do.body132.i.if.end170_crit_edge ], [ %port.0, %do.end137.i ]
  %alignment.i = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0.sink, i32 0, i32 8, i32 2
  %215 = ptrtoint ptr %alignment.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %alignment.i, align 4
  %fmt172 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 4
  %216 = ptrtoint ptr %fmt172 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %retval.0.i.ph, ptr %fmt172, align 8
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %217 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %bytesperline, align 4
  %stride = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 2
  %219 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %stride, align 8
  %220 = ptrtoint ptr %width111 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %width111, align 4
  %222 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %capture, align 8
  %223 = ptrtoint ptr %height116 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %height116, align 4
  %height184 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 1
  %225 = ptrtoint ptr %height184 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %height184, align 4
  %size186 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 8, i32 1
  %226 = ptrtoint ptr %size186 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %size186, align 4
  %buffersize = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 3
  %228 = ptrtoint ptr %buffersize to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %buffersize, align 4
  %port189 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 15
  %229 = ptrtoint ptr %port189 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %port.0, ptr %port189, align 4
  %camera_port191 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 16
  %230 = ptrtoint ptr %camera_port191 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %camera_port.1, ptr %camera_port191, align 8
  %231 = ptrtoint ptr %encode_component1 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %encode_component.0, ptr %encode_component1, align 4
  %232 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp195 = icmp sgt i32 %232, 0
  br i1 %cmp195, label %do.end200, label %if.end170.cleanup_crit_edge

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end200:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  %name203 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %encoding206 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port.0, i32 0, i32 9, i32 1
  %233 = ptrtoint ptr %encoding206 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %encoding206, align 4
  %call215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %name203, i32 noundef %234, i32 noundef %221, i32 noundef %224, i32 noundef %218, i32 noundef %227) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end200, %if.end170.cleanup_crit_edge, %do.end87.i, %do.body82.i.cleanup_crit_edge, %do.end63.i, %do.body58.i.cleanup_crit_edge, %do.end24.i, %do.end155, %sw.epilog.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %get_format.exit
  %retval.0 = phi i32 [ %ret.0342, %do.end155 ], [ -22, %get_format.exit ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %do.end200 ], [ 0, %if.end170.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ %call79.i, %do.body82.i.cleanup_crit_edge ], [ %call79.i, %do.end87.i ], [ %call55.i, %do.body58.i.cleanup_crit_edge ], [ %call55.i, %do.end63.i ], [ %call9.i321, %do.end24.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remove_padding) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_cleanup_instance(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %vdev = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 1, i32 5, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %do.end.video_device_node_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef %name, ptr noundef %retval.0.i.i) #15
  tail call void @video_unregister_device(ptr noundef %vdev) #12
  %encode_component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 17
  %4 = ptrtoint ptr %encode_component to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encode_component, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %video_device_node_name.exit.if.end22_crit_edge, label %do.body5

video_device_node_name.exit.if.end22_crit_edge:   ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.body5:                                         ; preds = %video_device_node_name.exit
  %6 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end8, label %do.body5.do.end15_crit_edge

do.body5.do.end15_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

do.end8:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, ptr noundef %name) #15
  br label %do.end15

do.end15:                                         ; preds = %do.end8, %do.body5.do.end15_crit_edge
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %instance, align 4
  %camera_port = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 23, i32 16
  %9 = ptrtoint ptr %camera_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %camera_port, align 8
  %call17 = tail call i32 @vchiq_mmal_port_connect_tunnel(ptr noundef %8, ptr noundef %10, ptr noundef null) #12
  %11 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %instance, align 4
  %13 = ptrtoint ptr %encode_component to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encode_component, align 4
  %call21 = tail call i32 @vchiq_mmal_component_disable(ptr noundef %12, ptr noundef %14) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end15, %video_device_node_name.exit.if.end22_crit_edge
  %instance23 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %instance23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %instance23, align 4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %17 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %component, align 8
  %call24 = tail call i32 @vchiq_mmal_component_disable(ptr noundef %16, ptr noundef %18) #12
  %19 = ptrtoint ptr %instance23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %instance23, align 4
  %arrayidx27 = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx27, align 4
  %call28 = tail call i32 @vchiq_mmal_component_finalise(ptr noundef %20, ptr noundef %22) #12
  %23 = ptrtoint ptr %instance23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %instance23, align 4
  %arrayidx31 = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 2
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx31, align 8
  %call32 = tail call i32 @vchiq_mmal_component_finalise(ptr noundef %24, ptr noundef %26) #12
  %27 = ptrtoint ptr %instance23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %instance23, align 4
  %arrayidx35 = getelementptr %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20, i32 1
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx35, align 4
  %call36 = tail call i32 @vchiq_mmal_component_finalise(ptr noundef %28, ptr noundef %30) #12
  %31 = ptrtoint ptr %instance23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %instance23, align 4
  %33 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %component, align 8
  %call40 = tail call i32 @vchiq_mmal_component_finalise(ptr noundef %32, ptr noundef %34) #12
  %ctrl_handler = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 3
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  tail call void @v4l2_device_unregister(ptr noundef nonnull %dev) #12
  tail call void @kfree(ptr noundef nonnull %dev) #12
  br label %return

return:                                           ; preds = %if.end22, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_finalise(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_component_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_port_parameter_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_component_finalise(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_port_set_format(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_port_parameter_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_mmal_set_all_camera_controls(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_ctxs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %port = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 15
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name, ptr noundef nonnull @.str.64) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nplanes, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %5, label %if.end.do.body9_crit_edge [
    i32 0, label %if.end28
    i32 1, label %lor.lhs.false
  ]

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sizes, align 4
  %size6 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %3, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp7 = icmp ult i32 %8, %10
  br i1 %cmp7, label %lor.lhs.false.do.body9_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.do.body9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

do.body9:                                         ; preds = %lor.lhs.false.do.body9_crit_edge, %if.end.do.body9_crit_edge
  %11 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10 = icmp sgt i32 %11, 0
  br i1 %cmp10, label %do.end14, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %name17 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sizes, align 4
  %size23 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %3, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %size23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size23, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name17, ptr noundef nonnull @.str.64, ptr noundef %1, i32 noundef %13, i32 noundef %15, i32 noundef %5) #15
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %size32 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %3, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %size32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp33 = icmp eq i32 %17, 0
  br i1 %cmp33, label %do.end37, label %if.end43

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %name40 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name40, ptr noundef nonnull @.str.64) #15
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbuffers, align 4
  %minimum_buffer = getelementptr inbounds %struct.vchiq_mmal_port, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %minimum_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %minimum_buffer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp46 = icmp ult i32 %19, %21
  br i1 %cmp46, label %if.then47, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nbuffers, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end43.if.end52_crit_edge
  %23 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbuffers, align 4
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 4
  %current_buffer55 = getelementptr inbounds %struct.vchiq_mmal_port, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %current_buffer55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %current_buffer55, align 4
  %28 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %nplanes, align 4
  %29 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %17, ptr %sizes, align 4
  %30 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp59 = icmp sgt i32 %30, 0
  br i1 %cmp59, label %do.end63, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end63:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %name66 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name66, ptr noundef nonnull @.str.64, ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.end52.cleanup_crit_edge, %do.end37, %do.end14, %do.body9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end37 ], [ -22, %do.end ], [ -22, %do.end14 ], [ -22, %do.body9.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end63 ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_init(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name, ptr noundef nonnull @.str.75, ptr noundef %3, ptr noundef %vb) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call10 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #12
  %buffer = getelementptr inbounds %struct.vb2_mmal_buffer, ptr %vb, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %buffer, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %do.end8.vb2_plane_size.exit_crit_edge, label %if.then.i

do.end8.vb2_plane_size.exit_crit_edge:            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %do.end8.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ 0, %do.end8.vb2_plane_size.exit_crit_edge ]
  %mmal = getelementptr inbounds %struct.vb2_mmal_buffer, ptr %vb, i32 0, i32 1
  %buffer_size = getelementptr inbounds %struct.vb2_mmal_buffer, ptr %vb, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %buffer_size, align 4
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %3, i32 0, i32 19
  %11 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %instance, align 4
  %call16 = tail call i32 @mmal_vchi_buffer_init(ptr noundef %12, ptr noundef %mmal) #12
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name, ptr noundef nonnull @.str.76, ptr noundef %3, ptr noundef %vb) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %port = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %3, i32 0, i32 23, i32 15
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end4.cleanup_crit_edge, label %lor.lhs.false

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %fmt = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %3, i32 0, i32 23, i32 4
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt, align 8
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %stride = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %3, i32 0, i32 23, i32 2
  %9 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stride, align 8
  %height = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %3, i32 0, i32 23, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %mul = mul i32 %12, %10
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %13 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp12.not = icmp eq i32 %mul, 0
  br i1 %cmp12.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit40_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit40_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit40

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %if.end8
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %mul)
  %cmp1242 = icmp ult i32 %16, %mul
  br i1 %cmp1242, label %if.then.i38, label %vb2_plane_size.exit.thread.cleanup_crit_edge

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i38:                                      ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit40

vb2_plane_size.exit40:                            ; preds = %if.then.i38, %vb2_plane_size.exit.vb2_plane_size.exit40_crit_edge
  %retval.0.i39 = phi i32 [ %18, %if.then.i38 ], [ 0, %vb2_plane_size.exit.vb2_plane_size.exit40_crit_edge ]
  %name1945 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name1945, ptr noundef nonnull @.str.76, i32 noundef %retval.0.i39, i32 noundef %mul) #15
  br label %cleanup

cleanup:                                          ; preds = %vb2_plane_size.exit40, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit40 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %do.end4.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_cleanup(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name, ptr noundef nonnull @.str.80, ptr noundef %4, ptr noundef %vb) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %mmal = getelementptr inbounds %struct.vb2_mmal_buffer, ptr %vb, i32 0, i32 1
  %call9 = tail call i32 @mmal_vchi_buffer_cleanup(ptr noundef %mmal) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  %parameter_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parameter_size) #12
  %2 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, ptr noundef nonnull @.str.81, ptr noundef %1) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %port = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 15
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  %call7 = tail call fastcc i32 @enable_camera(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.end18

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %name15 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name15) #15
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %frame_count = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 18
  %5 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %frame_count, align 8
  %sequence = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 14
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sequence, align 8
  %arrayidx = getelementptr %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %8, align 4
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool21.not = icmp eq i8 %10, 0
  br i1 %tobool21.not, label %if.then22, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 300) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %camera_port = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 16
  %11 = ptrtoint ptr %camera_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %camera_port, align 8
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 4
  %cmp27.not = icmp eq ptr %12, %14
  %tobool30.not = icmp eq ptr %12, null
  %or.cond = or i1 %tobool30.not, %cmp27.not
  br i1 %or.cond, label %if.end23.if.end46_crit_edge, label %if.then31

if.end23.if.end46_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then31:                                        ; preds = %if.end23
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %instance, align 4
  %call34 = tail call i32 @vchiq_mmal_port_enable(ptr noundef %16, ptr noundef nonnull %12, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then31.if.end46_crit_edge, label %do.end39

if.then31.if.end46_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.end39:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %name42 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name42, i32 noundef %call34) #15
  br label %cleanup

if.end46:                                         ; preds = %if.then31.if.end46_crit_edge, %if.end23.if.end46_crit_edge
  %17 = ptrtoint ptr %parameter_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %parameter_size, align 4
  %instance47 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %instance47, align 4
  %20 = ptrtoint ptr %camera_port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %camera_port, align 8
  %vc_start_timestamp = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 12
  %call51 = call i32 @vchiq_mmal_port_parameter_get(ptr noundef %19, ptr noundef %21, i32 noundef 13, ptr noundef %vc_start_timestamp, ptr noundef nonnull %parameter_size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body64, label %do.end56

do.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %name59 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name59) #15
  %22 = ptrtoint ptr %vc_start_timestamp to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %vc_start_timestamp, align 8
  br label %if.end80

do.body64:                                        ; preds = %if.end46
  %23 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp65 = icmp sgt i32 %23, 0
  br i1 %cmp65, label %do.end69, label %do.body64.if.end80_crit_edge

do.body64.if.end80_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

do.end69:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  %name72 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %vc_start_timestamp to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vc_start_timestamp, align 8
  %26 = ptrtoint ptr %parameter_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %parameter_size, align 4
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name72, i64 noundef %25, i32 noundef %27) #15
  br label %if.end80

if.end80:                                         ; preds = %do.end69, %do.body64.if.end80_crit_edge, %do.end56
  %call81 = call i64 @ktime_get() #12
  %kernel_start_ts = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 13
  %28 = ptrtoint ptr %kernel_start_ts to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call81, ptr %kernel_start_ts, align 8
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port, align 4
  %cb_ctx = getelementptr inbounds %struct.vchiq_mmal_port, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %cb_ctx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %cb_ctx, align 4
  %32 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %instance47, align 4
  %34 = load ptr, ptr %port, align 4
  %call88 = call i32 @vchiq_mmal_port_enable(ptr noundef %33, ptr noundef %34, ptr noundef nonnull @buffer_cb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end115, label %do.end93

do.end93:                                         ; preds = %if.end80
  %name96 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name96, i32 noundef %call88) #15
  %35 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %instance47, align 4
  %37 = ptrtoint ptr %camera_port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %camera_port, align 8
  %call102 = call i32 @vchiq_mmal_port_disable(ptr noundef %36, ptr noundef %38) #12
  %call103 = call fastcc i32 @disable_camera(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %do.end108, label %do.end93.cleanup_crit_edge

do.end93.cleanup_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end108:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #14
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name96) #15
  br label %cleanup

if.end115:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %instance47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %instance47, align 4
  %41 = ptrtoint ptr %camera_port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %camera_port, align 8
  %call121 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %40, ptr noundef %42, i32 noundef 65553, ptr noundef %frame_count, i32 noundef 4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %do.end108, %do.end93.cleanup_crit_edge, %do.end39, %do.end12, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end12 ], [ -1, %do.end39 ], [ -22, %do.end108 ], [ 0, %if.end115 ], [ -22, %do.end4.cleanup_crit_edge ], [ -1, %do.end93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parameter_size) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %port1 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 15
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %4 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, ptr noundef nonnull @.str.134, ptr noundef %1) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %frame_cmplt = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 19
  %5 = ptrtoint ptr %frame_cmplt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %frame_cmplt, align 4
  %wait.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 19, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #12
  %frame_count = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 18
  %6 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %frame_count, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end11, label %do.body18

do.end11:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  %name14 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %name14) #15
  br label %cleanup

do.body18:                                        ; preds = %do.end5
  %7 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp19 = icmp sgt i32 %7, 0
  br i1 %cmp19, label %do.end23, label %do.body18.do.end31_crit_edge

do.body18.do.end31_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %name26 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name26) #15
  br label %do.end31

do.end31:                                         ; preds = %do.end23, %do.body18.do.end31_crit_edge
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %instance, align 4
  %camera_port = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 16
  %10 = ptrtoint ptr %camera_port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %camera_port, align 8
  %call35 = tail call i32 @vchiq_mmal_port_parameter_set(ptr noundef %9, ptr noundef %11, i32 noundef 65553, ptr noundef %frame_count, i32 noundef 4) #12
  %12 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp37 = icmp sgt i32 %12, 0
  br i1 %cmp37, label %do.end41, label %do.end31.do.end49_crit_edge

do.end31.do.end49_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49

do.end41:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  %name44 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name44) #15
  br label %do.end49

do.end49:                                         ; preds = %do.end41, %do.end31.do.end49_crit_edge
  %13 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %instance, align 4
  %15 = ptrtoint ptr %camera_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %camera_port, align 8
  %call53 = tail call i32 @vchiq_mmal_port_disable(ptr noundef %14, ptr noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true, label %do.end49.if.else_crit_edge

do.end49.if.else_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %do.end49
  %17 = ptrtoint ptr %camera_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %camera_port, align 8
  %cmp57.not = icmp eq ptr %18, %3
  br i1 %cmp57.not, label %land.lhs.true.if.else_crit_edge, label %do.body59

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.body59:                                        ; preds = %land.lhs.true
  %19 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp60 = icmp sgt i32 %19, 0
  br i1 %cmp60, label %do.end64, label %do.body59.do.end72_crit_edge

do.body59.do.end72_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end72

do.end64:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  %name67 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name67) #15
  br label %do.end72

do.end72:                                         ; preds = %do.end64, %do.body59.do.end72_crit_edge
  %20 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %instance, align 4
  %call74 = tail call i32 @vchiq_mmal_port_disable(ptr noundef %21, ptr noundef nonnull %3) #12
  br label %if.end88

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end49.if.else_crit_edge
  %22 = ptrtoint ptr %camera_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %camera_port, align 8
  %cmp77.not = icmp eq ptr %23, %3
  br i1 %cmp77.not, label %if.else.if.end88_crit_edge, label %do.end81

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

do.end81:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %name84 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %name84, i32 noundef %call53) #15
  br label %if.end88

if.end88:                                         ; preds = %do.end81, %if.else.if.end88_crit_edge, %do.end72
  %buffers_with_vpu = getelementptr inbounds %struct.vchiq_mmal_port, ptr %3, i32 0, i32 13
  %name99 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %do.end106.while.cond_crit_edge, %if.end88
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buffers_with_vpu, i32 noundef 4) #12
  %24 = ptrtoint ptr %buffers_with_vpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %buffers_with_vpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool90.not = icmp eq i32 %25, 0
  br i1 %tobool90.not, label %while.cond.while.end_crit_edge, label %do.body91

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.body91:                                        ; preds = %while.cond
  %26 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp92 = icmp sgt i32 %26, 0
  br i1 %cmp92, label %do.end96, label %do.body91.do.end106_crit_edge

do.body91.do.end106_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end106

do.end96:                                         ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i167 = tail call zeroext i1 @__kasan_check_read(ptr noundef %buffers_with_vpu, i32 noundef 4) #12
  %27 = ptrtoint ptr %buffers_with_vpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %buffers_with_vpu, align 4
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %name99, ptr noundef nonnull @.str.134, i32 noundef %28) #15
  br label %do.end106

do.end106:                                        ; preds = %do.end96, %do.body91.do.end106_crit_edge
  %call109 = tail call i32 @wait_for_completion_timeout(ptr noundef %frame_cmplt, i32 noundef 100) #12
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %do.end114, label %do.end106.while.cond_crit_edge

do.end106.while.cond_crit_edge:                   ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

do.end114:                                        ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i168 = tail call zeroext i1 @__kasan_check_read(ptr noundef %buffers_with_vpu, i32 noundef 4) #12
  %29 = ptrtoint ptr %buffers_with_vpu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %buffers_with_vpu, align 4
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %name99, ptr noundef nonnull @.str.134, i32 noundef %30) #15
  br label %while.end

while.end:                                        ; preds = %do.end114, %while.cond.while.end_crit_edge
  %call123 = tail call fastcc i32 @disable_camera(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %do.end128, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end128:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name99) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end128, %while.end.cleanup_crit_edge, %do.end11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name, ptr noundef nonnull @.str.160, ptr noundef %3, ptr noundef %vb, i32 noundef %6) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %instance, align 4
  %port = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %3, i32 0, i32 23, i32 15
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %mmal = getelementptr inbounds %struct.vb2_mmal_buffer, ptr %vb, i32 0, i32 1
  %call9 = tail call i32 @vchiq_mmal_submit_buffer(ptr noundef %8, ptr noundef %10, ptr noundef %mmal) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %do.end8.if.end20_crit_edge

do.end8.if.end20_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end14:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %name17 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %name17, ptr noundef nonnull @.str.160) #15
  br label %if.end20

if.end20:                                         ; preds = %do.end14, %do.end8.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmal_vchi_buffer_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmal_vchi_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_camera(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %camera_use_count = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %camera_use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %camera_use_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then:                                          ; preds = %entry
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component, align 8
  %control = getelementptr inbounds %struct.vchiq_mmal_component, ptr %5, i32 0, i32 5
  %camera_num = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 24
  %call = tail call i32 @vchiq_mmal_port_parameter_set(ptr noundef %3, ptr noundef %control, i32 noundef 65552, ptr noundef %camera_num, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instance, align 4
  %8 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %component, align 8
  %call6 = tail call i32 @vchiq_mmal_component_enable(ptr noundef %7, ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %name14 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name14, i32 noundef %call6) #15
  br label %cleanup

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %10 = ptrtoint ptr %camera_use_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %camera_use_count, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %camera_use_count, align 8
  %12 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp21 = icmp sgt i32 %12, 0
  br i1 %cmp21, label %do.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %name28 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name28, i32 noundef %inc) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end18.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ 0, %do.end25 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_port_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_cb(ptr noundef %instance, ptr noundef %port, i32 noundef %status, ptr noundef %mmal_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_ctx = getelementptr inbounds %struct.vchiq_mmal_port, ptr %port, i32 0, i32 15
  %0 = ptrtoint ptr %cb_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_ctx, align 4
  %add.ptr = getelementptr i8, ptr %mmal_buf, i32 -736
  %2 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %length = getelementptr inbounds %struct.mmal_buffer, ptr %mmal_buf, i32 0, i32 5
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 4
  %mmal_flags = getelementptr inbounds %struct.mmal_buffer, ptr %mmal_buf, i32 0, i32 6
  %5 = ptrtoint ptr %mmal_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mmal_flags, align 8
  %pts = getelementptr inbounds %struct.mmal_buffer, ptr %mmal_buf, i32 0, i32 8
  %7 = ptrtoint ptr %pts to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pts, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name, ptr noundef nonnull @.str.109, i32 noundef %status, ptr noundef %add.ptr, i32 noundef %4, i32 noundef %6, i64 noundef %8) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %do.end4
  %tobool6.not = icmp eq ptr %add.ptr, null
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %if.then7

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr, i32 noundef 6) #12
  br label %cleanup

if.end9:                                          ; preds = %do.end4
  %length10 = getelementptr inbounds %struct.mmal_buffer, ptr %mmal_buf, i32 0, i32 5
  %9 = ptrtoint ptr %length10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11 = icmp eq i32 %10, 0
  %frame_count = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 18
  %11 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then12, label %if.end58

if.then12:                                        ; preds = %if.end9
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  %camera_port.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 16
  %13 = ptrtoint ptr %camera_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %camera_port.i, align 8
  %component.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %component.i, align 8
  %arrayidx1.i = getelementptr %struct.vchiq_mmal_component, ptr %16, i32 0, i32 7, i32 2
  %cmp.i = icmp eq ptr %14, %arrayidx1.i
  br i1 %cmp.i, label %do.body17, label %if.then14.if.end35_crit_edge

if.then14.if.end35_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.body17:                                        ; preds = %if.then14
  %17 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp18 = icmp sgt i32 %17, 0
  br i1 %cmp18, label %do.end22, label %do.body17.do.end30_crit_edge

do.body17.do.end30_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %name25 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name25) #15
  br label %do.end30

do.end30:                                         ; preds = %do.end22, %do.body17.do.end30_crit_edge
  %18 = ptrtoint ptr %camera_port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %camera_port.i, align 8
  %call34 = tail call i32 @vchiq_mmal_port_parameter_set(ptr noundef %instance, ptr noundef %19, i32 noundef 65553, ptr noundef %frame_count, i32 noundef 4) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end30, %if.then14.if.end35_crit_edge
  %call36 = tail call i32 @vchiq_mmal_submit_buffer(ptr noundef %instance, ptr noundef %port, ptr noundef %mmal_buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %do.body39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body39:                                        ; preds = %if.end35
  %20 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp40 = icmp sgt i32 %20, 0
  br i1 %cmp40, label %do.end44, label %do.body39.cleanup_crit_edge

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end44:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  %name47 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name47) #15
  br label %cleanup

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #12
  %frame_cmplt = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 19
  tail call void @complete(ptr noundef %frame_cmplt) #12
  br label %cleanup

if.end58:                                         ; preds = %if.end9
  br i1 %tobool13.not, label %if.then62, label %if.end67

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #12
  %frame_cmplt66 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 19
  tail call void @complete(ptr noundef %frame_cmplt66) #12
  br label %cleanup

if.end67:                                         ; preds = %if.end58
  %vc_start_timestamp = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 12
  %21 = ptrtoint ptr %vc_start_timestamp to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vc_start_timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %22)
  %cmp69.not = icmp eq i64 %22, -1
  br i1 %cmp69.not, label %if.end67.if.else103_crit_edge, label %land.lhs.true

if.end67.if.else103_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else103

land.lhs.true:                                    ; preds = %if.end67
  %pts70 = getelementptr inbounds %struct.mmal_buffer, ptr %mmal_buf, i32 0, i32 8
  %23 = ptrtoint ptr %pts70 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pts70, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool71.not = icmp eq i64 %24, 0
  br i1 %tobool71.not, label %land.lhs.true.if.else103_crit_edge, label %if.then72

land.lhs.true.if.else103_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else103

if.then72:                                        ; preds = %land.lhs.true
  %sub = sub i64 %24, %22
  %kernel_start_ts = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 13
  %25 = ptrtoint ptr %kernel_start_ts to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %kernel_start_ts, align 8
  %mul.i = mul i64 %sub, 1000
  %add.i = add i64 %26, %mul.i
  %27 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp79 = icmp sgt i32 %27, 0
  br i1 %cmp79, label %do.end83, label %if.then72.if.end108_crit_edge

if.then72.if.end108_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

do.end83:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  %name86 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name86, i64 noundef %26, i64 noundef %22, i64 noundef %24, i64 noundef %add.i) #15
  br label %if.end108

if.else103:                                       ; preds = %land.lhs.true.if.else103_crit_edge, %if.end67.if.else103_crit_edge
  %call.i = tail call i64 @ktime_get() #12
  br label %if.end108

if.end108:                                        ; preds = %if.else103, %do.end83, %if.then72.if.end108_crit_edge
  %call.i.sink = phi i64 [ %call.i, %if.else103 ], [ %add.i, %do.end83 ], [ %add.i, %if.then72.if.end108_crit_edge ]
  %timestamp107 = getelementptr i8, ptr %mmal_buf, i32 -712
  %28 = ptrtoint ptr %timestamp107 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call.i.sink, ptr %timestamp107, align 8
  %sequence = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 14
  %29 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sequence, align 8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %sequence, align 8
  %sequence111 = getelementptr i8, ptr %mmal_buf, i32 -272
  %31 = ptrtoint ptr %sequence111 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sequence111, align 8
  %field = getelementptr i8, ptr %mmal_buf, i32 -292
  %32 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %field, align 4
  %num_planes.i = getelementptr i8, ptr %mmal_buf, i32 -720
  %33 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 0
  br i1 %cmp.not.i, label %if.end108.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.end108.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.end108
  %35 = ptrtoint ptr %length10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length10, align 4
  %length.i = getelementptr i8, ptr %mmal_buf, i32 -648
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp1.i = icmp ult i32 %38, %36
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !463

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.122, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %40, %if.then38.i ], [ %36, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %mmal_buf, i32 -652
  %41 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.end108.vb2_set_plane_payload.exit_crit_edge
  %mmal_flags116 = getelementptr inbounds %struct.mmal_buffer, ptr %mmal_buf, i32 0, i32 6
  %42 = ptrtoint ptr %mmal_flags116 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mmal_flags116, align 8
  %and = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool117.not = icmp eq i32 %and, 0
  br i1 %tobool117.not, label %vb2_set_plane_payload.exit.if.end120_crit_edge, label %if.then118

vb2_set_plane_payload.exit.if.end120_crit_edge:   ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then118:                                       ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr i8, ptr %mmal_buf, i32 -296
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %or = or i32 %45, 8
  store i32 %or, ptr %flags, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %vb2_set_plane_payload.exit.if.end120_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 5) #12
  %46 = ptrtoint ptr %mmal_flags116 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mmal_flags116, align 8
  %and124 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end120.cleanup_crit_edge, label %land.lhs.true126

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true126:                                 ; preds = %if.end120
  %camera_port.i198 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 16
  %48 = ptrtoint ptr %camera_port.i198 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %camera_port.i198, align 8
  %component.i199 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 20
  %50 = ptrtoint ptr %component.i199 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %component.i199, align 8
  %arrayidx1.i200 = getelementptr %struct.vchiq_mmal_component, ptr %51, i32 0, i32 7, i32 2
  %cmp.i201 = icmp eq ptr %49, %arrayidx1.i200
  br i1 %cmp.i201, label %do.body129, label %land.lhs.true126.cleanup_crit_edge

land.lhs.true126.cleanup_crit_edge:               ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body129:                                       ; preds = %land.lhs.true126
  %52 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp130 = icmp sgt i32 %52, 0
  br i1 %cmp130, label %do.end134, label %do.body129.do.end142_crit_edge

do.body129.do.end142_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end142

do.end134:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #14
  %name137 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name137) #15
  br label %do.end142

do.end142:                                        ; preds = %do.end134, %do.body129.do.end142_crit_edge
  %53 = ptrtoint ptr %camera_port.i198 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %camera_port.i198, align 8
  %call147 = tail call i32 @vchiq_mmal_port_parameter_set(ptr noundef %instance, ptr noundef %54, i32 noundef 65553, ptr noundef %frame_count, i32 noundef 4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end142, %land.lhs.true126.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.then62, %if.else, %do.end44, %do.body39.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then7, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_port_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @disable_camera(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %camera_use_count = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %camera_use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %camera_use_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name) #15
  br label %cleanup50

if.end:                                           ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %camera_use_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %camera_use_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.do.body35_crit_edge

if.end.do.body35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4
  %4 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end9, label %if.then4.do.end17_crit_edge

if.then4.do.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %name12 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %name12) #15
  br label %do.end17

do.end17:                                         ; preds = %do.end9, %if.then4.do.end17_crit_edge
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instance, align 4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %component, align 8
  %call18 = tail call i32 @vchiq_mmal_component_disable(ptr noundef %6, ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end29

do.end23:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  %name26 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name26, i32 noundef %call18) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  br label %cleanup50

if.end29:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instance, align 4
  %11 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %component, align 8
  %control = getelementptr inbounds %struct.vchiq_mmal_component, ptr %12, i32 0, i32 5
  %call33 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %10, ptr noundef %control, i32 noundef 65552, ptr noundef nonnull %i, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  br label %do.body35

do.body35:                                        ; preds = %if.end29, %if.end.do.body35_crit_edge
  %13 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp36 = icmp sgt i32 %13, 0
  br i1 %cmp36, label %do.end40, label %do.body35.cleanup50_crit_edge

do.body35.cleanup50_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup50

do.end40:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %name43 = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %camera_use_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %camera_use_count, align 8
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %name43, i32 noundef %15) #15
  br label %cleanup50

cleanup50:                                        ; preds = %do.end40, %do.body35.cleanup50_crit_edge, %do.end23, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %do.end23 ], [ 0, %do.end40 ], [ 0, %do.body35.cleanup50_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_component_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_submit_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_component_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major) #12
  %2 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %major, align 4, !annotation !461
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #12
  %3 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %minor, align 4, !annotation !461
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instance, align 4
  %call1 = call i32 @vchiq_mmal_version(ptr noundef %5, ptr noundef nonnull %major, ptr noundef nonnull %minor) #12
  %call2 = call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.166, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %6 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %major, align 4
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %minor, align 4
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %card, i32 noundef 32, ptr noundef nonnull @.str.167, i32 noundef %7, i32 noundef %9)
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.168, ptr noundef %name)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp ugt i32 %1, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_overlay(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp ugt i32 %1, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %capture = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capture, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height4, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field, align 4
  %fmt7 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 4
  %9 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fmt7, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pixelformat, align 4
  %stride = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 2
  %14 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stride, align 8
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bytesperline, align 4
  %buffersize = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 3
  %17 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffersize, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sizeimage, align 4
  %20 = load ptr, ptr %fmt7, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %22)
  %switch.selectcmp = icmp eq i32 %22, 1195724874
  %switch.select = select i1 %switch.selectcmp, i32 7, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 859981650, i32 %22)
  %switch.selectcmp77 = icmp eq i32 %22, 859981650
  %switch.select78 = select i1 %switch.selectcmp77, i32 8, i32 %switch.select
  %colorspace23 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.select78, ptr %colorspace23, align 4
  %priv29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %24 = ptrtoint ptr %priv29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %priv29, align 4
  %25 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp30 = icmp sgt i32 %25, 0
  br i1 %cmp30, label %do.end, label %entry.do.end52_crit_edge

entry.do.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %colorspace46 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %colorspace46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace46, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %name, ptr noundef nonnull @.str.170, i32 noundef %3, i32 noundef %6, i32 noundef 1, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %27, i32 noundef 0) #15
  br label %do.end52

do.end52:                                         ; preds = %do.end, %entry.do.end52_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_overlay(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %overlay = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22
  %2 = call ptr @memcpy(ptr %fmt, ptr %overlay, i32 40)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  %num_buffers.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 11, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end13, label %do.end7

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name10 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef %name10, ptr noundef nonnull @.str.172) #15
  br label %cleanup

if.end13:                                         ; preds = %entry
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i, align 4
  %6 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp2.i = icmp eq i32 %6, %5
  br i1 %cmp2.i, label %if.end13.if.end33_crit_edge, label %for.cond.i

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.i:                                       ; preds = %if.end13
  %7 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp2.1.i = icmp eq i32 %7, %5
  br i1 %cmp2.1.i, label %for.cond.i.if.end33_crit_edge, label %for.cond.1.i

for.cond.i.if.end33_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.1.i:                                     ; preds = %for.cond.i
  %8 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp2.2.i = icmp eq i32 %8, %5
  br i1 %cmp2.2.i, label %for.cond.1.i.if.end33_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end33_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %9 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp2.3.i = icmp eq i32 %9, %5
  br i1 %cmp2.3.i, label %for.cond.2.i.if.end33_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end33_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %10 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp2.4.i = icmp eq i32 %10, %5
  br i1 %cmp2.4.i, label %for.cond.3.i.if.end33_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end33_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %11 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp2.5.i = icmp eq i32 %11, %5
  br i1 %cmp2.5.i, label %for.cond.4.i.if.end33_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end33_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %12 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp2.6.i = icmp eq i32 %12, %5
  br i1 %cmp2.6.i, label %for.cond.5.i.if.end33_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end33_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %13 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp2.7.i = icmp eq i32 %13, %5
  br i1 %cmp2.7.i, label %for.cond.6.i.if.end33_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end33_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %14 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %5)
  %cmp2.8.i = icmp eq i32 %14, %5
  br i1 %cmp2.8.i, label %for.cond.7.i.if.end33_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end33_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %15 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp2.9.i = icmp eq i32 %15, %5
  br i1 %cmp2.9.i, label %for.cond.8.i.if.end33_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end33_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %16 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %5)
  %cmp2.10.i = icmp eq i32 %16, %5
  br i1 %cmp2.10.i, label %for.cond.9.i.if.end33_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end33_crit_edge:                  ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %17 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %5)
  %cmp2.11.i = icmp eq i32 %17, %5
  br i1 %cmp2.11.i, label %for.cond.10.i.if.end33_crit_edge, label %for.cond.11.i

for.cond.10.i.if.end33_crit_edge:                 ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %18 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %5)
  %cmp2.12.i = icmp eq i32 %18, %5
  br i1 %cmp2.12.i, label %for.cond.11.i.if.end33_crit_edge, label %for.cond.12.i

for.cond.11.i.if.end33_crit_edge:                 ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %19 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %5)
  %cmp2.13.i = icmp eq i32 %19, %5
  br i1 %cmp2.13.i, label %for.cond.12.i.if.end33_crit_edge, label %do.body17

for.cond.12.i.if.end33_crit_edge:                 ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.body17:                                        ; preds = %for.cond.12.i
  %20 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %do.end21, label %do.body17.get_format.exit93_crit_edge

do.body17.get_format.exit93_crit_edge:            ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit93

do.end21:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %name24 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %name24, i32 noundef %5) #15
  br label %get_format.exit93

get_format.exit93:                                ; preds = %do.end21, %do.body17.get_format.exit93_crit_edge
  %21 = load i32, ptr @formats, align 4
  %22 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pixelformat.i, align 4
  br label %if.end33

if.end33:                                         ; preds = %get_format.exit93, %for.cond.12.i.if.end33_crit_edge, %for.cond.11.i.if.end33_crit_edge, %for.cond.10.i.if.end33_crit_edge, %for.cond.9.i.if.end33_crit_edge, %for.cond.8.i.if.end33_crit_edge, %for.cond.7.i.if.end33_crit_edge, %for.cond.6.i.if.end33_crit_edge, %for.cond.5.i.if.end33_crit_edge, %for.cond.4.i.if.end33_crit_edge, %for.cond.3.i.if.end33_crit_edge, %for.cond.2.i.if.end33_crit_edge, %for.cond.1.i.if.end33_crit_edge, %for.cond.i.if.end33_crit_edge, %if.end13.if.end33_crit_edge
  %call34 = tail call fastcc i32 @mmal_setup_components(ptr noundef %1, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %do.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %name42 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %name42, ptr noundef nonnull @.str.172, i32 noundef %call34) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end33.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -16, %do.end7 ], [ -22, %do.end39 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_overlay(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  %prev_config.i = alloca %struct.mmal_parameter_displayregion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @vidioc_try_fmt_vid_overlay(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  %overlay = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %overlay, ptr %fmt, i32 40)
  %arrayidx = getelementptr %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %4, align 4
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %input = getelementptr inbounds %struct.vchiq_mmal_component, ptr %4, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %prev_config.i) #12
  %7 = ptrtoint ptr %prev_config.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1290, ptr %prev_config.i, align 4
  %display_num.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 1
  %8 = ptrtoint ptr %display_num.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %display_num.i, align 4
  %fullscreen.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 2
  %9 = ptrtoint ptr %fullscreen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fullscreen.i, align 4
  %transform.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 3
  %10 = ptrtoint ptr %transform.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %transform.i, align 4
  %dest_rect.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 4
  %11 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %overlay, align 4
  %13 = ptrtoint ptr %dest_rect.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dest_rect.i, align 4
  %y.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 4, i32 1
  %top.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22, i32 0, i32 1
  %14 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %top.i, align 4
  %16 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %y.i, align 4
  %width.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 4, i32 2
  %width5.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22, i32 0, i32 2
  %17 = ptrtoint ptr %width5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width5.i, align 4
  %19 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 4, i32 3
  %height8.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22, i32 0, i32 3
  %20 = ptrtoint ptr %height8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height8.i, align 4
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height.i, align 4
  %src_rect.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 5
  %layer.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 10
  %23 = call ptr @memset(ptr %src_rect.i, i32 0, i32 32)
  %24 = ptrtoint ptr %layer.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %layer.i, align 4
  %copyprotect_required.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 11
  %25 = ptrtoint ptr %copyprotect_required.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %copyprotect_required.i, align 4
  %alpha.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 12
  %global_alpha.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22, i32 6
  %26 = ptrtoint ptr %global_alpha.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %global_alpha.i, align 4
  %conv.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %alpha.i, align 4
  %instance.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 19
  %29 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %instance.i, align 4
  %call.i11 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %30, ptr noundef %input, i32 noundef 131072, ptr noundef nonnull %prev_config.i, i32 noundef 76) #12
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %prev_config.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat.i, align 4
  %4 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2.i = icmp eq i32 %4, %3
  br i1 %cmp2.i, label %entry.if.end10_crit_edge, label %for.cond.i

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.i:                                       ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.1.i = icmp eq i32 %5, %3
  br i1 %cmp2.1.i, label %for.cond.i.if.end10_crit_edge, label %for.cond.1.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.1.i:                                     ; preds = %for.cond.i
  %6 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.2.i = icmp eq i32 %6, %3
  br i1 %cmp2.2.i, label %for.cond.1.i.if.end10_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end10_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %7 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp2.3.i = icmp eq i32 %7, %3
  br i1 %cmp2.3.i, label %for.cond.2.i.if.end10_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end10_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %8 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp2.4.i = icmp eq i32 %8, %3
  br i1 %cmp2.4.i, label %for.cond.3.i.if.end10_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end10_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %9 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.5.i = icmp eq i32 %9, %3
  br i1 %cmp2.5.i, label %for.cond.4.i.if.end10_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end10_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %10 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp2.6.i = icmp eq i32 %10, %3
  br i1 %cmp2.6.i, label %for.cond.5.i.if.end10_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end10_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %11 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp2.7.i = icmp eq i32 %11, %3
  br i1 %cmp2.7.i, label %for.cond.6.i.if.end10_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end10_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %12 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp2.8.i = icmp eq i32 %12, %3
  br i1 %cmp2.8.i, label %for.cond.7.i.if.end10_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end10_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %13 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp2.9.i = icmp eq i32 %13, %3
  br i1 %cmp2.9.i, label %for.cond.8.i.if.end10_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end10_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %14 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp2.10.i = icmp eq i32 %14, %3
  br i1 %cmp2.10.i, label %for.cond.9.i.if.end10_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end10_crit_edge:                  ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %15 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %3)
  %cmp2.11.i = icmp eq i32 %15, %3
  br i1 %cmp2.11.i, label %for.cond.10.i.if.end10_crit_edge, label %for.cond.11.i

for.cond.10.i.if.end10_crit_edge:                 ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %16 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %3)
  %cmp2.12.i = icmp eq i32 %16, %3
  br i1 %cmp2.12.i, label %for.cond.11.i.if.end10_crit_edge, label %for.cond.12.i

for.cond.11.i.if.end10_crit_edge:                 ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %17 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %3)
  %cmp2.13.i = icmp eq i32 %17, %3
  br i1 %cmp2.13.i, label %for.cond.12.i.if.end10_crit_edge, label %do.body

for.cond.12.i.if.end10_crit_edge:                 ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body:                                          ; preds = %for.cond.12.i
  %18 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %do.end, label %do.body.get_format.exit245_crit_edge

do.body.get_format.exit245_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_format.exit245

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %name, i32 noundef %3) #15
  br label %get_format.exit245

get_format.exit245:                               ; preds = %do.end, %do.body.get_format.exit245_crit_edge
  %19 = load i32, ptr @formats, align 4
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %get_format.exit245, %for.cond.12.i.if.end10_crit_edge, %for.cond.11.i.if.end10_crit_edge, %for.cond.10.i.if.end10_crit_edge, %for.cond.9.i.if.end10_crit_edge, %for.cond.8.i.if.end10_crit_edge, %for.cond.7.i.if.end10_crit_edge, %for.cond.6.i.if.end10_crit_edge, %for.cond.5.i.if.end10_crit_edge, %for.cond.4.i.if.end10_crit_edge, %for.cond.3.i.if.end10_crit_edge, %for.cond.2.i.if.end10_crit_edge, %for.cond.1.i.if.end10_crit_edge, %for.cond.i.if.end10_crit_edge, %entry.if.end10_crit_edge
  %mfmt.0 = phi ptr [ @formats, %get_format.exit245 ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 12), %for.cond.11.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 11), %for.cond.10.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 10), %for.cond.9.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 9), %for.cond.8.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 8), %for.cond.7.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 7), %for.cond.6.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 6), %for.cond.5.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 5), %for.cond.4.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 4), %for.cond.3.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), %for.cond.2.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 2), %for.cond.1.i.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 1), %for.cond.i.if.end10_crit_edge ], [ @formats, %entry.if.end10_crit_edge ], [ getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 13), %for.cond.12.i.if.end10_crit_edge ]
  %fmt11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field, align 4
  %22 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp13 = icmp sgt i32 %22, 0
  br i1 %cmp13, label %do.end17, label %if.end10.do.end29_crit_edge

if.end10.do.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %name20 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmt11, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %27 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pixelformat.i, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %name20, i32 noundef %24, i32 noundef %26, i32 noundef %28) #15
  br label %do.end29

do.end29:                                         ; preds = %do.end17, %if.end10.do.end29_crit_edge
  %max_width = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 25
  %29 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_width, align 4
  %height33 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %max_height = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 26
  %31 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_height, align 8
  tail call void @v4l_bound_align_image(ptr noundef %fmt11, i32 noundef 32, i32 noundef %30, i32 noundef 1, ptr noundef %height33, i32 noundef 32, i32 noundef %32, i32 noundef 1, i32 noundef 0) #12
  %33 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt11, align 4
  %ybbp = getelementptr inbounds %struct.mmal_fmt, ptr %mfmt.0, i32 0, i32 5
  %35 = ptrtoint ptr %ybbp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ybbp, align 4
  %mul = mul i32 %36, %34
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul, ptr %bytesperline, align 4
  %remove_padding = getelementptr inbounds %struct.mmal_fmt, ptr %mfmt.0, i32 0, i32 6
  %38 = ptrtoint ptr %remove_padding to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %remove_padding, align 4, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool37.not = icmp eq i8 %39, 0
  br i1 %tobool37.not, label %if.then38, label %do.end29.if.end71_crit_edge

do.end29.if.end71_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then38:                                        ; preds = %do.end29
  %depth = getelementptr inbounds %struct.mmal_fmt, ptr %mfmt.0, i32 0, i32 3
  %40 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %41)
  %cmp39 = icmp eq i32 %41, 24
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %34, 15
  %and = and i32 %add, -16
  %mul43 = mul i32 %and, 3
  br label %do.body55

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %mul47 = shl i32 %41, 5
  %shr = ashr exact i32 %mul47, 3
  %sub = add i32 %mul, -1
  %add50 = add i32 %sub, %shr
  %neg = sub nsw i32 0, %shr
  %and51 = and i32 %add50, %neg
  br label %do.body55

do.body55:                                        ; preds = %if.else, %if.then40
  %storemerge = phi i32 [ %and51, %if.else ], [ %mul43, %if.then40 ]
  %42 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge, ptr %bytesperline, align 4
  %43 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp56 = icmp sgt i32 %43, 0
  br i1 %cmp56, label %do.end60, label %do.body55.if.end71_crit_edge

do.body55.if.end71_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.end60:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  %name63 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %name63, i32 noundef %storemerge) #15
  br label %if.end71

if.end71:                                         ; preds = %do.end60, %do.body55.if.end71_crit_edge, %do.end29.if.end71_crit_edge
  %44 = ptrtoint ptr %height33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height33, align 4
  %add74 = add i32 %45, 15
  %and75 = and i32 %add74, -16
  %46 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fmt11, align 4
  %add78 = add i32 %47, 31
  %and79 = and i32 %add78, -32
  %depth80 = getelementptr inbounds %struct.mmal_fmt, ptr %mfmt.0, i32 0, i32 3
  %48 = ptrtoint ptr %depth80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %depth80, align 4
  %mul81 = mul i32 %and75, %49
  %mul82 = mul i32 %mul81, %and79
  %shr83 = lshr exact i32 %mul82, 3
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %50 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr83, ptr %sizeimage, align 4
  %flags = getelementptr inbounds %struct.mmal_fmt, ptr %mfmt.0, i32 0, i32 1
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %and85 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp ne i32 %and85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 655360, i32 %mul82)
  %cmp89 = icmp ult i32 %mul82, 655360
  %or.cond = select i1 %tobool86.not, i1 %cmp89, i1 false
  %spec.store.select = select i1 %or.cond, i32 81920, i32 %shr83
  %53 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.store.select, ptr %sizeimage, align 4
  %54 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %55)
  %switch.selectcmp = icmp eq i32 %55, 1195724874
  %switch.select = select i1 %switch.selectcmp, i32 7, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 859981650, i32 %55)
  %switch.selectcmp249 = icmp eq i32 %55, 859981650
  %switch.select250 = select i1 %switch.selectcmp249, i32 8, i32 %switch.select
  %colorspace105 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %56 = ptrtoint ptr %colorspace105 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %switch.select250, ptr %colorspace105, align 4
  %priv112 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %57 = ptrtoint ptr %priv112 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %priv112, align 4
  %58 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp114 = icmp sgt i32 %58, 0
  br i1 %cmp114, label %do.body133, label %if.end71.do.end162_crit_edge

if.end71.do.end162_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end162

do.body133:                                       ; preds = %if.end71
  %name121 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %name121, i32 noundef %47, i32 noundef %45, i32 noundef %55) #15
  %.pr = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp134 = icmp sgt i32 %.pr, 0
  br i1 %cmp134, label %do.end138, label %do.body133.do.end162_crit_edge

do.body133.do.end162_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end162

do.end138:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fmt11, align 4
  %61 = ptrtoint ptr %height33 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height33, align 4
  %63 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %field, align 4
  %65 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pixelformat.i, align 4
  %67 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bytesperline, align 4
  %69 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sizeimage, align 4
  %colorspace156 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %71 = ptrtoint ptr %colorspace156 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %colorspace156, align 4
  %73 = ptrtoint ptr %priv112 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %priv112, align 4
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %name121, ptr noundef nonnull @.str.182, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74) #15
  br label %do.end162

do.end162:                                        ; preds = %do.end138, %do.body133.do.end162_crit_edge, %if.end71.do.end162_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_overlay(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %field, align 4
  %chromakey = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %clips = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %clipcount = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %bitmap = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %width = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %max_width = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 25
  %3 = call ptr @memset(ptr %chromakey, i32 0, i32 16)
  %4 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_width, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %max_height = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_height, align 8
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef 32, i32 noundef %5, i32 noundef 1, ptr noundef %height, i32 noundef 32, i32 noundef %7, i32 noundef 1, i32 noundef 0) #12
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_width, align 4
  %top = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_height, align 8
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 32, i32 noundef %9, i32 noundef 1, ptr noundef %top, i32 noundef 32, i32 noundef %11, i32 noundef 1, i32 noundef 0) #12
  %12 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %do.body30, label %entry.do.end65_crit_edge

entry.do.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

do.body30:                                        ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt, align 4
  %19 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %top, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef %name, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #15
  %.pr = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp31 = icmp sgt i32 %.pr, 0
  br i1 %cmp31, label %do.end35, label %do.body30.do.end65_crit_edge

do.body30.do.end65_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width, align 4
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt, align 4
  %27 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %top, align 4
  %29 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field, align 4
  %31 = ptrtoint ptr %chromakey to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chromakey, align 4
  %33 = ptrtoint ptr %clips to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clips, align 4
  %35 = ptrtoint ptr %clipcount to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clipcount, align 4
  %37 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bitmap, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %name, ptr noundef nonnull @.str.195, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, ptr noundef %34, i32 noundef %36, ptr noundef %38) #15
  br label %do.end65

do.end65:                                         ; preds = %do.end35, %do.body30.do.end65_crit_edge, %entry.do.end65_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_overlay(ptr noundef %file, ptr nocapture noundef readnone %f, i32 noundef %on) #2 align 64 {
entry:
  %prev_config.i = alloca %struct.mmal_parameter_displayregion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %arrayidx5 = getelementptr %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load6 = load i8, ptr %3, align 4
  %5 = and i8 %bf.load6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true3.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool10.not, label %if.end29, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true3.critedge:                          ; preds = %entry
  br i1 %tobool10.not, label %land.lhs.true3.critedge.cleanup_crit_edge, label %if.then15

land.lhs.true3.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true3.critedge
  %component11106 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %component11106 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component11106, align 8
  %output107 = getelementptr inbounds %struct.vchiq_mmal_component, ptr %7, i32 0, i32 7
  %instance = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %instance, align 4
  %call16 = tail call i32 @vchiq_mmal_port_disable(ptr noundef %9, ptr noundef %output107) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %instance, align 4
  %call20 = tail call i32 @vchiq_mmal_port_connect_tunnel(ptr noundef %11, ptr noundef %output107, ptr noundef null) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then15.if.end21_crit_edge
  %ret.0 = phi i32 [ %call16, %if.then15.if.end21_crit_edge ], [ %call20, %if.then18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp = icmp sgt i32 %ret.0, -1
  br i1 %cmp, label %if.then22, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then22:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %instance, align 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  %call26 = tail call i32 @vchiq_mmal_component_disable(ptr noundef %13, ptr noundef %15) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end21.if.end27_crit_edge
  %ret.1 = phi i32 [ %call26, %if.then22 ], [ %ret.0, %if.end21.if.end27_crit_edge ]
  %call28 = tail call fastcc i32 @disable_camera(ptr noundef %1)
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true
  %component11 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %component11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %component11, align 8
  %output = getelementptr inbounds %struct.vchiq_mmal_component, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5, align 4
  %input = getelementptr inbounds %struct.vchiq_mmal_component, ptr %19, i32 0, i32 6
  %instance33 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %instance33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %instance33, align 4
  %call34 = tail call i32 @vchiq_mmal_port_set_format(ptr noundef %21, ptr noundef %output) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end29.cleanup_crit_edge, label %if.end37

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %prev_config.i) #12
  %22 = ptrtoint ptr %prev_config.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1290, ptr %prev_config.i, align 4
  %display_num.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 1
  %23 = ptrtoint ptr %display_num.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %display_num.i, align 4
  %fullscreen.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 2
  %24 = ptrtoint ptr %fullscreen.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fullscreen.i, align 4
  %transform.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 3
  %25 = ptrtoint ptr %transform.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %transform.i, align 4
  %dest_rect.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 4
  %overlay.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22
  %26 = ptrtoint ptr %overlay.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %overlay.i, align 4
  %28 = ptrtoint ptr %dest_rect.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dest_rect.i, align 4
  %y.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 4, i32 1
  %top.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22, i32 0, i32 1
  %29 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %top.i, align 4
  %31 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %y.i, align 4
  %width.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 4, i32 2
  %width5.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22, i32 0, i32 2
  %32 = ptrtoint ptr %width5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width5.i, align 4
  %34 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 4, i32 3
  %height8.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22, i32 0, i32 3
  %35 = ptrtoint ptr %height8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height8.i, align 4
  %37 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height.i, align 4
  %src_rect.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 5
  %layer.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 10
  %38 = call ptr @memset(ptr %src_rect.i, i32 0, i32 32)
  %39 = ptrtoint ptr %layer.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %layer.i, align 4
  %copyprotect_required.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 11
  %40 = ptrtoint ptr %copyprotect_required.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %copyprotect_required.i, align 4
  %alpha.i = getelementptr inbounds %struct.mmal_parameter_displayregion, ptr %prev_config.i, i32 0, i32 12
  %global_alpha.i = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 22, i32 6
  %41 = ptrtoint ptr %global_alpha.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %global_alpha.i, align 4
  %conv.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv.i, ptr %alpha.i, align 4
  %44 = ptrtoint ptr %instance33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %instance33, align 4
  %call.i105 = call i32 @vchiq_mmal_port_parameter_set(ptr noundef %45, ptr noundef %input, i32 noundef 131072, ptr noundef nonnull %prev_config.i, i32 noundef 76) #12
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %prev_config.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp39 = icmp slt i32 %call.i105, 0
  br i1 %cmp39, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = call fastcc i32 @enable_camera(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.cleanup_crit_edge, label %if.end45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %46 = ptrtoint ptr %instance33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %instance33, align 4
  %48 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx5, align 4
  %call49 = call i32 @vchiq_mmal_component_enable(ptr noundef %47, ptr noundef %49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end45.cleanup_crit_edge, label %do.body

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end45
  %50 = load i32, ptr @bcm2835_v4l2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp53 = icmp sgt i32 %50, 0
  br i1 %cmp53, label %do.end, label %do.body.do.end59_crit_edge

do.body.do.end59_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end59

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %name, ptr noundef %output, ptr noundef %input) #15
  br label %do.end59

do.end59:                                         ; preds = %do.end, %do.body.do.end59_crit_edge
  %51 = ptrtoint ptr %instance33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %instance33, align 4
  %call61 = call i32 @vchiq_mmal_port_connect_tunnel(ptr noundef %52, ptr noundef %output, ptr noundef %input) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %do.end59.cleanup_crit_edge

do.end59.cleanup_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end64:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %instance33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %instance33, align 4
  %call66 = call i32 @vchiq_mmal_port_enable(ptr noundef %54, ptr noundef %output, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end59.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end27, %land.lhs.true3.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call66, %if.end64 ], [ %ret.1, %if.end27 ], [ 0, %land.lhs.true3.critedge.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call34, %if.end29.cleanup_crit_edge ], [ %call.i105, %if.end37.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ], [ %call49, %if.end45.cleanup_crit_edge ], [ %call61, %do.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fbuf(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %component = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component, align 8
  %4 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 33, ptr %a, align 4
  %flags = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %flags, align 4
  %es = getelementptr inbounds %struct.vchiq_mmal_component, ptr %3, i32 0, i32 7, i32 0, i32 10
  %6 = ptrtoint ptr %es to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %es, align 4
  %fmt = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.vchiq_mmal_component, ptr %3, i32 0, i32 7, i32 0, i32 10, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height5, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 842093913, ptr %pixelformat, align 4
  %13 = load i32, ptr %es, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bytesperline, align 4
  %15 = load i32, ptr %es, align 4
  %16 = load i32, ptr %height, align 4
  %mul = mul i32 %15, 3
  %mul14 = mul i32 %mul, %16
  %shr = lshr i32 %mul14, 1
  %sizeimage = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_framebuffer, ptr %a, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %inp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.201, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %parm1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %4 = ptrtoint ptr %parm1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %parm1, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %timeperframe3 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %3, i32 0, i32 23, i32 5
  %5 = ptrtoint ptr %timeperframe3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %timeperframe3, align 4
  %7 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %timeperframe, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %readbuffers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %parm1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %tpf.sroa.11.0.timeperframe.sroa_idx = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %tpf.sroa.11.0.timeperframe.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %tpf.sroa.11.0.copyload = load i32, ptr %tpf.sroa.11.0.timeperframe.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tpf.sroa.11.0.copyload)
  %tobool.not = icmp eq i32 %tpf.sroa.11.0.copyload, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %5)
  %tpf.sroa.0.0.copyload = load i32, ptr %timeperframe, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %tpf.sroa.11.0 = phi i32 [ %tpf.sroa.11.0.copyload, %cond.true ], [ 30000, %if.end.cond.end_crit_edge ]
  %tpf.sroa.0.0 = phi i32 [ %tpf.sroa.0.0.copyload, %cond.true ], [ 1000, %if.end.cond.end_crit_edge ]
  %conv = zext i32 %tpf.sroa.0.0 to i64
  %mul = mul nuw nsw i64 %conv, 90
  %conv5 = zext i32 %tpf.sroa.11.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv5)
  %cmp7 = icmp ult i64 %mul, %conv5
  %.tpf.sroa.11.0 = select i1 %cmp7, i32 90, i32 %tpf.sroa.11.0
  %.tpf.sroa.0.0 = select i1 %cmp7, i32 1, i32 %tpf.sroa.0.0
  call void @__sanitizer_cov_trace_cmp4(i32 %.tpf.sroa.0.0, i32 %.tpf.sroa.11.0)
  %cmp20 = icmp ugt i32 %.tpf.sroa.0.0, %.tpf.sroa.11.0
  %tpf.sroa.11.2 = select i1 %cmp20, i32 1, i32 %.tpf.sroa.11.0
  %tpf.sroa.0.2 = select i1 %cmp20, i32 1, i32 %.tpf.sroa.0.0
  %timeperframe25 = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 5
  %6 = ptrtoint ptr %timeperframe25 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %tpf.sroa.0.2, ptr %timeperframe25, align 4
  %tpf.sroa.11.0.timeperframe25.sroa_idx = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 23, i32 5, i32 1
  %7 = ptrtoint ptr %tpf.sroa.11.0.timeperframe25.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tpf.sroa.11.2, ptr %tpf.sroa.11.0.timeperframe25.sroa_idx, align 4
  %8 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tpf.sroa.0.2, ptr %timeperframe, align 4
  %9 = ptrtoint ptr %tpf.sroa.11.0.timeperframe.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %tpf.sroa.11.2, ptr %tpf.sroa.11.0.timeperframe.sroa_idx, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %readbuffers, align 4
  %11 = ptrtoint ptr %parm1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %parm1, align 4
  %call30 = tail call i32 @set_framerate_params(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %6 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp1 = icmp eq i32 %6, %5
  br i1 %cmp1, label %for.cond.preheader.if.end6_crit_edge, label %for.inc

for.cond.preheader.if.end6_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc:                                          ; preds = %for.cond.preheader
  %7 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.1 = icmp eq i32 %7, %5
  br i1 %cmp1.1, label %for.inc.if.end6_crit_edge, label %for.inc.1

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.1:                                        ; preds = %for.inc
  %8 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp1.2 = icmp eq i32 %8, %5
  br i1 %cmp1.2, label %for.inc.1.if.end6_crit_edge, label %for.inc.2

for.inc.1.if.end6_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.2:                                        ; preds = %for.inc.1
  %9 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp1.3 = icmp eq i32 %9, %5
  br i1 %cmp1.3, label %for.inc.2.if.end6_crit_edge, label %for.inc.3

for.inc.2.if.end6_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.3:                                        ; preds = %for.inc.2
  %10 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp1.4 = icmp eq i32 %10, %5
  br i1 %cmp1.4, label %for.inc.3.if.end6_crit_edge, label %for.inc.4

for.inc.3.if.end6_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.4:                                        ; preds = %for.inc.3
  %11 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp1.5 = icmp eq i32 %11, %5
  br i1 %cmp1.5, label %for.inc.4.if.end6_crit_edge, label %for.inc.5

for.inc.4.if.end6_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.5:                                        ; preds = %for.inc.4
  %12 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp1.6 = icmp eq i32 %12, %5
  br i1 %cmp1.6, label %for.inc.5.if.end6_crit_edge, label %for.inc.6

for.inc.5.if.end6_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.6:                                        ; preds = %for.inc.5
  %13 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp1.7 = icmp eq i32 %13, %5
  br i1 %cmp1.7, label %for.inc.6.if.end6_crit_edge, label %for.inc.7

for.inc.6.if.end6_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.7:                                        ; preds = %for.inc.6
  %14 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %5)
  %cmp1.8 = icmp eq i32 %14, %5
  br i1 %cmp1.8, label %for.inc.7.if.end6_crit_edge, label %for.inc.8

for.inc.7.if.end6_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.8:                                        ; preds = %for.inc.7
  %15 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp1.9 = icmp eq i32 %15, %5
  br i1 %cmp1.9, label %for.inc.8.if.end6_crit_edge, label %for.inc.9

for.inc.8.if.end6_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.9:                                        ; preds = %for.inc.8
  %16 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %5)
  %cmp1.10 = icmp eq i32 %16, %5
  br i1 %cmp1.10, label %for.inc.9.if.end6_crit_edge, label %for.inc.10

for.inc.9.if.end6_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.10:                                       ; preds = %for.inc.9
  %17 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %5)
  %cmp1.11 = icmp eq i32 %17, %5
  br i1 %cmp1.11, label %for.inc.10.if.end6_crit_edge, label %for.inc.11

for.inc.10.if.end6_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.11:                                       ; preds = %for.inc.10
  %18 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %5)
  %cmp1.12 = icmp eq i32 %18, %5
  br i1 %cmp1.12, label %for.inc.11.if.end6_crit_edge, label %for.inc.12

for.inc.11.if.end6_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.12:                                       ; preds = %for.inc.11
  %19 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %5)
  %cmp1.13 = icmp eq i32 %19, %5
  br i1 %cmp1.13, label %for.inc.12.if.end6_crit_edge, label %for.inc.12.cleanup_crit_edge

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.12.if.end6_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %for.inc.12.if.end6_crit_edge, %for.inc.11.if.end6_crit_edge, %for.inc.10.if.end6_crit_edge, %for.inc.9.if.end6_crit_edge, %for.inc.8.if.end6_crit_edge, %for.inc.7.if.end6_crit_edge, %for.inc.6.if.end6_crit_edge, %for.inc.5.if.end6_crit_edge, %for.inc.4.if.end6_crit_edge, %for.inc.3.if.end6_crit_edge, %for.inc.2.if.end6_crit_edge, %for.inc.1.if.end6_crit_edge, %for.inc.if.end6_crit_edge, %for.cond.preheader.if.end6_crit_edge
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %type, align 4
  %21 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %21, ptr @vidioc_enum_framesizes.sizes, i32 24)
  %max_width = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 25
  %23 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_width, align 4
  %max_width7 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %max_width7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %max_width7, align 4
  %max_height = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 26
  %26 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_height, align 8
  %max_height8 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %28 = ptrtoint ptr %max_height8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %max_height8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.inc.12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fival) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fival, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %6 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp1 = icmp eq i32 %6, %5
  br i1 %cmp1, label %for.cond.preheader.if.end6_crit_edge, label %for.inc

for.cond.preheader.if.end6_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc:                                          ; preds = %for.cond.preheader
  %7 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.1 = icmp eq i32 %7, %5
  br i1 %cmp1.1, label %for.inc.if.end6_crit_edge, label %for.inc.1

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.1:                                        ; preds = %for.inc
  %8 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp1.2 = icmp eq i32 %8, %5
  br i1 %cmp1.2, label %for.inc.1.if.end6_crit_edge, label %for.inc.2

for.inc.1.if.end6_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.2:                                        ; preds = %for.inc.1
  %9 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp1.3 = icmp eq i32 %9, %5
  br i1 %cmp1.3, label %for.inc.2.if.end6_crit_edge, label %for.inc.3

for.inc.2.if.end6_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.3:                                        ; preds = %for.inc.2
  %10 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp1.4 = icmp eq i32 %10, %5
  br i1 %cmp1.4, label %for.inc.3.if.end6_crit_edge, label %for.inc.4

for.inc.3.if.end6_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.4:                                        ; preds = %for.inc.3
  %11 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp1.5 = icmp eq i32 %11, %5
  br i1 %cmp1.5, label %for.inc.4.if.end6_crit_edge, label %for.inc.5

for.inc.4.if.end6_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.5:                                        ; preds = %for.inc.4
  %12 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp1.6 = icmp eq i32 %12, %5
  br i1 %cmp1.6, label %for.inc.5.if.end6_crit_edge, label %for.inc.6

for.inc.5.if.end6_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.6:                                        ; preds = %for.inc.5
  %13 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp1.7 = icmp eq i32 %13, %5
  br i1 %cmp1.7, label %for.inc.6.if.end6_crit_edge, label %for.inc.7

for.inc.6.if.end6_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.7:                                        ; preds = %for.inc.6
  %14 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %5)
  %cmp1.8 = icmp eq i32 %14, %5
  br i1 %cmp1.8, label %for.inc.7.if.end6_crit_edge, label %for.inc.8

for.inc.7.if.end6_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.8:                                        ; preds = %for.inc.7
  %15 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp1.9 = icmp eq i32 %15, %5
  br i1 %cmp1.9, label %for.inc.8.if.end6_crit_edge, label %for.inc.9

for.inc.8.if.end6_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.9:                                        ; preds = %for.inc.8
  %16 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %5)
  %cmp1.10 = icmp eq i32 %16, %5
  br i1 %cmp1.10, label %for.inc.9.if.end6_crit_edge, label %for.inc.10

for.inc.9.if.end6_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.10:                                       ; preds = %for.inc.9
  %17 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %5)
  %cmp1.11 = icmp eq i32 %17, %5
  br i1 %cmp1.11, label %for.inc.10.if.end6_crit_edge, label %for.inc.11

for.inc.10.if.end6_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.11:                                       ; preds = %for.inc.10
  %18 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %5)
  %cmp1.12 = icmp eq i32 %18, %5
  br i1 %cmp1.12, label %for.inc.11.if.end6_crit_edge, label %for.inc.12

for.inc.11.if.end6_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.12:                                       ; preds = %for.inc.11
  %19 = load i32, ptr getelementptr inbounds ([14 x %struct.mmal_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %5)
  %cmp1.13 = icmp eq i32 %19, %5
  br i1 %cmp1.13, label %for.inc.12.if.end6_crit_edge, label %for.inc.12.cleanup_crit_edge

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.12.if.end6_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %for.inc.12.if.end6_crit_edge, %for.inc.11.if.end6_crit_edge, %for.inc.10.if.end6_crit_edge, %for.inc.9.if.end6_crit_edge, %for.inc.8.if.end6_crit_edge, %for.inc.7.if.end6_crit_edge, %for.inc.6.if.end6_crit_edge, %for.inc.5.if.end6_crit_edge, %for.inc.4.if.end6_crit_edge, %for.inc.3.if.end6_crit_edge, %for.inc.2.if.end6_crit_edge, %for.inc.1.if.end6_crit_edge, %for.inc.if.end6_crit_edge, %for.cond.preheader.if.end6_crit_edge
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %cmp7 = icmp ult i32 %21, 32
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %lor.lhs.false

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %max_width = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 25
  %22 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp9 = icmp ugt i32 %21, %23
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp11 = icmp ult i32 %25, 32
  br i1 %cmp11, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %max_height = getelementptr inbounds %struct.bcm2835_mmal_dev, ptr %1, i32 0, i32 26
  %26 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_height, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp14 = icmp ugt i32 %25, %27
  br i1 %cmp14, label %lor.lhs.false12.cleanup_crit_edge, label %if.end16

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %type, align 4
  %29 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 4294967386, ptr %29, align 4
  %max = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %max to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 4294967297, ptr %max, align 4
  %step = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 2
  %32 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %step, align 4
  %.compoundliteral.sroa.2.0.step.sroa_idx = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %.compoundliteral.sroa.2.0.step.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %.compoundliteral.sroa.2.0.step.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %for.inc.12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %for.inc.12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_mmal_port_connect_tunnel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_framerate_params(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 213)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 213)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !33, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !53, !55, !57, !58, !60, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !124, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !307, !308, !310, !311, !312, !313, !315, !316, !317, !319, !320, !321, !322, !324, !326, !328, !330, !332, !334, !336, !337, !338, !339, !341, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !377, !378, !379, !380, !382, !383, !384, !386, !387, !388, !389, !391, !393, !395, !397, !399, !400, !401, !402, !404, !405, !406, !408, !409, !410, !412, !413, !414, !416, !417, !418, !419, !421, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !439, !441, !443, !445, !446, !447, !448, !450, !451}
!llvm.module.flags = !{!452, !453, !454, !455, !456, !457, !458, !459}
!llvm.ident = !{!460}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype298, !1, !"__UNIQUE_ID_debugtype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_bcm2835_v4l2_debug299, !4, !"__UNIQUE_ID_bcm2835_v4l2_debug299", i1 false, i1 false}
!4 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 49, i32 1}
!5 = !{ptr @__param_video_nr, !6, !"__param_video_nr", i1 false, i1 false}
!6 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 53, i32 1}
!7 = !{ptr @__UNIQUE_ID_video_nrtype300, !6, !"__UNIQUE_ID_video_nrtype300", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_video_nr301, !9, !"__UNIQUE_ID_video_nr301", i1 false, i1 false}
!9 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 54, i32 1}
!10 = !{ptr @__param_max_video_width, !11, !"__param_max_video_width", i1 false, i1 false}
!11 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 58, i32 1}
!12 = !{ptr @__UNIQUE_ID_max_video_widthtype302, !11, !"__UNIQUE_ID_max_video_widthtype302", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_max_video_width303, !14, !"__UNIQUE_ID_max_video_width303", i1 false, i1 false}
!14 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 59, i32 1}
!15 = !{ptr @__param_max_video_height, !16, !"__param_max_video_height", i1 false, i1 false}
!16 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 60, i32 1}
!17 = !{ptr @__UNIQUE_ID_max_video_heighttype304, !16, !"__UNIQUE_ID_max_video_heighttype304", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_max_video_height305, !19, !"__UNIQUE_ID_max_video_height305", i1 false, i1 false}
!19 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 61, i32 1}
!20 = !{ptr @__initcall__kmod_bcm2835_v4l2__308_2006_bcm2835_camera_driver_init6, !21, !"__initcall__kmod_bcm2835_v4l2__308_2006_bcm2835_camera_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 2006, i32 1}
!22 = !{ptr @__exitcall_bcm2835_camera_driver_exit, !21, !"__exitcall_bcm2835_camera_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description309, !24, !"__UNIQUE_ID_description309", i1 false, i1 false}
!24 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 2008, i32 1}
!25 = !{ptr @__UNIQUE_ID_author310, !26, !"__UNIQUE_ID_author310", i1 false, i1 false}
!26 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 2009, i32 1}
!27 = !{ptr @__UNIQUE_ID_file311, !28, !"__UNIQUE_ID_file311", i1 false, i1 false}
!28 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 2010, i32 1}
!29 = !{ptr @__UNIQUE_ID_license312, !28, !"__UNIQUE_ID_license312", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_version313, !31, !"__UNIQUE_ID_version313", i1 false, i1 false}
!31 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 2011, i32 1}
!32 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__modver_attr, !31, !"__modver_attr", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_alias314, !37, !"__UNIQUE_ID_alias314", i1 false, i1 false}
!37 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 2012, i32 1}
!38 = !{ptr @bcm2835_v4l2_debug, !39, !"bcm2835_v4l2_debug", i1 false, i1 false}
!39 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 47, i32 5}
!40 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!41 = !{ptr @__param_str_video_nr, !6, !"__param_str_video_nr", i1 false, i1 false}
!42 = !{ptr @__param_arr_video_nr, !6, !"__param_arr_video_nr", i1 false, i1 false}
!43 = !{ptr @video_nr, !44, !"video_nr", i1 false, i1 false}
!44 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 52, i32 12}
!45 = !{ptr @__param_str_max_video_width, !11, !"__param_str_max_video_width", i1 false, i1 false}
!46 = !{ptr @max_video_width, !47, !"max_video_width", i1 false, i1 false}
!47 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 56, i32 12}
!48 = !{ptr @__param_str_max_video_height, !16, !"__param_str_max_video_height", i1 false, i1 false}
!49 = !{ptr @max_video_height, !50, !"max_video_height", i1 false, i1 false}
!50 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 57, i32 12}
!51 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 2002, i32 11}
!53 = !{ptr @bcm2835_camera_driver, !54, !"bcm2835_camera_driver", i1 false, i1 false}
!54 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1998, i32 31}
!55 = !{ptr @bcm2835_mmal_probe.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1881, i32 3}
!57 = !{ptr @.str.4, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.5, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1898, i32 14}
!60 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1902, i32 4}
!62 = !{ptr @.str.7, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @bcm2835_mmal_probe._entry, !61, !"_entry", i1 false, i1 false}
!67 = !{ptr @bcm2835_mmal_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1910, i32 4}
!70 = !{ptr @bcm2835_mmal_probe._entry.11, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @bcm2835_mmal_probe._entry_ptr.13, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.15, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1920, i32 4}
!74 = !{ptr @bcm2835_mmal_probe._entry.14, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bcm2835_mmal_probe._entry_ptr.16, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1942, i32 4}
!78 = !{ptr @bcm2835_mmal_probe._entry.17, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @bcm2835_mmal_probe._entry_ptr.19, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1952, i32 4}
!82 = !{ptr @bcm2835_mmal_probe._entry.20, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @bcm2835_mmal_probe._entry_ptr.22, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1957, i32 3}
!86 = !{ptr @bcm2835_mmal_probe._entry.23, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @bcm2835_mmal_probe._entry_ptr.25, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1503, i32 44}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1514, i32 3}
!92 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @get_num_cameras._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @get_num_cameras._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @formats, !96, !"formats", i1 false, i1 false}
!96 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 85, i32 24}
!97 = !{ptr @camera_instance, !98, !"camera_instance", i1 false, i1 false}
!98 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 64, i32 17}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1566, i32 3}
!101 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mmal_init._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mmal_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1572, i32 49}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1579, i32 3}
!108 = !{ptr @mmal_init._entry.32, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mmal_init._entry_ptr.34, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1589, i32 3}
!112 = !{ptr @mmal_init._entry.35, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @mmal_init._entry_ptr.37, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1673, i32 49}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1680, i32 3}
!118 = !{ptr @mmal_init._entry.39, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mmal_init._entry_ptr.41, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1686, i32 49}
!122 = !{ptr @mmal_init._entry.43, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1693, i32 3}
!124 = !{ptr @mmal_init._entry_ptr.44, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1700, i32 49}
!127 = !{ptr @mmal_init._entry.46, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1707, i32 3}
!129 = !{ptr @mmal_init._entry_ptr.47, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1738, i32 3}
!132 = !{ptr @mmal_init._entry.48, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @mmal_init._entry_ptr.50, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1746, i32 2}
!136 = !{ptr @mmal_init._entry.51, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @mmal_init._entry_ptr.53, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1751, i32 2}
!140 = !{ptr @mmal_init._entry.54, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @mmal_init._entry_ptr.56, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1756, i32 2}
!144 = !{ptr @mmal_init._entry.57, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @mmal_init._entry_ptr.59, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1761, i32 2}
!148 = !{ptr @mmal_init._entry.60, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @mmal_init._entry_ptr.62, !147, !"_entry_ptr", i1 false, i1 false}
!150 = distinct !{null, !151, !"tpf_default", i1 false, i1 false}
!151 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 76, i32 2}
!152 = !{ptr @bcm2835_mmal_video_qops, !153, !"bcm2835_mmal_video_qops", i1 false, i1 false}
!153 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 657, i32 29}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 218, i32 3}
!156 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @queue_setup._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @queue_setup._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 227, i32 4}
!161 = !{ptr @queue_setup._entry.65, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @queue_setup._entry_ptr.67, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 241, i32 3}
!165 = !{ptr @queue_setup._entry.68, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @queue_setup._entry_ptr.70, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 260, i32 2}
!169 = !{ptr @queue_setup._entry.71, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @queue_setup._entry_ptr.73, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 273, i32 2}
!173 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @buffer_init._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @buffer_init._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 286, i32 2}
!178 = !{ptr @buffer_prepare._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @buffer_prepare._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 294, i32 3}
!182 = !{ptr @buffer_prepare._entry.77, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @buffer_prepare._entry_ptr.79, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 310, i32 2}
!186 = !{ptr @buffer_cleanup._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @buffer_cleanup._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 508, i32 2}
!190 = !{ptr @start_streaming._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @start_streaming._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 516, i32 3}
!194 = !{ptr @start_streaming._entry.82, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @start_streaming._entry_ptr.84, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.86, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 540, i32 4}
!198 = !{ptr @start_streaming._entry.85, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @start_streaming._entry_ptr.87, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 554, i32 3}
!202 = !{ptr @start_streaming._entry.88, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @start_streaming._entry_ptr.90, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.92, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 560, i32 3}
!206 = !{ptr @start_streaming._entry.91, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @start_streaming._entry_ptr.93, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 572, i32 3}
!210 = !{ptr @start_streaming._entry.94, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @start_streaming._entry_ptr.96, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 579, i32 4}
!214 = !{ptr @start_streaming._entry.97, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @start_streaming._entry_ptr.99, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 430, i32 4}
!218 = !{ptr @.str.101, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @enable_camera._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @enable_camera._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 438, i32 4}
!223 = !{ptr @enable_camera._entry.102, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @enable_camera._entry_ptr.104, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 444, i32 2}
!227 = !{ptr @enable_camera._entry.105, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @enable_camera._entry_ptr.107, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 331, i32 2}
!231 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @buffer_cb._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @buffer_cb._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 352, i32 5}
!236 = !{ptr @buffer_cb._entry.110, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @buffer_cb._entry_ptr.112, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 363, i32 5}
!240 = !{ptr @buffer_cb._entry.113, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @buffer_cb._entry_ptr.115, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 388, i32 3}
!244 = !{ptr @buffer_cb._entry.116, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @buffer_cb._entry_ptr.118, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.120, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 408, i32 3}
!248 = !{ptr @buffer_cb._entry.119, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @buffer_cb._entry_ptr.121, !247, !"_entry_ptr", i1 false, i1 false}
!250 = distinct !{null, !251, !"__already_done", i1 false, i1 false}
!251 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!252 = !{ptr @.str.122, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 455, i32 3}
!255 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @disable_camera._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @disable_camera._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.126, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 463, i32 3}
!260 = !{ptr @disable_camera._entry.125, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @disable_camera._entry_ptr.127, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.129, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 468, i32 4}
!264 = !{ptr @disable_camera._entry.128, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @disable_camera._entry_ptr.130, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.132, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 478, i32 2}
!268 = !{ptr @disable_camera._entry.131, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @disable_camera._entry_ptr.133, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 602, i32 2}
!272 = !{ptr @stop_streaming._entry, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @stop_streaming._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 610, i32 3}
!276 = !{ptr @stop_streaming._entry.135, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @stop_streaming._entry_ptr.137, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 615, i32 2}
!280 = !{ptr @stop_streaming._entry.138, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @stop_streaming._entry_ptr.140, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.142, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 624, i32 2}
!284 = !{ptr @stop_streaming._entry.141, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @stop_streaming._entry_ptr.143, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.145, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 630, i32 3}
!288 = !{ptr @stop_streaming._entry.144, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @stop_streaming._entry_ptr.146, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.148, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 634, i32 3}
!292 = !{ptr @stop_streaming._entry.147, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @stop_streaming._entry_ptr.149, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.151, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 640, i32 3}
!296 = !{ptr @stop_streaming._entry.150, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @stop_streaming._entry_ptr.152, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.154, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 646, i32 4}
!300 = !{ptr @stop_streaming._entry.153, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @stop_streaming._entry_ptr.155, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @stop_streaming._entry.156, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 654, i32 3}
!304 = !{ptr @stop_streaming._entry_ptr.157, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @init_completion.__key, !306, !"__key", i1 false, i1 false}
!306 = !{!"../include/linux/completion.h", i32 87, i32 2}
!307 = !{ptr @.str.158, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.159, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 491, i32 2}
!310 = !{ptr @.str.160, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @buffer_queue._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @buffer_queue._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.162, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 498, i32 3}
!315 = !{ptr @buffer_queue._entry.161, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @buffer_queue._entry_ptr.163, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.164, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1790, i32 2}
!319 = !{ptr @.str.165, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @bcm2835_mmal_init_device._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @bcm2835_mmal_init_device._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @vdev_template, !323, !"vdev_template", i1 false, i1 false}
!323 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1481, i32 34}
!324 = !{ptr @camera0_fops, !325, !"camera0_fops", i1 false, i1 false}
!325 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1471, i32 42}
!326 = !{ptr @camera0_ioctl_ops, !327, !"camera0_ioctl_ops", i1 false, i1 false}
!327 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1426, i32 36}
!328 = !{ptr @.str.166, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 887, i32 23}
!330 = !{ptr @.str.167, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 888, i32 49}
!332 = !{ptr @.str.168, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 890, i32 57}
!334 = !{ptr @.str.169, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 929, i32 2}
!336 = !{ptr @.str.170, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @vidioc_g_fmt_vid_cap._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @vidioc_g_fmt_vid_cap._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.171, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1297, i32 3}
!341 = !{ptr @.str.172, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @vidioc_s_fmt_vid_cap._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.174, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1304, i32 3}
!346 = !{ptr @vidioc_s_fmt_vid_cap._entry.173, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr.175, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.177, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1313, i32 3}
!350 = !{ptr @vidioc_s_fmt_vid_cap._entry.176, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr.178, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.180, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1322, i32 3}
!354 = !{ptr @vidioc_s_fmt_vid_cap._entry.179, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr.181, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.182, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 942, i32 3}
!358 = !{ptr @vidioc_try_fmt_vid_cap._entry, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.184, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 951, i32 2}
!362 = !{ptr @vidioc_try_fmt_vid_cap._entry.183, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr.185, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.187, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 978, i32 3}
!366 = !{ptr @vidioc_try_fmt_vid_cap._entry.186, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr.188, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.190, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1001, i32 2}
!370 = !{ptr @vidioc_try_fmt_vid_cap._entry.189, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr.191, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @vidioc_try_fmt_vid_cap._entry.192, !373, !"_entry", i1 false, i1 false}
!373 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1005, i32 2}
!374 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr.193, !373, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.194, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 741, i32 2}
!377 = !{ptr @.str.195, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @vidioc_try_fmt_vid_overlay._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @vidioc_try_fmt_vid_overlay._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.197, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 746, i32 2}
!382 = !{ptr @vidioc_try_fmt_vid_overlay._entry.196, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @vidioc_try_fmt_vid_overlay._entry_ptr.198, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.199, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 817, i32 2}
!386 = !{ptr @.str.200, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @vidioc_overlay._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @vidioc_overlay._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.201, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 859, i32 29}
!391 = distinct !{null, !392, !"tpf_min", i1 false, i1 false}
!392 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 74, i32 2}
!393 = distinct !{null, !394, !"tpf_max", i1 false, i1 false}
!394 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 75, i32 2}
!395 = !{ptr @vidioc_enum_framesizes.sizes, !396, !"sizes", i1 false, i1 false}
!396 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1335, i32 44}
!397 = !{ptr @.str.202, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1158, i32 3}
!399 = !{ptr @.str.203, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @mmal_setup_components._entry, !398, !"_entry", i1 false, i1 false}
!401 = !{ptr @mmal_setup_components._entry_ptr, !398, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.205, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1168, i32 4}
!404 = !{ptr @mmal_setup_components._entry.204, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @mmal_setup_components._entry_ptr.206, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.208, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1243, i32 3}
!408 = !{ptr @mmal_setup_components._entry.207, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @mmal_setup_components._entry_ptr.209, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.211, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1276, i32 2}
!412 = !{ptr @mmal_setup_components._entry.210, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @mmal_setup_components._entry_ptr.212, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.213, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1066, i32 2}
!416 = !{ptr @.str.214, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @mmal_setup_encode_component._entry, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @mmal_setup_encode_component._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.216, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1076, i32 3}
!421 = !{ptr @mmal_setup_encode_component._entry.215, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @mmal_setup_encode_component._entry_ptr.217, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.219, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1110, i32 3}
!425 = !{ptr @mmal_setup_encode_component._entry.218, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @mmal_setup_encode_component._entry_ptr.220, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.222, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1121, i32 3}
!429 = !{ptr @mmal_setup_encode_component._entry.221, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @mmal_setup_encode_component._entry_ptr.223, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.225, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1130, i32 3}
!433 = !{ptr @mmal_setup_encode_component._entry.224, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @mmal_setup_encode_component._entry_ptr.226, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.228, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1138, i32 2}
!437 = !{ptr @mmal_setup_encode_component._entry.227, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @mmal_setup_encode_component._entry_ptr.229, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @default_v4l2_format, !440, !"default_v4l2_format", i1 false, i1 false}
!440 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1838, i32 27}
!441 = !{ptr @gdev, !442, !"gdev", i1 false, i1 false}
!442 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 67, i32 33}
!443 = !{ptr @.str.231, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1803, i32 2}
!445 = !{ptr @.str.232, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @bcm2835_cleanup_instance._entry, !444, !"_entry", i1 false, i1 false}
!447 = !{ptr @bcm2835_cleanup_instance._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.234, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c", i32 1809, i32 3}
!450 = !{ptr @bcm2835_cleanup_instance._entry.233, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @bcm2835_cleanup_instance._entry_ptr.235, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{i32 1, !"wchar_size", i32 2}
!453 = !{i32 1, !"min_enum_size", i32 4}
!454 = !{i32 8, !"branch-target-enforcement", i32 0}
!455 = !{i32 8, !"sign-return-address", i32 0}
!456 = !{i32 8, !"sign-return-address-all", i32 0}
!457 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!458 = !{i32 7, !"uwtable", i32 1}
!459 = !{i32 7, !"frame-pointer", i32 2}
!460 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!461 = !{!"auto-init"}
!462 = !{i8 0, i8 2}
!463 = !{!"branch_weights", i32 2000, i32 1}
