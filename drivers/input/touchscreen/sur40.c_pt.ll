; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/sur40.c_pt.bc'
source_filename = "../drivers/input/touchscreen/sur40.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.98, i32, i32 }
%union.anon.98 = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.sur40_state = type { ptr, ptr, ptr, %struct.v4l2_device, %struct.video_device, %struct.mutex, %struct.v4l2_pix_format, %struct.v4l2_ctrl_handler, %struct.vb2_queue, %struct.list_head, %struct.spinlock, i32, ptr, i32, i8, i8, [64 x i8] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.sur40_data = type { %struct.sur40_header, [0 x %struct.sur40_blob] }
%struct.sur40_header = type { i16, i16, i32, i32, i32 }
%struct.sur40_blob = type { i16, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8], i32, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.sur40_image_header = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.96, i32 }
%union.anon.96 = type { i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.sur40_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.113 }
%union.anon.113 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.114, [2 x i32] }
%union.anon.114 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.115, [2 x i32] }
%union.anon.115 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__param_str_brightness = internal constant [17 x i8] c"sur40.brightness\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@brightness = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@__param_brightness = internal constant %struct.kernel_param { ptr @__param_str_brightness, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @brightness } }, section "__param", align 4
@__UNIQUE_ID_brightnesstype303 = internal constant [31 x i8] c"sur40.parmtype=brightness:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_brightness304 = internal constant [63 x i8] c"sur40.parm=brightness:set initial brightness (range 0x00-0xff)\00", section ".modinfo", align 1
@__param_str_contrast = internal constant [15 x i8] c"sur40.contrast\00", align 1
@contrast = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_contrast = internal constant %struct.kernel_param { ptr @__param_str_contrast, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @contrast } }, section "__param", align 4
@__UNIQUE_ID_contrasttype305 = internal constant [29 x i8] c"sur40.parmtype=contrast:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_contrast306 = internal constant [59 x i8] c"sur40.parm=contrast:set initial contrast (range 0x00-0x0f)\00", section ".modinfo", align 1
@__param_str_gain = internal constant [11 x i8] c"sur40.gain\00", align 1
@gain = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_gain = internal constant %struct.kernel_param { ptr @__param_str_gain, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @gain } }, section "__param", align 4
@__UNIQUE_ID_gaintype307 = internal constant [25 x i8] c"sur40.parmtype=gain:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_gain308 = internal constant [51 x i8] c"sur40.parm=gain:set initial gain (range 0x00-0x09)\00", section ".modinfo", align 1
@__initcall__kmod_sur40__339_1186_sur40_driver_init6 = internal global ptr @sur40_driver_init, section ".initcall6.init", align 4
@sur40_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @sur40_probe, ptr @sur40_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sur40_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sur40_driver_exit = internal global ptr @sur40_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author340 = internal constant [58 x i8] c"sur40.author=Florian 'floe' Echtler <floe@butterbrot.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description341 = internal constant [59 x i8] c"sur40.description=Surface2.0/SUR40/PixelSense input driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [43 x i8] c"sur40.file=drivers/input/touchscreen/sur40\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [18 x i8] c"sur40.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sur40\00", [26 x i8] zeroinitializer }, align 32
@sur40_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1118, i16 1909, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sur40_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sur40->qlock\00", [18 x i8] zeroinitializer }, align 32
@sur40_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sur40->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Samsung SUR40\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@sur40_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 708, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set up polling\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sur40_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/input/touchscreen/sur40.c\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sur40_probe._entry_ptr = internal global ptr @sur40_probe._entry, section ".printk_index", align 4
@sur40_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 723, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to allocate input buffer.\00", [63 x i8] zeroinitializer }, align 32
@sur40_probe._entry_ptr.13 = internal global ptr @sur40_probe._entry.11, section ".printk_index", align 4
@sur40_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 732, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to register polled input device.\00", [56 x i8] zeroinitializer }, align 32
@sur40_probe._entry_ptr.16 = internal global ptr @sur40_probe._entry.14, section ".printk_index", align 4
@sur40_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 741, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to register video master device.\00", [56 x i8] zeroinitializer }, align 32
@sur40_probe._entry_ptr.20 = internal global ptr @sur40_probe._entry.18, section ".printk_index", align 4
@sur40_pix_format = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 960, i32 540, i32 942691668, i32 1, i32 960, i32 518400, i32 11, i32 0, i32 0, %union.anon.98 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 960, i32 540, i32 1497715271, i32 1, i32 960, i32 518400, i32 11, i32 0, i32 0, %union.anon.98 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sur40_video_device = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @sur40_video_fops, i32 352321537, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"Samsung SUR40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @sur40_video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@sur40_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sur40:764:(&sur40->hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@sur40_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sur40_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sur40_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.8, i32 788, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to register video controls.\00", [61 x i8] zeroinitializer }, align 32
@sur40_probe._entry_ptr.24 = internal global ptr @sur40_probe._entry.22, section ".printk_index", align 4
@sur40_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.7, ptr @.str.8, i32 797, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to register video subdevice.\00", [60 x i8] zeroinitializer }, align 32
@sur40_probe._entry_ptr.27 = internal global ptr @sur40_probe._entry.25, section ".printk_index", align 4
@sur40_probe.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.28, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s is now attached\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Surface2.0/SUR40/PixelSense input driver\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@sur40_open.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.8, ptr @.str.32, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sur40_open\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"open\0A\00", [26 x i8] zeroinitializer }, align 32
@sur40_close.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.8, ptr @.str.34, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sur40_close\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"close\0A\00", [25 x i8] zeroinitializer }, align 32
@sur40_input_setup_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.8, i32 643, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set up slots\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sur40_input_setup_events\00", [39 x i8] zeroinitializer }, align 32
@sur40_input_setup_events._entry_ptr = internal global ptr @sur40_input_setup_events._entry, section ".printk_index", align 4
@sur40_poll.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.8, ptr @.str.38, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sur40_poll\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"poll\0A\00", [26 x i8] zeroinitializer }, align 32
@sur40_poll.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.8, ptr @.str.39, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"received %d bytes\0A\00", [45 x i8] zeroinitializer }, align 32
@sur40_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.8, i32 477, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error in usb_bulk_read\0A\00", [40 x i8] zeroinitializer }, align 32
@sur40_poll._entry_ptr = internal global ptr @sur40_poll._entry, section ".printk_index", align 4
@sur40_poll._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.8, i32 484, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"transfer size mismatch\0A\00", [40 x i8] zeroinitializer }, align 32
@sur40_poll._entry_ptr.43 = internal global ptr @sur40_poll._entry.41, section ".printk_index", align 4
@sur40_poll.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.8, ptr @.str.44, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"need %d blobs\0A\00", [17 x i8] zeroinitializer }, align 32
@sur40_poll.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.8, ptr @.str.45, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"received %d blobs\0A\00", [45 x i8] zeroinitializer }, align 32
@sur40_poll.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.8, ptr @.str.46, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"processing blob\0A\00", [47 x i8] zeroinitializer }, align 32
@sur40_process_video.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.8, ptr @.str.48, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sur40_process_video\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"buffer queue empty\0A\00", [44 x i8] zeroinitializer }, align 32
@sur40_process_video.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.8, ptr @.str.49, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"buffer acquired\0A\00", [47 x i8] zeroinitializer }, align 32
@sur40_process_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.47, ptr @.str.8, i32 560, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@sur40_process_video._entry_ptr = internal global ptr @sur40_process_video._entry, section ".printk_index", align 4
@sur40_process_video._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.8, i32 566, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"received %d bytes (%zd expected)\0A\00", [62 x i8] zeroinitializer }, align 32
@sur40_process_video._entry_ptr.52 = internal global ptr @sur40_process_video._entry.50, section ".printk_index", align 4
@sur40_process_video._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.8, i32 571, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"image magic mismatch\0A\00", [42 x i8] zeroinitializer }, align 32
@sur40_process_video._entry_ptr.55 = internal global ptr @sur40_process_video._entry.53, section ".printk_index", align 4
@sur40_process_video._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.47, ptr @.str.8, i32 576, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"image size mismatch\0A\00", [43 x i8] zeroinitializer }, align 32
@sur40_process_video._entry_ptr.58 = internal global ptr @sur40_process_video._entry.56, section ".printk_index", align 4
@sur40_process_video.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.8, ptr @.str.59, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"header acquired\0A\00", [47 x i8] zeroinitializer }, align 32
@sur40_process_video._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.8, i32 588, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error %d in usb_sg_init\0A\00", [39 x i8] zeroinitializer }, align 32
@sur40_process_video._entry_ptr.62 = internal global ptr @sur40_process_video._entry.60, section ".printk_index", align 4
@sur40_process_video._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.47, ptr @.str.8, i32 594, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error %d in usb_sg_wait\0A\00", [39 x i8] zeroinitializer }, align 32
@sur40_process_video._entry_ptr.65 = internal global ptr @sur40_process_video._entry.63, section ".printk_index", align 4
@sur40_process_video.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.8, ptr @.str.66, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"image acquired\0A\00", [16 x i8] zeroinitializer }, align 32
@sur40_process_video.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.8, ptr @.str.67, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"buffer marked done\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sur40_queue_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @sur40_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @sur40_buffer_prepare, ptr null, ptr null, ptr @sur40_start_streaming, ptr @sur40_stop_streaming, ptr @sur40_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@sur40_queue = internal constant { { i32, i32, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, i8, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }, [128 x i8] } { { i32, i32, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, i8, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 } { i32 1, i32 21, ptr null, i32 0, i8 0, i8 0, ptr null, ptr null, ptr @sur40_queue_ops, ptr @vb2_dma_sg_memops, ptr null, ptr null, i32 0, i32 744, i32 8192, i32 0, i32 3, [8 x ptr] zeroinitializer, %struct.mutex zeroinitializer, i32 0, i32 0, [32 x ptr] zeroinitializer, i32 0, %struct.list_head zeroinitializer, i32 0, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, %struct.wait_queue_head zeroinitializer, i8 0, i8 0, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0 }, [128 x i8] zeroinitializer }, align 32
@sur40_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.8, i32 874, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buffer too small (%lu < %lu)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sur40_buffer_prepare\00", [43 x i8] zeroinitializer }, align 32
@sur40_buffer_prepare._entry_ptr = internal global ptr @sur40_buffer_prepare._entry, section ".printk_index", align 4
@sur40_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@sur40_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @sur40_vidioc_querycap, ptr @sur40_vidioc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sur40_vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sur40_vidioc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sur40_vidioc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @sur40_vidioc_enum_input, ptr @sur40_vidioc_g_input, ptr @sur40_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sur40_ioctl_parm, ptr @sur40_ioctl_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sur40_vidioc_enum_framesizes, ptr @sur40_vidioc_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"In-Cell Sensor\00", [17 x i8] zeroinitializer }, align 32
@__const.sur40_set_preprocessor.setting_07 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@__const.sur40_set_preprocessor.setting_17 = private unnamed_addr constant [2 x i8] c"\85\80", align 1
@sur40_disconnect.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.8, ptr @.str.74, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sur40_disconnect\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s is now disconnected\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 942691668, i64 1497715271]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 942691668, i64 1497715271]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963795, i64 9963804]
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 170, i32 13 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 174, i32 13 }
@___asan_gen_.83 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 178, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"sur40_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1179, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1186, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"sur40_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1097, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 687, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 688, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 691, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 694, i32 23 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 708, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 723, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 731, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 740, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"sur40_pix_format\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 183, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"sur40_video_device\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1169, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 764, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"sur40_ctrl_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 241, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 787, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 796, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 803, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 912, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 396, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 405, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 643, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 462, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 474, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 477, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 484, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 491, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 507, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 515, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 543, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 551, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 560, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 565, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 571, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 576, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 580, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 588, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 594, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 598, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 609, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [16 x i8] c"sur40_queue_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1104, i32 29 }
@___asan_gen_.290 = private unnamed_addr constant [12 x i8] c"sur40_queue\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1114, i32 31 }
@___asan_gen_.293 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 873, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"sur40_video_fops\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1129, i32 42 }
@___asan_gen_.305 = private unnamed_addr constant [22 x i8] c"sur40_video_ioctl_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1139, i32 36 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 955, i32 19 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [37 x i8] c"../drivers/input/touchscreen/sur40.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 835, i32 2 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_brightness304, ptr @__UNIQUE_ID_brightnesstype303, ptr @__UNIQUE_ID_contrast306, ptr @__UNIQUE_ID_contrasttype305, ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_gain308, ptr @__UNIQUE_ID_gaintype307, ptr @__UNIQUE_ID_license343, ptr @__exitcall_sur40_driver_exit, ptr @__initcall__kmod_sur40__339_1186_sur40_driver_init6, ptr @__param_brightness, ptr @__param_contrast, ptr @__param_gain, ptr @sur40_buffer_prepare._entry, ptr @sur40_buffer_prepare._entry_ptr, ptr @sur40_driver_exit, ptr @sur40_input_setup_events._entry, ptr @sur40_input_setup_events._entry_ptr, ptr @sur40_poll._entry, ptr @sur40_poll._entry.41, ptr @sur40_poll._entry_ptr, ptr @sur40_poll._entry_ptr.43, ptr @sur40_probe._entry, ptr @sur40_probe._entry.11, ptr @sur40_probe._entry.14, ptr @sur40_probe._entry.18, ptr @sur40_probe._entry.22, ptr @sur40_probe._entry.25, ptr @sur40_probe._entry_ptr, ptr @sur40_probe._entry_ptr.13, ptr @sur40_probe._entry_ptr.16, ptr @sur40_probe._entry_ptr.20, ptr @sur40_probe._entry_ptr.24, ptr @sur40_probe._entry_ptr.27, ptr @sur40_process_video._entry, ptr @sur40_process_video._entry.50, ptr @sur40_process_video._entry.53, ptr @sur40_process_video._entry.56, ptr @sur40_process_video._entry.60, ptr @sur40_process_video._entry.63, ptr @sur40_process_video._entry_ptr, ptr @sur40_process_video._entry_ptr.52, ptr @sur40_process_video._entry_ptr.55, ptr @sur40_process_video._entry_ptr.58, ptr @sur40_process_video._entry_ptr.62, ptr @sur40_process_video._entry_ptr.65, ptr @brightness, ptr @contrast, ptr @gain, ptr @sur40_driver, ptr @.str, ptr @sur40_table, ptr @sur40_probe.__key, ptr @.str.1, ptr @sur40_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.19, ptr @sur40_pix_format, ptr @sur40_video_device, ptr @sur40_probe._key, ptr @.str.21, ptr @sur40_ctrl_ops, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @sur40_queue_ops, ptr @sur40_queue, ptr @.str.69, ptr @.str.70, ptr @sur40_video_fops, ptr @sur40_video_ioctl_ops, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brightness to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @contrast to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_pix_format to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_video_device to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_input_setup_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_poll._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_process_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_process_video._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_process_video._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_process_video._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_process_video._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_process_video._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_queue_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_queue to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sur40_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sur40_driver, ptr noundef null, ptr noundef nonnull @.str) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sur40_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usb_deregister(ptr noundef nonnull @sur40_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.not = icmp eq i8 %5, -1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp4 = icmp ult i8 %7, 5
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %endpoint8 = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %endpoint8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint8, align 4
  %bEndpointAddress = getelementptr %struct.usb_host_endpoint, ptr %9, i32 4, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %11)
  %cmp11.not = icmp eq i8 %11, -122
  br i1 %cmp11.not, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 2464) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %call18 = tail call ptr @input_allocate_device() #16
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.err_free_dev_crit_edge, label %if.end21

