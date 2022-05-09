; ModuleID = '/llk/IR_all_yes/drivers/media/platform/via-camera.c_pt.bc'
source_filename = "../drivers/media/platform/via-camera.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov7670_config = type { i32, i32, i32, i8, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
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
%struct.viafb_pm_hooks = type { %struct.list_head, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.viafb_dev = type { ptr, i32, ptr, %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.via_camera = type { %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, ptr, ptr, ptr, %struct.mutex, i32, i32, %struct.pm_qos_request, i32, i32, ptr, ptr, i32, [3 x i32], [3 x ptr], i32, %struct.vb2_queue, %struct.list_head, i32, %struct.v4l2_pix_format, %struct.v4l2_pix_format, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.85 = type { ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.93, i32 }
%union.anon.93 = type { i32 }
%struct.via_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.121, i16, i16, i16, [10 x i16] }
%union.anon.121 = type { i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.100 }
%union.anon.100 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.102, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.102 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.117, [2 x i32] }
%union.anon.117 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.118, [2 x i32] }
%union.anon.118 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_state = type { ptr }

@__UNIQUE_ID_alias300 = internal constant [39 x i8] c"via_camera.alias=platform:viafb-camera\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [51 x i8] c"via_camera.author=Jonathan Corbet <corbet@lwn.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [70 x i8] c"via_camera.description=VIA framebuffer-based camera controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [50 x i8] c"via_camera.file=drivers/media/platform/via-camera\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [23 x i8] c"via_camera.license=GPL\00", section ".modinfo", align 1
@__param_str_flip_image = internal constant [22 x i8] c"via_camera.flip_image\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@flip_image = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_flip_image = internal constant %struct.kernel_param { ptr @__param_str_flip_image, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @flip_image } }, section "__param", align 4
@__UNIQUE_ID_flip_imagetype305 = internal constant [36 x i8] c"via_camera.parmtype=flip_image:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_flip_image306 = internal constant [95 x i8] c"via_camera.parm=flip_image:If set, the sensor will be instructed to flip the image vertically.\00", section ".modinfo", align 1
@__param_str_override_serial = internal constant [27 x i8] c"via_camera.override_serial\00", align 1
@override_serial = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_override_serial = internal constant %struct.kernel_param { ptr @__param_str_override_serial, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @override_serial } }, section "__param", align 4
@__UNIQUE_ID_override_serialtype307 = internal constant [41 x i8] c"via_camera.parmtype=override_serial:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_override_serial308 = internal constant [162 x i8] c"via_camera.parm=override_serial:The camera driver will normally refuse to load if the XO 1.5 serial port is enabled.  Set this option to force-enable the camera.\00", section ".modinfo", align 1
@__initcall__kmod_via_camera__310_1323_viacam_driver_init6 = internal global ptr @viacam_driver_init, section ".initcall6.init", align 4
@viacam_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @viacam_probe, ptr @viacam_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_viacam_driver_exit = internal global ptr @viacam_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"viafb-camera\00", [19 x i8] zeroinitializer }, align 32
@sensor_cfg = internal global { %struct.ov7670_config, [16 x i8] } { %struct.ov7670_config { i32 0, i32 0, i32 90, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@__const.viacam_probe.ov7670_info = private unnamed_addr constant %struct.i2c_board_info { [20 x i8] c"ov7670\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 33, ptr null, ptr @sensor_cfg, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@viacam_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013viacam: insufficient FB memory reserved\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"viacam_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/platform/via-camera.c\00", [60 x i8] zeroinitializer }, align 32
@viacam_probe._entry_ptr = internal global ptr @viacam_probe._entry, section ".printk_index", align 4
@viacam_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013viacam: No I/O memory, so no pictures\0A\00", [55 x i8] zeroinitializer }, align 32
@viacam_probe._entry_ptr.6 = internal global ptr @viacam_probe._entry.4, section ".printk_index", align 4
@via_cam_info = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@viacam_def_pix_format = internal constant { %struct.v4l2_pix_format, [48 x i8] } { %struct.v4l2_pix_format { i32 640, i32 480, i32 1448695129, i32 1, i32 1280, i32 614400, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@viacam_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cam->lock\00", [21 x i8] zeroinitializer }, align 32
@viacam_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1200, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@viacam_probe._entry_ptr.12 = internal global ptr @viacam_probe._entry.8, section ".printk_index", align 4
@viacam_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"via_camera:1203:(&cam->ctrl_handler)->_lock\00", [52 x i8] zeroinitializer }, align 32
@viacam_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1234, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to find the sensor!\0A\00", [36 x i8] zeroinitializer }, align 32
@viacam_probe._entry_ptr.16 = internal global ptr @viacam_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"via-camera\00", [21 x i8] zeroinitializer }, align 32
@viacam_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @viacam_vb2_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @viacam_vb2_prepare, ptr null, ptr null, ptr @viacam_vb2_start_streaming, ptr @viacam_vb2_stop_streaming, ptr @viacam_vb2_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@viacam_v4l_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @viacam_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"via-camera\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @viacam_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@viacam_pm_hooks = internal global { %struct.viafb_pm_hooks, [44 x i8] } { %struct.viafb_pm_hooks { %struct.list_head zeroinitializer, ptr @viacam_suspend, ptr @viacam_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGPIO3\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGPIO2\00", [25 x i8] zeroinitializer }, align 32
@via_sensor_power_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 188, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to find GPIO lines\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"via_sensor_power_setup\00", [41 x i8] zeroinitializer }, align 32
@via_sensor_power_setup._entry_ptr = internal global ptr @via_sensor_power_setup._entry, section ".printk_index", align 4
@via_sensor_power_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 193, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to request power GPIO\0A\00", [34 x i8] zeroinitializer }, align 32
@via_sensor_power_setup._entry_ptr.24 = internal global ptr @via_sensor_power_setup._entry.22, section ".printk_index", align 4
@via_sensor_power_setup._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 198, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to request reset GPIO\0A\00", [34 x i8] zeroinitializer }, align 32
@via_sensor_power_setup._entry_ptr.27 = internal global ptr @via_sensor_power_setup._entry.25, section ".printk_index", align 4
@viacam_vb2_prepare.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"via_camera\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"viacam_vb2_prepare\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Plane size too small (%lu < %u)\0A\00", [63 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@viacam_ctlr_cbufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 425, ptr @.str.34, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Insufficient frame buffer memory\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"viacam_ctlr_cbufs\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@viacam_ctlr_cbufs._entry_ptr = internal global ptr @viacam_ctlr_cbufs._entry, section ".printk_index", align 4
@viacam_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @viacam_open, ptr @viacam_release }, [60 x i8] zeroinitializer }, align 32
@viacam_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @viacam_querycap, ptr @viacam_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @viacam_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @viacam_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @viacam_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @viacam_enum_input, ptr @viacam_g_input, ptr @viacam_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @viacam_g_parm, ptr @viacam_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @viacam_enum_framesizes, ptr @viacam_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"platform:via-camera\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"flip_image\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 45, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"override_serial\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 50, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"viacam_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1315, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1317, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"sensor_cfg\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1132, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1166, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1170, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"via_cam_info\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 116, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"viacam_def_pix_format\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 780, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1188, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1200, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1203, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1234, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1243, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"viacam_vb2_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 674, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"viacam_v4l_template\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1088, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"viacam_pm_hooks\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1077, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 185, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 186, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 188, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 193, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 198, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 593, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1163, i32 7 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 425, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"viacam_fops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 734, i32 42 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"viacam_ioctl_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 996, i32 36 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 923, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [39 x i8] c"../drivers/media/platform/via-camera.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 759, i32 23 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_flip_image306, ptr @__UNIQUE_ID_flip_imagetype305, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_override_serial308, ptr @__UNIQUE_ID_override_serialtype307, ptr @__exitcall_viacam_driver_exit, ptr @__initcall__kmod_via_camera__310_1323_viacam_driver_init6, ptr @__param_flip_image, ptr @__param_override_serial, ptr @via_sensor_power_setup._entry, ptr @via_sensor_power_setup._entry.22, ptr @via_sensor_power_setup._entry.25, ptr @via_sensor_power_setup._entry_ptr, ptr @via_sensor_power_setup._entry_ptr.24, ptr @via_sensor_power_setup._entry_ptr.27, ptr @viacam_ctlr_cbufs._entry, ptr @viacam_ctlr_cbufs._entry_ptr, ptr @viacam_driver_exit, ptr @viacam_probe._entry, ptr @viacam_probe._entry.14, ptr @viacam_probe._entry.4, ptr @viacam_probe._entry.8, ptr @viacam_probe._entry_ptr, ptr @viacam_probe._entry_ptr.12, ptr @viacam_probe._entry_ptr.16, ptr @viacam_probe._entry_ptr.6, ptr @flip_image, ptr @override_serial, ptr @viacam_driver, ptr @.str, ptr @sensor_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @via_cam_info, ptr @viacam_def_pix_format, ptr @viacam_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @viacam_probe._key, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @viacam_vb2_ops, ptr @viacam_v4l_template, ptr @viacam_pm_hooks, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @viacam_fops, ptr @viacam_ioctl_ops, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flip_image to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @override_serial to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_cam_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_def_pix_format to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_v4l_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_pm_hooks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sensor_power_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sensor_power_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sensor_power_setup._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_ctlr_cbufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viacam_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @viacam_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @viacam_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @viacam_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ov7670_info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ov7670_info) #12
  %2 = call ptr @memcpy(ptr %ov7670_info, ptr @__const.viacam_probe.ov7670_info, i32 56)
  %camera_fbmem_size = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %camera_fbmem_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %camera_fbmem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1228800, i32 %4)
  %cmp = icmp slt i32 %4, 1228800
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %engine_mmio = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %engine_mmio, align 4
  %cmp1 = icmp eq ptr %6, null
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2472) #16
  %cmp10 = icmp eq ptr %call7.i.i, null
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  store ptr %call7.i.i, ptr @via_cam_info, align 4
  %platdev = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %platdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %platdev, align 4
  %viadev13 = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %viadev13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %viadev13, align 8
  %opstate = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %opstate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %opstate, align 8
  %user_format = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 22
  %sensor_format = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 21
  %11 = call ptr @memcpy(ptr %sensor_format, ptr @viacam_def_pix_format, i32 48)
  %12 = call ptr @memcpy(ptr %user_format, ptr @viacam_def_pix_format, i32 48)
  %lock = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @viacam_probe.__key) #12
  %buffer_queue = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %buffer_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %buffer_queue, ptr %buffer_queue, align 8
  %prev.i = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buffer_queue, ptr %prev.i, align 4
  %15 = ptrtoint ptr %engine_mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %engine_mmio, align 4
  %mmio = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %mmio, align 8
  %fbmem = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %fbmem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fbmem, align 4
  %fbmem18 = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 13
  %20 = ptrtoint ptr %fbmem18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %fbmem18, align 4
  %camera_fbmem_offset = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %camera_fbmem_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %camera_fbmem_offset, align 4
  %fb_offset = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 14
  %23 = ptrtoint ptr %fb_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fb_offset, align 8
  %flags = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %flags, align 4
  %mbus_code = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 23
  %25 = ptrtoint ptr %mbus_code to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8200, ptr %mbus_code, align 4
  %call20 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #15
  br label %out_free

