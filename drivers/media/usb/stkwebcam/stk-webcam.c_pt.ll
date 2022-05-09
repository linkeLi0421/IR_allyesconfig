; ModuleID = '/llk/IR_all_yes/drivers/media/usb/stkwebcam/stk-webcam.c_pt.bc'
source_filename = "../drivers/media/usb/stkwebcam/stk-webcam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regval = type { i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stk_size = type { i32, i32, i32 }
%struct.stk_camera = type { %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, ptr, ptr, i32, ptr, %struct.mutex, i32, i8, %struct.atomic_t, %struct.stk_video, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.stk_video = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.stk_sio_buffer = type { %struct.v4l2_buffer, ptr, i32, ptr, %struct.list_head }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.96, i32, i32, %union.anon.98 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%union.anon.96 = type { i32 }
%union.anon.98 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.stk_iso_buf = type { ptr, i32, i32, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.109 }
%union.anon.109 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.110, [2 x i32] }
%union.anon.110 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }

@__param_str_hflip = internal constant [16 x i8] c"stkwebcam.hflip\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@hflip = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_hflip = internal constant %struct.kernel_param { ptr @__param_str_hflip, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @hflip } }, section "__param", align 4
@__UNIQUE_ID_hfliptype297 = internal constant [29 x i8] c"stkwebcam.parmtype=hflip:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hflip298 = internal constant [67 x i8] c"stkwebcam.parm=hflip:Horizontal image flip (mirror). Defaults to 0\00", section ".modinfo", align 1
@__param_str_vflip = internal constant [16 x i8] c"stkwebcam.vflip\00", align 1
@vflip = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_vflip = internal constant %struct.kernel_param { ptr @__param_str_vflip, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @vflip } }, section "__param", align 4
@__UNIQUE_ID_vfliptype299 = internal constant [29 x i8] c"stkwebcam.parmtype=vflip:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vflip300 = internal constant [56 x i8] c"stkwebcam.parm=vflip:Vertical image flip. Defaults to 0\00", section ".modinfo", align 1
@__param_str_debug = internal constant [16 x i8] c"stkwebcam.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype301 = internal constant [29 x i8] c"stkwebcam.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug302 = internal constant [53 x i8] c"stkwebcam.parm=debug:Debug v4l ioctls. Defaults to 0\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [53 x i8] c"stkwebcam.file=drivers/media/usb/stkwebcam/stkwebcam\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [22 x i8] c"stkwebcam.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [79 x i8] c"stkwebcam.author=Jaime Velasco Juan <jsagarribay@gmail.com> and Nicolas VIVIEN\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [50 x i8] c"stkwebcam.description=Syntek DC1125 webcam driver\00", section ".modinfo", align 1
@__initcall__kmod_stkwebcam__307_1434_stk_camera_driver_init6 = internal global ptr @stk_camera_driver_init, section ".initcall6.init", align 4
@stk_camera_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @stk_camera_probe, ptr @stk_camera_disconnect, ptr null, ptr @stk_camera_suspend, ptr @stk_camera_resume, ptr null, ptr null, ptr null, ptr @stkwebcam_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_stk_camera_driver_exit = internal global ptr @stk_camera_driver_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stkwebcam\00", [22 x i8] zeroinitializer }, align 32
@stkwebcam_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 5967, i16 -23791, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1505, i16 1281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stk_camera_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013stkwebcam: Out of memory !\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk_camera_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/stkwebcam/stk-webcam.c\00", [55 x i8] zeroinitializer }, align 32
@stk_camera_probe._entry_ptr = internal global ptr @stk_camera_probe._entry, section ".printk_index", align 4
@stk_camera_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register v4l2_device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stk_camera_probe._entry_ptr.8 = internal global ptr @stk_camera_probe._entry.4, section ".printk_index", align 4
@stk_camera_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stk_webcam:1298:(hdl)->_lock\00", [35 x i8] zeroinitializer }, align 32
@stk_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @stk_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@stk_camera_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1307, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't register control\0A\00", [37 x i8] zeroinitializer }, align 32
@stk_camera_probe._entry_ptr.12 = internal global ptr @stk_camera_probe._entry.10, section ".printk_index", align 4
@stk_camera_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->spinlock\00", [17 x i8] zeroinitializer }, align 32
@stk_camera_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@stk_camera_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->wait_frame\00", [47 x i8] zeroinitializer }, align 32
@stk_camera_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013stkwebcam: Could not find isoc-in endpoint\0A\00", [50 x i8] zeroinitializer }, align 32
@stk_camera_probe._entry_ptr.20 = internal global ptr @stk_camera_probe._entry.18, section ".printk_index", align 4
@stk_v4l_data = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @v4l_stk_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"stkwebcam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @stk_v4l_dev_release, ptr @v4l_stk_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@stk_register_video_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013stkwebcam: v4l registration failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stk_register_video_device\00", [38 x i8] zeroinitializer }, align 32
@stk_register_video_device._entry_ptr = internal global ptr @stk_register_video_device._entry, section ".printk_index", align 4
@stk_register_video_device._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016stkwebcam: Syntek USB2.0 Camera is now controlling device %s\0A\00", [32 x i8] zeroinitializer }, align 32
@stk_register_video_device._entry_ptr.29 = internal global ptr @stk_register_video_device._entry.27, section ".printk_index", align 4
@v4l_stk_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @v4l_stk_read, ptr null, ptr @v4l_stk_poll, ptr @video_ioctl2, ptr null, ptr @v4l_stk_mmap, ptr @v4l_stk_open, ptr @v4l_stk_release }, [60 x i8] zeroinitializer }, align 32
@v4l_stk_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @stk_vidioc_querycap, ptr @stk_vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk_vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk_vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk_vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk_vidioc_reqbufs, ptr @stk_vidioc_querybuf, ptr @stk_vidioc_qbuf, ptr null, ptr @stk_vidioc_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk_vidioc_streamon, ptr @stk_vidioc_streamoff, ptr null, ptr null, ptr null, ptr @stk_vidioc_enum_input, ptr @stk_vidioc_g_input, ptr @stk_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk_vidioc_g_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @stk_vidioc_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@stk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013stkwebcam: BUG: No siobufs ready\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stk_read\00", [23 x i8] zeroinitializer }, align 32
@stk_read._entry_ptr = internal global ptr @stk_read._entry, section ".printk_index", align 4
@stk1125_initvals = internal constant { [24 x %struct.regval], [32 x i8] } { [24 x %struct.regval] [%struct.regval { i32 0, i32 36 }, %struct.regval { i32 256, i32 33 }, %struct.regval { i32 2, i32 104 }, %struct.regval { i32 3, i32 128 }, %struct.regval { i32 5, i32 0 }, %struct.regval { i32 7, i32 3 }, %struct.regval { i32 13, i32 0 }, %struct.regval { i32 15, i32 2 }, %struct.regval { i32 768, i32 18 }, %struct.regval { i32 848, i32 65 }, %struct.regval { i32 849, i32 0 }, %struct.regval { i32 850, i32 0 }, %struct.regval { i32 851, i32 0 }, %struct.regval { i32 24, i32 16 }, %struct.regval { i32 25, i32 0 }, %struct.regval { i32 27, i32 14 }, %struct.regval { i32 28, i32 70 }, %struct.regval { i32 768, i32 128 }, %struct.regval { i32 26, i32 4 }, %struct.regval { i32 272, i32 0 }, %struct.regval { i32 273, i32 0 }, %struct.regval { i32 274, i32 0 }, %struct.regval { i32 275, i32 0 }, %struct.regval { i32 65535, i32 255 }], [32 x i8] zeroinitializer }, align 32
@stk_prepare_iso._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013stkwebcam: isobufs already allocated. Bad\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stk_prepare_iso\00", [16 x i8] zeroinitializer }, align 32
@stk_prepare_iso._entry_ptr = internal global ptr @stk_prepare_iso._entry, section ".printk_index", align 4
@stk_prepare_iso._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013stkwebcam: Unable to allocate iso buffers\0A\00", [51 x i8] zeroinitializer }, align 32
@stk_prepare_iso._entry_ptr.36 = internal global ptr @stk_prepare_iso._entry.34, section ".printk_index", align 4
@stk_prepare_iso._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013stkwebcam: Failed to allocate iso buffer %d\0A\00", [49 x i8] zeroinitializer }, align 32
@stk_prepare_iso._entry_ptr.39 = internal global ptr @stk_prepare_iso._entry.37, section ".printk_index", align 4
@stk_prepare_iso._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.3, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013stkwebcam: isobuf data already allocated\0A\00", [52 x i8] zeroinitializer }, align 32
@stk_prepare_iso._entry_ptr.42 = internal global ptr @stk_prepare_iso._entry.40, section ".printk_index", align 4
@stk_prepare_iso._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013stkwebcam: Killing URB\0A\00", [38 x i8] zeroinitializer }, align 32
@stk_prepare_iso._entry_ptr.45 = internal global ptr @stk_prepare_iso._entry.43, section ".printk_index", align 4
@stk_isoc_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013stkwebcam: isoc_handler called with NULL device !\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk_isoc_handler\00", [47 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry_ptr = internal global ptr @stk_isoc_handler._entry, section ".printk_index", align 4
@stk_isoc_handler._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013stkwebcam: isoc_handler: urb->status == %d\0A\00", [50 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry_ptr.50 = internal global ptr @stk_isoc_handler._entry.48, section ".printk_index", align 4
@stk_isoc_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.47, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013stkwebcam: isoc_handler without available buffer!\0A\00", [43 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry_ptr.54 = internal global ptr @stk_isoc_handler._entry.52, section ".printk_index", align 4
@stk_isoc_handler._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.47, ptr @.str.3, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013stkwebcam: Frame %d has error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry_ptr.57 = internal global ptr @stk_isoc_handler._entry.55, section ".printk_index", align 4
@stk_isoc_handler._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.47, ptr @.str.3, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013stkwebcam: frame %d, bytesused=%d, skipping\0A\00", [49 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry_ptr.61 = internal global ptr @stk_isoc_handler._entry.59, section ".printk_index", align 4
@stk_isoc_handler._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.47, ptr @.str.3, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013stkwebcam: Frame buffer overflow, lost sync\0A\00", [49 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry_ptr.65 = internal global ptr @stk_isoc_handler._entry.63, section ".printk_index", align 4
@stk_isoc_handler._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.47, ptr @.str.3, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013stkwebcam: Error (%d) re-submitting urb in stk_isoc_handler\0A\00", [33 x i8] zeroinitializer }, align 32
@stk_isoc_handler._entry_ptr.68 = internal global ptr @stk_isoc_handler._entry.66, section ".printk_index", align 4
@stk_prepare_sio_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013stkwebcam: sio_bufs already allocated\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stk_prepare_sio_buffers\00", [40 x i8] zeroinitializer }, align 32
@stk_prepare_sio_buffers._entry_ptr = internal global ptr @stk_prepare_sio_buffers._entry, section ".printk_index", align 4
@stk_start_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013stkwebcam: FIXME: Buffers are not allocated\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk_start_stream\00", [47 x i8] zeroinitializer }, align 32
@stk_start_stream._entry_ptr = internal global ptr @stk_start_stream._entry, section ".printk_index", align 4
@stk_start_stream._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013stkwebcam: usb_set_interface failed !\0A\00", [55 x i8] zeroinitializer }, align 32
@stk_start_stream._entry_ptr.75 = internal global ptr @stk_start_stream._entry.73, section ".printk_index", align 4
@stk_start_stream._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013stkwebcam: error awaking the sensor\0A\00", [57 x i8] zeroinitializer }, align 32
@stk_start_stream._entry_ptr.78 = internal global ptr @stk_start_stream._entry.76, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@stk_v4l_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @stk_v4l_vm_open, ptr @stk_v4l_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stk_stop_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.82, ptr @.str.3, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stk_stop_stream\00", [16 x i8] zeroinitializer }, align 32
@stk_stop_stream._entry_ptr = internal global ptr @stk_stop_stream._entry, section ".printk_index", align 4
@stk_stop_stream._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013stkwebcam: error suspending the sensor\0A\00", [54 x i8] zeroinitializer }, align 32
@stk_stop_stream._entry_ptr.85 = internal global ptr @stk_stop_stream._entry.83, section ".printk_index", align 4
@stk_v4l_dev_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013stkwebcam: We are leaking memory\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stk_v4l_dev_release\00", [44 x i8] zeroinitializer }, align 32
@stk_v4l_dev_release._entry_ptr = internal global ptr @stk_v4l_dev_release._entry, section ".printk_index", align 4
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"stk\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@stk_sizes = internal constant { [5 x %struct.stk_size], [36 x i8] } { [5 x %struct.stk_size] [%struct.stk_size { i32 1280, i32 1024, i32 1 }, %struct.stk_size { i32 640, i32 480, i32 0 }, %struct.stk_size { i32 352, i32 288, i32 2 }, %struct.stk_size { i32 320, i32 240, i32 3 }, %struct.stk_size { i32 176, i32 144, i32 4 }], [36 x i8] zeroinitializer }, align 32
@stk_vidioc_g_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013stkwebcam: ERROR: mode invalid\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stk_vidioc_g_fmt_vid_cap\00", [39 x i8] zeroinitializer }, align 32
@stk_vidioc_g_fmt_vid_cap._entry_ptr = internal global ptr @stk_vidioc_g_fmt_vid_cap._entry, section ".printk_index", align 4
@stk_setup_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013stkwebcam: Something is broken in %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk_setup_format\00", [47 x i8] zeroinitializer }, align 32
@stk_setup_format._entry_ptr = internal global ptr @stk_setup_format._entry, section ".printk_index", align 4
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Syntek USB Camera\00", [46 x i8] zeroinitializer }, align 32
@stk_camera_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016stkwebcam: Syntek USB2.0 Camera release resources device %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stk_camera_disconnect\00", [42 x i8] zeroinitializer }, align 32
@stk_camera_disconnect._entry_ptr = internal global ptr @stk_camera_disconnect._entry, section ".printk_index", align 4
@switch.table.stk_vidioc_enum_fmt_vid_cap = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1346520914, i32 1380075346, i32 1498831189, i32 825770306, i32 1448695129], [44 x i8] zeroinitializer }, align 32
@switch.table.stk_vidioc_g_fmt_vid_cap = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 0, i32 2, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@switch.table.stk_setup_format = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 0, i32 2, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 9963776, i64 9963796, i64 9963797]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967278]
@__sancov_gen_cov_switch_values.100 = internal global [7 x i64] [i64 5, i64 32, i64 825770306, i64 1346520914, i64 1380075346, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.101 = internal global [7 x i64] [i64 5, i64 32, i64 825770306, i64 1346520914, i64 1380075346, i64 1448695129, i64 1498831189]
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"hflip\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 32, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"vflip\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 36, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 40, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"stk_camera_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1423, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1434, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"stkwebcam_table\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 49, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1288, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1293, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1298, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [13 x i8] c"stk_ctrl_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1194, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1307, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1312, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1313, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1314, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1352, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [13 x i8] c"stk_v4l_data\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1244, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1264, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1266, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [13 x i8] c"v4l_stk_fops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1198, i32 42 }
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"v4l_stk_ioctl_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1208, i32 36 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 693, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"stk1125_initvals\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 246, i32 22 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 437, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 442, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 449, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 454, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 461, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 320, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 333, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 339, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 349, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 374, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 400, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 418, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 570, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 182, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 188, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 190, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 230, i32 6 }
@___asan_gen_.343 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 214, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 174, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [15 x i8] c"stk_v4l_vm_ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 755, i32 42 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 231, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 233, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1235, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 797, i32 23 }
@___asan_gen_.376 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 912, i32 31 }
@___asan_gen_.378 = private unnamed_addr constant [10 x i8] c"stk_sizes\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 882, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 901, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 979, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 809, i32 23 }
@___asan_gen_.402 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.409 = private constant [44 x i8] c"../drivers/media/usb/stkwebcam/stk-webcam.c\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1390, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [41 x i8] c"switch.table.stk_vidioc_enum_fmt_vid_cap\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [38 x i8] c"switch.table.stk_vidioc_g_fmt_vid_cap\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [30 x i8] c"switch.table.stk_setup_format\00", align 1
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_debug302, ptr @__UNIQUE_ID_debugtype301, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_hflip298, ptr @__UNIQUE_ID_hfliptype297, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_vflip300, ptr @__UNIQUE_ID_vfliptype299, ptr @__exitcall_stk_camera_driver_exit, ptr @__initcall__kmod_stkwebcam__307_1434_stk_camera_driver_init6, ptr @__param_debug, ptr @__param_hflip, ptr @__param_vflip, ptr @stk_camera_disconnect._entry, ptr @stk_camera_disconnect._entry_ptr, ptr @stk_camera_driver_exit, ptr @stk_camera_probe._entry, ptr @stk_camera_probe._entry.10, ptr @stk_camera_probe._entry.18, ptr @stk_camera_probe._entry.4, ptr @stk_camera_probe._entry_ptr, ptr @stk_camera_probe._entry_ptr.12, ptr @stk_camera_probe._entry_ptr.20, ptr @stk_camera_probe._entry_ptr.8, ptr @stk_isoc_handler._entry, ptr @stk_isoc_handler._entry.48, ptr @stk_isoc_handler._entry.52, ptr @stk_isoc_handler._entry.55, ptr @stk_isoc_handler._entry.59, ptr @stk_isoc_handler._entry.63, ptr @stk_isoc_handler._entry.66, ptr @stk_isoc_handler._entry_ptr, ptr @stk_isoc_handler._entry_ptr.50, ptr @stk_isoc_handler._entry_ptr.54, ptr @stk_isoc_handler._entry_ptr.57, ptr @stk_isoc_handler._entry_ptr.61, ptr @stk_isoc_handler._entry_ptr.65, ptr @stk_isoc_handler._entry_ptr.68, ptr @stk_prepare_iso._entry, ptr @stk_prepare_iso._entry.34, ptr @stk_prepare_iso._entry.37, ptr @stk_prepare_iso._entry.40, ptr @stk_prepare_iso._entry.43, ptr @stk_prepare_iso._entry_ptr, ptr @stk_prepare_iso._entry_ptr.36, ptr @stk_prepare_iso._entry_ptr.39, ptr @stk_prepare_iso._entry_ptr.42, ptr @stk_prepare_iso._entry_ptr.45, ptr @stk_prepare_sio_buffers._entry, ptr @stk_prepare_sio_buffers._entry_ptr, ptr @stk_read._entry, ptr @stk_read._entry_ptr, ptr @stk_register_video_device._entry, ptr @stk_register_video_device._entry.27, ptr @stk_register_video_device._entry_ptr, ptr @stk_register_video_device._entry_ptr.29, ptr @stk_setup_format._entry, ptr @stk_setup_format._entry_ptr, ptr @stk_start_stream._entry, ptr @stk_start_stream._entry.73, ptr @stk_start_stream._entry.76, ptr @stk_start_stream._entry_ptr, ptr @stk_start_stream._entry_ptr.75, ptr @stk_start_stream._entry_ptr.78, ptr @stk_stop_stream._entry, ptr @stk_stop_stream._entry.83, ptr @stk_stop_stream._entry_ptr, ptr @stk_stop_stream._entry_ptr.85, ptr @stk_v4l_dev_release._entry, ptr @stk_v4l_dev_release._entry_ptr, ptr @stk_vidioc_g_fmt_vid_cap._entry, ptr @stk_vidioc_g_fmt_vid_cap._entry_ptr, ptr @hflip, ptr @vflip, ptr @debug, ptr @stk_camera_driver, ptr @.str, ptr @stkwebcam_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @stk_camera_probe._key, ptr @.str.9, ptr @stk_ctrl_ops, ptr @.str.11, ptr @stk_camera_probe.__key, ptr @.str.13, ptr @stk_camera_probe.__key.14, ptr @.str.15, ptr @stk_camera_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @stk_v4l_data, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @v4l_stk_fops, ptr @v4l_stk_ioctl_ops, ptr @.str.30, ptr @.str.31, ptr @stk1125_initvals, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @stk_isoc_handler._rs, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @stk_isoc_handler._rs.58, ptr @.str.60, ptr @stk_isoc_handler._rs.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @stk_v4l_vm_ops, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @stk_sizes, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @switch.table.stk_vidioc_enum_fmt_vid_cap, ptr @switch.table.stk_vidioc_g_fmt_vid_cap, ptr @switch.table.stk_setup_format], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hflip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vflip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stkwebcam_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_v4l_data to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_register_video_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_register_video_device._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l_stk_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l_stk_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1125_initvals to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_prepare_iso._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_prepare_iso._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_prepare_iso._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_prepare_iso._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_prepare_iso._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_isoc_handler._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_prepare_sio_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_start_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_start_stream._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_start_stream._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_v4l_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_stop_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_stop_stream._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_v4l_dev_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sizes to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_vidioc_g_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_setup_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_camera_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stk_vidioc_enum_fmt_vid_cap to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stk_vidioc_g_fmt_vid_cap to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stk_setup_format to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk_camera_write_reg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %udev1 = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %conv = zext i8 %value to i16
  %call2 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %index, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %4 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk_camera_read_reg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %index, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %udev1 = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  %shl.i = shl i32 %4, 8
  %or3 = or i32 %shl.i, -2147483520
  %call4 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or3, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call7.i, align 8
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %value, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  %8 = tail call i32 @llvm.smin.i32(i32 %call4, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %8, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_camera_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @stk_camera_driver, ptr noundef null, ptr noundef nonnull @.str) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stk_camera_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_deregister(ptr noundef nonnull @stk_camera_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_camera_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1944) #19
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %call4 = tail call i32 @v4l2_device_register(ptr noundef %dev3, ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #20
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %hdl12 = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 1
  %call14 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl12, i32 noundef 3, ptr noundef nonnull @stk_camera_probe._key, ptr noundef nonnull @.str.9) #16
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl12, ptr noundef nonnull @stk_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 96) #16
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl12, ptr noundef nonnull @stk_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #16
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl12, ptr noundef nonnull @stk_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #16
  %error = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #20
  br label %error94