if.end17.err_free_dev_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_dev

if.end21:                                         ; preds = %if.end17
  %buf_list = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %prev.i = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf_list, ptr %prev.i, align 8
  %qlock = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sur40_probe.__key, i16 noundef signext 3) #16
  %lock = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @sur40_probe.__key.2) #16
  %15 = ptrtoint ptr %call18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.4, ptr %call18, align 8
  %id26 = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3
  %16 = ptrtoint ptr %id26 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %id26, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %17 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idVendor.i, align 8
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #16
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %21 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %idProduct.i, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #16
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %25 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bcdDevice.i, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #16
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %version.i, align 2
  %phys = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 16
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.30, ptr noundef %32, ptr noundef %devpath.i) #16
  %call30 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.5, i32 noundef 64) #16
  %phys33 = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 1
  %33 = ptrtoint ptr %phys33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %phys, ptr %phys33, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 40, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 31
  %35 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @sur40_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 32
  %36 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @sur40_close, ptr %close, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 53, i32 noundef 0, i32 noundef 1920, i32 noundef 0, i32 noundef 0) #16
  tail call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 54, i32 noundef 0, i32 noundef 1080, i32 noundef 0, i32 noundef 0) #16
  tail call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 60, i32 noundef 0, i32 noundef 1920, i32 noundef 0, i32 noundef 0) #16
  tail call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 61, i32 noundef 0, i32 noundef 1080, i32 noundef 0, i32 noundef 0) #16
  tail call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 48, i32 noundef 0, i32 noundef 1920, i32 noundef 0, i32 noundef 0) #16
  tail call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 49, i32 noundef 0, i32 noundef 1080, i32 noundef 0, i32 noundef 0) #16
  tail call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 52, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %call.i303 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call18, i32 noundef 64, i32 noundef 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %tobool.not.i = icmp eq i32 %call.i303, 0
  br i1 %tobool.not.i, label %if.end38, label %sur40_input_setup_events.exit