if.end26:                                         ; preds = %if.end12
  %ctrl_handler = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 1
  %call28 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 10, ptr noundef nonnull @viacam_probe._key, ptr noundef nonnull @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.out_unregister_crit_edge

if.end26.out_unregister_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unregister

if.end31:                                         ; preds = %if.end26
  %ctrl_handler34 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %ctrl_handler34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ctrl_handler, ptr %ctrl_handler34, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %dma_mask = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 28
  %dma_mask37 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %29 = ptrtoint ptr %dma_mask37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dma_mask, ptr %dma_mask37, align 8
  %call39 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !122
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 120) #12, !srcloc !123
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #12, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  tail call void @arm_heavy_mb() #12
  %and15.i = and i8 %30, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i) #12, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !122
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #12, !srcloc !123
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #12, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  tail call void @arm_heavy_mb() #12
  %or.i = or i8 %31, -64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #12, !srcloc !123
  %call.i = tail call i32 @viafb_gpio_lookup(ptr noundef nonnull @.str.18) #12
  %power_gpio.i = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i, ptr %power_gpio.i, align 8
  %call1.i = tail call i32 @viafb_gpio_lookup(ptr noundef nonnull @.str.19) #12
  %reset_gpio.i = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 11
  %33 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call1.i, ptr %reset_gpio.i, align 4
  %34 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %power_gpio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %35)
  %36 = icmp ult i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call1.i)
  %37 = icmp ult i32 %call1.i, 2048
  %or.cond.i = select i1 %36, i1 %37, i1 false
  br i1 %or.cond.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %platdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #15
  br label %out_ctrl_hdl_free

if.end.i:                                         ; preds = %if.end31
  %call7.i = tail call i32 @gpio_request(i32 noundef %35, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %platdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %platdev, align 4
  %dev13.i = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.23) #15
  br label %out_ctrl_hdl_free

if.end14.i:                                       ; preds = %if.end.i
  %42 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reset_gpio.i, align 4
  %call16.i = tail call i32 @gpio_request(i32 noundef %43, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end43, label %do.end21.i

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %platdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %platdev, align 4
  %dev23.i = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.26) #15
  %46 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %power_gpio.i, align 8
  tail call void @gpio_free(i32 noundef %47) #12
  br label %out_ctrl_hdl_free

if.end43:                                         ; preds = %if.end14.i
  %48 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %power_gpio.i, align 8
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %49) #12
  %call1.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i, i32 noundef 0) #12
  %50 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reset_gpio.i, align 4
  %call.i44.i = tail call ptr @gpio_to_desc(i32 noundef %51) #12
  %call1.i45.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i44.i, i32 noundef 0) #12
  %52 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %power_gpio.i, align 8
  %call.i.i165 = tail call ptr @gpio_to_desc(i32 noundef %53) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i165, i32 noundef 1) #12
  %54 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reset_gpio.i, align 4
  %call.i4.i = tail call ptr @gpio_to_desc(i32 noundef %55) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i4.i, i32 noundef 0) #12
  tail call void @msleep(i32 noundef 20) #12
  %56 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reset_gpio.i, align 4
  %call.i5.i = tail call ptr @gpio_to_desc(i32 noundef %57) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i5.i, i32 noundef 1) #12
  tail call void @msleep(i32 noundef 20) #12
  %call44 = tail call ptr @viafb_find_i2c_adapter(i32 noundef 1) #12
  %call46 = call ptr @v4l2_i2c_new_subdev_board(ptr noundef nonnull %call7.i.i, ptr noundef %call44, ptr noundef nonnull %ov7670_info, ptr noundef null) #12
  %sensor = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call46, ptr %sensor, align 8
  %cmp48 = icmp eq ptr %call46, null
  br i1 %cmp48, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #15
  br label %out_power_down

if.end54:                                         ; preds = %if.end43
  call void @viafb_irq_disable(i32 noundef 268435456) #12
  %59 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio, align 8
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 768
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !128
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 46
  %63 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq, align 4
  %call56 = call i32 @request_threaded_irq(i32 noundef %64, ptr noundef nonnull @viacam_quick_irq, ptr noundef nonnull @viacam_irq, i32 noundef 128, ptr noundef nonnull @.str.17, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.out_power_down_crit_edge

if.end54.out_power_down_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_power_down

if.end59:                                         ; preds = %if.end54
  %vq60 = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 18
  %65 = ptrtoint ptr %vq60 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %vq60, align 8
  %io_modes = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 18, i32 1
  %66 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 23, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 18, i32 10
  %67 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %drv_priv, align 8
  %timestamp_flags = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 18, i32 13
  %68 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 8192, ptr %timestamp_flags, align 4
  %buf_struct_size = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 18, i32 12
  %69 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 744, ptr %buf_struct_size, align 8
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call7.i.i, align 8
  %dev63 = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 18, i32 2
  %72 = ptrtoint ptr %dev63 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %dev63, align 8
  %ops = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 18, i32 7
  %73 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @viacam_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 18, i32 8
  %74 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 8
  %lock65 = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 18, i32 5
  %75 = ptrtoint ptr %lock65 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %lock, ptr %lock65, align 4
  %call66 = call i32 @vb2_queue_init(ptr noundef %vq60) #12
  %vdev = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 2
  %76 = call ptr @memcpy(ptr %vdev, ptr @viacam_v4l_template, i32 1352)
  %v4l2_dev69 = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 2, i32 7
  %77 = ptrtoint ptr %v4l2_dev69 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i, ptr %v4l2_dev69, align 4
  %lock72 = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 2, i32 26
  %78 = ptrtoint ptr %lock72 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %lock, ptr %lock72, align 8
  %queue = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 2, i32 10
  %79 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %vq60, ptr %queue, align 8
  %driver_data.i.i = getelementptr inbounds %struct.via_camera, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 8
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call.i167 = call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool77.not = icmp eq i32 %call.i167, 0
  br i1 %tobool77.not, label %if.end79, label %out_irq

if.end79:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.viafb_pm_hooks, ptr @viacam_pm_hooks, i32 0, i32 3), align 4
  call void @viafb_pm_register(ptr noundef nonnull @viacam_pm_hooks) #12
  call fastcc void @via_sensor_power_down(ptr noundef nonnull %call7.i.i)
  br label %cleanup