if.end24:                                         ; preds = %if.end11
  %ctrl_handler = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hdl12, ptr %ctrl_handler, align 4
  %spinlock = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.13, ptr noundef nonnull @stk_camera_probe.__key, i16 noundef signext 3) #16
  %lock = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @stk_camera_probe.__key.14) #16
  %wait_frame = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %wait_frame, ptr noundef nonnull @.str.17, ptr noundef nonnull @stk_camera_probe.__key.16) #16
  %first_init = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %first_init to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %first_init, align 4
  %call36 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #16
  %udev37 = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %udev37 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call36, ptr %udev37, align 8
  %interface38 = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %interface38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %interface, ptr %interface38, align 4
  %call39 = tail call ptr @usb_get_intf(ptr noundef %interface) #16
  %9 = load i32, ptr @hflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp40.not = icmp eq i32 %9, -1
  %spec.select = select i1 %cmp40.not, i32 0, i32 %9
  %10 = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 8
  %12 = load i32, ptr @vflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp52.not = icmp eq i32 %12, -1
  %.sink162 = select i1 %cmp52.not, i32 0, i32 %12
  %13 = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 11, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink162, ptr %13, align 4
  %n_sbufs = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 18
  %15 = ptrtoint ptr %n_sbufs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %n_sbufs, align 8
  %status = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %status, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %17 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp66159.not = icmp eq i8 %20, 0
  br i1 %cmp66159.not, label %if.end24.for.end_crit_edge, label %for.body.lr.ph

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end24
  %endpoint68 = getelementptr inbounds %struct.usb_host_interface, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %endpoint68 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %endpoint68, align 4
  %isoc_ep = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %isoc_ep to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %isoc_ep, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool70.not = icmp eq i8 %24, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %22, i32 %i.0160
  br i1 %tobool70.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %25 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bmAttributes.i.i, align 1
  %27 = and i8 %26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp.i.not.i = icmp eq i8 %27, 1
  br i1 %cmp.i.not.i, label %usb_endpoint_is_isoc_in.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

usb_endpoint_is_isoc_in.exit:                     ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %28 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %tobool72.not = icmp sgt i8 %29, -1
  br i1 %tobool72.not, label %usb_endpoint_is_isoc_in.exit.for.inc_crit_edge, label %if.then73

usb_endpoint_is_isoc_in.exit.for.inc_crit_edge:   ; preds = %usb_endpoint_is_isoc_in.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then73:                                        ; preds = %usb_endpoint_is_isoc_in.exit
  call void @__sanitizer_cov_trace_pc() #18
  %bEndpointAddress.i.i.le = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress.i.i.le to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i.i.le, align 1
  %32 = and i8 %31, 15
  %33 = ptrtoint ptr %isoc_ep to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %isoc_ep, align 8
  br label %for.end

for.inc:                                          ; preds = %usb_endpoint_is_isoc_in.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then73, %if.end24.for.end_crit_edge
  %isoc_ep78 = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %isoc_ep78 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %isoc_ep78, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool79.not = icmp eq i8 %35, 0
  br i1 %tobool79.not, label %for.end.error_put_crit_edge, label %if.end86

for.end.error_put_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_put

if.end86:                                         ; preds = %for.end
  %vsettings87 = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 11
  %palette = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %palette to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1346520914, ptr %palette, align 4
  %37 = ptrtoint ptr %vsettings87 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %vsettings87, align 8
  %frame_size = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 16
  %38 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 614400, ptr %frame_size, align 8
  %sio_avail = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 20
  %39 = ptrtoint ptr %sio_avail to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %sio_avail, ptr %sio_avail, align 8
  %prev.i = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 20, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %sio_avail, ptr %prev.i, align 4
  %sio_full = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 21
  %41 = ptrtoint ptr %sio_full to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %sio_full, ptr %sio_full, align 8
  %prev.i157 = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 21, i32 1
  %42 = ptrtoint ptr %prev.i157 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %sio_full, ptr %prev.i157, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %vdev.i = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 2
  %44 = call ptr @memcpy(ptr %vdev.i, ptr @stk_v4l_data, i32 1352)
  %lock2.i = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 2, i32 26
  %45 = ptrtoint ptr %lock2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %lock, ptr %lock2.i, align 8
  %v4l2_dev4.i = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 2, i32 7
  %46 = ptrtoint ptr %v4l2_dev4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %v4l2_dev4.i, align 4
  %device_caps.i = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 83886081, ptr %device_caps.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %vdev.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.end11.i, label %if.end86.error_put_crit_edge

if.end86.error_put_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_put

do.end11.i:                                       ; preds = %if.end86
  %init_name.i.i.i = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 3
  %49 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end11.i.stk_register_video_device.exit.thread_crit_edge

do.end11.i.stk_register_video_device.exit.thread_crit_edge: ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_register_video_device.exit.thread

if.end.i.i.i:                                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i.i = getelementptr inbounds %struct.stk_camera, ptr %call7.i.i, i32 0, i32 2, i32 5
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 8
  br label %stk_register_video_device.exit.thread

stk_register_video_device.exit.thread:            ; preds = %if.end.i.i.i, %do.end11.i.stk_register_video_device.exit.thread_crit_edge
  %retval.0.i.i.i = phi ptr [ %52, %if.end.i.i.i ], [ %50, %do.end11.i.stk_register_video_device.exit.thread_crit_edge ]
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i.i) #20
  br label %cleanup

error_put:                                        ; preds = %if.end86.error_put_crit_edge, %for.end.error_put_crit_edge
  %.str.25.sink = phi ptr [ @.str.19, %for.end.error_put_crit_edge ], [ @.str.25, %if.end86.error_put_crit_edge ]
  %err.0 = phi i32 [ -19, %for.end.error_put_crit_edge ], [ %call.i.i, %if.end86.error_put_crit_edge ]
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.25.sink) #20
  tail call void @usb_put_intf(ptr noundef %interface) #16
  %53 = ptrtoint ptr %udev37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %udev37, align 8
  tail call void @usb_put_dev(ptr noundef %54) #16
  br label %error94

error94:                                          ; preds = %error_put, %if.then18
  %err.1 = phi i32 [ %4, %if.then18 ], [ %err.0, %error_put ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl12) #16
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call7.i.i) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %error94, %stk_register_video_device.exit.thread, %do.end9, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call4, %do.end9 ], [ %err.1, %error94 ], [ 0, %stk_register_video_device.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stk_camera_disconnect(ptr nocapture noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %status = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, -12
  store i32 %and, ptr %status, align 8
  %wait_frame = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait_frame, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %init_name.i.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 2, i32 5, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.video_device_node_name.exit_crit_edge

entry.video_device_node_name.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %entry.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.video_device_node_name.exit_crit_edge ]
  %vdev = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 2
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %retval.0.i.i) #20
  tail call void @video_unregister_device(ptr noundef %vdev) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_camera_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %status = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @stk_stop_stream(ptr noundef %1)
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %or = or i32 %5, 8
  store i32 %or, ptr %status, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_camera_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %status = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, -3
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and2, ptr %status, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.stk_initialise.exit_crit_edge, label %while.cond.preheader.i

if.end.stk_initialise.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_initialise.exit

while.cond.preheader.i:                           ; preds = %if.end
  %udev1.i.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 3
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.regval, ptr %rv.025.i, i32 1
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %6, 65535
  br i1 %cmp.not.i, label %while.end.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.cond.preheader.i
  %7 = phi i32 [ 0, %while.cond.preheader.i ], [ %6, %while.cond.i.while.body.i_crit_edge ]
  %rv.025.i = phi ptr [ @stk1125_initvals, %while.cond.preheader.i ], [ %incdec.ptr.i, %while.cond.i.while.body.i_crit_edge ]
  %conv.i = trunc i32 %7 to i16
  %val.i = getelementptr inbounds %struct.regval, ptr %rv.025.i, i32 0, i32 1
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %10 = ptrtoint ptr %udev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev1.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %14 = trunc i32 %9 to i16
  %conv.i.i = and i16 %14, 255
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %conv.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %tobool8.not.i = icmp sgt i32 %call2.i.i, -1
  br i1 %tobool8.not.i, label %while.cond.i, label %while.body.i.stk_initialise.exit_crit_edge

while.body.i.stk_initialise.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_initialise.exit