sur40_input_setup_events.exit:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.35) #20
  br label %err_free_input

if.end38:                                         ; preds = %if.end21
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 40, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call39 = tail call i32 @input_setup_polling(ptr noundef nonnull %call18, ptr noundef nonnull @sur40_poll) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #20
  br label %err_free_input

if.end46:                                         ; preds = %if.end38
  tail call void @input_set_poll_interval(ptr noundef nonnull %call18, i32 noundef 1) #16
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %dev49 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %dev49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev, ptr %dev49, align 4
  %input50 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %input50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call18, ptr %input50, align 8
  %wMaxPacketSize.i = getelementptr %struct.usb_host_endpoint, ptr %9, i32 4, i32 0, i32 4
  %43 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %wMaxPacketSize.i, align 1
  %45 = and i16 %44, -249
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #16
  %and.i = zext i16 %46 to i32
  %bulk_in_size = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 13
  %47 = ptrtoint ptr %bulk_in_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.i, ptr %bulk_in_size, align 8
  %48 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bEndpointAddress, align 1
  %bulk_in_epaddr = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 14
  %50 = ptrtoint ptr %bulk_in_epaddr to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %bulk_in_epaddr, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3264) #21
  %bulk_in_buffer = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 12
  %51 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call9.i, ptr %bulk_in_buffer, align 4
  %tobool56.not = icmp eq ptr %call9.i, null
  br i1 %tobool56.not, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #20
  br label %err_free_input

if.end62:                                         ; preds = %if.end46
  %call63 = tail call i32 @input_register_device(ptr noundef nonnull %call18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #20
  br label %err_free_buffer

if.end70:                                         ; preds = %if.end62
  %v4l2 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 3
  %name71 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 3, i32 4
  %52 = call ptr @memcpy(ptr %name71, ptr @.str.4, i32 14)
  %53 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev49, align 4
  %call76 = tail call i32 @v4l2_device_register(ptr noundef %54, ptr noundef %v4l2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #20
  br label %err_unreg_v4l2

if.end83:                                         ; preds = %if.end70
  %queue = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 8
  %55 = call ptr @memcpy(ptr %queue, ptr @sur40_queue, i32 512)
  %drv_priv = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 8, i32 10
  %56 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i, ptr %drv_priv, align 4
  %lock87 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 8, i32 5
  %57 = ptrtoint ptr %lock87 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %lock, ptr %lock87, align 8
  %58 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev49, align 4
  %dev90 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 8, i32 2
  %60 = ptrtoint ptr %dev90 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %dev90, align 4
  %call92 = tail call i32 @vb2_queue_init(ptr noundef %queue) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end83.err_unreg_v4l2_crit_edge

if.end83.err_unreg_v4l2_crit_edge:                ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_unreg_v4l2

if.end95:                                         ; preds = %if.end83
  %pix_fmt = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 6
  %61 = call ptr @memcpy(ptr %pix_fmt, ptr @sur40_pix_format, i32 48)
  %vdev = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 4
  %62 = call ptr @memcpy(ptr %vdev, ptr @sur40_video_device, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 4, i32 7
  %63 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %v4l2, ptr %v4l2_dev, align 4
  %lock100 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 4, i32 26
  %64 = ptrtoint ptr %lock100 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %lock, ptr %lock100, align 8
  %queue103 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 4, i32 10
  %65 = ptrtoint ptr %queue103 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %queue, ptr %queue103, align 8
  %driver_data.i.i305 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 8
  %66 = ptrtoint ptr %driver_data.i.i305 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i, ptr %driver_data.i.i305, align 4
  %hdl = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 7
  %call105 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 4, ptr noundef nonnull @sur40_probe._key, ptr noundef nonnull @.str.21) #16
  %ctrl_handler = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 3, i32 6
  %67 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %hdl, ptr %ctrl_handler, align 8
  %vsvideo = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 15
  %68 = ptrtoint ptr %vsvideo to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -88, ptr %vsvideo, align 1
  %69 = load i32, ptr @brightness, align 4
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 255)
  %conv119 = zext i32 %70 to i64
  %call120 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @sur40_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef %conv119) #16
  %71 = load i32, ptr @contrast, align 4
  %72 = tail call i32 @llvm.umin.i32(i32 %71, i32 15)
  %conv136 = zext i32 %72 to i64
  %call137 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @sur40_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef %conv136) #16
  %73 = load i32, ptr @gain, align 4
  %74 = tail call i32 @llvm.umin.i32(i32 %73, i32 9)
  %conv153 = zext i32 %74 to i64
  %call154 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @sur40_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 9, i64 noundef 1, i64 noundef %conv153) #16
  %call156 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @sur40_ctrl_ops, i32 noundef 9963804, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #16
  %call158 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #16
  %error160 = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 7, i32 9
  %75 = ptrtoint ptr %error160 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %error160, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool161.not = icmp eq i32 %76, 0
  br i1 %tobool161.not, label %if.end170, label %do.end165

do.end165:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #20
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #16
  %77 = ptrtoint ptr %error160 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %error160, align 8
  br label %err_unreg_v4l2

if.end170:                                        ; preds = %if.end95
  %fops.i = getelementptr inbounds %struct.sur40_state, ptr %call7.i.i, i32 0, i32 4, i32 3
  %79 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fops.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %call.i306 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 5, i32 noundef -1, i32 noundef 1, ptr noundef %82) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i306)
  %tobool173.not = icmp eq i32 %call.i306, 0
  br i1 %tobool173.not, label %if.end179, label %do.end177

do.end177:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #20
  tail call void @video_unregister_device(ptr noundef %vdev) #16
  br label %err_unreg_v4l2

if.end179:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #18
  %driver_data.i.i307 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %83 = ptrtoint ptr %driver_data.i.i307 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i, ptr %driver_data.i.i307, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_probe.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_probe, %if.then186)) #16
          to label %cleanup [label %if.then186], !srcloc !201

if.then186:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_probe.__UNIQUE_ID_ddebug337, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #16
  br label %cleanup