out_irq:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %irq81 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 46
  %83 = ptrtoint ptr %irq81 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq81, align 4
  %call82 = call ptr @free_irq(i32 noundef %84, ptr noundef nonnull %call7.i.i) #12
  br label %out_power_down

out_power_down:                                   ; preds = %out_irq, %if.end54.out_power_down_crit_edge, %do.end52
  %ret.0 = phi i32 [ -19, %do.end52 ], [ %call56, %if.end54.out_power_down_crit_edge ], [ %call.i167, %out_irq ]
  %85 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %power_gpio.i, align 8
  %call.i.i.i = call ptr @gpio_to_desc(i32 noundef %86) #12
  call void @gpiod_set_raw_value(ptr noundef %call.i.i.i, i32 noundef 0) #12
  %87 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reset_gpio.i, align 4
  %call.i2.i.i = call ptr @gpio_to_desc(i32 noundef %88) #12
  call void @gpiod_set_raw_value(ptr noundef %call.i2.i.i, i32 noundef 0) #12
  %89 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %power_gpio.i, align 8
  call void @gpio_free(i32 noundef %90) #12
  %91 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %reset_gpio.i, align 4
  call void @gpio_free(i32 noundef %92) #12
  br label %out_ctrl_hdl_free

out_ctrl_hdl_free:                                ; preds = %out_power_down, %do.end21.i, %do.end11.i, %do.end.i
  %ret.1 = phi i32 [ %ret.0, %out_power_down ], [ -22, %do.end.i ], [ %call16.i, %do.end21.i ], [ %call7.i, %do.end11.i ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  br label %out_unregister

out_unregister:                                   ; preds = %out_ctrl_hdl_free, %if.end26.out_unregister_crit_edge
  %ret.2 = phi i32 [ %call28, %if.end26.out_unregister_crit_edge ], [ %ret.1, %out_ctrl_hdl_free ]
  call void @v4l2_device_unregister(ptr noundef nonnull %call7.i.i) #12
  br label %out_free

out_free:                                         ; preds = %out_unregister, %do.end24
  %ret.3 = phi i32 [ %call20, %do.end24 ], [ %ret.2, %out_unregister ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end79, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %do.end5 ], [ %ret.3, %out_free ], [ 0, %if.end79 ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ov7670_info) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @via_cam_info, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %vdev = getelementptr inbounds %struct.via_camera, ptr %0, i32 0, i32 2
  tail call void @video_unregister_device(ptr noundef %vdev) #12
  tail call void @v4l2_device_unregister(ptr noundef %0) #12
  tail call void @viafb_pm_unregister(ptr noundef nonnull @viacam_pm_hooks) #12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %6, ptr noundef %0) #12
  %power_gpio.i.i = getelementptr inbounds %struct.via_camera, ptr %0, i32 0, i32 10
  %7 = ptrtoint ptr %power_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_gpio.i.i, align 8
  %call.i.i.i = tail call ptr @gpio_to_desc(i32 noundef %8) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i, i32 noundef 0) #12
  %reset_gpio.i.i = getelementptr inbounds %struct.via_camera, ptr %0, i32 0, i32 11
  %9 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_gpio.i.i, align 4
  %call.i2.i.i = tail call ptr @gpio_to_desc(i32 noundef %10) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i2.i.i, i32 noundef 0) #12
  %11 = ptrtoint ptr %power_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %power_gpio.i.i, align 8
  tail call void @gpio_free(i32 noundef %12) #12
  %13 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reset_gpio.i.i, align 4
  tail call void @gpio_free(i32 noundef %14) #12
  %ctrl_handler = getelementptr inbounds %struct.via_camera, ptr %0, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  tail call void @kfree(ptr noundef %0) #12
  store ptr null, ptr @via_cam_info, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @viafb_find_i2c_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_quick_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %viadev = getelementptr inbounds %struct.via_camera, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %viadev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %viadev, align 8
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %mmio.i = getelementptr inbounds %struct.via_camera, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 768
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !129
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %5, 131
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %7, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %8) #12, !srcloc !128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %viadev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %viadev, align 8
  %reg_lock2 = getelementptr inbounds %struct.viafb_dev, ptr %10, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock2) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.via_camera, ptr %data, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %opstate.i = getelementptr inbounds %struct.via_camera, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %opstate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opstate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end.i:                                         ; preds = %entry
  %buffer_queue.i = getelementptr inbounds %struct.via_camera, ptr %data, i32 0, i32 19
  %2 = ptrtoint ptr %buffer_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %buffer_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %buffer_queue.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -736
  %cmp = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %cmp.i.not.i, %cmp
  br i1 %or.cond, label %if.end.i.done_crit_edge, label %if.end

if.end.i.done_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end:                                           ; preds = %if.end.i
  %mmio.i = getelementptr inbounds %struct.via_camera, ptr %data, i32 0, i32 12
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %5, i32 768
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #12, !srcloc !129
  %7 = lshr i32 %6, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %8 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %n_cap_bufs = getelementptr inbounds %struct.via_camera, ptr %data, i32 0, i32 17
  %9 = ptrtoint ptr %n_cap_bufs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_cap_bufs, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %bufn.0.in = phi i32 [ %10, %if.then3 ], [ %8, %if.end.if.end5_crit_edge ]
  %bufn.0 = add i32 %bufn.0.in, -1
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #12
  %call.i33 = tail call i64 @ktime_get() #12
  %timestamp = getelementptr i8, ptr %3, i32 -712
  %11 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i33, ptr %timestamp, align 8
  %arrayidx = getelementptr %struct.via_camera, ptr %data, i32 0, i32 15, i32 %bufn.0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nents, align 4
  %call10 = tail call i32 @viafb_dma_copy_out_sg(i32 noundef %13, ptr noundef %15, i32 noundef %17) #12
  %sequence = getelementptr inbounds %struct.via_camera, ptr %data, i32 0, i32 20
  %18 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sequence, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %sequence, align 8
  %sequence12 = getelementptr i8, ptr %3, i32 -272
  %20 = ptrtoint ptr %sequence12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sequence12, align 8
  %field = getelementptr i8, ptr %3, i32 -292
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_del.exit_crit_edge

if.end5.list_del.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end5.list_del.exit_crit_edge
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr.i, i32 noundef 5) #12
  br label %done

done:                                             ; preds = %list_del.exit, %if.end.i.done_crit_edge, %entry.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_pm_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_sensor_power_down(ptr nocapture noundef readonly %cam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %power_gpio = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 10
  %0 = ptrtoint ptr %power_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_gpio, align 8
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #12
  %reset_gpio = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 11
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reset_gpio, align 4
  %call.i2 = tail call ptr @gpio_to_desc(i32 noundef %3) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i2, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_gpio_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_irq_disable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_dma_copy_out_sg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @viacam_vb2_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbufs, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 22, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp = icmp ult i32 %7, %3
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_planes, align 4
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_vb2_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  %sizeimage = getelementptr inbounds %struct.via_camera, ptr %3, i32 0, i32 22, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.do.body_crit_edge

vb2_plane_size.exit.do.body_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  %sizeimage31 = getelementptr inbounds %struct.via_camera, ptr %3, i32 0, i32 22, i32 5
  %10 = ptrtoint ptr %sizeimage31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sizeimage31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp32 = icmp ult i32 %9, %11
  br i1 %cmp32, label %vb2_plane_size.exit.thread.do.body_crit_edge, label %if.then.i28

vb2_plane_size.exit.thread.do.body_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %vb2_plane_size.exit.thread.do.body_crit_edge, %vb2_plane_size.exit.do.body_crit_edge
  %sizeimage33 = phi ptr [ %sizeimage31, %vb2_plane_size.exit.thread.do.body_crit_edge ], [ %sizeimage, %vb2_plane_size.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @viacam_vb2_prepare.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@viacam_vb2_prepare, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !131

if.then5:                                         ; preds = %do.body
  %platdev = getelementptr inbounds %struct.via_camera, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %platdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i20 = icmp eq i32 %15, 0
  br i1 %cmp.not.i20, label %if.then5.vb2_plane_size.exit24_crit_edge, label %if.then.i22

if.then5.vb2_plane_size.exit24_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit24

if.then.i22:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %length.i21 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %16 = ptrtoint ptr %length.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i21, align 8
  br label %vb2_plane_size.exit24

vb2_plane_size.exit24:                            ; preds = %if.then.i22, %if.then5.vb2_plane_size.exit24_crit_edge
  %retval.0.i23 = phi i32 [ %17, %if.then.i22 ], [ 0, %if.then5.vb2_plane_size.exit24_crit_edge ]
  %18 = ptrtoint ptr %sizeimage33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizeimage33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @viacam_vb2_prepare.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i23, i32 noundef %19) #12
  br label %cleanup

if.then.i28:                                      ; preds = %vb2_plane_size.exit.thread
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %11)
  %cmp1.i = icmp ult i32 %21, %11
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i28.if.end42.i_crit_edge