while.end.i:                                      ; preds = %while.cond.i
  %call11.i = tail call i32 @stk_sensor_init(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then14.i, label %while.end.i.stk_initialise.exit_crit_edge

while.end.i.stk_initialise.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_initialise.exit

if.then14.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 8
  %or.i = or i32 %16, 2
  store i32 %or.i, ptr %status, align 8
  br label %stk_initialise.exit

stk_initialise.exit:                              ; preds = %if.then14.i, %while.end.i.stk_initialise.exit_crit_edge, %while.body.i.stk_initialise.exit_crit_edge, %if.end.stk_initialise.exit_crit_edge
  %udev1.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev1.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i18 = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i18, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 73, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %call5 = tail call fastcc i32 @stk_setup_format(ptr noundef %1)
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 8
  %and7 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %stk_initialise.exit.cleanup_crit_edge, label %if.then9

stk_initialise.exit.cleanup_crit_edge:            ; preds = %stk_initialise.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %stk_initialise.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call fastcc i32 @stk_start_stream(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %stk_initialise.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963796, label %sw.bb1
    i32 9963797, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call = tail call i32 @stk_sensor_set_brightness(ptr noundef %add.ptr, i32 noundef %6) #16
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val5, align 4
  %hflip7 = getelementptr i8, ptr %1, i32 1664
  %9 = ptrtoint ptr %hflip7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %hflip7, align 8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val18, align 4
  %vflip20 = getelementptr i8, ptr %1, i32 1668
  %12 = ptrtoint ptr %vflip20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %vflip20, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb8 ], [ 0, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk_sensor_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stk_v4l_dev_release(ptr noundef %vd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sio_bufs = getelementptr i8, ptr %vd, i32 1604
  %0 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sio_bufs, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %isobufs = getelementptr i8, ptr %vd, i32 1588
  %2 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isobufs, align 4
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %vd, i32 -312
  %interface = getelementptr i8, ptr %vd, i32 1356
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  tail call void @usb_put_intf(ptr noundef %5) #16
  %udev = getelementptr i8, ptr %vd, i32 1352
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 8
  tail call void @usb_put_dev(ptr noundef %7) #16
  %hdl = getelementptr i8, ptr %vd, i32 -184
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #16
  tail call void @v4l2_device_unregister(ptr noundef %add.ptr) #16
  tail call void @kfree(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l_stk_read(ptr noundef %fp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %f_pos) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %fp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @video_devdata(ptr noundef %fp) #16
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %status.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status.i, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.stk_read.exit_crit_edge, label %if.end.i

if.end.stk_read.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

if.end.i:                                         ; preds = %if.end
  %owner.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %reading.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %reading.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reading.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp ne i32 %9, 0
  %cmp.not.i = icmp eq ptr %7, %fp
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %land.lhs.true.i.stk_read.exit_crit_edge

land.lhs.true.i.stk_read.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %10 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fp, ptr %owner.i, align 4
  %and8.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.i, label %if.end5.i.if.end34.i_crit_edge

if.end5.i.if.end34.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.end.i.i:                                       ; preds = %if.end5.i
  %and2.i.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %while.cond.preheader.i.i, label %if.end.i.i.lor.lhs.false13.i_crit_edge

if.end.i.i.lor.lhs.false13.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false13.i

while.cond.preheader.i.i:                         ; preds = %if.end.i.i
  %udev1.i.i.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 3
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.regval, ptr %rv.025.i.i, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %12, 65535
  br i1 %cmp.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i
  %13 = phi i32 [ 0, %while.cond.preheader.i.i ], [ %12, %while.cond.i.i.while.body.i.i_crit_edge ]
  %rv.025.i.i = phi ptr [ @stk1125_initvals, %while.cond.preheader.i.i ], [ %incdec.ptr.i.i, %while.cond.i.i.while.body.i.i_crit_edge ]
  %conv.i.i = trunc i32 %13 to i16
  %val.i.i = getelementptr inbounds %struct.regval, ptr %rv.025.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i.i, align 4
  %16 = ptrtoint ptr %udev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev1.i.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i.i.i = shl i32 %19, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %20 = trunc i32 %15 to i16
  %conv.i.i.i = and i16 %20, 255
  %call2.i.i.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i.i, i16 noundef zeroext %conv.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %tobool8.not.i.i = icmp sgt i32 %call2.i.i.i, -1
  br i1 %tobool8.not.i.i, label %while.cond.i.i, label %while.body.i.i.stk_read.exit_crit_edge

while.body.i.i.stk_read.exit_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  %call11.i.i = tail call i32 @stk_sensor_init(ptr noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %if.then14.i.i, label %while.end.i.i.stk_read.exit_crit_edge

while.end.i.i.stk_read.exit_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

if.then14.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i, align 8
  %or.i.i = or i32 %22, 2
  store i32 %or.i.i, ptr %status.i, align 8
  br label %lor.lhs.false13.i

lor.lhs.false13.i:                                ; preds = %if.then14.i.i, %if.end.i.i.lor.lhs.false13.i_crit_edge
  %call14.i = tail call fastcc i32 @stk_allocate_buffers(ptr noundef %3, i32 noundef 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false16.i, label %lor.lhs.false13.i.stk_read.exit_crit_edge

lor.lhs.false13.i.stk_read.exit_crit_edge:        ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

lor.lhs.false16.i:                                ; preds = %lor.lhs.false13.i
  %call17.i = tail call fastcc i32 @stk_start_stream(ptr noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %lor.lhs.false16.i.stk_read.exit_crit_edge

lor.lhs.false16.i.stk_read.exit_crit_edge:        ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

if.end20.i:                                       ; preds = %lor.lhs.false16.i
  %reading21.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 17
  %23 = ptrtoint ptr %reading21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %reading21.i, align 4
  %spinlock.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 13
  %call25.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #16
  %n_sbufs.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 18
  %24 = ptrtoint ptr %n_sbufs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_sbufs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp28245.not.i = icmp eq i32 %25, 0
  br i1 %cmp28245.not.i, label %if.end20.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end20.i
  %sio_bufs.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 19
  %sio_avail.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 20
  %prev.i.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 20, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0246.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %sio_bufs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sio_bufs.i, align 4
  %list.i = getelementptr %struct.stk_sio_buffer, ptr %27, i32 %i.0246.i, i32 4
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %call.i.i215.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %29, ptr noundef %sio_avail.i) #16
  br i1 %call.i.i215.i, label %if.end.i.i216.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit.i

if.end.i.i216.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list.i, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %sio_avail.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr %struct.stk_sio_buffer, ptr %27, i32 %i.0246.i, i32 4, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.i, ptr %29, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i216.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %34 = ptrtoint ptr %sio_bufs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sio_bufs.i, align 4
  %flags32.i = getelementptr %struct.stk_sio_buffer, ptr %35, i32 %i.0246.i, i32 0, i32 3
  %36 = ptrtoint ptr %flags32.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %flags32.i, align 4
  %inc.i = add nuw i32 %i.0246.i, 1
  %37 = ptrtoint ptr %n_sbufs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_sbufs.i, align 8
  %cmp28.i = icmp ult i32 %inc.i, %38
  br i1 %cmp28.i, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.for.end.i_crit_edge

list_add_tail.exit.i.for.end.i_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %list_add_tail.exit.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call25.i) #16
  br label %if.end34.i

if.end34.i:                                       ; preds = %for.end.i, %if.end5.i.if.end34.i_crit_edge
  %39 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %f_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp35.i = icmp eq i64 %40, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.end34.i.if.end87.i_crit_edge

if.end34.i.if.end87.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87.i

if.then37.i:                                      ; preds = %if.end34.i
  %f_flags.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 7
  %41 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %f_flags.i, align 4
  %and38.i = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.then37.i.if.end44.i_crit_edge, label %land.lhs.true40.i

if.then37.i.if.end44.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

land.lhs.true40.i:                                ; preds = %if.then37.i
  %sio_full.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 21
  %43 = ptrtoint ptr %sio_full.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %sio_full.i, align 4
  %cmp.i.not.i = icmp eq ptr %44, %sio_full.i
  br i1 %cmp.i.not.i, label %land.lhs.true40.i.stk_read.exit_crit_edge, label %land.lhs.true40.i.if.end44.i_crit_edge

land.lhs.true40.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

land.lhs.true40.i.stk_read.exit_crit_edge:        ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

if.end44.i:                                       ; preds = %land.lhs.true40.i.if.end44.i_crit_edge, %if.then37.i.if.end44.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 682) #16
  %sio_full51.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 21
  %45 = ptrtoint ptr %sio_full51.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %sio_full51.i, align 4
  %cmp.i218.not.i = icmp eq ptr %46, %sio_full51.i
  br i1 %cmp.i218.not.i, label %lor.lhs.false54.i, label %if.end44.i.if.end81.i_crit_edge

if.end44.i.if.end81.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81.i

lor.lhs.false54.i:                                ; preds = %if.end44.i
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status.i, align 8
  %and56.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %lor.lhs.false54.i.if.end81.i_crit_edge, label %if.then58.i

lor.lhs.false54.i.if.end81.i_crit_edge:           ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81.i

if.then58.i:                                      ; preds = %lor.lhs.false54.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  %49 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #16
  %wait_frame.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 14
  %call61248.i = call i32 @prepare_to_wait_event(ptr noundef %wait_frame.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #16
  %50 = ptrtoint ptr %sio_full51.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %sio_full51.i, align 4
  %cmp.i220.not249.i = icmp eq ptr %51, %sio_full51.i
  br i1 %cmp.i220.not249.i, label %if.then58.i.lor.lhs.false65.i_crit_edge, label %if.then58.i.if.end77.thread238.i_crit_edge

if.then58.i.if.end77.thread238.i_crit_edge:       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.thread238.i

if.then58.i.lor.lhs.false65.i_crit_edge:          ; preds = %if.then58.i
  br label %lor.lhs.false65.i

lor.lhs.false65.i:                                ; preds = %cleanup.i.lor.lhs.false65.i_crit_edge, %if.then58.i.lor.lhs.false65.i_crit_edge
  %call61250.i = phi i32 [ %call61.i, %cleanup.i.lor.lhs.false65.i_crit_edge ], [ %call61248.i, %if.then58.i.lor.lhs.false65.i_crit_edge ]
  %52 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status.i, align 8
  %and67.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %lor.lhs.false65.i.if.end77.thread238.i_crit_edge, label %if.end70.i

lor.lhs.false65.i.if.end77.thread238.i_crit_edge: ; preds = %lor.lhs.false65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.thread238.i

if.end70.i:                                       ; preds = %lor.lhs.false65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61250.i)
  %tobool71.not.i = icmp eq i32 %call61250.i, 0
  br i1 %tobool71.not.i, label %cleanup.i, label %if.end77.i

cleanup.i:                                        ; preds = %if.end70.i
  call void @schedule() #16
  %call61.i = call i32 @prepare_to_wait_event(ptr noundef %wait_frame.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #16
  %54 = ptrtoint ptr %sio_full51.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %sio_full51.i, align 4
  %cmp.i220.not.i = icmp eq ptr %55, %sio_full51.i
  br i1 %cmp.i220.not.i, label %cleanup.i.lor.lhs.false65.i_crit_edge, label %cleanup.i.if.end77.thread238.i_crit_edge

cleanup.i.if.end77.thread238.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.thread238.i

cleanup.i.lor.lhs.false65.i_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false65.i

if.end77.thread238.i:                             ; preds = %cleanup.i.if.end77.thread238.i_crit_edge, %lor.lhs.false65.i.if.end77.thread238.i_crit_edge, %if.then58.i.if.end77.thread238.i_crit_edge
  call void @finish_wait(ptr noundef %wait_frame.i, ptr noundef nonnull %__wq_entry.i) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  br label %if.end81.i

if.end77.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  br label %stk_read.exit

if.end81.i:                                       ; preds = %if.end77.thread238.i, %lor.lhs.false54.i.if.end81.i_crit_edge, %if.end44.i.if.end81.i_crit_edge
  %56 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status.i, align 8
  %and83.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end81.i.stk_read.exit_crit_edge, label %if.end81.i.if.end87.i_crit_edge

if.end81.i.if.end87.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87.i

if.end81.i.stk_read.exit_crit_edge:               ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

if.end87.i:                                       ; preds = %if.end81.i.if.end87.i_crit_edge, %if.end34.i.if.end87.i_crit_edge
  %conv88.i = zext i32 %count to i64
  %58 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %f_pos, align 8
  %add.i = add i64 %59, %conv88.i
  %frame_size.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 16
  %60 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %frame_size.i, align 8
  %conv89.i = sext i32 %61 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv89.i)
  %cmp90.i = icmp sgt i64 %add.i, %conv89.i
  %62 = trunc i64 %59 to i32
  %conv95.i = sub i32 %61, %62
  %count.addr.0.i = select i1 %cmp90.i, i32 %conv95.i, i32 %count
  %spinlock104.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 13
  %call106.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock104.i) #16
  %sio_full111.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 21
  %63 = ptrtoint ptr %sio_full111.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %sio_full111.i, align 4
  %cmp.i222.not.i = icmp eq ptr %64, %sio_full111.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock104.i, i32 noundef %call106.i) #16
  br i1 %cmp.i222.not.i, label %if.then114.i, label %if.end121.i

if.then114.i:                                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #18
  %call120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #20
  br label %stk_read.exit

if.end121.i:                                      ; preds = %if.end87.i
  %buffer.i = getelementptr i8, ptr %64, i32 -12
  %65 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buffer.i, align 8
  %67 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %f_pos, align 8
  %idx.ext.i = trunc i64 %68 to i32
  %add.ptr125.i = getelementptr i8, ptr %66, i32 %idx.ext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0.i)
  %cmp9.i.i.i = icmp slt i32 %count.addr.0.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end121.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.stk_read.exit_crit_edge, label %if.then27.i.i.i, !prof !231

land.rhs16.i.i.i.stk_read.exit_crit_edge:         ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %stk_read.exit

if.then.i.i.i.i:                                  ; preds = %if.end121.i
  call void @__check_object_size(ptr noundef %add.ptr125.i, i32 noundef %count.addr.0.i, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #16
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.addr.0.i, i32 -1226833920) #21, !srcloc !232
  %asmresult.i.i.i = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr125.i, i32 noundef %count.addr.0.i) #16
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr125.i, i32 noundef %count.addr.0.i) #16
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %count.addr.0.i, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %count.addr.0.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool127.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool127.not.i, label %if.end129.i, label %copy_to_user.exit.i.stk_read.exit_crit_edge

copy_to_user.exit.i.stk_read.exit_crit_edge:      ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

if.end129.i:                                      ; preds = %copy_to_user.exit.i
  %conv130.i = zext i32 %count.addr.0.i to i64
  %70 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %f_pos, align 8
  %add131.i = add i64 %71, %conv130.i
  store i64 %add131.i, ptr %f_pos, align 8
  %72 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %frame_size.i, align 8
  %conv133.i = sext i32 %73 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add131.i, i64 %conv133.i)
  %cmp134.not.i = icmp slt i64 %add131.i, %conv133.i
  br i1 %cmp134.not.i, label %if.end129.i.stk_read.exit_crit_edge, label %if.then136.i

if.end129.i.stk_read.exit_crit_edge:              ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_read.exit

if.then136.i:                                     ; preds = %if.end129.i
  %74 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %f_pos, align 8
  %call146.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock104.i) #16
  %sio_avail152.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 20
  %call.i.i224.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %64) #16
  br i1 %call.i.i224.i, label %if.end.i.i225.i, label %if.then136.i.__list_del_entry.exit.i.i_crit_edge

if.then136.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_del_entry.exit.i.i

if.end.i.i225.i:                                  ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i.i, align 4
  %77 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %64, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i225.i, %if.then136.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 20, i32 1
  %81 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i226.i = call zeroext i1 @__list_add_valid(ptr noundef %64, ptr noundef %82, ptr noundef %sio_avail152.i) #16
  br i1 %call.i.i.i226.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %64, ptr %prev.i2.i.i, align 4
  %84 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %sio_avail152.i, ptr %64, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %64, ptr %82, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock104.i, i32 noundef %call146.i) #16
  br label %stk_read.exit