err_unreg_v4l2:                                   ; preds = %do.end177, %do.end165, %if.end83.err_unreg_v4l2_crit_edge, %do.end81
  %error.0 = phi i32 [ %call76, %do.end81 ], [ %call92, %if.end83.err_unreg_v4l2_crit_edge ], [ %78, %do.end165 ], [ %call.i306, %do.end177 ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2) #16
  br label %err_free_buffer

err_free_buffer:                                  ; preds = %err_unreg_v4l2, %do.end68
  %error.1 = phi i32 [ %call63, %do.end68 ], [ %error.0, %err_unreg_v4l2 ]
  %84 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bulk_in_buffer, align 4
  tail call void @kfree(ptr noundef %85) #16
  br label %err_free_input

err_free_input:                                   ; preds = %err_free_buffer, %do.end60, %do.end44, %sur40_input_setup_events.exit
  %error.2 = phi i32 [ %call.i303, %sur40_input_setup_events.exit ], [ %call39, %do.end44 ], [ %error.1, %err_free_buffer ], [ -12, %do.end60 ]
  tail call void @input_free_device(ptr noundef nonnull %call18) #16
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_free_input, %if.end17.err_free_dev_crit_edge
  %error.3 = phi i32 [ %error.2, %err_free_input ], [ -12, %if.end17.err_free_dev_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %if.then186, %if.end179, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %err_free_dev ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ 0, %if.then186 ], [ 0, %if.end179 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sur40_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hdl = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #16
  %vdev = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 4
  tail call void @video_unregister_device(ptr noundef %vdev) #16
  %v4l2 = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 3
  tail call void @v4l2_device_unregister(ptr noundef %v4l2) #16
  %input = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 8
  tail call void @input_unregister_device(ptr noundef %3) #16
  %bulk_in_buffer = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bulk_in_buffer, align 4
  tail call void @kfree(ptr noundef %5) #16
  tail call void @kfree(ptr noundef %1) #16
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_disconnect.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_disconnect, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_disconnect.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.29) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_open.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_open, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_open.__UNIQUE_ID_ddebug309, ptr noundef %3, ptr noundef nonnull @.str.32) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 24) #19
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.sur40_init.exit_crit_edge, label %if.end.i

do.end.sur40_init.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sur40_init.exit

if.end.i:                                         ; preds = %do.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or2.i.i, i8 noundef zeroext -80, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 12, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i, label %if.end.i.sur40_init.exit_crit_edge, label %if.end3.i

if.end.i.sur40_init.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sur40_init.exit

if.end3.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i42.i = shl i32 %12, 8
  %or2.i43.i = or i32 %shl.i.i42.i, -2147483520
  %call3.i44.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or2.i43.i, i8 noundef zeroext -80, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 12, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i44.i)
  %cmp5.i = icmp slt i32 %call3.i44.i, 0
  br i1 %cmp5.i, label %if.end3.i.sur40_init.exit_crit_edge, label %if.end7.i

if.end3.i.sur40_init.exit_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sur40_init.exit

if.end7.i:                                        ; preds = %if.end3.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i45.i = shl i32 %16, 8
  %or2.i46.i = or i32 %shl.i.i45.i, -2147483520
  %call3.i47.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or2.i46.i, i8 noundef zeroext -80, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 12, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i47.i)
  %cmp9.i = icmp slt i32 %call3.i47.i, 0
  br i1 %cmp9.i, label %if.end7.i.sur40_init.exit_crit_edge, label %if.end11.i

if.end7.i.sur40_init.exit_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sur40_init.exit

if.end11.i:                                       ; preds = %if.end7.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i48.i = shl i32 %20, 8
  %or2.i49.i = or i32 %shl.i.i48.i, -2147483520
  %call3.i50.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or2.i49.i, i8 noundef zeroext -63, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 24, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i50.i)
  %cmp13.i = icmp slt i32 %call3.i50.i, 0
  br i1 %cmp13.i, label %if.end11.i.sur40_init.exit_crit_edge, label %if.end15.i

if.end11.i.sur40_init.exit_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sur40_init.exit

if.end15.i:                                       ; preds = %if.end11.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i51.i = shl i32 %24, 8
  %or2.i52.i = or i32 %shl.i.i51.i, -2147483520
  %call3.i53.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or2.i52.i, i8 noundef zeroext -77, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 5, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i53.i)
  %cmp17.i = icmp slt i32 %call3.i53.i, 0
  br i1 %cmp17.i, label %if.end15.i.sur40_init.exit_crit_edge, label %if.end19.i

if.end15.i.sur40_init.exit_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sur40_init.exit

if.end19.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i54.i = shl i32 %28, 8
  %or2.i55.i = or i32 %shl.i.i54.i, -2147483520
  %call3.i56.i = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or2.i55.i, i8 noundef zeroext -80, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 12, i32 noundef 1000) #16
  %29 = tail call i32 @llvm.smin.i32(i32 %call3.i56.i, i32 0) #16
  br label %sur40_init.exit

sur40_init.exit:                                  ; preds = %if.end19.i, %if.end15.i.sur40_init.exit_crit_edge, %if.end11.i.sur40_init.exit_crit_edge, %if.end7.i.sur40_init.exit_crit_edge, %if.end3.i.sur40_init.exit_crit_edge, %if.end.i.sur40_init.exit_crit_edge, %do.end.sur40_init.exit_crit_edge
  %result.0.i = phi i32 [ %call3.i.i, %if.end.i.sur40_init.exit_crit_edge ], [ %call3.i44.i, %if.end3.i.sur40_init.exit_crit_edge ], [ %call3.i47.i, %if.end7.i.sur40_init.exit_crit_edge ], [ %call3.i50.i, %if.end11.i.sur40_init.exit_crit_edge ], [ %call3.i53.i, %if.end15.i.sur40_init.exit_crit_edge ], [ %29, %if.end19.i ], [ -12, %do.end.sur40_init.exit_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #16
  ret i32 %result.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sur40_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_close.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_close, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_close.__UNIQUE_ID_ddebug310, ptr noundef %3, ptr noundef nonnull @.str.34) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sur40_poll(ptr noundef %input) #2 align 64 {
entry:
  %bulk_read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bulk_read) #16
  %2 = ptrtoint ptr %bulk_read to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bulk_read, align 4, !annotation !202
  %bulk_in_buffer = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bulk_in_buffer, align 4
  %blobs = getelementptr inbounds %struct.sur40_data, ptr %4, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_poll.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_poll, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_poll.__UNIQUE_ID_ddebug315, ptr noundef %6, ptr noundef nonnull @.str.38) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bulk_in_epaddr = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 14
  %bulk_in_size = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 13
  %dev25 = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 1
  %count = getelementptr inbounds %struct.sur40_header, ptr %4, i32 0, i32 1
  br label %do.body6

do.body6:                                         ; preds = %do.cond107.do.body6_crit_edge, %do.end
  %need_blobs.0 = phi i32 [ -1, %do.end ], [ %need_blobs.2.lcssa, %do.cond107.do.body6_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %bulk_in_epaddr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bulk_in_epaddr, align 4
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %shl.i = shl i32 %12, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or9 = or i32 %or.i, -1073741696
  %13 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bulk_in_buffer, align 4
  %15 = ptrtoint ptr %bulk_in_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bulk_in_size, align 8
  %call11 = call i32 @usb_bulk_msg(ptr noundef %8, i32 noundef %or9, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %bulk_read, i32 noundef 1000) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_poll.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_poll, %if.then24)) #16
          to label %do.end28 [label %if.then24], !srcloc !201

if.then24:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev25, align 4
  %19 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bulk_read, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_poll.__UNIQUE_ID_ddebug316, ptr noundef %18, ptr noundef nonnull @.str.39, i32 noundef %20) #16
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end33, label %if.end35

do.end33:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.40) #20
  br label %cleanup