if.then.i28.if.end42.i_crit_edge:                 ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i28
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !132

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i28.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %23, %if.then38.i ], [ %11, %if.then.i28.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %24 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit24, %do.body, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit24 ], [ -22, %do.body ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_vb2_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %opstate = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %opstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opstate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then2

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @viacam_configure_sensor(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %if.then2
  %call7 = tail call fastcc i32 @viacam_config_controller(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %if.end6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %sequence = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sequence, align 8
  %qos_request = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 9
  tail call void @cpu_latency_qos_add_request(ptr noundef %qos_request, i32 noundef 50) #12
  %viadev.i = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %viadev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %viadev.i, align 8
  %reg_lock.i = getelementptr inbounds %struct.viafb_dev, ptr %9, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  %mmio.i.i.i = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 784
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %13 = or i32 %12, 16777216
  %14 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %15, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %13) #12, !srcloc !128
  %16 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i9.i = getelementptr i8, ptr %17, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 -2097086464) #12, !srcloc !128
  tail call void @viafb_irq_enable(i32 noundef 268435456) #12
  %18 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 784
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %21 = ptrtoint ptr %opstate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %opstate, align 8
  %22 = ptrtoint ptr %viadev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %viadev.i, align 8
  %reg_lock2.i = getelementptr inbounds %struct.viafb_dev, ptr %23, i32 0, i32 3
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock2.i) #12
  br label %cleanup

out:                                              ; preds = %if.end6.out_crit_edge, %if.then2.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then2.out_crit_edge ], [ %call7, %if.end6.out_crit_edge ], [ -16, %entry.out_crit_edge ]
  %buffer_queue = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %buffer_queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer_queue, align 8
  %cmp19.not44 = icmp eq ptr %25, %buffer_queue
  br i1 %cmp19.not44, label %out.cleanup_crit_edge, label %out.for.body_crit_edge

out.for.body_crit_edge:                           ; preds = %out
  br label %for.body

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %out.for.body_crit_edge
  %.pn.in45 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %25, %out.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in45, i32 -736
  %26 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn.in45, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in45) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn.in45, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %33 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in45, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #12
  %cmp19.not = icmp eq ptr %.pn, %buffer_queue
  br i1 %cmp19.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %out.cleanup_crit_edge, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.0, %list_del.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @viacam_vb2_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %qos_request = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %qos_request) #12
  %viadev.i = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %viadev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %viadev.i, align 8
  %reg_lock.i = getelementptr inbounds %struct.viafb_dev, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  tail call void @viafb_irq_disable(i32 noundef 268435456) #12
  %mmio.i.i.i = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #12, !srcloc !128
  %6 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i9.i = getelementptr i8, ptr %7, i32 784
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %11, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %9) #12, !srcloc !128
  %12 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 784
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %opstate.i = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %opstate.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %opstate.i, align 8
  %16 = ptrtoint ptr %viadev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %viadev.i, align 8
  %reg_lock2.i = getelementptr inbounds %struct.viafb_dev, ptr %17, i32 0, i32 3
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock2.i) #12
  %buffer_queue = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %buffer_queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer_queue, align 8
  %cmp.not22 = icmp eq ptr %19, %buffer_queue
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in23 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %19, %entry.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in23, i32 -736
  %20 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn.in23, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in23, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %27 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 6) #12
  %cmp.not = icmp eq ptr %.pn, %buffer_queue
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @viacam_vb2_queue(ptr noundef %vb) #2 align 64 {
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
  %queue = getelementptr inbounds %struct.via_buffer, ptr %vb, i32 0, i32 1
  %buffer_queue = getelementptr inbounds %struct.via_camera, ptr %3, i32 0, i32 19
  %prev.i = getelementptr inbounds %struct.via_camera, ptr %3, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %5, ptr noundef %buffer_queue) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffer_queue, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.via_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @viacam_configure_sensor(ptr nocapture noundef readonly %cam) unnamed_addr #2 align 64 {
entry:
  %ctrl.i = alloca %struct.v4l2_control, align 8
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #12
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %sensor_format = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21
  %mbus_code = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 23
  %3 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbus_code, align 4
  %5 = ptrtoint ptr %sensor_format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sensor_format, align 4
  %7 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %format1, align 4
  %height.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21, i32 3
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21, i32 6
  %14 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %colorspace4.i, align 4
  %17 = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21, i32 9
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %conv.i = trunc i32 %19 to i16
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %20, align 4
  %quantization.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21, i32 10
  %22 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %23 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21, i32 11
  %25 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %26 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %27 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %4, ptr %code9.i, align 4
  %sensor = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 3
  %29 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %entry.if.end56_crit_edge, label %if.else

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool2.not = icmp eq ptr %34, null
  br i1 %tobool2.not, label %if.else.if.end56_crit_edge, label %land.lhs.true

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

land.lhs.true:                                    ; preds = %if.else
  %init = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init, align 4
  %tobool5.not = icmp eq ptr %36, null
  br i1 %tobool5.not, label %land.lhs.true.if.end56_crit_edge, label %if.else7

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %37 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool8.not = icmp eq ptr %37, null
  br i1 %tobool8.not, label %if.else7.if.else14_crit_edge, label %land.lhs.true9

if.else7.if.else14_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14

land.lhs.true9:                                   ; preds = %if.else7
  %init10 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %init10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init10, align 4
  %tobool11.not = icmp eq ptr %39, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else14_crit_edge, label %land.lhs.true9.if.end20_crit_edge