stk_read.exit:                                    ; preds = %list_move_tail.exit.i, %if.end129.i.stk_read.exit_crit_edge, %copy_to_user.exit.i.stk_read.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.stk_read.exit_crit_edge, %if.then114.i, %if.end81.i.stk_read.exit_crit_edge, %if.end77.i, %land.lhs.true40.i.stk_read.exit_crit_edge, %lor.lhs.false16.i.stk_read.exit_crit_edge, %lor.lhs.false13.i.stk_read.exit_crit_edge, %while.end.i.i.stk_read.exit_crit_edge, %while.body.i.i.stk_read.exit_crit_edge, %land.lhs.true.i.stk_read.exit_crit_edge, %if.end.stk_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then114.i ], [ -5, %if.end.stk_read.exit_crit_edge ], [ -16, %land.lhs.true.i.stk_read.exit_crit_edge ], [ -12, %lor.lhs.false16.i.stk_read.exit_crit_edge ], [ -12, %lor.lhs.false13.i.stk_read.exit_crit_edge ], [ -11, %land.lhs.true40.i.stk_read.exit_crit_edge ], [ %call61250.i, %if.end77.i ], [ -5, %if.end81.i.stk_read.exit_crit_edge ], [ -14, %copy_to_user.exit.i.stk_read.exit_crit_edge ], [ %count.addr.0.i, %list_move_tail.exit.i ], [ %count.addr.0.i, %if.end129.i.stk_read.exit_crit_edge ], [ -12, %while.end.i.i.stk_read.exit_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.stk_read.exit_crit_edge ], [ -12, %while.body.i.i.stk_read.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %stk_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %stk_read.exit ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l_stk_poll(ptr noundef %fp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %fp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @v4l2_ctrl_poll(ptr noundef %fp, ptr noundef %wait) #16
  %wait_frame = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 14
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait_frame, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %3(ptr noundef %fp, ptr noundef nonnull %wait_frame, ptr noundef nonnull %wait) #16
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %status = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %poll_wait.exit.cleanup_crit_edge, label %if.end

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sio_full = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %sio_full to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sio_full, align 4
  %cmp.i.not = icmp eq ptr %7, %sio_full
  %or5 = or i32 %call1, 65
  %spec.select = select i1 %cmp.i.not, i32 %call1, i32 %or5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %poll_wait.exit.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l_stk_mmap(ptr noundef %fp, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %1, 12
  %call.i = tail call ptr @video_devdata(ptr noundef %fp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %6 = and i32 %5, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %.not = icmp eq i32 %6, 10
  br i1 %.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %n_sbufs = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %n_sbufs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_sbufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp41.not = icmp eq i32 %8, 0
  br i1 %cmp41.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sio_bufs = getelementptr inbounds %struct.stk_camera, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sio_bufs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stk_sio_buffer, ptr %10, i32 %i.042
  %m = getelementptr inbounds %struct.v4l2_buffer, ptr %arrayidx, i32 0, i32 9
  %11 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %shl)
  %cmp4 = icmp eq i32 %12, %shl
  br i1 %cmp4, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %arrayidx, null
  br i1 %cmp8, label %for.end.cleanup_crit_edge, label %if.end10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %buffer = getelementptr %struct.stk_sio_buffer, ptr %10, i32 %i.042, i32 1
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 8
  %call11 = tail call i32 @remap_vmalloc_range(ptr noundef %vma, ptr noundef %14, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_flags, align 4
  %or = or i32 %16, 262144
  store i32 %or, ptr %vm_flags, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %17 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %vm_private_data, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %18 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @stk_v4l_vm_ops, ptr %vm_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_buffer, ptr %arrayidx, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %or17 = or i32 %20, 1
  store i32 %or17, ptr %flags, align 4
  %21 = load ptr, ptr %vm_private_data, align 4
  %mapcount.i = getelementptr inbounds %struct.stk_sio_buffer, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %mapcount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mapcount.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %mapcount.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l_stk_open(ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %fp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %first_init = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %first_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %udev1.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev1.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  br label %if.end9

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %first_init to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %first_init, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %call10 = tail call i32 @v4l2_fh_open(ptr noundef %fp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %interface = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interface, align 4
  %call13 = tail call i32 @usb_autopm_get_interface(ptr noundef %12) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end14 ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l_stk_release(ptr noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %fp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %owner = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 4
  %cmp = icmp eq ptr %3, %fp
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @stk_stop_stream(ptr noundef %1)
  tail call fastcc void @stk_clean_iso(ptr noundef %1) #16
  tail call fastcc void @stk_free_sio_buffers(ptr noundef %1) #16
  %udev1.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev1.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 73, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %status = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %and = and i32 %9, -3
  store i32 %and, ptr %status, align 8
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %owner, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %interface = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %12) #16
  tail call void @mutex_unlock(ptr noundef %lock) #16
  %call5 = tail call i32 @v4l2_fh_release(ptr noundef %fp) #16
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk_allocate_buffers(ptr noundef %dev, i32 noundef %n_sbufs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %dev, null
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.i:                                         ; preds = %entry
  %udev1.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev1.i, align 8
  %isobufs.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isobufs.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #20
  %4 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr.i = load ptr, ptr %isobufs.i, align 4
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 48) #19
  %6 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i.i, ptr %isobufs.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %do.end.i
  %7 = phi ptr [ %call7.i.i.i.i, %if.else.i ], [ %.pr.i, %do.end.i ]
  %cmp7.i = icmp eq ptr %7, null
  br i1 %cmp7.i, label %do.end11.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end5.i
  %isoc_ep.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 9
  br label %for.body.i

do.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #20
  br label %if.then

for.body.i:                                       ; preds = %if.end62.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0177.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc78.i, %if.end62.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isobufs.i, align 4
  %arrayidx.i = getelementptr %struct.stk_iso_buf, ptr %9, i32 %i.0177.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %cmp17.i = icmp eq ptr %11, null
  br i1 %cmp17.i, label %if.then18.i, label %do.end34.i

if.then18.i:                                      ; preds = %for.body.i
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 49152, i32 noundef 3520, i32 noundef 4) #22
  %cmp20.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp20.i, label %do.end24.i, label %if.end27.i

do.end24.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #18
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %i.0177.i) #20
  br label %isobufs_out.i

if.end27.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %isobufs.i, align 4
  %arrayidx29.i = getelementptr %struct.stk_iso_buf, ptr %13, i32 %i.0177.i
  %14 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1.i.i.i.i, ptr %arrayidx29.i, align 4
  br label %if.end37.i

do.end34.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #20
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end34.i, %if.end27.i
  %15 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %isobufs.i, align 4
  %urb40.i = getelementptr %struct.stk_iso_buf, ptr %16, i32 %i.0177.i, i32 3
  %17 = ptrtoint ptr %urb40.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb40.i, align 4
  %cmp41.i = icmp eq ptr %18, null
  br i1 %cmp41.i, label %if.then42.i, label %do.end53.i

if.then42.i:                                      ; preds = %if.end37.i
  %call43.i = tail call ptr @usb_alloc_urb(i32 noundef 16, i32 noundef 3264) #16
  %cmp44.i = icmp eq ptr %call43.i, null
  br i1 %cmp44.i, label %if.then42.i.isobufs_out.i_crit_edge, label %if.end46.i

if.then42.i.isobufs_out.i_crit_edge:              ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %isobufs_out.i

if.end46.i:                                       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %isobufs.i, align 4
  %urb49.i = getelementptr %struct.stk_iso_buf, ptr %20, i32 %i.0177.i, i32 3
  %21 = ptrtoint ptr %urb49.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call43.i, ptr %urb49.i, align 4
  br label %if.end62.i

do.end53.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #20
  %22 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %isobufs.i, align 4
  %urb58.i = getelementptr %struct.stk_iso_buf, ptr %23, i32 %i.0177.i, i32 3
  %24 = ptrtoint ptr %urb58.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urb58.i, align 4
  tail call void @usb_kill_urb(ptr noundef %25) #16
  %26 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %isobufs.i, align 4
  %urb61.i = getelementptr %struct.stk_iso_buf, ptr %27, i32 %i.0177.i, i32 3
  %28 = ptrtoint ptr %urb61.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb61.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end53.i, %if.end46.i
  %urb.0.i = phi ptr [ %call43.i, %if.end46.i ], [ %29, %do.end53.i ]
  %interval.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 25
  %30 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %interval.i, align 4
  %dev63.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 8
  %31 = ptrtoint ptr %dev63.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %dev63.i, align 4
  %32 = ptrtoint ptr %isoc_ep.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %isoc_ep.i, align 8
  %conv.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %35, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or65.i = or i32 %or.i.i, 128
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 10
  %36 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or65.i, ptr %pipe.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 13
  %37 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %transfer_flags.i, align 4
  %38 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %isobufs.i, align 4
  %arrayidx67.i = getelementptr %struct.stk_iso_buf, ptr %39, i32 %i.0177.i
  %40 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx67.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 14
  %42 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %transfer_buffer.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 19
  %43 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 49152, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 28
  %44 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @stk_isoc_handler, ptr %complete.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 27
  %45 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %context.i, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 23
  %46 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %start_frame.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb.0.i, i32 0, i32 24
  %47 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16, ptr %number_of_packets.i, align 4
  %arrayidx74.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 0
  %48 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx74.i, align 4
  %length.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 0, i32 1
  %49 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3072, ptr %length.i, align 4
  %arrayidx74.1.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 1
  %50 = ptrtoint ptr %arrayidx74.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3072, ptr %arrayidx74.1.i, align 4
  %length.1.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 1, i32 1
  %51 = ptrtoint ptr %length.1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3072, ptr %length.1.i, align 4
  %arrayidx74.2.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 2
  %52 = ptrtoint ptr %arrayidx74.2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 6144, ptr %arrayidx74.2.i, align 4
  %length.2.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 2, i32 1
  %53 = ptrtoint ptr %length.2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3072, ptr %length.2.i, align 4
  %arrayidx74.3.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 3
  %54 = ptrtoint ptr %arrayidx74.3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 9216, ptr %arrayidx74.3.i, align 4
  %length.3.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 3, i32 1
  %55 = ptrtoint ptr %length.3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3072, ptr %length.3.i, align 4
  %arrayidx74.4.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 4
  %56 = ptrtoint ptr %arrayidx74.4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 12288, ptr %arrayidx74.4.i, align 4
  %length.4.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 4, i32 1
  %57 = ptrtoint ptr %length.4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3072, ptr %length.4.i, align 4
  %arrayidx74.5.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 5
  %58 = ptrtoint ptr %arrayidx74.5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 15360, ptr %arrayidx74.5.i, align 4
  %length.5.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 5, i32 1
  %59 = ptrtoint ptr %length.5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3072, ptr %length.5.i, align 4
  %arrayidx74.6.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 6
  %60 = ptrtoint ptr %arrayidx74.6.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 18432, ptr %arrayidx74.6.i, align 4
  %length.6.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 6, i32 1
  %61 = ptrtoint ptr %length.6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3072, ptr %length.6.i, align 4
  %arrayidx74.7.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 7
  %62 = ptrtoint ptr %arrayidx74.7.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 21504, ptr %arrayidx74.7.i, align 4
  %length.7.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 7, i32 1
  %63 = ptrtoint ptr %length.7.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3072, ptr %length.7.i, align 4
  %arrayidx74.8.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 8
  %64 = ptrtoint ptr %arrayidx74.8.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 24576, ptr %arrayidx74.8.i, align 4
  %length.8.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 8, i32 1
  %65 = ptrtoint ptr %length.8.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3072, ptr %length.8.i, align 4
  %arrayidx74.9.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 9
  %66 = ptrtoint ptr %arrayidx74.9.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 27648, ptr %arrayidx74.9.i, align 4
  %length.9.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 9, i32 1
  %67 = ptrtoint ptr %length.9.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3072, ptr %length.9.i, align 4
  %arrayidx74.10.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 10
  %68 = ptrtoint ptr %arrayidx74.10.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 30720, ptr %arrayidx74.10.i, align 4
  %length.10.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 10, i32 1
  %69 = ptrtoint ptr %length.10.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3072, ptr %length.10.i, align 4
  %arrayidx74.11.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 11
  %70 = ptrtoint ptr %arrayidx74.11.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 33792, ptr %arrayidx74.11.i, align 4
  %length.11.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 11, i32 1
  %71 = ptrtoint ptr %length.11.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3072, ptr %length.11.i, align 4
  %arrayidx74.12.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 12
  %72 = ptrtoint ptr %arrayidx74.12.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 36864, ptr %arrayidx74.12.i, align 4
  %length.12.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 12, i32 1
  %73 = ptrtoint ptr %length.12.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3072, ptr %length.12.i, align 4
  %arrayidx74.13.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 13
  %74 = ptrtoint ptr %arrayidx74.13.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 39936, ptr %arrayidx74.13.i, align 4
  %length.13.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 13, i32 1
  %75 = ptrtoint ptr %length.13.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3072, ptr %length.13.i, align 4
  %arrayidx74.14.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 14
  %76 = ptrtoint ptr %arrayidx74.14.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 43008, ptr %arrayidx74.14.i, align 4
  %length.14.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 14, i32 1
  %77 = ptrtoint ptr %length.14.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3072, ptr %length.14.i, align 4
  %arrayidx74.15.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 15
  %78 = ptrtoint ptr %arrayidx74.15.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 46080, ptr %arrayidx74.15.i, align 4
  %length.15.i = getelementptr %struct.urb, ptr %urb.0.i, i32 0, i32 29, i32 15, i32 1
  %79 = ptrtoint ptr %length.15.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 3072, ptr %length.15.i, align 4
  %inc78.i = add nuw nsw i32 %i.0177.i, 1
  %exitcond.not.i = icmp eq i32 %inc78.i, 3
  br i1 %exitcond.not.i, label %if.end, label %if.end62.i.for.body.i_crit_edge

if.end62.i.for.body.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

isobufs_out.i:                                    ; preds = %if.then42.i.isobufs_out.i_crit_edge, %do.end24.i
  %80 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %isobufs.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %tobool87.not.i = icmp eq ptr %83, null
  br i1 %tobool87.not.i, label %isobufs_out.i.for.end94.i_crit_edge, label %for.body88.i

isobufs_out.i.for.end94.i_crit_edge:              ; preds = %isobufs_out.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end94.i

for.body88.i:                                     ; preds = %isobufs_out.i
  tail call void @kfree(ptr noundef nonnull %83) #16
  %84 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %isobufs.i, align 4
  %arrayidx85.1.i = getelementptr %struct.stk_iso_buf, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx85.1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx85.1.i, align 4
  %tobool87.not.1.i = icmp eq ptr %87, null
  br i1 %tobool87.not.1.i, label %for.body88.i.for.end94.i_crit_edge, label %for.body88.1.i

for.body88.i.for.end94.i_crit_edge:               ; preds = %for.body88.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end94.i

for.body88.1.i:                                   ; preds = %for.body88.i
  tail call void @kfree(ptr noundef nonnull %87) #16
  %88 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %isobufs.i, align 4
  %arrayidx85.2.i = getelementptr %struct.stk_iso_buf, ptr %89, i32 2
  %90 = ptrtoint ptr %arrayidx85.2.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx85.2.i, align 4
  %tobool87.not.2.i = icmp eq ptr %91, null
  br i1 %tobool87.not.2.i, label %for.body88.1.i.for.end94.i_crit_edge, label %for.body88.2.i

for.body88.1.i.for.end94.i_crit_edge:             ; preds = %for.body88.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end94.i

for.body88.2.i:                                   ; preds = %for.body88.1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %91) #16
  br label %for.end94.i

for.end94.i:                                      ; preds = %for.body88.2.i, %for.body88.1.i.for.end94.i_crit_edge, %for.body88.i.for.end94.i_crit_edge, %isobufs_out.i.for.end94.i_crit_edge
  %92 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %isobufs.i, align 4
  %urb101.i = getelementptr %struct.stk_iso_buf, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %urb101.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %urb101.i, align 4
  %tobool102.not.i = icmp eq ptr %95, null
  br i1 %tobool102.not.i, label %for.end94.i.for.end110.i_crit_edge, label %for.body104.i

for.end94.i.for.end110.i_crit_edge:               ; preds = %for.end94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end110.i

for.body104.i:                                    ; preds = %for.end94.i
  tail call void @usb_free_urb(ptr noundef nonnull %95) #16
  %96 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %isobufs.i, align 4
  %urb101.1.i = getelementptr %struct.stk_iso_buf, ptr %97, i32 1, i32 3
  %98 = ptrtoint ptr %urb101.1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %urb101.1.i, align 4
  %tobool102.not.1.i = icmp eq ptr %99, null
  br i1 %tobool102.not.1.i, label %for.body104.i.for.end110.i_crit_edge, label %for.body104.1.i

for.body104.i.for.end110.i_crit_edge:             ; preds = %for.body104.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end110.i

for.body104.1.i:                                  ; preds = %for.body104.i
  tail call void @usb_free_urb(ptr noundef nonnull %99) #16
  %100 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %isobufs.i, align 4
  %urb101.2.i = getelementptr %struct.stk_iso_buf, ptr %101, i32 2, i32 3
  %102 = ptrtoint ptr %urb101.2.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %urb101.2.i, align 4
  %tobool102.not.2.i = icmp eq ptr %103, null
  br i1 %tobool102.not.2.i, label %for.body104.1.i.for.end110.i_crit_edge, label %for.body104.2.i

for.body104.1.i.for.end110.i_crit_edge:           ; preds = %for.body104.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end110.i

for.body104.2.i:                                  ; preds = %for.body104.1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_free_urb(ptr noundef nonnull %103) #16
  br label %for.end110.i

for.end110.i:                                     ; preds = %for.body104.2.i, %for.body104.1.i.for.end110.i_crit_edge, %for.body104.i.for.end110.i_crit_edge, %for.end94.i.for.end110.i_crit_edge
  %104 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %isobufs.i, align 4
  tail call void @kfree(ptr noundef %105) #16
  %106 = ptrtoint ptr %isobufs.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %isobufs.i, align 4
  br label %if.then

if.then:                                          ; preds = %for.end110.i, %do.end11.i, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ -6, %entry.if.then_crit_edge ], [ -12, %for.end110.i ], [ -12, %do.end11.i ]
  tail call fastcc void @stk_clean_iso(ptr noundef %dev)
  br label %cleanup

if.end:                                           ; preds = %if.end62.i
  %status.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 12
  %107 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %status.i, align 8
  %or80.i = or i32 %108, 4
  store i32 %or80.i, ptr %status.i, align 8
  %sio_bufs.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 19
  %109 = ptrtoint ptr %sio_bufs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sio_bufs.i, align 4
  %cmp.not.i = icmp eq ptr %110, null
  br i1 %cmp.not.i, label %if.else.i14, label %do.end.i13

do.end.i13:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #20
  br label %cleanup

if.else.i14:                                      ; preds = %if.end
  %111 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_sbufs, i32 104) #16
  %112 = extractvalue { i32, i1 } %111, 1
  br i1 %112, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !233

kcalloc.exit.thread.i:                            ; preds = %if.else.i14
  call void @__sanitizer_cov_trace_pc() #18
  %113 = ptrtoint ptr %sio_bufs.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %sio_bufs.i, align 4
  br label %if.then3

if.end7.i.i.i:                                    ; preds = %if.else.i14
  %114 = extractvalue { i32, i1 } %111, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %114, i32 noundef 3520) #22
  %115 = ptrtoint ptr %sio_bufs.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call8.i.i.i, ptr %sio_bufs.i, align 4
  %cmp4.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp4.i, label %if.end7.i.i.i.if.then3_crit_edge, label %for.cond.preheader.i16