if.end35:                                         ; preds = %do.end28
  %23 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bulk_read, align 4
  %sub = add i32 %24, -16
  %rem = and i32 %sub, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp36.not = icmp eq i32 %rem, 0
  br i1 %cmp36.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.42) #20
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %need_blobs.0)
  %cmp44 = icmp eq i32 %need_blobs.0, -1
  br i1 %cmp44, label %if.then46, label %if.end43.if.end65_crit_edge

if.end43.if.end65_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %count, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %conv47 = zext i16 %29 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_poll.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_poll, %if.then60)) #16
          to label %if.end65 [label %if.then60], !srcloc !201

if.then60:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_poll.__UNIQUE_ID_ddebug317, ptr noundef %31, ptr noundef nonnull @.str.44, i32 noundef %conv47) #16
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.then46, %if.end43.if.end65_crit_edge
  %need_blobs.1 = phi i32 [ %conv47, %if.then60 ], [ %need_blobs.0, %if.end43.if.end65_crit_edge ], [ %conv47, %if.then46 ]
  %div146 = lshr i32 %sub, 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_poll.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_poll, %if.then78)) #16
          to label %do.end82 [label %if.then78], !srcloc !201

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_poll.__UNIQUE_ID_ddebug318, ptr noundef %33, ptr noundef nonnull @.str.45, i32 noundef %div146) #16
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %if.end65
  %34 = call i32 @llvm.smin.i32(i32 %div146, i32 %need_blobs.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp87164 = icmp sgt i32 %34, 0
  br i1 %cmp87164, label %do.end82.for.body_crit_edge, label %do.end82.do.cond107_crit_edge

do.end82.do.cond107_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond107

do.end82.for.body_crit_edge:                      ; preds = %do.end82
  br label %for.body

for.body:                                         ; preds = %sur40_report_blob.exit.for.body_crit_edge, %do.end82.for.body_crit_edge
  %i.0165 = phi i32 [ %inc, %sur40_report_blob.exit.for.body_crit_edge ], [ 0, %do.end82.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_poll.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_poll, %if.then101)) #16
          to label %do.end105 [label %if.then101], !srcloc !201

if.then101:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_poll.__UNIQUE_ID_ddebug319, ptr noundef %36, ptr noundef nonnull @.str.46) #16
  br label %do.end105

do.end105:                                        ; preds = %if.then101, %for.body
  %type.i = getelementptr %struct.sur40_blob, ptr %blobs, i32 %i.0165, i32 2
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp.not.i = icmp eq i8 %38, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end105.sur40_report_blob.exit_crit_edge

do.end105.sur40_report_blob.exit_crit_edge:       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %sur40_report_blob.exit

if.end.i:                                         ; preds = %do.end105
  %arrayidx106 = getelementptr %struct.sur40_blob, ptr %blobs, i32 %i.0165
  %39 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %arrayidx106, align 1
  %conv2.i = zext i16 %40 to i32
  %call.i = call i32 @input_mt_get_slot_by_key(ptr noundef %input, i32 noundef %conv2.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call.i)
  %41 = icmp ugt i32 %call.i, 63
  br i1 %41, label %if.end.i.sur40_report_blob.exit_crit_edge, label %if.end8.i

if.end.i.sur40_report_blob.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sur40_report_blob.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %bb_size_x9.i = getelementptr %struct.sur40_blob, ptr %blobs, i32 %i.0165, i32 5
  %42 = ptrtoint ptr %bb_size_x9.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %bb_size_x9.i, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43) #16
  %bb_size_y11.i = getelementptr %struct.sur40_blob, ptr %blobs, i32 %i.0165, i32 6
  %45 = ptrtoint ptr %bb_size_y11.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %bb_size_y11.i, align 1
  %47 = call i16 @llvm.bswap.i16(i16 %46) #16
  %pos_x13.i = getelementptr %struct.sur40_blob, ptr %blobs, i32 %i.0165, i32 7
  %48 = ptrtoint ptr %pos_x13.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %pos_x13.i, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49) #16
  %conv14.i = zext i16 %50 to i32
  %pos_y15.i = getelementptr %struct.sur40_blob, ptr %blobs, i32 %i.0165, i32 8
  %51 = ptrtoint ptr %pos_y15.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %pos_y15.i, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52) #16
  %conv16.i = zext i16 %53 to i32
  %ctr_x17.i = getelementptr %struct.sur40_blob, ptr %blobs, i32 %i.0165, i32 9
  %54 = ptrtoint ptr %ctr_x17.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %ctr_x17.i, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55) #16
  %conv18.i = zext i16 %56 to i32
  %ctr_y19.i = getelementptr %struct.sur40_blob, ptr %blobs, i32 %i.0165, i32 10
  %57 = ptrtoint ptr %ctr_y19.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %ctr_y19.i, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58) #16
  %conv20.i = zext i16 %59 to i32
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 47, i32 noundef %call.i) #16
  %call21.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %input, i32 noundef 0, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %47)
  %cmp22.i = icmp ugt i16 %44, %47
  %conv23.i = zext i1 %cmp22.i to i32
  %60 = call i16 @llvm.umax.i16(i16 %44, i16 %47) #16
  %61 = zext i16 %60 to i32
  %62 = call i16 @llvm.umin.i16(i16 %44, i16 %47) #16
  %cond32.i = zext i16 %62 to i32
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 53, i32 noundef %conv14.i) #16
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 54, i32 noundef %conv16.i) #16
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 60, i32 noundef %conv18.i) #16
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 61, i32 noundef %conv20.i) #16
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 52, i32 noundef %conv23.i) #16
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 48, i32 noundef %61) #16
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 49, i32 noundef %cond32.i) #16
  br label %sur40_report_blob.exit

sur40_report_blob.exit:                           ; preds = %if.end8.i, %if.end.i.sur40_report_blob.exit_crit_edge, %do.end105.sur40_report_blob.exit_crit_edge
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, %34
  br i1 %exitcond.not, label %do.cond107.loopexit, label %sur40_report_blob.exit.for.body_crit_edge

sur40_report_blob.exit.for.body_crit_edge:        ; preds = %sur40_report_blob.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.cond107.loopexit:                              ; preds = %sur40_report_blob.exit
  call void @__sanitizer_cov_trace_pc() #18
  %63 = sub i32 %need_blobs.1, %34
  br label %do.cond107

do.cond107:                                       ; preds = %do.cond107.loopexit, %do.end82.do.cond107_crit_edge
  %need_blobs.2.lcssa = phi i32 [ %need_blobs.1, %do.end82.do.cond107_crit_edge ], [ %63, %do.cond107.loopexit ]
  %cmp108 = icmp sgt i32 %need_blobs.2.lcssa, 0
  br i1 %cmp108, label %do.cond107.do.body6_crit_edge, label %do.end110

do.cond107.do.body6_crit_edge:                    ; preds = %do.cond107
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

do.end110:                                        ; preds = %do.cond107
  call void @__sanitizer_cov_trace_pc() #18
  call void @input_mt_sync_frame(ptr noundef %input) #16
  call void @input_event(ptr noundef %input, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  call fastcc void @sur40_process_video(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %do.end41, %do.end33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bulk_read) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sur40_process_video(ptr noundef %sur40) unnamed_addr #2 align 64 {
entry:
  %sgr = alloca %struct.usb_sg_request, align 4
  %bulk_read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk_in_buffer = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 12
  %0 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bulk_in_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sgr) #16
  %2 = call ptr @memset(ptr %sgr, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bulk_read) #16
  %3 = ptrtoint ptr %bulk_read to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bulk_read, align 4, !annotation !202
  %start_streaming_called.i = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 8, i32 28
  %4 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %5 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %qlock = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %qlock) #16
  %buf_list = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 9
  %6 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %buf_list, align 4
  %cmp.i.not = icmp eq ptr %7, %buf_list
  br i1 %cmp.i.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_process_video.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_process_video, %if.then7)) #16
          to label %do.end [label %if.then7], !srcloc !201

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_process_video.__UNIQUE_ID_ddebug320, ptr noundef %9, ptr noundef nonnull @.str.48) #16
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  tail call void @_raw_spin_unlock(ptr noundef %qlock) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %7, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del.exit_crit_edge