land.lhs.true9.if.end20_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true9.if.else14_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true9.if.else14_crit_edge, %if.else7.if.else14_crit_edge
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %land.lhs.true9.if.end20_crit_edge
  %.sink = phi ptr [ %36, %if.else14 ], [ %39, %land.lhs.true9.if.end20_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %30, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp eq i32 %call18, 0
  br i1 %cmp, label %if.then21, label %if.end20.if.end56_crit_edge

if.end20.if.end56_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then21:                                        ; preds = %if.end20
  %40 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sensor, align 8
  %tobool25.not = icmp eq ptr %41, null
  br i1 %tobool25.not, label %if.then21.if.end56_crit_edge, label %if.else27

if.then21.if.end56_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.else27:                                        ; preds = %if.then21
  %ops28 = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %ops28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops28, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pad, align 4
  %tobool29.not = icmp eq ptr %45, null
  br i1 %tobool29.not, label %if.else27.if.end56_crit_edge, label %land.lhs.true30

if.else27.if.end56_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

land.lhs.true30:                                  ; preds = %if.else27
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_fmt, align 4
  %tobool33.not = icmp eq ptr %47, null
  br i1 %tobool33.not, label %land.lhs.true30.if.end56_crit_edge, label %if.else35

land.lhs.true30.if.end56_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.else35:                                        ; preds = %land.lhs.true30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool36.not = icmp eq ptr %48, null
  br i1 %tobool36.not, label %if.else35.if.else43_crit_edge, label %land.lhs.true37

if.else35.if.else43_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else43

land.lhs.true37:                                  ; preds = %if.else35
  %set_fmt38 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %set_fmt38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_fmt38, align 4
  %tobool39.not = icmp eq ptr %50, null
  br i1 %tobool39.not, label %land.lhs.true37.if.else43_crit_edge, label %land.lhs.true37.if.end52_crit_edge

land.lhs.true37.if.end52_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true37.if.else43_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else43

if.else43:                                        ; preds = %land.lhs.true37.if.else43_crit_edge, %if.else35.if.else43_crit_edge
  br label %if.end52

if.end52:                                         ; preds = %if.else43, %land.lhs.true37.if.end52_crit_edge
  %.sink84 = phi ptr [ %47, %if.else43 ], [ %50, %land.lhs.true37.if.end52_crit_edge ]
  %call42 = call i32 %.sink84(ptr noundef nonnull %41, ptr noundef null, ptr noundef nonnull %format) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp53 = icmp eq i32 %call42, 0
  br i1 %cmp53, label %if.then54, label %if.end52.if.end56_crit_edge

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl.i) #12
  %51 = getelementptr inbounds %struct.v4l2_control, ptr %ctrl.i, i32 0, i32 1
  %52 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 42794182258982912, ptr %ctrl.i, align 8
  %53 = load i8, ptr @flip_image, align 1, !range !133
  %54 = zext i8 %53 to i32
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %51, align 4
  %56 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sensor, align 8
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctrl_handler.i, align 4
  %call.i = call i32 @v4l2_s_ctrl(ptr noundef null, ptr noundef %59, ptr noundef nonnull %ctrl.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl.i) #12
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52.if.end56_crit_edge, %land.lhs.true30.if.end56_crit_edge, %if.else27.if.end56_crit_edge, %if.then21.if.end56_crit_edge, %if.end20.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %if.else.if.end56_crit_edge, %entry.if.end56_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then54 ], [ %call42, %if.end52.if.end56_crit_edge ], [ -515, %if.else27.if.end56_crit_edge ], [ -515, %land.lhs.true30.if.end56_crit_edge ], [ -19, %if.then21.if.end56_crit_edge ], [ %call18, %if.end20.if.end56_crit_edge ], [ -515, %if.else.if.end56_crit_edge ], [ -515, %land.lhs.true.if.end56_crit_edge ], [ -19, %entry.if.end56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #12
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @viacam_config_controller(ptr noundef %cam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %viadev = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 5
  %0 = ptrtoint ptr %viadev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %viadev, align 8
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #12
  %2 = ptrtoint ptr %viadev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %viadev, align 8
  %camera_fbmem_size.i = getelementptr inbounds %struct.viafb_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %camera_fbmem_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %camera_fbmem_size.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21, i32 5
  %6 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage.i, align 4
  %div.i = udiv i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i)
  %cmp.i = icmp sgt i32 %div.i, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_cap_bufs.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 17
  %8 = ptrtoint ptr %n_cap_bufs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %n_cap_bufs.i, align 4
  %mmio.i.i.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 12
  %9 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 784
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %12 = or i32 %11, 67108864
  %13 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %14, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %12) #12, !srcloc !128
  br label %if.end5.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i)
  %cmp1.i = icmp eq i32 %div.i, 2
  br i1 %cmp1.i, label %if.then2.i, label %viacam_ctlr_cbufs.exit

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %n_cap_bufs3.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 17
  %15 = ptrtoint ptr %n_cap_bufs3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %n_cap_bufs3.i, align 4
  %mmio.i.i35.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 12
  %16 = ptrtoint ptr %mmio.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i35.i, align 8
  %add.ptr.i.i36.i = getelementptr i8, ptr %17, i32 784
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %19 = and i32 %18, -67108865
  %20 = ptrtoint ptr %mmio.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i35.i, align 8
  %add.ptr.i2.i38.i = getelementptr i8, ptr %21, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i38.i, i32 %19) #12, !srcloc !128
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.then.i
  %n_cap_bufs6.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 17
  %22 = ptrtoint ptr %n_cap_bufs6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_cap_bufs6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp739.i = icmp sgt i32 %23, 0
  br i1 %cmp739.i, label %for.body.lr.ph.i, label %if.end5.i.if.then_crit_edge

if.end5.i.if.then_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %fb_offset.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 14
  %24 = ptrtoint ptr %fb_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fb_offset.i, align 8
  %fbmem.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 13
  %mmio.i.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %offset.041.i = phi i32 [ %25, %for.body.lr.ph.i ], [ %add11.i, %for.body.i.for.body.i_crit_edge ]
  %i.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.via_camera, ptr %cam, i32 0, i32 15, i32 %i.040.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %offset.041.i, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %fbmem.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fbmem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %offset.041.i
  %arrayidx8.i = getelementptr %struct.via_camera, ptr %cam, i32 0, i32 16, i32 %i.040.i
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i, ptr %arrayidx8.i, align 4
  %mul.i = shl i32 %i.040.i, 2
  %add.i = add i32 %mul.i, 832
  %and.i = and i32 %offset.041.i, 536870896
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %32) #12, !srcloc !128
  %33 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sizeimage.i, align 4
  %add11.i = add i32 %34, %offset.041.i
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %35 = ptrtoint ptr %n_cap_bufs6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_cap_bufs6.i, align 4
  %cmp7.i = icmp slt i32 %inc.i, %36
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.then_crit_edge

for.body.i.if.then_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

viacam_ctlr_cbufs.exit:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %platdev.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 4
  %37 = ptrtoint ptr %platdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #15
  br label %if.end

if.then:                                          ; preds = %for.body.i.if.then_crit_edge, %if.end5.i.if.then_crit_edge
  %mmio.i.i14 = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 12
  %39 = ptrtoint ptr %mmio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i14, align 8
  %add.ptr.i.i15 = getelementptr i8, ptr %40, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 -16777345) #12, !srcloc !128
  %41 = ptrtoint ptr %mmio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i.i14, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %42, i32 788
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 536944646) #12, !srcloc !128
  %43 = ptrtoint ptr %mmio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i.i14, align 8
  %add.ptr.i28.i = getelementptr i8, ptr %44, i32 792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 56833) #12, !srcloc !128
  %user_format.i.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 22
  %45 = ptrtoint ptr %user_format.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %user_format.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %46)
  %cmp.i.i = icmp eq i32 %46, 640
  %mul.i.i = shl i32 %46, 11
  %div.i.i = udiv i32 %mul.i.i, 640
  %or.i.i = or i32 %div.i.i, 2048
  %avscale.0.i.i = select i1 %cmp.i.i, i32 0, i32 %or.i.i
  %height.i.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 22, i32 1
  %47 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %48)
  %cmp4.i.i = icmp ult i32 %48, 480
  %mul8.i.i = shl i32 %48, 10
  %div9.i.i = udiv i32 %mul8.i.i, 480
  %shl.i.i = shl i32 %div9.i.i, 16
  %or10.i.i = or i32 %shl.i.i, 67108864
  %or11.i.i = select i1 %cmp4.i.i, i32 %or10.i.i, i32 0
  %avscale.1.i.i = or i32 %or11.i.i, %avscale.0.i.i
  %49 = ptrtoint ptr %mmio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i.i14, align 8
  %add.ptr.i.i.i16 = getelementptr i8, ptr %50, i32 796
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  %51 = tail call i32 @llvm.bswap.i32(i32 %avscale.1.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i16, i32 %51) #12, !srcloc !128
  %height.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21, i32 1
  %52 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height.i, align 4
  %shl.i = shl i32 %53, 16
  %bytesperline.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 21, i32 4
  %54 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bytesperline.i, align 4
  %shr.i = lshr i32 %55, 3
  %or.i = or i32 %shr.i, %shl.i
  %56 = ptrtoint ptr %mmio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i.i14, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %57, i32 820
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %58) #12, !srcloc !128
  %59 = ptrtoint ptr %mmio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i.i14, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %60, i32 824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 0) #12, !srcloc !128
  %bytesperline2.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 22, i32 4
  %61 = ptrtoint ptr %bytesperline2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bytesperline2.i, align 4
  %and.i17 = and i32 %62, 8176
  %63 = ptrtoint ptr %mmio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i.i14, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %64, i32 848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  %65 = tail call i32 @llvm.bswap.i32(i32 %and.i17) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %65) #12, !srcloc !128
  %66 = ptrtoint ptr %n_cap_bufs6.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_cap_bufs6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.i19 = icmp eq i32 %67, 3
  %spec.select.i = select i1 %cmp.i19, i32 -2008014844, i32 -2008014848
  %pixelformat.i = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 22, i32 2
  %68 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %69)
  %cmp5.i = icmp eq i32 %69, 1448695129
  %or8.i = or i32 %spec.select.i, 256
  %cicreg.1.i = select i1 %cmp5.i, i32 %spec.select.i, i32 %or8.i
  %70 = ptrtoint ptr %mmio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i.i14, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %71, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  %72 = tail call i32 @llvm.bswap.i32(i32 %cicreg.1.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %72) #12, !srcloc !128
  br label %if.end