if.end7.i.i.i.if.then3_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

for.cond.preheader.i16:                           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_sbufs)
  %cmp627.not.i = icmp eq i32 %n_sbufs, 0
  br i1 %cmp627.not.i, label %for.cond.preheader.i16.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i16.cleanup_crit_edge:         ; preds = %for.cond.preheader.i16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i16
  %frame_size.i.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 16
  %n_sbufs12.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 18
  br label %for.body.i17

for.body.i17:                                     ; preds = %if.end11.i.for.body.i17_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %if.end11.i.for.body.i17_crit_edge ]
  %116 = ptrtoint ptr %sio_bufs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sio_bufs.i, align 4
  %add.ptr.i.i = getelementptr %struct.stk_sio_buffer, ptr %117, i32 %i.028.i
  %list.i.i = getelementptr %struct.stk_sio_buffer, ptr %117, i32 %i.028.i, i32 4
  %118 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr %struct.stk_sio_buffer, ptr %117, i32 %i.028.i, i32 4, i32 1
  %119 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %120 = ptrtoint ptr %frame_size.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %frame_size.i.i, align 8
  %add.i.i = add i32 %121, 4095
  %and.i.i = and i32 %add.i.i, -4096
  %length.i.i = getelementptr inbounds %struct.v4l2_buffer, ptr %add.ptr.i.i, i32 0, i32 10
  %122 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %and.i.i, ptr %length.i.i, align 4
  %call.i.i = tail call noalias ptr @vmalloc_user(i32 noundef %and.i.i) #22
  %buffer.i.i = getelementptr %struct.stk_sio_buffer, ptr %117, i32 %i.028.i, i32 1
  %123 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i.i, ptr %buffer.i.i, align 8
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %for.body.i17
  %124 = ptrtoint ptr %n_sbufs12.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %n_sbufs12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp10.i = icmp ugt i32 %125, 1
  br i1 %cmp10.i, label %if.then8.i.cleanup_crit_edge, label %if.then8.i.if.then3_crit_edge

if.then8.i.if.then3_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11.i:                                       ; preds = %for.body.i17
  %mapcount.i.i = getelementptr %struct.stk_sio_buffer, ptr %117, i32 %i.028.i, i32 2
  %126 = ptrtoint ptr %mapcount.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %mapcount.i.i, align 4
  %dev4.i.i = getelementptr %struct.stk_sio_buffer, ptr %117, i32 %i.028.i, i32 3
  %127 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %dev, ptr %dev4.i.i, align 8
  %128 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %i.028.i, ptr %add.ptr.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.v4l2_buffer, ptr %add.ptr.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %type.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.v4l2_buffer, ptr %add.ptr.i.i, i32 0, i32 3
  %130 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 8192, ptr %flags.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_buffer, ptr %add.ptr.i.i, i32 0, i32 4
  %131 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1, ptr %field.i.i, align 8
  %memory.i.i = getelementptr inbounds %struct.v4l2_buffer, ptr %add.ptr.i.i, i32 0, i32 8
  %132 = ptrtoint ptr %memory.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %memory.i.i, align 4
  %mul.i.i = shl i32 %i.028.i, 1
  %133 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %length.i.i, align 4
  %mul13.i.i = mul i32 %mul.i.i, %134
  %m.i.i = getelementptr inbounds %struct.v4l2_buffer, ptr %add.ptr.i.i, i32 0, i32 9
  %135 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %mul13.i.i, ptr %m.i.i, align 8
  %add.i = add nuw i32 %i.028.i, 1
  %136 = ptrtoint ptr %n_sbufs12.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %add.i, ptr %n_sbufs12.i, align 8
  %exitcond.not.i18 = icmp eq i32 %add.i, %n_sbufs
  br i1 %exitcond.not.i18, label %if.end11.i.cleanup_crit_edge, label %if.end11.i.for.body.i17_crit_edge

if.end11.i.for.body.i17_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i17

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %if.then8.i.if.then3_crit_edge, %if.end7.i.i.i.if.then3_crit_edge, %kcalloc.exit.thread.i
  tail call fastcc void @stk_free_sio_buffers(ptr noundef nonnull %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end11.i.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %for.cond.preheader.i16.cleanup_crit_edge, %do.end.i13, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ -12, %if.then3 ], [ 0, %do.end.i13 ], [ 0, %for.cond.preheader.i16.cleanup_crit_edge ], [ 0, %if.then8.i.cleanup_crit_edge ], [ 0, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk_start_stream(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %.not = icmp eq i32 %2, 6
  br i1 %.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #20
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %udev = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 8
  %call9 = tail call i32 @usb_set_interface(ptr noundef %4, i32 noundef 0, i32 noundef 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end13, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #20
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end8.if.end16_crit_edge
  %call17 = tail call i32 @stk_sensor_wakeup(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.if.end25_crit_edge, label %do.end22

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #20
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.end16.if.end25_crit_edge
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 1) #19
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end25.stk_camera_read_reg.exit_crit_edge, label %if.end.i

if.end25.stk_camera_read_reg.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_camera_read_reg.exit

if.end.i:                                         ; preds = %if.end25
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %9, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or3.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 278, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp.i = icmp sgt i32 %call4.i, -1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %value_116.0 = phi i8 [ %11, %if.then5.i ], [ -1, %if.end.i.if.end6.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %stk_camera_read_reg.exit

stk_camera_read_reg.exit:                         ; preds = %if.end6.i, %if.end25.stk_camera_read_reg.exit_crit_edge
  %value_116.1 = phi i8 [ -1, %if.end25.stk_camera_read_reg.exit_crit_edge ], [ %value_116.0, %if.end6.i ]
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 1) #19
  %tobool.not.i76 = icmp eq ptr %call7.i.i75, null
  br i1 %tobool.not.i76, label %stk_camera_read_reg.exit.stk_camera_read_reg.exit85_crit_edge, label %if.end.i81

stk_camera_read_reg.exit.stk_camera_read_reg.exit85_crit_edge: ; preds = %stk_camera_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_camera_read_reg.exit85

if.end.i81:                                       ; preds = %stk_camera_read_reg.exit
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %13, align 8
  %shl.i.i77 = shl i32 %16, 8
  %or3.i78 = or i32 %shl.i.i77, -2147483520
  %call4.i79 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or3.i78, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 279, ptr noundef nonnull %call7.i.i75, i16 noundef zeroext 1, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i79)
  %cmp.i80 = icmp sgt i32 %call4.i79, -1
  br i1 %cmp.i80, label %if.then5.i82, label %if.end.i81.if.end6.i83_crit_edge

if.end.i81.if.end6.i83_crit_edge:                 ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i83

if.then5.i82:                                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %call7.i.i75 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i.i75, align 8
  br label %if.end6.i83

if.end6.i83:                                      ; preds = %if.then5.i82, %if.end.i81.if.end6.i83_crit_edge
  %value_117.0 = phi i8 [ %18, %if.then5.i82 ], [ -1, %if.end.i81.if.end6.i83_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i75) #16
  br label %stk_camera_read_reg.exit85

stk_camera_read_reg.exit85:                       ; preds = %if.end6.i83, %stk_camera_read_reg.exit.stk_camera_read_reg.exit85_crit_edge
  %value_117.1 = phi i8 [ -1, %stk_camera_read_reg.exit.stk_camera_read_reg.exit85_crit_edge ], [ %value_117.0, %if.end6.i83 ]
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i87 = shl i32 %22, 8
  %or.i = or i32 %shl.i.i87, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 278, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %23 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i89 = shl i32 %26, 8
  %or.i90 = or i32 %shl.i.i89, -2147483648
  %call2.i91 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i90, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 279, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %27 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i93 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 1) #19
  %tobool.not.i94 = icmp eq ptr %call7.i.i93, null
  br i1 %tobool.not.i94, label %stk_camera_read_reg.exit85.stk_camera_read_reg.exit103_crit_edge, label %if.end.i99

stk_camera_read_reg.exit85.stk_camera_read_reg.exit103_crit_edge: ; preds = %stk_camera_read_reg.exit85
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_camera_read_reg.exit103

if.end.i99:                                       ; preds = %stk_camera_read_reg.exit85
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %28, align 8
  %shl.i.i95 = shl i32 %31, 8
  %or3.i96 = or i32 %shl.i.i95, -2147483520
  %call4.i97 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or3.i96, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %call7.i.i93, i16 noundef zeroext 1, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i97)
  %cmp.i98 = icmp sgt i32 %call4.i97, -1
  br i1 %cmp.i98, label %if.then5.i100, label %if.end.i99.if.end6.i101_crit_edge

if.end.i99.if.end6.i101_crit_edge:                ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i101

if.then5.i100:                                    ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %call7.i.i93 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %call7.i.i93, align 8
  br label %if.end6.i101

if.end6.i101:                                     ; preds = %if.then5.i100, %if.end.i99.if.end6.i101_crit_edge
  %value.0 = phi i8 [ %33, %if.then5.i100 ], [ -1, %if.end.i99.if.end6.i101_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i93) #16
  br label %stk_camera_read_reg.exit103

stk_camera_read_reg.exit103:                      ; preds = %if.end6.i101, %stk_camera_read_reg.exit85.stk_camera_read_reg.exit103_crit_edge
  %value.1 = phi i8 [ -1, %stk_camera_read_reg.exit85.stk_camera_read_reg.exit103_crit_edge ], [ %value.0, %if.end6.i101 ]
  %34 = or i8 %value.1, -128
  %35 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i105 = shl i32 %38, 8
  %or.i106 = or i32 %shl.i.i105, -2147483648
  %conv.i = zext i8 %34 to i16
  %call2.i107 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i106, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 256, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %39 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udev, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i109 = shl i32 %42, 8
  %or.i110 = or i32 %shl.i.i109, -2147483648
  %conv.i111 = zext i8 %value_116.1 to i16
  %call2.i112 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i110, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i111, i16 noundef zeroext 278, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %43 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udev, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i114 = shl i32 %46, 8
  %or.i115 = or i32 %shl.i.i114, -2147483648
  %conv.i116 = zext i8 %value_117.1 to i16
  %call2.i117 = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i115, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i116, i16 noundef zeroext 279, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %isobufs = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 15
  %urbs_used = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 10
  %47 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %isobufs, align 4
  %urb = getelementptr %struct.stk_iso_buf, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %urb, align 4
  %tobool37.not = icmp eq ptr %50, null
  br i1 %tobool37.not, label %stk_camera_read_reg.exit103.for.inc_crit_edge, label %if.then38

stk_camera_read_reg.exit103.for.inc_crit_edge:    ; preds = %stk_camera_read_reg.exit103
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then38:                                        ; preds = %stk_camera_read_reg.exit103
  %call42 = tail call i32 @usb_submit_urb(ptr noundef nonnull %50, i32 noundef 3264) #16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %urbs_used, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %urbs_used, i32 1, i32 3, i32 1) #16
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %urbs_used, ptr %urbs_used, i32 1, ptr elementtype(i32) %urbs_used) #16, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then38.for.inc_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.then38.for.inc_crit_edge, %stk_camera_read_reg.exit103.for.inc_crit_edge
  %52 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %isobufs, align 4
  %urb.1 = getelementptr %struct.stk_iso_buf, ptr %53, i32 1, i32 3
  %54 = ptrtoint ptr %urb.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %urb.1, align 4
  %tobool37.not.1 = icmp eq ptr %55, null
  br i1 %tobool37.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then38.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then38.1:                                      ; preds = %for.inc
  %call42.1 = tail call i32 @usb_submit_urb(ptr noundef nonnull %55, i32 noundef 3264) #16
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %urbs_used, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %urbs_used, i32 1, i32 3, i32 1) #16
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %urbs_used, ptr %urbs_used, i32 1, ptr elementtype(i32) %urbs_used) #16, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.1)
  %tobool43.not.1 = icmp eq i32 %call42.1, 0
  br i1 %tobool43.not.1, label %if.then38.1.for.inc.1_crit_edge, label %if.then38.1.cleanup_crit_edge

if.then38.1.cleanup_crit_edge:                    ; preds = %if.then38.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then38.1.for.inc.1_crit_edge:                  ; preds = %if.then38.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then38.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %57 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %isobufs, align 4
  %urb.2 = getelementptr %struct.stk_iso_buf, ptr %58, i32 2, i32 3
  %59 = ptrtoint ptr %urb.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %urb.2, align 4
  %tobool37.not.2 = icmp eq ptr %60, null
  br i1 %tobool37.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then38.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then38.2:                                      ; preds = %for.inc.1
  %call42.2 = tail call i32 @usb_submit_urb(ptr noundef nonnull %60, i32 noundef 3264) #16
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %urbs_used, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %urbs_used, i32 1, i32 3, i32 1) #16
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %urbs_used, ptr %urbs_used, i32 1, ptr elementtype(i32) %urbs_used) #16, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.2)
  %tobool43.not.2 = icmp eq i32 %call42.2, 0
  br i1 %tobool43.not.2, label %if.then38.2.for.inc.2_crit_edge, label %if.then38.2.cleanup_crit_edge

if.then38.2.cleanup_crit_edge:                    ; preds = %if.then38.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then38.2.for.inc.2_crit_edge:                  ; preds = %if.then38.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then38.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %62 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %status, align 8
  %or48 = or i32 %63, 8
  store i32 %or48, ptr %status, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %if.then38.2.cleanup_crit_edge, %if.then38.1.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.2 ], [ -14, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call42, %if.then38.cleanup_crit_edge ], [ %call42.1, %if.then38.1.cleanup_crit_edge ], [ %call42.2, %if.then38.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk_sensor_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk_clean_iso(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %isobufs = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isobufs, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %urbs_used = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 10
  %status = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isobufs, align 4
  %urb4 = getelementptr %struct.stk_iso_buf, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %urb4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb4, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.cond.preheader.if.end10_crit_edge, label %if.then5

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then5:                                         ; preds = %for.cond.preheader
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %urbs_used, i32 noundef 4) #16
  %6 = ptrtoint ptr %urbs_used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %urbs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.then5.if.end9_crit_edge, label %land.lhs.true

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end9_crit_edge, label %if.then8

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %5) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true.if.end9_crit_edge, %if.then5.if.end9_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %5) #16
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %for.cond.preheader.if.end10_crit_edge
  %10 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isobufs, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %13) #16
  %14 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isobufs, align 4
  %urb4.1 = getelementptr %struct.stk_iso_buf, ptr %15, i32 1, i32 3
  %16 = ptrtoint ptr %urb4.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb4.1, align 4
  %tobool.not.1 = icmp eq ptr %17, null
  br i1 %tobool.not.1, label %if.end10.if.end10.1_crit_edge, label %if.then5.1

if.end10.if.end10.1_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.1

if.then5.1:                                       ; preds = %if.end10
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %urbs_used, i32 noundef 4) #16
  %18 = ptrtoint ptr %urbs_used to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %urbs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not.1 = icmp eq i32 %19, 0
  br i1 %tobool6.not.1, label %if.then5.1.if.end9.1_crit_edge, label %land.lhs.true.1

if.then5.1.if.end9.1_crit_edge:                   ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.1

land.lhs.true.1:                                  ; preds = %if.then5.1
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 8
  %and.1 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool7.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool7.not.1, label %land.lhs.true.1.if.end9.1_crit_edge, label %if.then8.1

land.lhs.true.1.if.end9.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.1

if.then8.1:                                       ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %17) #16
  br label %if.end9.1

if.end9.1:                                        ; preds = %if.then8.1, %land.lhs.true.1.if.end9.1_crit_edge, %if.then5.1.if.end9.1_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %17) #16
  br label %if.end10.1