if.end10.list_del.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end10.list_del.exit_crit_edge
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %qlock) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_process_video.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_process_video, %if.then26)) #16
          to label %do.end30 [label %if.then26], !srcloc !201

if.then26:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %dev27 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %18 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_process_video.__UNIQUE_ID_ddebug321, ptr noundef %19, ptr noundef nonnull @.str.49) #16
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %list_del.exit
  %20 = ptrtoint ptr %sur40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sur40, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i = shl i32 %23, 8
  %or33 = or i32 %shl.i, -1069481856
  %24 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bulk_in_buffer, align 4
  %bulk_in_size = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 13
  %26 = ptrtoint ptr %bulk_in_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bulk_in_size, align 8
  %call35 = call i32 @usb_bulk_msg(ptr noundef %21, i32 noundef %or33, ptr noundef %25, i32 noundef %27, ptr noundef nonnull %bulk_read, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %do.end39, label %if.end41

do.end39:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #18
  %dev40 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %28 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.40) #20
  br label %err_poll

if.end41:                                         ; preds = %do.end30
  %30 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bulk_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %31)
  %cmp42.not = icmp eq i32 %31, 20
  br i1 %cmp42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %dev47 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %32 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.51, i32 noundef %31, i32 noundef 20) #20
  br label %err_poll

if.end48:                                         ; preds = %if.end41
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1398096454, i32 %35)
  %cmp49.not = icmp eq i32 %35, 1398096454
  br i1 %cmp49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %dev54 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %36 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.54) #20
  br label %err_poll

if.end55:                                         ; preds = %if.end48
  %size = getelementptr inbounds %struct.sur40_image_header, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %size, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %sizeimage = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 6, i32 5
  %41 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp56.not = icmp eq i32 %40, %42
  br i1 %cmp56.not, label %do.body63, label %do.end60

do.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  %dev61 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %43 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev61, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.57) #20
  br label %err_poll

do.body63:                                        ; preds = %if.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_process_video.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_process_video, %if.then75)) #16
          to label %do.end79 [label %if.then75], !srcloc !201

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #18
  %dev76 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %45 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev76, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_process_video.__UNIQUE_ID_ddebug322, ptr noundef %46, ptr noundef nonnull @.str.59) #16
  br label %do.end79

do.end79:                                         ; preds = %if.then75, %do.body63
  %call.i = call ptr @vb2_plane_cookie(ptr noundef %add.ptr, i32 noundef 0) #16
  %47 = ptrtoint ptr %sur40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sur40, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %shl.i207 = shl i32 %50, 8
  %or85 = or i32 %shl.i207, -1069481856
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nents, align 4
  %55 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sizeimage, align 4
  %call88 = call i32 @usb_sg_init(ptr noundef nonnull %sgr, ptr noundef %48, i32 noundef %or85, i32 noundef 0, ptr noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end93, label %if.end95

do.end93:                                         ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #18
  %dev94 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %57 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.61, i32 noundef %call88) #20
  br label %err_poll

if.end95:                                         ; preds = %do.end79
  call void @usb_sg_wait(ptr noundef nonnull %sgr) #16
  %59 = ptrtoint ptr %sgr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp96 = icmp slt i32 %60, 0
  br i1 %cmp96, label %do.end100, label %do.body104

do.end100:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  %dev101 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %61 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev101, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.64, i32 noundef %60) #20
  br label %err_poll

do.body104:                                       ; preds = %if.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_process_video.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_process_video, %if.then116)) #16
          to label %do.end120 [label %if.then116], !srcloc !201

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #18
  %dev117 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %63 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev117, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_process_video.__UNIQUE_ID_ddebug323, ptr noundef %64, ptr noundef nonnull @.str.66) #16
  br label %do.end120

do.end120:                                        ; preds = %if.then116, %do.body104
  %sequence = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 11
  %65 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sequence, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp121 = icmp eq i32 %66, -1
  br i1 %cmp121, label %do.end120.cleanup_crit_edge, label %if.end123

do.end120.cleanup_crit_edge:                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end123:                                        ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #18
  %call.i209 = call i64 @ktime_get() #16
  %timestamp = getelementptr i8, ptr %7, i32 -712
  %67 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %call.i209, ptr %timestamp, align 8
  %68 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sequence, align 8
  %inc = add i32 %69, 1
  store i32 %inc, ptr %sequence, align 8
  %sequence129 = getelementptr i8, ptr %7, i32 -272
  %70 = ptrtoint ptr %sequence129 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sequence129, align 8
  %field = getelementptr i8, ptr %7, i32 -292
  %71 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %field, align 4
  call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 5) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sur40_process_video.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sur40_process_video, %if.then145)) #16
          to label %cleanup [label %if.then145], !srcloc !201

if.then145:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #18
  %dev146 = getelementptr inbounds %struct.sur40_state, ptr %sur40, i32 0, i32 1
  %72 = ptrtoint ptr %dev146 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev146, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sur40_process_video.__UNIQUE_ID_ddebug324, ptr noundef %73, ptr noundef nonnull @.str.67) #16
  br label %cleanup

err_poll:                                         ; preds = %do.end100, %do.end93, %do.end60, %do.end53, %do.end46, %do.end39
  call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #16
  br label %cleanup

cleanup:                                          ; preds = %err_poll, %if.then145, %if.end123, %do.end120.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bulk_read) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sgr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_get_slot_by_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_sg_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_sg_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sur40_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 21
  %2 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers, align 4
  %4 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbuffers, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp = icmp ult i32 %add, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sub = sub i32 3, %3
  %6 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 6, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp3 = icmp ult i32 %10, %12
  %cond = select i1 %cmp3, i32 -22, i32 0
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %nplanes, align 4
  %sizeimage6 = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 6, i32 5
  %14 = ptrtoint ptr %sizeimage6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sizeimage6, align 4
  %16 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2
  %retval.0 = phi i32 [ %cond, %if.then2 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_buffer_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.sur40_state, ptr %3, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %vb2_plane_size.exit15

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp21 = icmp ult i32 %9, %5
  br i1 %cmp21, label %vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %vb2_plane_size.exit15

vb2_plane_size.exit15:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge
  %retval.0.i14 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge ], [ %9, %vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge ]
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %3, align 8
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %.pn, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.69, i32 noundef %retval.0.i14, i32 noundef %5) #20
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %11 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit15, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit15 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sur40_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sur40_stop_streaming(ptr noundef %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %call1 = tail call i32 @vb2_wait_for_all_buffers(ptr noundef %vq) #16
  %sequence = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sequence, align 8
  %qlock.i = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %qlock.i) #16
  %buf_list.i = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_list.i, align 4
  %cmp.not2.i = icmp eq ptr %4, %buf_list.i
  br i1 %cmp.not2.i, label %entry.return_all_buffers.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.return_all_buffers.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return_all_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in3.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %4, %entry.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in3.i, i32 -736
  %5 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in3.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in3.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in3.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.return_all_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.return_all_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %list_del.exit.i.return_all_buffers.exit_crit_edge, %entry.return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %qlock.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sur40_buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %qlock = getelementptr inbounds %struct.sur40_state, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %qlock) #16
  %list = getelementptr inbounds %struct.sur40_buffer, ptr %vb, i32 0, i32 1
  %buf_list = getelementptr inbounds %struct.sur40_state, ptr %3, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.sur40_state, ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %buf_list) #16
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sur40_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %qlock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_wait_for_all_buffers(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strlcpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #16
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strlcpy(ptr noundef %card, ptr noundef nonnull @.str.4, i32 noundef 32) #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
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
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef %7, ptr noundef %devpath.i) #16
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sur40_vidioc_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pixelformat = getelementptr [2 x %struct.v4l2_pix_format], ptr @sur40_pix_format, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %pixelformat2 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat2, align 4
  %flags = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_vidioc_g_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pix_fmt = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %fmt, ptr %pix_fmt, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_vidioc_s_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1497715271, i32 %3)
  %cond = icmp eq i32 %3, 1497715271
  %pix_fmt = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 6
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = call ptr @memcpy(ptr %pix_fmt, ptr getelementptr inbounds ([2 x %struct.v4l2_pix_format], ptr @sur40_pix_format, i32 0, i32 1), i32 48)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call ptr @memcpy(ptr %pix_fmt, ptr @sur40_pix_format, i32 48)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pix_fmt3 = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 6
  %6 = call ptr @memcpy(ptr %fmt, ptr %pix_fmt3, i32 48)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sur40_vidioc_try_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1497715271, i32 %1)
  %cond = icmp eq i32 %1, 1497715271
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = call ptr @memcpy(ptr %fmt, ptr getelementptr inbounds ([2 x %struct.v4l2_pix_format], ptr @sur40_pix_format, i32 0, i32 1), i32 48)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = call ptr @memcpy(ptr %fmt, ptr @sur40_pix_format, i32 48)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0
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
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %type, align 4
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %3 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %std, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.72, i32 noundef 32) #16
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 7
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %capabilities, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sur40_vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sur40_vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp = icmp eq i32 %i, 0
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sur40_ioctl_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %p) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %timeperframe, align 4
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 60, ptr %denominator, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %readbuffers, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_vidioc_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %lor.lhs.false.cleanup_crit_edge [
    i32 942691668, label %lor.lhs.false.if.end_crit_edge
    i32 1497715271, label %lor.lhs.false.if.end_crit_edge13
  ]