if.end:                                           ; preds = %if.then, %viacam_ctlr_cbufs.exit
  %retval.0.i22 = phi i32 [ 0, %if.then ], [ -12, %viacam_ctlr_cbufs.exit ]
  %73 = ptrtoint ptr %viadev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %viadev, align 8
  %reg_lock7 = getelementptr inbounds %struct.viafb_dev, ptr %74, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock7, i32 noundef %call2) #12
  %flags8 = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags8) #12
  ret i32 %retval.0.i22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_ctrl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_irq_enable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_open(ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %call1 = tail call i32 @v4l2_fh_open(ptr noundef %filp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i20 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool3.not = icmp eq i32 %call.i20, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.then4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @viafb_request_dma() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @v4l2_fh_release(ptr noundef %filp) #12
  br label %out

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %power_gpio.i = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_gpio.i, align 8
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %5) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #12
  %reset_gpio.i = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_gpio.i, align 4
  %call.i4.i = tail call ptr @gpio_to_desc(i32 noundef %7) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i4.i, i32 noundef 0) #12
  tail call void @msleep(i32 noundef 20) #12
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reset_gpio.i, align 4
  %call.i5.i = tail call ptr @gpio_to_desc(i32 noundef %9) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i5.i, i32 noundef 1) #12
  tail call void @msleep(i32 noundef 20) #12
  %flags = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  br label %out

out:                                              ; preds = %if.end9, %if.then7, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call5, %if.then7 ], [ 0, %if.end9 ], [ 0, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_release(ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i9 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not = icmp eq i32 %call.i9, 0
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %filp, ptr noundef null) #12
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %power_gpio.i = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_gpio.i, align 8
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %5) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #12
  %reset_gpio.i = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_gpio.i, align 4
  %call.i2.i = tail call ptr @gpio_to_desc(i32 noundef %7) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i2.i, i32 noundef 0) #12
  tail call void @viafb_release_dma() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_request_dma() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_release_dma() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_querycap(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.17, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.17, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.35, i32 noundef 32) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @viacam_enum_fmt_vid_cap(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat2 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1448695129, ptr %pixelformat2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_g_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %user_format = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 22
  %2 = call ptr @memcpy(ptr %fmt1, ptr %user_format, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_s_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  %sfmt = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %sfmt) #12
  %2 = call ptr @memset(ptr %sfmt, i32 255, i32 204)
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %opstate = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %opstate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opstate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt4 = getelementptr inbounds %struct.v4l2_format, ptr %sfmt, i32 0, i32 1
  %call5 = call fastcc i32 @viacam_do_try_fmt(ptr noundef %1, ptr noundef %fmt1, ptr noundef %fmt4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %user_format = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 22
  %5 = call ptr @memcpy(ptr %user_format, ptr %fmt1, i32 48)
  %sensor_format = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 21
  %6 = call ptr @memcpy(ptr %sensor_format, ptr %fmt4, i32 48)
  %mbus_code10 = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %mbus_code10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8200, ptr %mbus_code10, align 4
  %call11 = call fastcc i32 @viacam_configure_sensor(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = call fastcc i32 @viacam_config_controller(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call11, %if.end7.cleanup_crit_edge ], [ %call14, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %sfmt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_try_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  %sfmt = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %sfmt) #12
  %2 = call ptr @memset(ptr %sfmt, i32 255, i32 204)
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %sfmt, i32 0, i32 1
  %call3 = call fastcc i32 @viacam_do_try_fmt(ptr noundef %1, ptr noundef %fmt1, ptr noundef %fmt2)
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %sfmt) #12
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_enum_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.36, i32 noundef 32) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @viacam_g_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @viacam_s_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, i32 noundef %i) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_g_parm(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %filp) #12
  %sensor = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 8
  %call2 = tail call i32 @v4l2_g_parm_cap(ptr noundef %call1, ptr noundef %3, ptr noundef %parm) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_s_parm(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %filp) #12
  %sensor = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 8
  %call2 = tail call i32 @v4l2_s_parm_cap(ptr noundef %call1, ptr noundef %3, ptr noundef %parm) #12
  ret i32 %call2
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_enum_framesizes(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sizes) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %3)
  %cmp2.not = icmp eq i32 %3, 1448695129
  br i1 %cmp2.not, label %if.end7, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %5 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 176, ptr %5, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 3
  %7 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 144, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 640, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 480, ptr %max_height, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 5
  %10 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %step_height, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 2
  %11 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %step_width, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_enum_frameintervals(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %interval) #2 align 64 {
entry:
  %fie = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fie) #12
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interval, align 4
  %4 = ptrtoint ptr %fie to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fie, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pad, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %mbus_code = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbus_code, align 4
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %code, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %sensor_format = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %sensor_format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sensor_format, align 4
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %height4 = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 21, i32 1
  %12 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height4, align 4
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height, align 4
  %interval5 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %15 = ptrtoint ptr %interval5 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 0, ptr %interval5, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 6
  %16 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %which, align 4
  %reserved = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 7
  %17 = call ptr @memset(ptr %reserved, i32 0, i32 32)
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 1
  %18 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %19)
  %cmp6.not = icmp eq i32 %19, 1448695129
  br i1 %cmp6.not, label %if.end9, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %entry
  %width10 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 2
  %20 = ptrtoint ptr %width10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width10, align 4
  %22 = add i32 %21, -641
  call void @__sanitizer_cov_trace_const_cmp4(i32 -465, i32 %22)
  %23 = icmp ult i32 %22, -465
  br i1 %23, label %if.end9.cleanup_crit_edge, label %lor.lhs.false14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false14:                                  ; preds = %if.end9
  %height15 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 3
  %24 = ptrtoint ptr %height15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height15, align 4
  %26 = add i32 %25, -481
  call void @__sanitizer_cov_trace_const_cmp4(i32 -337, i32 %26)
  %27 = icmp ult i32 %26, -337
  br i1 %27, label %lor.lhs.false14.cleanup_crit_edge, label %if.end21

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false14
  %sensor = getelementptr inbounds %struct.via_camera, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.end21.cleanup_crit_edge, label %if.else

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end21
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %pad23 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %pad23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pad23, align 4
  %tobool24.not = icmp eq ptr %33, null
  br i1 %tobool24.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_interval = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %enum_frame_interval to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enum_frame_interval, align 4
  %tobool27.not = icmp eq ptr %35, null
  br i1 %tobool27.not, label %land.lhs.true.cleanup_crit_edge, label %if.else29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else29:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool30.not = icmp eq ptr %36, null
  br i1 %tobool30.not, label %if.else29.if.else37_crit_edge, label %land.lhs.true31

if.else29.if.else37_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else37

land.lhs.true31:                                  ; preds = %if.else29
  %enum_frame_interval32 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %enum_frame_interval32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %enum_frame_interval32, align 4
  %tobool33.not = icmp eq ptr %38, null
  br i1 %tobool33.not, label %land.lhs.true31.if.else37_crit_edge, label %land.lhs.true31.if.end44_crit_edge

land.lhs.true31.if.end44_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true31.if.else37_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else37

if.else37:                                        ; preds = %land.lhs.true31.if.else37_crit_edge, %if.else29.if.else37_crit_edge
  br label %if.end44

if.end44:                                         ; preds = %if.else37, %land.lhs.true31.if.end44_crit_edge
  %.sink = phi ptr [ %35, %if.else37 ], [ %38, %land.lhs.true31.if.end44_crit_edge ]
  %call41 = call i32 %.sink(ptr noundef nonnull %29, ptr noundef null, ptr noundef nonnull %fie) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool45.not = icmp eq i32 %call41, 0
  br i1 %tobool45.not, label %if.end47, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 4
  %39 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %type, align 4
  %40 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 5
  %41 = ptrtoint ptr %interval5 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %interval5, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end44.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false14.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call41, %if.end44.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fie) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @viacam_do_try_fmt(ptr nocapture noundef readonly %cam, ptr nocapture noundef %upix, ptr noundef %spix) unnamed_addr #2 align 64 {
entry:
  %pad_cfg = alloca %struct.v4l2_subdev_pad_config, align 4
  %pad_state = alloca %struct.v4l2_subdev_state, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pad_cfg) #12
  %0 = call ptr @memset(ptr %pad_cfg, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_state) #12
  %1 = ptrtoint ptr %pad_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pad_cfg, ptr %pad_state, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #12
  %2 = call ptr @memset(ptr %format, i32 0, i32 88)
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1448695129, ptr %pixelformat, align 4
  %4 = call ptr @memcpy(ptr %spix, ptr %upix, i32 48)
  %5 = ptrtoint ptr %upix to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %upix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %6)
  %cmp.i = icmp ult i32 %6, 176
  br i1 %cmp.i, label %entry.if.end.thread.i_crit_edge, label %lor.lhs.false.i

entry.if.end.thread.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread.i