if.end10.1:                                       ; preds = %if.end9.1, %if.end10.if.end10.1_crit_edge
  %22 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %isobufs, align 4
  %arrayidx12.1 = getelementptr %struct.stk_iso_buf, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx12.1, align 4
  tail call void @kfree(ptr noundef %25) #16
  %26 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %isobufs, align 4
  %urb4.2 = getelementptr %struct.stk_iso_buf, ptr %27, i32 2, i32 3
  %28 = ptrtoint ptr %urb4.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb4.2, align 4
  %tobool.not.2 = icmp eq ptr %29, null
  br i1 %tobool.not.2, label %if.end10.1.if.end10.2_crit_edge, label %if.then5.2

if.end10.1.if.end10.2_crit_edge:                  ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.2

if.then5.2:                                       ; preds = %if.end10.1
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %urbs_used, i32 noundef 4) #16
  %30 = ptrtoint ptr %urbs_used to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %urbs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool6.not.2 = icmp eq i32 %31, 0
  br i1 %tobool6.not.2, label %if.then5.2.if.end9.2_crit_edge, label %land.lhs.true.2

if.then5.2.if.end9.2_crit_edge:                   ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.2

land.lhs.true.2:                                  ; preds = %if.then5.2
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 8
  %and.2 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool7.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool7.not.2, label %land.lhs.true.2.if.end9.2_crit_edge, label %if.then8.2

land.lhs.true.2.if.end9.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.2

if.then8.2:                                       ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %29) #16
  br label %if.end9.2

if.end9.2:                                        ; preds = %if.then8.2, %land.lhs.true.2.if.end9.2_crit_edge, %if.then5.2.if.end9.2_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %29) #16
  br label %if.end10.2

if.end10.2:                                       ; preds = %if.end9.2, %if.end10.1.if.end10.2_crit_edge
  %34 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %isobufs, align 4
  %arrayidx12.2 = getelementptr %struct.stk_iso_buf, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx12.2, align 4
  tail call void @kfree(ptr noundef %37) #16
  %38 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %isobufs, align 4
  tail call void @kfree(ptr noundef %39) #16
  %40 = ptrtoint ptr %isobufs to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %isobufs, align 4
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status, align 8
  %and16 = and i32 %42, -5
  store i32 %and16, ptr %status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10.2, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk_free_sio_buffers(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %n_sbufs = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %n_sbufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_sbufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sio_bufs = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sio_bufs, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %do.body8, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %mapcount = getelementptr %struct.stk_sio_buffer, ptr %3, i32 %i.03, i32 2
  %4 = ptrtoint ptr %mapcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp sgt i32 %5, 0
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body8:                                         ; preds = %for.cond
  %spinlock = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 13
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #16
  %sio_avail = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %sio_avail to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %sio_avail, ptr %sio_avail, align 4
  %prev.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sio_avail, ptr %prev.i, align 4
  %sio_full = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %sio_full to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %sio_full, ptr %sio_full, align 4
  %prev.i1 = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sio_full, ptr %prev.i1, align 4
  %10 = ptrtoint ptr %n_sbufs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_sbufs, align 8
  store i32 0, ptr %n_sbufs, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp174 = icmp sgt i32 %11, 0
  br i1 %cmp174, label %do.body8.for.body19_crit_edge, label %do.body8.for.end24_crit_edge

do.body8.for.end24_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end24

do.body8.for.body19_crit_edge:                    ; preds = %do.body8
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %do.body8.for.body19_crit_edge
  %i.15 = phi i32 [ %inc23, %for.body19.for.body19_crit_edge ], [ 0, %do.body8.for.body19_crit_edge ]
  %12 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sio_bufs, align 4
  %buffer = getelementptr %struct.stk_sio_buffer, ptr %13, i32 %i.15, i32 1
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 8
  tail call void @vfree(ptr noundef %15) #16
  %inc23 = add nuw nsw i32 %i.15, 1
  %exitcond6.not = icmp eq i32 %inc23, %11
  br i1 %exitcond6.not, label %for.body19.for.end24_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body19

for.body19.for.end24_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end24

for.end24:                                        ; preds = %for.body19.for.end24_crit_edge, %do.body8.for.end24_crit_edge
  %16 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sio_bufs, align 4
  tail call void @kfree(ptr noundef %17) #16
  %18 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sio_bufs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stk_isoc_handler(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %3, label %do.body10 [
    i32 -2, label %if.end.if.then7_crit_edge
    i32 -104, label %if.end.if.then7_crit_edge270
    i32 -108, label %if.end.if.then7_crit_edge271
  ]

if.end.if.then7_crit_edge271:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.end.if.then7_crit_edge270:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge270, %if.end.if.then7_crit_edge271
  %urbs_used = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %urbs_used, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %urbs_used, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %urbs_used, ptr %urbs_used, i32 1, ptr elementtype(i32) %urbs_used) #16, !srcloc !235
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %spinlock = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 13
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #16
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %7, label %do.end28 [
    i32 -115, label %do.body10.if.end32_crit_edge
    i32 0, label %do.body10.if.end32_crit_edge272
  ]

do.body10.if.end32_crit_edge272:                  ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

do.body10.if.end32_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

do.end28:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %7) #20
  br label %resubmit

if.end32:                                         ; preds = %do.body10.if.end32_crit_edge, %do.body10.if.end32_crit_edge272
  %sio_avail = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %sio_avail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %sio_avail, align 4
  %cmp.i.not = icmp eq ptr %10, %sio_avail
  br i1 %cmp.i.not, label %if.then34, label %if.end44

if.then34:                                        ; preds = %if.end32
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @stk_isoc_handler._rs, ptr noundef nonnull @.str.47) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.resubmit_crit_edge, label %do.end40

if.then34.resubmit_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %resubmit

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #20
  br label %resubmit

if.end44:                                         ; preds = %if.end32
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %11 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp48264 = icmp sgt i32 %12, 0
  br i1 %cmp48264, label %for.body.lr.ph, label %if.end44.resubmit_crit_edge

if.end44.resubmit_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %resubmit

for.body.lr.ph:                                   ; preds = %if.end44
  %buffer = getelementptr i8, ptr %10, i32 -12
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 8
  %bytesused = getelementptr i8, ptr %10, i32 -84
  %15 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytesused, align 8
  %add.ptr47 = getelementptr i8, ptr %14, i32 %16
  %add.ptr = getelementptr i8, ptr %10, i32 -92
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %frame_size = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 20, i32 1
  %sio_full = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 21
  %prev.i2.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 21, i32 1
  %wait_frame = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0268 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %flags.0267 = phi i32 [ %call14, %for.body.lr.ph ], [ %flags.1, %for.inc.for.body_crit_edge ]
  %fill.0266 = phi ptr [ %add.ptr47, %for.body.lr.ph ], [ %fill.2, %for.inc.for.body_crit_edge ]
  %fb.0265 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %fb.2, %for.inc.for.body_crit_edge ]
  %status50 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0268, i32 3
  %17 = ptrtoint ptr %status50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status50, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %18, label %do.end62 [
    i32 0, label %if.end69
    i32 -18, label %for.body.for.inc_crit_edge
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end62:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %i.0268, i32 noundef %18) #20
  br label %for.inc

if.end69:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0268
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0268, i32 2
  %20 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_length, align 4
  %22 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_buffer, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %add.ptr74 = getelementptr i8, ptr %23, i32 %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp75 = icmp slt i32 %21, 5
  br i1 %cmp75, label %if.end69.for.inc_crit_edge, label %if.end78

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end78:                                         ; preds = %if.end69
  %26 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %tobool80.not = icmp sgt i8 %27, -1
  br i1 %tobool80.not, label %if.else134, label %if.then81

if.then81:                                        ; preds = %if.end78
  %sub = add nsw i32 %21, -8
  %add.ptr82 = getelementptr i8, ptr %add.ptr74, i32 8
  %bytesused84 = getelementptr inbounds %struct.v4l2_buffer, ptr %fb.0265, i32 0, i32 2
  %28 = ptrtoint ptr %bytesused84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytesused84, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp85.not = icmp eq i32 %29, 0
  br i1 %cmp85.not, label %if.then81.if.else_crit_edge, label %land.lhs.true87

if.then81.if.else_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true87:                                  ; preds = %if.then81
  %30 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frame_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp90.not = icmp eq i32 %29, %31
  br i1 %cmp90.not, label %land.lhs.true87.if.else_crit_edge, label %if.then92

land.lhs.true87.if.else_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then92:                                        ; preds = %land.lhs.true87
  %call93 = tail call i32 @___ratelimit(ptr noundef nonnull @stk_isoc_handler._rs.58, ptr noundef nonnull @.str.47) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then92.if.end103_crit_edge, label %do.end98

if.then92.if.end103_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

do.end98:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %bytesused84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytesused84, align 8
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %i.0268, i32 noundef %33) #20
  br label %if.end103

if.end103:                                        ; preds = %do.end98, %if.then92.if.end103_crit_edge
  %34 = ptrtoint ptr %bytesused84 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %bytesused84, align 8
  %buffer106 = getelementptr inbounds %struct.stk_sio_buffer, ptr %fb.0265, i32 0, i32 1
  %35 = ptrtoint ptr %buffer106 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer106, align 8
  br label %if.end137

if.else:                                          ; preds = %land.lhs.true87.if.else_crit_edge, %if.then81.if.else_crit_edge
  %37 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frame_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %38)
  %cmp110 = icmp eq i32 %29, %38
  br i1 %cmp110, label %if.then112, label %if.else.if.end137_crit_edge

if.else.if.end137_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end137

if.then112:                                       ; preds = %if.else
  %39 = ptrtoint ptr %sio_avail to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %sio_avail, align 4
  %cmp.i.not.i = icmp eq ptr %40, %sio_avail
  br i1 %cmp.i.not.i, label %if.then112.if.else120_crit_edge, label %list_is_singular.exit

if.then112.if.else120_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else120

list_is_singular.exit:                            ; preds = %if.then112
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %cmp.i261.not = icmp eq ptr %40, %42
  br i1 %cmp.i261.not, label %if.then116, label %list_is_singular.exit.if.else120_crit_edge

list_is_singular.exit.if.else120_crit_edge:       ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else120

if.then116:                                       ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %bytesused84 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bytesused84, align 8
  %buffer119 = getelementptr inbounds %struct.stk_sio_buffer, ptr %fb.0265, i32 0, i32 1
  %44 = ptrtoint ptr %buffer119 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer119, align 8
  br label %if.end137

if.else120:                                       ; preds = %list_is_singular.exit.if.else120_crit_edge, %if.then112.if.else120_crit_edge
  %call.i.i262 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %40) #16
  br i1 %call.i.i262, label %if.end.i.i, label %if.else120.__list_del_entry.exit.i_crit_edge

if.else120.__list_del_entry.exit.i_crit_edge:     ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %40, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.else120.__list_del_entry.exit.i_crit_edge
  %52 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %40, ptr noundef %53, ptr noundef %sio_full) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %54 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %40, ptr %prev.i2.i, align 4
  %55 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %sio_full, ptr %40, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %40, ptr %53, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @__wake_up(ptr noundef %wait_frame, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  %58 = ptrtoint ptr %sio_avail to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sio_avail, align 8
  %add.ptr127 = getelementptr i8, ptr %59, i32 -92
  %bytesused129 = getelementptr i8, ptr %59, i32 -84
  %60 = ptrtoint ptr %bytesused129 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %bytesused129, align 8
  %buffer130 = getelementptr i8, ptr %59, i32 -12
  %61 = ptrtoint ptr %buffer130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer130, align 8
  br label %if.end137

if.else134:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  %sub135 = add nsw i32 %21, -4
  %add.ptr136 = getelementptr i8, ptr %add.ptr74, i32 4
  br label %if.end137

if.end137:                                        ; preds = %if.else134, %list_move_tail.exit, %if.then116, %if.else.if.end137_crit_edge, %if.end103
  %fb.1 = phi ptr [ %fb.0265, %if.end103 ], [ %fb.0265, %if.then116 ], [ %add.ptr127, %list_move_tail.exit ], [ %fb.0265, %if.else.if.end137_crit_edge ], [ %fb.0265, %if.else134 ]
  %iso_buf.0 = phi ptr [ %add.ptr82, %if.end103 ], [ %add.ptr82, %if.then116 ], [ %add.ptr82, %list_move_tail.exit ], [ %add.ptr82, %if.else.if.end137_crit_edge ], [ %add.ptr136, %if.else134 ]
  %fill.1 = phi ptr [ %36, %if.end103 ], [ %45, %if.then116 ], [ %62, %list_move_tail.exit ], [ %fill.0266, %if.else.if.end137_crit_edge ], [ %fill.0266, %if.else134 ]
  %framelen.0 = phi i32 [ %sub, %if.end103 ], [ %sub, %if.then116 ], [ %sub, %list_move_tail.exit ], [ %sub, %if.else.if.end137_crit_edge ], [ %sub135, %if.else134 ]
  %bytesused139 = getelementptr inbounds %struct.v4l2_buffer, ptr %fb.1, i32 0, i32 2
  %63 = ptrtoint ptr %bytesused139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bytesused139, align 8
  %add = add i32 %64, %framelen.0
  %65 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %frame_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %66)
  %cmp141 = icmp ugt i32 %add, %66
  br i1 %cmp141, label %if.then143, label %if.end153

if.then143:                                       ; preds = %if.end137
  %call144 = tail call i32 @___ratelimit(ptr noundef nonnull @stk_isoc_handler._rs.62, ptr noundef nonnull @.str.47) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then143.for.inc_crit_edge, label %do.end149

if.then143.for.inc_crit_edge:                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end149:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #18
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #20
  br label %for.inc