lor.lhs.false.if.end_crit_edge13:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge13
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %pix_fmt = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pix_fmt, align 4
  %10 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %f, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %10, align 4
  %height = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %f, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_vidioc_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %5, label %lor.lhs.false.cleanup_crit_edge [
    i32 942691668, label %lor.lhs.false.lor.lhs.false4_crit_edge
    i32 1497715271, label %lor.lhs.false.lor.lhs.false4_crit_edge19
  ]

lor.lhs.false.lor.lhs.false4_crit_edge19:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false4

lor.lhs.false.lor.lhs.false4_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false.lor.lhs.false4_crit_edge, %lor.lhs.false.lor.lhs.false4_crit_edge19
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width, align 4
  %pix_fmt = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pix_fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp6.not = icmp eq i32 %8, %10
  br i1 %cmp6.not, label %lor.lhs.false7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height9 = getelementptr inbounds %struct.sur40_state, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp10.not = icmp eq i32 %12, %14
  br i1 %cmp10.not, label %if.end, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 4
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type, align 4
  %16 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 5
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %f, i32 0, i32 5, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 60, ptr %denominator, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sur40_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1636
  %vsvideo = getelementptr i8, ptr %1, i32 761
  %2 = ptrtoint ptr %vsvideo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vsvideo, align 1
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963795, label %sw.bb5
    i32 9963804, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = trunc i32 %8 to i8
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 8, i8 noundef zeroext %conv) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 10, i8 noundef zeroext %conv) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 12, i8 noundef zeroext %conv) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext %conv) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 16, i8 noundef zeroext %conv) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 18, i8 noundef zeroext %conv) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 20, i8 noundef zeroext %conv) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 22, i8 noundef zeroext %conv) #16
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %9 = and i8 %3, 15
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val3, align 4
  %.tr = trunc i32 %11 to i8
  %12 = shl i8 %.tr, 4
  %conv4 = or i8 %12, %9
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 28, i8 noundef zeroext %conv4) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 29, i8 noundef zeroext %conv4) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 30, i8 noundef zeroext %conv4) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext %conv4) #16
  %13 = ptrtoint ptr %vsvideo to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %vsvideo, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %14 = and i8 %3, -16
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val8, align 4
  %17 = trunc i32 %16 to i8
  %conv10 = or i8 %14, %17
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 28, i8 noundef zeroext %conv10) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 29, i8 noundef zeroext %conv10) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 30, i8 noundef zeroext %conv10) #16
  tail call fastcc void @sur40_poke(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext %conv10) #16
  %18 = ptrtoint ptr %vsvideo to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv10, ptr %vsvideo, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val12, align 4
  %conv.i = and i32 %20, 255
  %21 = and i32 %20, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.not = icmp eq i32 %21, 0
  br i1 %cmp.i.not, label %if.end.i, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb11
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i = shl i32 %25, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %arrayidx.i = getelementptr [2 x i8], ptr @__const.sur40_set_preprocessor.setting_07, i32 0, i32 %conv.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv3.i = zext i8 %27 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext 7, i16 noundef zeroext %conv3.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.sw.epilog_crit_edge, label %if.end8.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 5) #16
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i1.i = shl i32 %31, 8
  %or12.i = or i32 %shl.i1.i, -2147483648
  %arrayidx14.i = getelementptr [2 x i8], ptr @__const.sur40_set_preprocessor.setting_17, i32 0, i32 %conv.i
  %32 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %33 to i16
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or12.i, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext 23, i16 noundef zeroext %conv15.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end8.i.sw.epilog_crit_edge, label %if.end20.i

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end20.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @msleep(i32 noundef 5) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end20.i, %if.end8.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %sw.bb5, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sur40_poke(ptr nocapture noundef readonly %dev, i8 noundef zeroext %offset, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %call2 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext 50, i16 noundef zeroext 150, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 5) #16
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i1 = shl i32 %7, 8
  %or7 = or i32 %shl.i1, -2147483648
  %conv8 = zext i8 %offset to i16
  %call9 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or7, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext 114, i16 noundef zeroext %conv8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.error_crit_edge, label %if.end13

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end13:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 5) #16
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i2 = shl i32 %11, 8
  %or17 = or i32 %shl.i2, -2147483648
  %conv18 = zext i8 %value to i16
  %call19 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or17, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext 178, i16 noundef zeroext %conv18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end13.error_crit_edge, label %if.end23

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @msleep(i32 noundef 5) #16
  br label %error