lor.lhs.false.i:                                  ; preds = %entry
  %height.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 1
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %8)
  %cmp1.i = icmp ult i32 %8, 144
  br i1 %cmp1.i, label %lor.lhs.false.i.if.end.thread.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.end.thread.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %lor.lhs.false.i.if.end.thread.i_crit_edge, %entry.if.end.thread.i_crit_edge
  %9 = ptrtoint ptr %upix to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 176, ptr %upix, align 4
  %height3.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 1
  %10 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 144, ptr %height3.i, align 4
  br label %lor.lhs.false6.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %6)
  %cmp5.i = icmp ugt i32 %6, 640
  br i1 %cmp5.i, label %if.end.i.if.then9.i_crit_edge, label %if.end.i.lor.lhs.false6.i_crit_edge

if.end.i.lor.lhs.false6.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false6.i

if.end.i.if.then9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

lor.lhs.false6.i:                                 ; preds = %if.end.i.lor.lhs.false6.i_crit_edge, %if.end.thread.i
  %height7.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 1
  %11 = ptrtoint ptr %height7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %12)
  %cmp8.i = icmp ugt i32 %12, 480
  br i1 %cmp8.i, label %lor.lhs.false6.i.if.then9.i_crit_edge, label %lor.lhs.false6.i.viacam_fmt_pre.exit_crit_edge

lor.lhs.false6.i.viacam_fmt_pre.exit_crit_edge:   ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %viacam_fmt_pre.exit

lor.lhs.false6.i.if.then9.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false6.i.if.then9.i_crit_edge, %if.end.i.if.then9.i_crit_edge
  %13 = ptrtoint ptr %upix to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 640, ptr %upix, align 4
  %height11.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 1
  %14 = ptrtoint ptr %height11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 480, ptr %height11.i, align 4
  br label %viacam_fmt_pre.exit

viacam_fmt_pre.exit:                              ; preds = %if.then9.i, %lor.lhs.false6.i.viacam_fmt_pre.exit_crit_edge
  %15 = ptrtoint ptr %spix to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 640, ptr %spix, align 4
  %height14.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %spix, i32 0, i32 1
  %16 = ptrtoint ptr %height14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 480, ptr %height14.i, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %17 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 640, ptr %format3, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 480, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %spix, i32 0, i32 3
  %19 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %spix, i32 0, i32 6
  %22 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %colorspace4.i, align 4
  %25 = getelementptr inbounds %struct.v4l2_pix_format, ptr %spix, i32 0, i32 9
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %conv.i = trunc i32 %27 to i16
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %28, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %spix, i32 0, i32 10
  %30 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %31 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %32 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %spix, i32 0, i32 11
  %33 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %34 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %35 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8200, ptr %code9.i, align 4
  %sensor = getelementptr inbounds %struct.via_camera, ptr %cam, i32 0, i32 3
  %37 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %viacam_fmt_pre.exit.if.end23_crit_edge, label %if.else

viacam_fmt_pre.exit.if.end23_crit_edge:           ; preds = %viacam_fmt_pre.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.else:                                          ; preds = %viacam_fmt_pre.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pad, align 4
  %tobool4.not = icmp eq ptr %42, null
  br i1 %tobool4.not, label %if.else.if.end23_crit_edge, label %land.lhs.true

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_fmt, align 4
  %tobool7.not = icmp eq ptr %44, null
  br i1 %tobool7.not, label %land.lhs.true.if.end23_crit_edge, label %if.else9

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.else9:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool10.not = icmp eq ptr %45, null
  br i1 %tobool10.not, label %if.else9.if.else17_crit_edge, label %land.lhs.true11

if.else9.if.else17_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else17

land.lhs.true11:                                  ; preds = %if.else9
  %set_fmt12 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %set_fmt12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_fmt12, align 4
  %tobool13.not = icmp eq ptr %47, null
  br i1 %tobool13.not, label %land.lhs.true11.if.else17_crit_edge, label %land.lhs.true11.if.end23.sink.split_crit_edge

land.lhs.true11.if.end23.sink.split_crit_edge:    ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split