if.end153:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %flags.0267) #16
  %67 = call ptr @memcpy(ptr %fill.1, ptr %iso_buf.0, i32 %framelen.0)
  %call164 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #16
  %add.ptr169 = getelementptr i8, ptr %fill.1, i32 %framelen.0
  %68 = ptrtoint ptr %bytesused139 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bytesused139, align 8
  %add172 = add i32 %69, %framelen.0
  store i32 %add172, ptr %bytesused139, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end153, %do.end149, %if.then143.for.inc_crit_edge, %if.end69.for.inc_crit_edge, %do.end62, %for.body.for.inc_crit_edge
  %fb.2 = phi ptr [ %fb.0265, %do.end62 ], [ %fb.0265, %if.end69.for.inc_crit_edge ], [ %fb.1, %do.end149 ], [ %fb.1, %if.then143.for.inc_crit_edge ], [ %fb.1, %if.end153 ], [ %fb.0265, %for.body.for.inc_crit_edge ]
  %fill.2 = phi ptr [ %fill.0266, %do.end62 ], [ %fill.0266, %if.end69.for.inc_crit_edge ], [ %fill.1, %do.end149 ], [ %fill.1, %if.then143.for.inc_crit_edge ], [ %add.ptr169, %if.end153 ], [ %fill.0266, %for.body.for.inc_crit_edge ]
  %flags.1 = phi i32 [ %flags.0267, %do.end62 ], [ %flags.0267, %if.end69.for.inc_crit_edge ], [ %flags.0267, %do.end149 ], [ %flags.0267, %if.then143.for.inc_crit_edge ], [ %call164, %if.end153 ], [ %flags.0267, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0268, 1
  %70 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %number_of_packets, align 4
  %cmp48 = icmp slt i32 %inc, %71
  br i1 %cmp48, label %for.inc.for.body_crit_edge, label %for.inc.resubmit_crit_edge

for.inc.resubmit_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %resubmit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

resubmit:                                         ; preds = %for.inc.resubmit_crit_edge, %if.end44.resubmit_crit_edge, %do.end40, %if.then34.resubmit_crit_edge, %do.end28
  %flags.2 = phi i32 [ %call14, %do.end28 ], [ %call14, %do.end40 ], [ %call14, %if.then34.resubmit_crit_edge ], [ %call14, %if.end44.resubmit_crit_edge ], [ %flags.1, %for.inc.resubmit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %flags.2) #16
  %udev = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 3
  %72 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %udev, align 8
  %dev174 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %74 = ptrtoint ptr %dev174 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %dev174, align 4
  %call175 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176.not = icmp eq i32 %call175, 0
  br i1 %cmp176.not, label %resubmit.cleanup_crit_edge, label %do.end181

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end181:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #18
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %call175) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end181, %resubmit.cleanup_crit_edge, %if.then7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk_sensor_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stk_v4l_vm_open(ptr nocapture noundef readonly %vma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %mapcount = getelementptr inbounds %struct.stk_sio_buffer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mapcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapcount, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %mapcount, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stk_v4l_vm_close(ptr nocapture noundef readonly %vma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %mapcount = getelementptr inbounds %struct.stk_sio_buffer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mapcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapcount, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %mapcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.v4l2_buffer, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -2
  store i32 %and, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk_stop_stream(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then:                                          ; preds = %entry
  %udev1.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1) #19
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.stk_camera_read_reg.exit_crit_edge, label %if.end.i

if.then.stk_camera_read_reg.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_camera_read_reg.exit

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %6, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or3.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp.i = icmp sgt i32 %call4.i, -1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %value.0 = phi i8 [ %8, %if.then5.i ], [ -1, %if.end.i.if.end6.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %stk_camera_read_reg.exit

stk_camera_read_reg.exit:                         ; preds = %if.end6.i, %if.then.stk_camera_read_reg.exit_crit_edge
  %value.1 = phi i8 [ -1, %if.then.stk_camera_read_reg.exit_crit_edge ], [ %value.0, %if.end6.i ]
  %9 = and i8 %value.1, 127
  %10 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev1.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i2 = shl i32 %13, 8
  %or.i = or i32 %shl.i.i2, -2147483648
  %conv.i = zext i8 %9 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 256, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %isobufs = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 15
  %14 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isobufs, align 4
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %stk_camera_read_reg.exit.if.end14_crit_edge, label %for.body.preheader

stk_camera_read_reg.exit.if.end14_crit_edge:      ; preds = %stk_camera_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.body.preheader:                               ; preds = %stk_camera_read_reg.exit
  %16 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %isobufs, align 4
  %urb = getelementptr %struct.stk_iso_buf, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %for.body.preheader.for.inc_crit_edge, label %if.then10

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then10:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %19) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.preheader.for.inc_crit_edge
  %20 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %isobufs, align 4
  %urb.1 = getelementptr %struct.stk_iso_buf, ptr %21, i32 1, i32 3
  %22 = ptrtoint ptr %urb.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb.1, align 4
  %tobool9.not.1 = icmp eq ptr %23, null
  br i1 %tobool9.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then10.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then10.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %23) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %for.inc.for.inc.1_crit_edge
  %24 = ptrtoint ptr %isobufs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %isobufs, align 4
  %urb.2 = getelementptr %struct.stk_iso_buf, ptr %25, i32 2, i32 3
  %26 = ptrtoint ptr %urb.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urb.2, align 4
  %tobool9.not.2 = icmp eq ptr %27, null
  br i1 %tobool9.not.2, label %for.inc.1.if.end14_crit_edge, label %if.then10.2

for.inc.1.if.end14_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then10.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_kill_urb(ptr noundef nonnull %27) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then10.2, %for.inc.1.if.end14_crit_edge, %stk_camera_read_reg.exit.if.end14_crit_edge
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 8
  %and16 = and i32 %29, -9
  store i32 %and16, ptr %status, align 8
  %30 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev1.i, align 8
  %call17 = tail call i32 @usb_set_interface(ptr noundef %31, i32 noundef 0, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end14.if.end21_crit_edge, label %do.end

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #20
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end14.if.end21_crit_edge
  %call22 = tail call i32 @stk_sensor_sleep(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.if.end31_crit_edge, label %do.end27

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #20
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %if.end21.if.end31_crit_edge, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk_sensor_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_querycap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.88, i32 noundef 16) #16
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.88, i32 noundef 32) #16
  %udev = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 1
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.89, ptr noundef %7, ptr noundef %devpath.i) #16
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stk_vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmtd) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmtd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.stk_vidioc_enum_fmt_vid_cap, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmtd, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.load, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_g_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vsettings = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vsettings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsettings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #20
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.stk_vidioc_g_fmt_vid_cap, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx4 = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %switch.load
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fmt, align 4
  %h = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %switch.load, i32 1
  %9 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %h, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %colorspace, align 4
  %palette = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %palette to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %palette, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pixelformat, align 4
  %17 = load i32, ptr %palette, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825770306, i32 %17)
  %cmp9 = icmp ne i32 %17, 825770306
  %mul = zext i1 %cmp9 to i32
  %spec.select = shl i32 %7, %mul
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %18, align 4
  %mul17 = mul i32 %spec.select, %10
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul17, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_s_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmtd) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #16
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !236
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.stk_camera, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %and4 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %owner = getelementptr inbounds %struct.stk_camera, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call11 = call fastcc i32 @stk_try_fmt_vid_cap(ptr noundef %fmtd, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat, align 4
  %vsettings = getelementptr inbounds %struct.stk_camera, ptr %2, i32 0, i32 11
  %palette = getelementptr inbounds %struct.stk_camera, ptr %2, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %palette to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %palette, align 4
  call fastcc void @stk_clean_iso(ptr noundef nonnull %2) #16
  call fastcc void @stk_free_sio_buffers(ptr noundef nonnull %2) #16
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sizeimage, align 4
  %frame_size = getelementptr inbounds %struct.stk_camera, ptr %2, i32 0, i32 16
  %12 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %frame_size, align 8
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 4
  %m = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %14, i32 2
  %15 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m, align 4
  %17 = ptrtoint ptr %vsettings to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %vsettings, align 8
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 8
  %20 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %while.cond.preheader.i, label %if.end14.stk_initialise.exit_crit_edge

if.end14.stk_initialise.exit_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_initialise.exit

while.cond.preheader.i:                           ; preds = %if.end14
  %udev1.i.i = getelementptr inbounds %struct.stk_camera, ptr %2, i32 0, i32 3
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.regval, ptr %rv.025.i, i32 1
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %23, 65535
  br i1 %cmp.not.i, label %while.end.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.cond.preheader.i
  %24 = phi i32 [ 0, %while.cond.preheader.i ], [ %23, %while.cond.i.while.body.i_crit_edge ]
  %rv.025.i = phi ptr [ @stk1125_initvals, %while.cond.preheader.i ], [ %incdec.ptr.i, %while.cond.i.while.body.i_crit_edge ]
  %conv.i = trunc i32 %24 to i16
  %val.i = getelementptr inbounds %struct.regval, ptr %rv.025.i, i32 0, i32 1
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i, align 4
  %27 = ptrtoint ptr %udev1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev1.i.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i.i = shl i32 %30, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %31 = trunc i32 %26 to i16
  %conv.i.i = and i16 %31, 255
  %call2.i.i = call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %conv.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %tobool8.not.i = icmp sgt i32 %call2.i.i, -1
  br i1 %tobool8.not.i, label %while.cond.i, label %while.body.i.stk_initialise.exit_crit_edge

while.body.i.stk_initialise.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_initialise.exit

while.end.i:                                      ; preds = %while.cond.i
  %call11.i = call i32 @stk_sensor_init(ptr noundef nonnull %2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then14.i, label %while.end.i.stk_initialise.exit_crit_edge

while.end.i.stk_initialise.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stk_initialise.exit

if.then14.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 8
  %or.i = or i32 %33, 2
  store i32 %or.i, ptr %status, align 8
  br label %stk_initialise.exit

stk_initialise.exit:                              ; preds = %if.then14.i, %while.end.i.stk_initialise.exit_crit_edge, %while.body.i.stk_initialise.exit_crit_edge, %if.end14.stk_initialise.exit_crit_edge
  %call18 = call fastcc i32 @stk_setup_format(ptr noundef nonnull %2)
  br label %cleanup

cleanup:                                          ; preds = %stk_initialise.exit, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %stk_initialise.exit ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -16, %if.end2.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #16
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_try_fmt_vid_cap(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmtd) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @stk_try_fmt_vid_cap(ptr noundef %fmtd, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_reqbufs(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %rb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %memory = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %rb, i32 0, i32 2
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.not = icmp eq i32 %3, 1
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %owner = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  %tobool4.not = icmp eq ptr %7, null
  %cmp6.not = icmp eq ptr %7, %filp
  %or.cond = or i1 %tobool4.not, %cmp6.not
  br i1 %or.cond, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  tail call fastcc void @stk_clean_iso(ptr noundef nonnull %1) #16
  tail call fastcc void @stk_free_sio_buffers(ptr noundef nonnull %1) #16
  %8 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %udev1.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev1.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 73, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 8
  %and13 = and i32 %15, -3
  store i32 %and13, ptr %status, align 8
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %owner, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %filp, ptr %owner, align 4
  %18 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp18 = icmp ult i32 %19, 3
  br i1 %cmp18, label %if.end15.if.end26.sink.split_crit_edge, label %if.else

if.end15.if.end26.sink.split_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.sink.split

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp22 = icmp ugt i32 %19, 5
  br i1 %cmp22, label %if.else.if.end26.sink.split_crit_edge, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.else.if.end26.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else.if.end26.sink.split_crit_edge, %if.end15.if.end26.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.end15.if.end26.sink.split_crit_edge ], [ 5, %if.else.if.end26.sink.split_crit_edge ]
  %20 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %rb, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.else.if.end26_crit_edge
  %21 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rb, align 4
  %call28 = tail call fastcc i32 @stk_allocate_buffers(ptr noundef nonnull %1, i32 noundef %22)
  %n_sbufs = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %n_sbufs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_sbufs, align 8
  %25 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then10, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.end26 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_querybuf(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf, align 8
  %n_sbufs = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %n_sbufs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_sbufs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sio_bufs = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sio_bufs, align 4
  %add.ptr = getelementptr %struct.stk_sio_buffer, ptr %7, i32 %3
  %8 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 80)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_qbuf(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %memory = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 8
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf, align 8
  %n_sbufs = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %n_sbufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_sbufs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not = icmp ult i32 %5, %7
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sio_bufs = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sio_bufs, align 4
  %add.ptr = getelementptr %struct.stk_sio_buffer, ptr %9, i32 %5
  %flags5 = getelementptr inbounds %struct.v4l2_buffer, ptr %add.ptr, i32 0, i32 3
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags5, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %or = and i32 %11, -7
  %and12 = or i32 %or, 2
  %12 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and12, ptr %flags5, align 4
  %spinlock = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 13
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #16
  %list = getelementptr %struct.stk_sio_buffer, ptr %9, i32 %5, i32 4
  %sio_avail = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 20
  %prev.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %14, ptr noundef %sio_avail) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sio_avail, ptr %list, align 4
  %prev3.i.i = getelementptr %struct.stk_sio_buffer, ptr %9, i32 %5, i32 4, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  %19 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 80)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call16) #16
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_dqbuf(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %status = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup63

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and1 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %sio_full = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %sio_full to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sio_full, align 4
  %cmp.i.not = icmp eq ptr %7, %sio_full
  br i1 %cmp.i.not, label %land.lhs.true.cleanup63_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

land.lhs.true.cleanup63_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup63

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1115) #16
  %sio_full10 = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %sio_full10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %sio_full10, align 4
  %cmp.i87.not = icmp eq ptr %9, %sio_full10
  br i1 %cmp.i87.not, label %lor.lhs.false, label %if.end6.if.end36_crit_edge

if.end6.if.end36_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

lor.lhs.false:                                    ; preds = %if.end6
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  %and14 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end36_crit_edge, label %if.then16

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then16:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %wait_frame = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 14
  %call18107 = call i32 @prepare_to_wait_event(ptr noundef %wait_frame, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %13 = ptrtoint ptr %sio_full10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %sio_full10, align 4
  %cmp.i89.not108 = icmp eq ptr %14, %sio_full10
  br i1 %cmp.i89.not108, label %if.then16.lor.lhs.false22_crit_edge, label %if.then16.if.end32.thread102_crit_edge

if.then16.if.end32.thread102_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.thread102

if.then16.lor.lhs.false22_crit_edge:              ; preds = %if.then16
  br label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %cleanup.lor.lhs.false22_crit_edge, %if.then16.lor.lhs.false22_crit_edge
  %call18109 = phi i32 [ %call18, %cleanup.lor.lhs.false22_crit_edge ], [ %call18107, %if.then16.lor.lhs.false22_crit_edge ]
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 8
  %and24 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false22.if.end32.thread102_crit_edge, label %if.end27

lor.lhs.false22.if.end32.thread102_crit_edge:     ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.thread102

if.end27:                                         ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18109)
  %tobool28.not = icmp eq i32 %call18109, 0
  br i1 %tobool28.not, label %cleanup, label %if.end32

cleanup:                                          ; preds = %if.end27
  call void @schedule() #16
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %wait_frame, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %17 = ptrtoint ptr %sio_full10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %sio_full10, align 4
  %cmp.i89.not = icmp eq ptr %18, %sio_full10
  br i1 %cmp.i89.not, label %cleanup.lor.lhs.false22_crit_edge, label %cleanup.if.end32.thread102_crit_edge

cleanup.if.end32.thread102_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.thread102

cleanup.lor.lhs.false22_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false22

if.end32.thread102:                               ; preds = %cleanup.if.end32.thread102_crit_edge, %lor.lhs.false22.if.end32.thread102_crit_edge, %if.then16.if.end32.thread102_crit_edge
  call void @finish_wait(ptr noundef %wait_frame, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %if.end36

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %cleanup63

if.end36:                                         ; preds = %if.end32.thread102, %lor.lhs.false.if.end36_crit_edge, %if.end6.if.end36_crit_edge
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 8
  %and38 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.cleanup63_crit_edge, label %do.body43

if.end36.cleanup63_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup63

do.body43:                                        ; preds = %if.end36
  %spinlock = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 13
  %call46 = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #16
  %21 = ptrtoint ptr %sio_full10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sio_full10, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 -92
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #16
  br i1 %call.i.i, label %if.end.i.i, label %do.body43.list_del_init.exit_crit_edge

do.body43.list_del_init.exit_crit_edge:           ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body43.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %22, ptr %22, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %22, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call46) #16
  %flags54 = getelementptr i8, ptr %22, i32 -80
  %31 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags54, align 4
  %and55 = and i32 %32, -7
  %or = or i32 %and55, 4
  store i32 %or, ptr %flags54, align 4
  %sequence = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 22
  %33 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sequence, align 8
  %inc = add i32 %34, 1
  store i32 %inc, ptr %sequence, align 8
  %sequence59 = getelementptr i8, ptr %22, i32 -36
  %35 = ptrtoint ptr %sequence59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %inc, ptr %sequence59, align 8
  %call.i91 = call i64 @ktime_get() #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #16
  %36 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, i64 noundef %call.i91) #16
  %37 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ts.i, align 8
  %timestamp1.i = getelementptr i8, ptr %22, i32 -68
  %39 = ptrtoint ptr %timestamp1.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %timestamp1.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %40 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %41, 1000
  %conv.i92 = sext i32 %div.i to i64
  %tv_usec.i = getelementptr i8, ptr %22, i32 -60
  %42 = ptrtoint ptr %tv_usec.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv.i92, ptr %tv_usec.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #16
  %43 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 80)
  br label %cleanup63