error:                                            ; preds = %if.end23, %if.end13.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39, !40, !42, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !164, !166, !168, !169, !170, !171, !173, !174, !176, !178, !180, !182, !184, !186, !188, !189, !190}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__param_brightness, !1, !"__param_brightness", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/sur40.c", i32 171, i32 1}
!2 = !{ptr @__UNIQUE_ID_brightnesstype303, !1, !"__UNIQUE_ID_brightnesstype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_brightness304, !4, !"__UNIQUE_ID_brightness304", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/sur40.c", i32 172, i32 1}
!5 = !{ptr @__param_contrast, !6, !"__param_contrast", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/sur40.c", i32 175, i32 1}
!7 = !{ptr @__UNIQUE_ID_contrasttype305, !6, !"__UNIQUE_ID_contrasttype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_contrast306, !9, !"__UNIQUE_ID_contrast306", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/sur40.c", i32 176, i32 1}
!10 = !{ptr @__param_gain, !11, !"__param_gain", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/sur40.c", i32 179, i32 1}
!12 = !{ptr @__UNIQUE_ID_gaintype307, !11, !"__UNIQUE_ID_gaintype307", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_gain308, !14, !"__UNIQUE_ID_gain308", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/sur40.c", i32 180, i32 1}
!15 = !{ptr @__initcall__kmod_sur40__339_1186_sur40_driver_init6, !16, !"__initcall__kmod_sur40__339_1186_sur40_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/sur40.c", i32 1186, i32 1}
!17 = !{ptr @__exitcall_sur40_driver_exit, !16, !"__exitcall_sur40_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author340, !19, !"__UNIQUE_ID_author340", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/sur40.c", i32 1188, i32 1}
!20 = !{ptr @__UNIQUE_ID_description341, !21, !"__UNIQUE_ID_description341", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/sur40.c", i32 1189, i32 1}
!22 = !{ptr @__UNIQUE_ID_file342, !23, !"__UNIQUE_ID_file342", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/sur40.c", i32 1190, i32 1}
!24 = !{ptr @__UNIQUE_ID_license343, !23, !"__UNIQUE_ID_license343", i1 false, i1 false}
!25 = !{ptr @__param_str_brightness, !1, !"__param_str_brightness", i1 false, i1 false}
!26 = !{ptr @brightness, !27, !"brightness", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/sur40.c", i32 170, i32 13}
!28 = !{ptr @__param_str_contrast, !6, !"__param_str_contrast", i1 false, i1 false}
!29 = !{ptr @contrast, !30, !"contrast", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/sur40.c", i32 174, i32 13}
!31 = !{ptr @__param_str_gain, !11, !"__param_str_gain", i1 false, i1 false}
!32 = !{ptr @gain, !33, !"gain", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/sur40.c", i32 178, i32 13}
!34 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sur40_driver, !36, !"sur40_driver", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/sur40.c", i32 1179, i32 26}
!37 = !{ptr @sur40_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/sur40.c", i32 687, i32 2}
!39 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sur40_probe.__key.2, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/sur40.c", i32 688, i32 2}
!42 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/sur40.c", i32 691, i32 16}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/sur40.c", i32 694, i32 23}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/sur40.c", i32 708, i32 3}
!49 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sur40_probe._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @sur40_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/sur40.c", i32 723, i32 3}
!57 = !{ptr @sur40_probe._entry.11, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sur40_probe._entry_ptr.13, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/touchscreen/sur40.c", i32 731, i32 3}
!61 = !{ptr @sur40_probe._entry.14, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sur40_probe._entry_ptr.16, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/sur40.c", i32 737, i32 55}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/sur40.c", i32 740, i32 3}
!67 = !{ptr @sur40_probe._entry.18, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sur40_probe._entry_ptr.20, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @sur40_probe._key, !70, !"_key", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/sur40.c", i32 764, i32 2}
!71 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/sur40.c", i32 787, i32 3}
!74 = !{ptr @sur40_probe._entry.22, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sur40_probe._entry_ptr.24, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/sur40.c", i32 796, i32 3}
!78 = !{ptr @sur40_probe._entry.25, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sur40_probe._entry_ptr.27, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/sur40.c", i32 803, i32 2}
!82 = !{ptr @sur40_probe.__UNIQUE_ID_ddebug337, !81, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!83 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/usb.h", i32 912, i32 31}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/sur40.c", i32 396, i32 2}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sur40_open.__UNIQUE_ID_ddebug309, !87, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/sur40.c", i32 405, i32 2}
!92 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sur40_close.__UNIQUE_ID_ddebug310, !91, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/sur40.c", i32 643, i32 3}
!96 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sur40_input_setup_events._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sur40_input_setup_events._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/sur40.c", i32 462, i32 2}
!101 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sur40_poll.__UNIQUE_ID_ddebug315, !100, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/sur40.c", i32 474, i32 3}
!105 = !{ptr @sur40_poll.__UNIQUE_ID_ddebug316, !104, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/touchscreen/sur40.c", i32 477, i32 4}
!108 = !{ptr @sur40_poll._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @sur40_poll._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/sur40.c", i32 484, i32 4}
!112 = !{ptr @sur40_poll._entry.41, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @sur40_poll._entry_ptr.43, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/touchscreen/sur40.c", i32 491, i32 4}
!116 = !{ptr @sur40_poll.__UNIQUE_ID_ddebug317, !115, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/touchscreen/sur40.c", i32 507, i32 3}
!119 = !{ptr @sur40_poll.__UNIQUE_ID_ddebug318, !118, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/touchscreen/sur40.c", i32 515, i32 4}
!122 = !{ptr @sur40_poll.__UNIQUE_ID_ddebug319, !121, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/sur40.c", i32 543, i32 3}
!125 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @sur40_process_video.__UNIQUE_ID_ddebug320, !124, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/touchscreen/sur40.c", i32 551, i32 2}
!129 = !{ptr @sur40_process_video.__UNIQUE_ID_ddebug321, !128, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!130 = !{ptr @sur40_process_video._entry, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/input/touchscreen/sur40.c", i32 560, i32 3}
!132 = !{ptr @sur40_process_video._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/touchscreen/sur40.c", i32 565, i32 3}
!135 = !{ptr @sur40_process_video._entry.50, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @sur40_process_video._entry_ptr.52, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/touchscreen/sur40.c", i32 571, i32 3}
!139 = !{ptr @sur40_process_video._entry.53, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sur40_process_video._entry_ptr.55, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/touchscreen/sur40.c", i32 576, i32 3}
!143 = !{ptr @sur40_process_video._entry.56, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @sur40_process_video._entry_ptr.58, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/touchscreen/sur40.c", i32 580, i32 2}
!147 = !{ptr @sur40_process_video.__UNIQUE_ID_ddebug322, !146, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/touchscreen/sur40.c", i32 588, i32 3}
!150 = !{ptr @sur40_process_video._entry.60, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @sur40_process_video._entry_ptr.62, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/touchscreen/sur40.c", i32 594, i32 3}
!154 = !{ptr @sur40_process_video._entry.63, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @sur40_process_video._entry_ptr.65, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/touchscreen/sur40.c", i32 598, i32 2}
!158 = !{ptr @sur40_process_video.__UNIQUE_ID_ddebug323, !157, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/touchscreen/sur40.c", i32 609, i32 2}
!161 = !{ptr @sur40_process_video.__UNIQUE_ID_ddebug324, !160, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!162 = !{ptr @sur40_queue, !163, !"sur40_queue", i1 false, i1 false}
!163 = !{!"../drivers/input/touchscreen/sur40.c", i32 1114, i32 31}
!164 = !{ptr @sur40_queue_ops, !165, !"sur40_queue_ops", i1 false, i1 false}
!165 = !{!"../drivers/input/touchscreen/sur40.c", i32 1104, i32 29}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/input/touchscreen/sur40.c", i32 873, i32 3}
!168 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @sur40_buffer_prepare._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @sur40_buffer_prepare._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!173 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @sur40_pix_format, !175, !"sur40_pix_format", i1 false, i1 false}
!175 = !{!"../drivers/input/touchscreen/sur40.c", i32 183, i32 37}
!176 = !{ptr @sur40_video_device, !177, !"sur40_video_device", i1 false, i1 false}
!177 = !{!"../drivers/input/touchscreen/sur40.c", i32 1169, i32 34}
!178 = !{ptr @sur40_video_fops, !179, !"sur40_video_fops", i1 false, i1 false}
!179 = !{!"../drivers/input/touchscreen/sur40.c", i32 1129, i32 42}
!180 = !{ptr @sur40_video_ioctl_ops, !181, !"sur40_video_ioctl_ops", i1 false, i1 false}
!181 = !{!"../drivers/input/touchscreen/sur40.c", i32 1139, i32 36}
!182 = !{ptr @.str.72, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/input/touchscreen/sur40.c", i32 955, i32 19}
!184 = !{ptr @sur40_ctrl_ops, !185, !"sur40_ctrl_ops", i1 false, i1 false}
!185 = !{!"../drivers/input/touchscreen/sur40.c", i32 241, i32 35}
!186 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/input/touchscreen/sur40.c", i32 835, i32 2}
!188 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @sur40_disconnect.__UNIQUE_ID_ddebug338, !187, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!190 = !{ptr @sur40_table, !191, !"sur40_table", i1 false, i1 false}
!191 = !{!"../drivers/input/touchscreen/sur40.c", i32 1097, i32 35}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{i64 2148722052, i64 2148722057, i64 2148722070, i64 2148722114, i64 2148722148, i64 2148722169}
!202 = !{!"auto-init"}