land.lhs.true11.if.else17_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true11.if.else17_crit_edge, %if.else9.if.else17_crit_edge
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.else17, %land.lhs.true11.if.end23.sink.split_crit_edge
  %.sink = phi ptr [ %44, %if.else17 ], [ %47, %land.lhs.true11.if.end23.sink.split_crit_edge ]
  %call21 = call i32 %.sink(ptr noundef nonnull %38, ptr noundef nonnull %pad_state, ptr noundef nonnull %format) #12
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %land.lhs.true.if.end23_crit_edge, %if.else.if.end23_crit_edge, %viacam_fmt_pre.exit.if.end23_crit_edge
  %__result.0 = phi i32 [ -19, %viacam_fmt_pre.exit.if.end23_crit_edge ], [ -515, %land.lhs.true.if.end23_crit_edge ], [ -515, %if.else.if.end23_crit_edge ], [ %call21, %if.end23.sink.split ]
  %48 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %format3, align 4
  %50 = ptrtoint ptr %spix to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %spix, align 4
  %51 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height2.i, align 4
  %53 = ptrtoint ptr %height14.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %height14.i, align 4
  %54 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %field3.i, align 4
  %56 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %field.i, align 4
  %57 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %colorspace4.i, align 4
  %59 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %colorspace.i, align 4
  %60 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %28, align 4
  %conv.i47 = zext i16 %61 to i32
  %62 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv.i47, ptr %25, align 4
  %63 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %quantization6.i, align 2
  %conv5.i49 = zext i16 %64 to i32
  %65 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv5.i49, ptr %quantization.i, align 4
  %66 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i52 = zext i16 %67 to i32
  %68 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv7.i52, ptr %xfer_func.i, align 4
  %mul.i = shl i32 %49, 1
  %bytesperline.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %spix, i32 0, i32 4
  %69 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %mul2.i = mul i32 %52, %mul.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %spix, i32 0, i32 5
  %70 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul2.i, ptr %sizeimage.i, align 4
  %pixelformat3.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %spix, i32 0, i32 2
  %71 = ptrtoint ptr %pixelformat3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pixelformat3.i, align 4
  %73 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %pixelformat, align 4
  %74 = load i32, ptr %field.i, align 4
  %field5.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 3
  %75 = ptrtoint ptr %field5.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %field5.i, align 4
  %76 = ptrtoint ptr %upix to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %upix, align 4
  %mul7.i = shl i32 %77, 1
  %bytesperline8.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 4
  %78 = ptrtoint ptr %bytesperline8.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %mul7.i, ptr %bytesperline8.i, align 4
  %height10.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 1
  %79 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height10.i, align 4
  %mul11.i = mul i32 %80, %mul7.i
  %sizeimage12.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 5
  %81 = ptrtoint ptr %sizeimage12.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %mul11.i, ptr %sizeimage12.i, align 4
  %82 = load i32, ptr %colorspace.i, align 4
  %colorspace13.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 6
  %83 = ptrtoint ptr %colorspace13.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %colorspace13.i, align 4
  %84 = load i32, ptr %25, align 4
  %85 = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 9
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %84, ptr %85, align 4
  %87 = load i32, ptr %quantization.i, align 4
  %quantization14.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 10
  %88 = ptrtoint ptr %quantization14.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %quantization14.i, align 4
  %89 = load i32, ptr %xfer_func.i, align 4
  %xfer_func15.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %upix, i32 0, i32 11
  %90 = ptrtoint ptr %xfer_func15.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %xfer_func15.i, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_state) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pad_cfg) #12
  ret i32 %__result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_suspend(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %opstate = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %opstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opstate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %viadev.i = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %viadev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %viadev.i, align 8
  %reg_lock.i = getelementptr inbounds %struct.viafb_dev, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  tail call void @viafb_irq_disable(i32 noundef 268435456) #12
  %mmio.i.i.i = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 12
  %4 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #12, !srcloc !128
  %6 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i9.i = getelementptr i8, ptr %7, i32 784
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %11, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %9) #12, !srcloc !128
  %12 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 784
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %15 = ptrtoint ptr %opstate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %opstate, align 8
  %16 = ptrtoint ptr %viadev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %viadev.i, align 8
  %reg_lock2.i = getelementptr inbounds %struct.viafb_dev, ptr %17, i32 0, i32 3
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock2.i) #12
  %18 = ptrtoint ptr %opstate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %1, ptr %opstate, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viacam_resume(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !122
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 120) #12, !srcloc !123
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #12, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  tail call void @arm_heavy_mb() #12
  %and15.i = and i8 %0, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i) #12, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !122
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #12, !srcloc !123
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #12, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  tail call void @arm_heavy_mb() #12
  %or.i = or i8 %1, -64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #12, !srcloc !123
  tail call void @viafb_irq_disable(i32 noundef 268435456) #12
  %mmio.i.i = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !128
  %flags = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  %fh_list = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 2, i32 20
  %4 = ptrtoint ptr %fh_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %fh_list, align 4
  %cmp.i.not = icmp eq ptr %5, %fh_list
  %power_gpio.i25 = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 10
  %6 = ptrtoint ptr %power_gpio.i25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_gpio.i25, align 8
  %call.i.i26 = tail call ptr @gpio_to_desc(i32 noundef %7) #12
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i26, i32 noundef 1) #12
  %reset_gpio.i = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 11
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reset_gpio.i, align 4
  %call.i4.i = tail call ptr @gpio_to_desc(i32 noundef %9) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i4.i, i32 noundef 0) #12
  tail call void @msleep(i32 noundef 20) #12
  %10 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_gpio.i, align 4
  %call.i5.i = tail call ptr @gpio_to_desc(i32 noundef %11) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i5.i, i32 noundef 1) #12
  tail call void @msleep(i32 noundef 20) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i26, i32 noundef 0) #12
  %reset_gpio.i27 = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 11
  %12 = ptrtoint ptr %reset_gpio.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reset_gpio.i27, align 4
  %call.i2.i = tail call ptr @gpio_to_desc(i32 noundef %13) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i2.i, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %opstate = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 7
  %14 = ptrtoint ptr %opstate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opstate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %if.end.if.end11_crit_edge, label %if.then1

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then1:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %call2 = tail call fastcc i32 @viacam_configure_sensor(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.end6.thread

if.end6.thread:                                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %if.end11

if.end6:                                          ; preds = %if.then1
  %call5 = tail call fastcc i32 @viacam_config_controller(ptr noundef %priv)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool8.not = icmp eq i32 %call5, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %viadev.i = getelementptr inbounds %struct.via_camera, ptr %priv, i32 0, i32 5
  %16 = ptrtoint ptr %viadev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %viadev.i, align 8
  %reg_lock.i = getelementptr inbounds %struct.viafb_dev, ptr %17, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 784
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %21 = or i32 %20, 16777216
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %23, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %21) #12, !srcloc !128
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i9.i = getelementptr i8, ptr %25, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 -2097086464) #12, !srcloc !128
  tail call void @viafb_irq_enable(i32 noundef 268435456) #12
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i28 = getelementptr i8, ptr %27, i32 784
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %29 = ptrtoint ptr %opstate to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %opstate, align 8
  %30 = ptrtoint ptr %viadev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %viadev.i, align 8
  %reg_lock2.i = getelementptr inbounds %struct.viafb_dev, ptr %31, i32 0, i32 3
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock2.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge, %if.end6.thread, %if.end.if.end11_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end6.if.end11_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end.if.end11_crit_edge ], [ %call2, %if.end6.thread ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_pm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !90, !92, !93, !95, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__UNIQUE_ID_alias300, !1, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/via-camera.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/via-camera.c", i32 41, i32 1}
!4 = !{ptr @__UNIQUE_ID_description302, !5, !"__UNIQUE_ID_description302", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/via-camera.c", i32 42, i32 1}
!6 = !{ptr @__UNIQUE_ID_file303, !7, !"__UNIQUE_ID_file303", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/via-camera.c", i32 43, i32 1}
!8 = !{ptr @__UNIQUE_ID_license304, !7, !"__UNIQUE_ID_license304", i1 false, i1 false}
!9 = !{ptr @__param_flip_image, !10, !"__param_flip_image", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/via-camera.c", i32 46, i32 1}
!11 = !{ptr @__UNIQUE_ID_flip_imagetype305, !10, !"__UNIQUE_ID_flip_imagetype305", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_flip_image306, !13, !"__UNIQUE_ID_flip_image306", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/via-camera.c", i32 47, i32 1}
!14 = !{ptr @__param_override_serial, !15, !"__param_override_serial", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/via-camera.c", i32 51, i32 1}
!16 = !{ptr @__UNIQUE_ID_override_serialtype307, !15, !"__UNIQUE_ID_override_serialtype307", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_override_serial308, !18, !"__UNIQUE_ID_override_serial308", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/via-camera.c", i32 52, i32 1}
!19 = !{ptr @__initcall__kmod_via_camera__310_1323_viacam_driver_init6, !20, !"__initcall__kmod_via_camera__310_1323_viacam_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/via-camera.c", i32 1323, i32 1}
!21 = !{ptr @__exitcall_viacam_driver_exit, !20, !"__exitcall_viacam_driver_exit", i1 false, i1 false}
!22 = !{ptr @flip_image, !23, !"flip_image", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/via-camera.c", i32 45, i32 13}
!24 = !{ptr @override_serial, !25, !"override_serial", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/via-camera.c", i32 50, i32 13}
!26 = !{ptr @__param_str_flip_image, !10, !"__param_str_flip_image", i1 false, i1 false}
!27 = !{ptr @__param_str_override_serial, !15, !"__param_str_override_serial", i1 false, i1 false}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/via-camera.c", i32 1317, i32 11}
!30 = !{ptr @viacam_driver, !31, !"viacam_driver", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/via-camera.c", i32 1315, i32 31}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/via-camera.c", i32 1166, i32 3}
!34 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @viacam_probe._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @viacam_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/via-camera.c", i32 1170, i32 3}
!40 = !{ptr @viacam_probe._entry.4, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @viacam_probe._entry_ptr.6, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @viacam_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/via-camera.c", i32 1188, i32 2}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/via-camera.c", i32 1200, i32 3}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @viacam_probe._entry.8, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @viacam_probe._entry_ptr.12, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @viacam_probe._key, !52, !"_key", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/via-camera.c", i32 1203, i32 8}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/via-camera.c", i32 1234, i32 3}
!56 = !{ptr @viacam_probe._entry.14, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @viacam_probe._entry_ptr.16, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/via-camera.c", i32 1243, i32 29}
!60 = !{ptr @sensor_cfg, !61, !"sensor_cfg", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/via-camera.c", i32 1132, i32 29}
!62 = !{ptr @via_cam_info, !63, !"via_cam_info", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/via-camera.c", i32 116, i32 27}
!64 = !{ptr @viacam_def_pix_format, !65, !"viacam_def_pix_format", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/via-camera.c", i32 780, i32 37}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/via-camera.c", i32 185, i32 38}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/via-camera.c", i32 186, i32 38}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/via-camera.c", i32 188, i32 3}
!72 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @via_sensor_power_setup._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @via_sensor_power_setup._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/via-camera.c", i32 193, i32 3}
!77 = !{ptr @via_sensor_power_setup._entry.22, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @via_sensor_power_setup._entry_ptr.24, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/via-camera.c", i32 198, i32 3}
!81 = !{ptr @via_sensor_power_setup._entry.25, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @via_sensor_power_setup._entry_ptr.27, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @viacam_vb2_ops, !84, !"viacam_vb2_ops", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/via-camera.c", i32 674, i32 29}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/via-camera.c", i32 593, i32 3}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @viacam_vb2_prepare.__UNIQUE_ID_ddebug309, !86, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!92 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/via-camera.c", i32 425, i32 3}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @viacam_ctlr_cbufs._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @viacam_ctlr_cbufs._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @viacam_v4l_template, !100, !"viacam_v4l_template", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/via-camera.c", i32 1088, i32 34}
!101 = !{ptr @viacam_fops, !102, !"viacam_fops", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/via-camera.c", i32 734, i32 42}
!103 = !{ptr @viacam_ioctl_ops, !104, !"viacam_ioctl_ops", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/via-camera.c", i32 996, i32 36}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/via-camera.c", i32 923, i32 25}
!107 = distinct !{null, !108, !"via_formats", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/via-camera.c", i32 151, i32 3}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/via-camera.c", i32 759, i32 23}
!111 = !{ptr @viacam_pm_hooks, !112, !"viacam_pm_hooks", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/via-camera.c", i32 1077, i32 30}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2156836767}
!123 = !{i64 5012486}
!124 = !{i64 5012881}
!125 = !{i64 2156837157}
!126 = !{i64 2156837392}
!127 = !{i64 2152554805}
!128 = !{i64 5012683}
!129 = !{i64 5013101}
!130 = !{i64 2152553450}
!131 = !{i64 2148724381, i64 2148724386, i64 2148724399, i64 2148724443, i64 2148724477, i64 2148724498}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i8 0, i8 2}