cleanup63:                                        ; preds = %list_del_init.exit, %if.end36.cleanup63_crit_edge, %if.end32, %land.lhs.true.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ 0, %list_del_init.exit ], [ -22, %entry.cleanup63_crit_edge ], [ -11, %land.lhs.true.cleanup63_crit_edge ], [ %call18109, %if.end32 ], [ -5, %if.end36.cleanup63_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_streamon(ptr noundef %filp, ptr nocapture noundef readnone %priv, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %status = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %sio_bufs = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sio_bufs, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sequence = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sequence, align 8
  %call3 = tail call fastcc i32 @stk_start_stream(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_streamoff(ptr noundef %filp, ptr nocapture noundef readnone %priv, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call fastcc void @stk_stop_stream(ptr noundef %1)
  %spinlock = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #16
  %sio_avail = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sio_avail to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %sio_avail, ptr %sio_avail, align 4
  %prev.i = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sio_avail, ptr %prev.i, align 4
  %sio_full = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sio_full to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %sio_full, ptr %sio_full, align 4
  %prev.i23 = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 21, i32 1
  %5 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sio_full, ptr %prev.i23, align 4
  %n_sbufs = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %n_sbufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_sbufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp725.not = icmp eq i32 %7, 0
  br i1 %cmp725.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sio_bufs = getelementptr inbounds %struct.stk_camera, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %sio_bufs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sio_bufs, align 4
  %list = getelementptr %struct.stk_sio_buffer, ptr %9, i32 %i.026, i32 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i24 = getelementptr %struct.stk_sio_buffer, ptr %9, i32 %i.026, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i24, align 4
  %12 = load ptr, ptr %sio_bufs, align 4
  %flags11 = getelementptr %struct.stk_sio_buffer, ptr %12, i32 %i.026, i32 0, i32 3
  %13 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flags11, align 4
  %inc = add nuw i32 %i.026, 1
  %14 = ptrtoint ptr %n_sbufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_sbufs, align 8
  %cmp7 = icmp ult i32 %inc, %15
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk_vidioc_enum_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.94, i32 noundef 32) #16
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stk_vidioc_g_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stk_vidioc_s_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, i32 noundef %i) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stk_vidioc_g_parm(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %sp) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %timeperframe, align 4
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 30, ptr %denominator, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %readbuffers, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stk_vidioc_enum_framesizes(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %frms) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %frms, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 1346520914, label %if.end.sw.bb_crit_edge
    i32 1380075346, label %if.end.sw.bb_crit_edge10
    i32 1498831189, label %if.end.sw.bb_crit_edge11
    i32 1448695129, label %if.end.sw.bb_crit_edge12
    i32 825770306, label %if.end.sw.bb_crit_edge13
  ]

if.end.sw.bb_crit_edge13:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end.sw.bb_crit_edge12:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end.sw.bb_crit_edge11:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end.sw.bb_crit_edge10:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge10, %if.end.sw.bb_crit_edge11, %if.end.sw.bb_crit_edge12, %if.end.sw.bb_crit_edge13
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %frms, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %arrayidx = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %frms, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 4
  %h = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %1, i32 1
  %10 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %frms, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height, align 4
  br label %return

return:                                           ; preds = %sw.bb, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk_try_fmt_vid_cap(ptr nocapture noundef %fmtd, ptr noundef writeonly %idx) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1346520914, label %entry.sw.epilog_crit_edge
    i32 1380075346, label %entry.sw.epilog_crit_edge7
    i32 1498831189, label %entry.sw.epilog_crit_edge8
    i32 1448695129, label %entry.sw.epilog_crit_edge9
    i32 825770306, label %entry.sw.epilog_crit_edge10
  ]

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge7, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9, %entry.sw.epilog_crit_edge10
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %4)
  %cmp2 = icmp ugt i32 %4, 640
  br i1 %cmp2, label %sw.epilog.lor.lhs.false_crit_edge, label %for.inc

sw.epilog.lor.lhs.false_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

for.inc:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %4)
  %cmp2.1 = icmp ugt i32 %4, 352
  br i1 %cmp2.1, label %for.inc.lor.lhs.false_crit_edge, label %for.inc.1

for.inc.lor.lhs.false_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %4)
  %cmp2.2 = icmp ugt i32 %4, 320
  br i1 %cmp2.2, label %for.inc.1.lor.lhs.false_crit_edge, label %for.inc.2

for.inc.1.lor.lhs.false_crit_edge:                ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %4)
  %cmp2.3 = icmp ugt i32 %4, 176
  br i1 %cmp2.3, label %for.inc.2.lor.lhs.false_crit_edge, label %for.inc.2.if.then25_crit_edge

for.inc.2.if.then25_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

for.inc.2.lor.lhs.false_crit_edge:                ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.inc.2.lor.lhs.false_crit_edge, %for.inc.1.lor.lhs.false_crit_edge, %for.inc.lor.lhs.false_crit_edge, %sw.epilog.lor.lhs.false_crit_edge
  %i.05.lcssa = phi i32 [ 1, %sw.epilog.lor.lhs.false_crit_edge ], [ 2, %for.inc.lor.lhs.false_crit_edge ], [ 3, %for.inc.1.lor.lhs.false_crit_edge ], [ 4, %for.inc.2.lor.lhs.false_crit_edge ]
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt, align 4
  %sub = add nsw i32 %i.05.lcssa, -1
  %arrayidx6 = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6, align 4
  %sub8 = sub i32 %6, %8
  %9 = tail call i32 @llvm.abs.i32(i32 %sub8, i1 false)
  %arrayidx14 = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %i.05.lcssa
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  %sub16 = sub i32 %6, %11
  %12 = tail call i32 @llvm.abs.i32(i32 %sub16, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp24 = icmp slt i32 %9, %12
  br i1 %cmp24, label %lor.lhs.false.if.then25_crit_edge, label %if.else

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %for.inc.2.if.then25_crit_edge
  %i.04 = phi i32 [ %i.05.lcssa, %lor.lhs.false.if.then25_crit_edge ], [ 5, %for.inc.2.if.then25_crit_edge ]
  %sub26 = add nsw i32 %i.04, -1
  %arrayidx27 = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %sub26
  %h = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %sub26, i32 1
  %13 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %h, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height, align 4
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx27, align 4
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fmt, align 4
  %tobool.not = icmp eq ptr %idx, null
  br i1 %tobool.not, label %if.then25.if.end48_crit_edge, label %if.then25.if.end48.sink.split_crit_edge

if.then25.if.end48.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.sink.split

if.then25.if.end48_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.else:                                          ; preds = %lor.lhs.false
  %h38 = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %i.05.lcssa, i32 1
  %19 = ptrtoint ptr %h38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %h38, align 4
  %height40 = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %height40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height40, align 4
  %22 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %11, ptr %fmt, align 4
  %tobool45.not = icmp eq ptr %idx, null
  br i1 %tobool45.not, label %if.else.if.end48_crit_edge, label %if.else.if.end48.sink.split_crit_edge

if.else.if.end48.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.sink.split

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.end48.sink.split:                              ; preds = %if.else.if.end48.sink.split_crit_edge, %if.then25.if.end48.sink.split_crit_edge
  %i.05.lcssa.sink = phi i32 [ %sub26, %if.then25.if.end48.sink.split_crit_edge ], [ %i.05.lcssa, %if.else.if.end48.sink.split_crit_edge ]
  %23 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.05.lcssa.sink, ptr %idx, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.else.if.end48_crit_edge, %if.then25.if.end48_crit_edge
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %colorspace, align 4
  %26 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825770306, i32 %27)
  %cmp53 = icmp ne i32 %27, 825770306
  %28 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fmt, align 4
  %mul = zext i1 %cmp53 to i32
  %mul.sink = shl i32 %29, %mul
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.sink, ptr %30, align 4
  %height67 = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %height67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height67, align 4
  %mul68 = mul i32 %33, %mul.sink
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmtd, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul68, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk_setup_format(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vsettings = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %vsettings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vsettings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  br i1 %2, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #20
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %palette = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %palette to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %palette, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825770306, i32 %4)
  %cmp = icmp eq i32 %4, 825770306
  %. = select i1 %cmp, i32 1, i32 2
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.stk_setup_format, i32 0, i32 %1
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %udev1.i = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev1.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 14, i16 noundef zeroext 27, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %10 = ptrtoint ptr %vsettings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vsettings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp10 = icmp eq i32 %11, 1
  %12 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev1.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i55 = shl i32 %15, 8
  %or.i56 = or i32 %shl.i.i55, -2147483648
  %.89 = select i1 %cmp10, i16 14, i16 70
  %call2.i61 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i56, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %.89, i16 noundef zeroext 28, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %arrayidx16 = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %switch.load
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  %mul = mul i32 %17, %.
  %18 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev1.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i63 = shl i32 %21, 8
  %or.i64 = or i32 %shl.i.i63, -2147483648
  %22 = trunc i32 %mul to i16
  %23 = lshr i16 %22, 8
  %call2.i65 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i64, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %23, i16 noundef zeroext 277, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %24 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev1.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i67 = shl i32 %27, 8
  %or.i68 = or i32 %shl.i.i67, -2147483648
  %conv.i69 = and i16 %22, 255
  %call2.i70 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i68, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i69, i16 noundef zeroext 276, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %h = getelementptr [5 x %struct.stk_size], ptr @stk_sizes, i32 0, i32 %switch.load, i32 1
  %28 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %h, align 4
  %30 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev1.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i72 = shl i32 %33, 8
  %or.i73 = or i32 %shl.i.i72, -2147483648
  %34 = trunc i32 %29 to i16
  %35 = lshr i16 %34, 8
  %call2.i75 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i73, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %35, i16 noundef zeroext 279, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %36 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev1.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i77 = shl i32 %39, 8
  %or.i78 = or i32 %shl.i.i77, -2147483648
  %conv.i79 = and i16 %34, 255
  %call2.i80 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i78, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i79, i16 noundef zeroext 278, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #16
  %call34 = tail call i32 @stk_sensor_configure(ptr noundef %dev) #16
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %call34, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk_sensor_configure(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !178, !180, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !199, !201, !203, !204, !205, !206, !208, !210, !211, !212, !213, !215, !217, !218, !219, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__param_hflip, !1, !"__param_hflip", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_hfliptype297, !1, !"__UNIQUE_ID_hfliptype297", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_hflip298, !4, !"__UNIQUE_ID_hflip298", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 34, i32 1}
!5 = !{ptr @__param_vflip, !6, !"__param_vflip", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 37, i32 1}
!7 = !{ptr @__UNIQUE_ID_vfliptype299, !6, !"__UNIQUE_ID_vfliptype299", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_vflip300, !9, !"__UNIQUE_ID_vflip300", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 38, i32 1}
!10 = !{ptr @__param_debug, !11, !"__param_debug", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 41, i32 1}
!12 = !{ptr @__UNIQUE_ID_debugtype301, !11, !"__UNIQUE_ID_debugtype301", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_debug302, !14, !"__UNIQUE_ID_debug302", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 42, i32 1}
!15 = !{ptr @__UNIQUE_ID_file303, !16, !"__UNIQUE_ID_file303", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 44, i32 1}
!17 = !{ptr @__UNIQUE_ID_license304, !16, !"__UNIQUE_ID_license304", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author305, !19, !"__UNIQUE_ID_author305", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 45, i32 1}
!20 = !{ptr @__UNIQUE_ID_description306, !21, !"__UNIQUE_ID_description306", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 46, i32 1}
!22 = !{ptr @__initcall__kmod_stkwebcam__307_1434_stk_camera_driver_init6, !23, !"__initcall__kmod_stkwebcam__307_1434_stk_camera_driver_init6", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1434, i32 1}
!24 = !{ptr @__exitcall_stk_camera_driver_exit, !23, !"__exitcall_stk_camera_driver_exit", i1 false, i1 false}
!25 = !{ptr @debug, !26, !"debug", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 40, i32 12}
!27 = !{ptr @__param_str_hflip, !1, !"__param_str_hflip", i1 false, i1 false}
!28 = !{ptr @hflip, !29, !"hflip", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 32, i32 12}
!30 = !{ptr @__param_str_vflip, !6, !"__param_str_vflip", i1 false, i1 false}
!31 = !{ptr @vflip, !32, !"vflip", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 36, i32 12}
!33 = !{ptr @__param_str_debug, !11, !"__param_str_debug", i1 false, i1 false}
!34 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @stk_camera_driver, !36, !"stk_camera_driver", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1423, i32 26}
!37 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1288, i32 3}
!39 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @stk_camera_probe._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @stk_camera_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1293, i32 3}
!45 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @stk_camera_probe._entry.4, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @stk_camera_probe._entry_ptr.8, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @stk_camera_probe._key, !50, !"_key", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1298, i32 2}
!51 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1307, i32 3}
!54 = !{ptr @stk_camera_probe._entry.10, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @stk_camera_probe._entry_ptr.12, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @stk_camera_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1312, i32 2}
!58 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @stk_camera_probe.__key.14, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1313, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @stk_camera_probe.__key.16, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1314, i32 2}
!64 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1352, i32 3}
!67 = !{ptr @stk_camera_probe._entry.18, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @stk_camera_probe._entry_ptr.20, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @stk_ctrl_ops, !70, !"stk_ctrl_ops", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1194, i32 35}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 91, i32 12}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 97, i32 12}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 104, i32 12}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 111, i32 12}
!79 = distinct !{null, !80, !"stk_upside_down_dmi_table", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 89, i32 35}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1264, i32 3}
!83 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stk_register_video_device._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @stk_register_video_device._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1266, i32 3}
!88 = !{ptr @stk_register_video_device._entry.27, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @stk_register_video_device._entry_ptr.29, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @stk_v4l_data, !91, !"stk_v4l_data", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1244, i32 34}
!92 = !{ptr @v4l_stk_fops, !93, !"v4l_stk_fops", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1198, i32 42}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 693, i32 3}
!96 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @stk_read._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @stk_read._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @stk1125_initvals, !100, !"stk1125_initvals", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 246, i32 22}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 437, i32 3}
!103 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @stk_prepare_iso._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @stk_prepare_iso._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 442, i32 3}
!108 = !{ptr @stk_prepare_iso._entry.34, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @stk_prepare_iso._entry_ptr.36, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 449, i32 5}
!112 = !{ptr @stk_prepare_iso._entry.37, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @stk_prepare_iso._entry_ptr.39, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 454, i32 4}
!116 = !{ptr @stk_prepare_iso._entry.40, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @stk_prepare_iso._entry_ptr.42, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 461, i32 4}
!120 = !{ptr @stk_prepare_iso._entry.43, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @stk_prepare_iso._entry_ptr.45, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 320, i32 3}
!124 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @stk_isoc_handler._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @stk_isoc_handler._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 333, i32 3}
!129 = !{ptr @stk_isoc_handler._entry.48, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @stk_isoc_handler._entry_ptr.50, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 339, i32 3}
!133 = !{ptr @stk_isoc_handler._rs, !132, !"_rs", i1 false, i1 false}
!134 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @stk_isoc_handler._entry.52, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @stk_isoc_handler._entry_ptr.54, !132, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 349, i32 5}
!139 = !{ptr @stk_isoc_handler._entry.55, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @stk_isoc_handler._entry_ptr.57, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @stk_isoc_handler._rs.58, !142, !"_rs", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 374, i32 5}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @stk_isoc_handler._entry.59, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @stk_isoc_handler._entry_ptr.61, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @stk_isoc_handler._rs.62, !147, !"_rs", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 400, i32 4}
!148 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @stk_isoc_handler._entry.63, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @stk_isoc_handler._entry_ptr.65, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 418, i32 3}
!153 = !{ptr @stk_isoc_handler._entry.66, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @stk_isoc_handler._entry_ptr.68, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 570, i32 3}
!157 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @stk_prepare_sio_buffers._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @stk_prepare_sio_buffers._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 182, i32 3}
!162 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @stk_start_stream._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @stk_start_stream._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 188, i32 3}
!167 = !{ptr @stk_start_stream._entry.73, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @stk_start_stream._entry_ptr.75, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 190, i32 3}
!171 = !{ptr @stk_start_stream._entry.76, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @stk_start_stream._entry_ptr.78, !170, !"_entry_ptr", i1 false, i1 false}
!173 = distinct !{null, !174, !"__already_done", i1 false, i1 false}
!174 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!175 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!180 = !{ptr @stk_v4l_vm_ops, !181, !"stk_v4l_vm_ops", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 755, i32 42}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 231, i32 4}
!184 = !{ptr @stk_stop_stream._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @stk_stop_stream._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 233, i32 4}
!188 = !{ptr @stk_stop_stream._entry.83, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @stk_stop_stream._entry_ptr.85, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1235, i32 3}
!192 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @stk_v4l_dev_release._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @stk_v4l_dev_release._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @v4l_stk_ioctl_ops, !196, !"v4l_stk_ioctl_ops", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1208, i32 36}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 797, i32 23}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../include/linux/usb.h", i32 912, i32 31}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 901, i32 3}
!203 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @stk_vidioc_g_fmt_vid_cap._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @stk_vidioc_g_fmt_vid_cap._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @stk_sizes, !207, !"stk_sizes", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 882, i32 3}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 979, i32 3}
!210 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @stk_setup_format._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @stk_setup_format._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.94, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 809, i32 23}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 1390, i32 2}
!217 = !{ptr @.str.96, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @stk_camera_disconnect._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @stk_camera_disconnect._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @stkwebcam_table, !221, !"stkwebcam_table", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/stkwebcam/stk-webcam.c", i32 49, i32 35}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{!"branch_weights", i32 2000, i32 1}
!232 = !{i64 2153557639, i64 2153557664}
!233 = !{!"branch_weights", i32 1, i32 2000}
!234 = !{i64 2148374134, i64 2148374160, i64 2148374189, i64 2148374223, i64 2148374254, i64 2148374277}
!235 = !{i64 2148376599, i64 2148376625, i64 2148376654, i64 2148376688, i64 2148376719, i64 2148376742}
!236 = !{!"auto-init"}
