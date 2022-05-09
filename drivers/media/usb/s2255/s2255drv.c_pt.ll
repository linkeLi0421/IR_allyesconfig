; ModuleID = '/llk/IR_all_yes/drivers/media/usb/s2255/s2255drv.c_pt.bc'
source_filename = "../drivers/media/usb/s2255/s2255drv.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.s2255_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s2255_fmt = type { i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_frmsize_discrete = type { i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.s2255_dev = type { [4 x %struct.s2255_vc], %struct.v4l2_device, %struct.atomic_t, i32, %struct.mutex, %struct.mutex, ptr, ptr, i8, %struct.timer_list, ptr, %struct.s2255_pipeinfo, i32, i32, i32, i32, i16, ptr }
%struct.s2255_vc = type { ptr, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, i32, %struct.list_head, %struct.s2255_bufferi, %struct.s2255_mode, i64, i32, %struct.v4l2_captureparm, i32, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, ptr, i32, %struct.vb2_queue, %struct.mutex, %struct.spinlock }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s2255_bufferi = type { i32, [4 x %struct.s2255_framei] }
%struct.s2255_framei = type { i32, i32, ptr, i32 }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.s2255_pipeinfo = type { i32, i32, ptr, i32, ptr, ptr, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.s2255_fw = type { i32, i32, ptr, %struct.atomic_t, ptr, %struct.wait_queue_head, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.100, i32 }
%union.anon.100 = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.s2255_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.117 }
%union.anon.117 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.118, [2 x i32] }
%union.anon.118 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.119, [2 x i32] }
%union.anon.119 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@__param_str_debug = internal constant [15 x i8] c"s2255drv.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype303 = internal constant [28 x i8] c"s2255drv.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug304 = internal constant [49 x i8] c"s2255drv.parm=debug:Debug level(0-100) default 0\00", section ".modinfo", align 1
@__param_str_video_nr = internal constant [18 x i8] c"s2255drv.video_nr\00", align 1
@video_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype305 = internal constant [31 x i8] c"s2255drv.parmtype=video_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr306 = internal constant [64 x i8] c"s2255drv.parm=video_nr:start video minor(-1 default autodetect)\00", section ".modinfo", align 1
@__param_str_jpeg_enable = internal constant [21 x i8] c"s2255drv.jpeg_enable\00", align 1
@jpeg_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_jpeg_enable = internal constant %struct.kernel_param { ptr @__param_str_jpeg_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @jpeg_enable } }, section "__param", align 4
@__UNIQUE_ID_jpeg_enabletype307 = internal constant [34 x i8] c"s2255drv.parmtype=jpeg_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_jpeg_enable308 = internal constant [60 x i8] c"s2255drv.parm=jpeg_enable:Jpeg enable(1-on 0-off) default 1\00", section ".modinfo", align 1
@__initcall__kmod_s2255drv__311_2373_s2255_driver_init6 = internal global ptr @s2255_driver_init, section ".initcall6.init", align 4
@s2255_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @s2255_probe, ptr @s2255_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2255_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_s2255_driver_exit = internal global ptr @s2255_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description312 = internal constant [58 x i8] c"s2255drv.description=Sensoray 2255 Video for Linux driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [54 x i8] c"s2255drv.author=Dean Anderson (Sensoray Company Inc.)\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [47 x i8] c"s2255drv.file=drivers/media/usb/s2255/s2255drv\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [21 x i8] c"s2255drv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version316 = internal constant [24 x i8] c"s2255drv.version=1.25.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s2255drv\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.25.1\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_firmware317 = internal constant [31 x i8] c"s2255drv.firmware=f2255usb.bin\00", section ".modinfo", align 1
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s2255\00", [26 x i8] zeroinitializer }, align 32
@s2255_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6467, i16 8789, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6467, i16 8791, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@s2255_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2213, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s2255 - out of memory\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s2255_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/s2255/s2255drv.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr = internal global ptr @s2255_probe._entry, section ".printk_index", align 4
@s2255_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2219, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.10 = internal global ptr @s2255_probe._entry.9, section ".printk_index", align 4
@s2255_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@s2255_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->cmdlock\00", [18 x i8] zeroinitializer }, align 32
@s2255_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 2233, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"null usb device\0A\00", [47 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.16 = internal global ptr @s2255_probe._entry.14, section ".printk_index", align 4
@s2255_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.17, i8 2, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dev: %p, udev %p interface %p\0A\00", [33 x i8] zeroinitializer }, align 32
@s2255_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.18, i8 2, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"num EP: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@s2255_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 2253, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not find bulk-in endpoint\0A\00", [63 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.21 = internal global ptr @s2255_probe._entry.19, section ".printk_index", align 4
@s2255_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&dev->timer)\00", [18 x i8] zeroinitializer }, align 32
@s2255_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->fw_data->wait_fw\00", [41 x i8] zeroinitializer }, align 32
@s2255_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vc->wait_setmode\00", [46 x i8] zeroinitializer }, align 32
@s2255_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&vc->wait_vidstatus\00", [44 x i8] zeroinitializer }, align 32
@s2255_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vc->qlock\00", [21 x i8] zeroinitializer }, align 32
@s2255_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&vc->vb_lock\00", [19 x i8] zeroinitializer }, align 32
@s2255_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 2274, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"out of memory!\0A\00", [16 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.36 = internal global ptr @s2255_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f2255usb.bin\00", [19 x i8] zeroinitializer }, align 32
@s2255_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.5, ptr @.str.6, i32 2280, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sensoray 2255 failed to get firmware\0A\00", [58 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.40 = internal global ptr @s2255_probe._entry.38, section ".printk_index", align 4
@s2255_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.5, ptr @.str.6, i32 2288, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware invalid.\0A\00", [45 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.43 = internal global ptr @s2255_probe._entry.41, section ".printk_index", align 4
@s2255_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.5, ptr @.str.6, i32 2295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016s2255 dsp fw version %x\0A\00", [37 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.46 = internal global ptr @s2255_probe._entry.44, section ".printk_index", align 4
@s2255_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.5, ptr @.str.6, i32 2298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016s2255: f2255usb.bin out of date.\0A\00", [60 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.49 = internal global ptr @s2255_probe._entry.47, section ".printk_index", align 4
@s2255_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.5, ptr @.str.6, i32 2302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0142257 needs firmware %d or above.\0A\00", [60 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.52 = internal global ptr @s2255_probe._entry.50, section ".printk_index", align 4
@s2255_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.5, ptr @.str.6, i32 2314, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sensoray 2255 detected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.56 = internal global ptr @s2255_probe._entry.53, section ".printk_index", align 4
@s2255_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.5, ptr @.str.6, i32 2334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Sensoray 2255 driver load failed: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@s2255_probe._entry_ptr.59 = internal global ptr @s2255_probe._entry.57, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s2255_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013s2255: can't submit urb\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s2255_timer\00", [20 x i8] zeroinitializer }, align 32
@s2255_timer._entry_ptr = internal global ptr @s2255_timer._entry, section ".printk_index", align 4
@__const.s2255_board_init.mode_def = private unnamed_addr constant %struct.s2255_mode { i32 1, i32 1, i32 1, i32 1, i32 0, i32 92, i32 128, i32 0, i32 0, i32 16384, i32 0 }, align 4
@s2255_board_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.6, i32 1972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: board init: %p\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s2255_board_init\00", [47 x i8] zeroinitializer }, align 32
@s2255_board_init._entry_ptr = internal global ptr @s2255_board_init._entry, section ".printk_index", align 4
@s2255_board_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.6, i32 1981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: out of memory!\0A\00", [42 x i8] zeroinitializer }, align 32
@s2255_board_init._entry_ptr.66 = internal global ptr @s2255_board_init._entry.64, section ".printk_index", align 4
@s2255_board_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.6, i32 1989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016s2255: usb firmware version %d.%d\0A\00", [59 x i8] zeroinitializer }, align 32
@s2255_board_init._entry_ptr.69 = internal global ptr @s2255_board_init._entry.67, section ".printk_index", align 4
@s2255_board_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.6, i32 1992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016s2255: newer USB firmware available\0A\00", [57 x i8] zeroinitializer }, align 32
@s2255_board_init._entry_ptr.72 = internal global ptr @s2255_board_init._entry.70, section ".printk_index", align 4
@formats = internal constant { [6 x %struct.s2255_fmt], [48 x i8] } { [6 x %struct.s2255_fmt] [%struct.s2255_fmt { i32 1448695129, i32 16 }, %struct.s2255_fmt { i32 1498831189, i32 16 }, %struct.s2255_fmt { i32 1345466932, i32 16 }, %struct.s2255_fmt { i32 1497715271, i32 8 }, %struct.s2255_fmt { i32 1195724874, i32 24 }, %struct.s2255_fmt { i32 1196444237, i32 24 }], [48 x i8] zeroinitializer }, align 32
@s2255_board_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.63, ptr @.str.6, i32 2012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s: success\0A\00", [45 x i8] zeroinitializer }, align 32
@s2255_board_init._entry_ptr.75 = internal global ptr @s2255_board_init._entry.73, section ".printk_index", align 4
@s2255_get_fx2fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.6, i32 1913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: get fw error: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s2255_get_fx2fw\00", [16 x i8] zeroinitializer }, align 32
@s2255_get_fx2fw._entry_ptr = internal global ptr @s2255_get_fx2fw._entry, section ".printk_index", align 4
@s2255_get_fx2fw._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.6, i32 1915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: Get FW %x %x\0A\00", [44 x i8] zeroinitializer }, align 32
@s2255_get_fx2fw._entry_ptr.80 = internal global ptr @s2255_get_fx2fw._entry.78, section ".printk_index", align 4
@s2255_create_sys_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.6, i32 1939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016out of memory.  using less frames\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s2255_create_sys_buffers\00", [39 x i8] zeroinitializer }, align 32
@s2255_create_sys_buffers._entry_ptr = internal global ptr @s2255_create_sys_buffers._entry, section ".printk_index", align 4
@s2255_start_readpipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.6, i32 2092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: %s: IN %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s2255_start_readpipe\00", [43 x i8] zeroinitializer }, align 32
@s2255_start_readpipe._entry_ptr = internal global ptr @s2255_start_readpipe._entry, section ".printk_index", align 4
@s2255_start_readpipe._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.6, i32 2106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013s2255: start read pipe failed\0A\00", [63 x i8] zeroinitializer }, align 32
@s2255_start_readpipe._entry_ptr.87 = internal global ptr @s2255_start_readpipe._entry.85, section ".printk_index", align 4
@read_pipe_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.6, i32 2041, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no context!\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_pipe_completion\00", [43 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr = internal global ptr @read_pipe_completion._entry, section ".printk_index", align 4
@read_pipe_completion._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.6, i32 2046, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.91 = internal global ptr @read_pipe_completion._entry.90, section ".printk_index", align 4
@read_pipe_completion._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.89, ptr @.str.6, i32 2052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s: err shutdown\0A\00", [40 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.94 = internal global ptr @read_pipe_completion._entry.92, section ".printk_index", align 4
@read_pipe_completion._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.89, ptr @.str.6, i32 2058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s: exiting USB pipe\00", [37 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.97 = internal global ptr @read_pipe_completion._entry.95, section ".printk_index", align 4
@read_pipe_completion._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.89, ptr @.str.6, i32 2066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: failed URB %d\0A\00", [39 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.100 = internal global ptr @read_pipe_completion._entry.98, section ".printk_index", align 4
@read_pipe_completion._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.89, ptr @.str.6, i32 2079, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error submitting urb\0A\00", [42 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.103 = internal global ptr @read_pipe_completion._entry.101, section ".printk_index", align 4
@read_pipe_completion._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.89, ptr @.str.6, i32 2081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s :complete state 0\0A\00", [36 x i8] zeroinitializer }, align 32
@read_pipe_completion._entry_ptr.106 = internal global ptr @read_pipe_completion._entry.104, section ".printk_index", align 4
@s2255_read_video_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.6, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: callback read video\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s2255_read_video_callback\00", [38 x i8] zeroinitializer }, align 32
@s2255_read_video_callback._entry_ptr = internal global ptr @s2255_read_video_callback._entry, section ".printk_index", align 4
@s2255_read_video_callback._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.6, i32 1856, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid channel\0A\00", [47 x i8] zeroinitializer }, align 32
@s2255_read_video_callback._entry_ptr.111 = internal global ptr @s2255_read_video_callback._entry.109, section ".printk_index", align 4
@s2255_read_video_callback._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.6, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: s2255: read callback failed\0A\00", [61 x i8] zeroinitializer }, align 32
@s2255_read_video_callback._entry_ptr.114 = internal global ptr @s2255_read_video_callback._entry.112, section ".printk_index", align 4
@s2255_read_video_callback._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.108, ptr @.str.6, i32 1864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: callback read video done\0A\00", [32 x i8] zeroinitializer }, align 32
@s2255_read_video_callback._entry_ptr.117 = internal global ptr @s2255_read_video_callback._entry.115, section ".printk_index", align 4
@save_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.6, i32 1702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: buffer to user\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"save_frame\00", [21 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr = internal global ptr @save_frame._entry, section ".printk_index", align 4
@save_frame._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.6, i32 1718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: marker @ offset: %d [%x %x]\0A\00", [61 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr.122 = internal global ptr @save_frame._entry.120, section ".printk_index", align 4
@save_frame._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.6, i32 1724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: bad channel\0A\00", [45 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr.125 = internal global ptr @save_frame._entry.123, section ".printk_index", align 4
@G_chnmap = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@save_frame._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.119, ptr @.str.6, i32 1755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: setmode rdy %d\0A\00", [42 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr.128 = internal global ptr @save_frame._entry.126, section ".printk_index", align 4
@save_frame._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.119, ptr @.str.6, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016s2255: fw loaded\0A\00", [44 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr.131 = internal global ptr @save_frame._entry.129, section ".printk_index", align 4
@save_frame._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.119, ptr @.str.6, i32 1772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: vstat %x chan %d\0A\00", [40 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr.134 = internal global ptr @save_frame._entry.132, section ".printk_index", align 4
@save_frame._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.119, ptr @.str.6, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016s2255 unknown resp\0A\00", [42 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr.137 = internal global ptr @save_frame._entry.135, section ".printk_index", align 4
@save_frame._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.119, ptr @.str.6, i32 1810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: s2255 frame buffer == NULL.%p %p %d %d\00", [51 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr.140 = internal global ptr @save_frame._entry.138, section ".printk_index", align 4
@save_frame._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.119, ptr @.str.6, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: cur_size: %lu, size: %lu\0A\00", [32 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr.143 = internal global ptr @save_frame._entry.141, section ".printk_index", align 4
@save_frame._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.119, ptr @.str.6, i32 1829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: ******[%d]Buffer[%d]full*******\0A\00", [57 x i8] zeroinitializer }, align 32
@save_frame._entry_ptr.146 = internal global ptr @save_frame._entry.144, section ".printk_index", align 4
@s2255_got_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.6, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: No active queue to serve\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s2255_got_frame\00", [16 x i8] zeroinitializer }, align 32
@s2255_got_frame._entry_ptr = internal global ptr @s2255_got_frame._entry, section ".printk_index", align 4
@s2255_got_frame._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.6, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s: [buf] [%p]\0A\00", [42 x i8] zeroinitializer }, align 32
@s2255_got_frame._entry_ptr.151 = internal global ptr @s2255_got_frame._entry.149, section ".printk_index", align 4
@s2255_fillbuff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.6, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016s2255: unknown format?\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s2255_fillbuff\00", [17 x i8] zeroinitializer }, align 32
@s2255_fillbuff._entry_ptr = internal global ptr @s2255_fillbuff._entry, section ".printk_index", align 4
@s2255_fillbuff._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.6, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013s2255: =======no frame\0A\00", [38 x i8] zeroinitializer }, align 32
@s2255_fillbuff._entry_ptr.156 = internal global ptr @s2255_fillbuff._entry.154, section ".printk_index", align 4
@s2255_fillbuff._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str.6, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: s2255fill at : Buffer %p size= %d\0A\00", [55 x i8] zeroinitializer }, align 32
@s2255_fillbuff._entry_ptr.159 = internal global ptr @s2255_fillbuff._entry.157, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.160 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@s2255_fwchunk_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.6, i32 498, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"URB failed with status %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s2255_fwchunk_complete\00", [41 x i8] zeroinitializer }, align 32
@s2255_fwchunk_complete._entry_ptr = internal global ptr @s2255_fwchunk_complete._entry, section ".printk_index", align 4
@s2255_fwchunk_complete._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.6, i32 505, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s2255 - disconnected\0A\00", [42 x i8] zeroinitializer }, align 32
@s2255_fwchunk_complete._entry_ptr.165 = internal global ptr @s2255_fwchunk_complete._entry.163, section ".printk_index", align 4
@s2255_fwchunk_complete._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.162, ptr @.str.6, i32 530, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed submit URB\0A\00", [45 x i8] zeroinitializer }, align 32
@s2255_fwchunk_complete._entry_ptr.168 = internal global ptr @s2255_fwchunk_complete._entry.166, section ".printk_index", align 4
@s2255_probe_v4l._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.169 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"s2255drv:1601:(&vc->hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@s2255_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @s2255_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@color_filter_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @s2255_ctrl_ops, ptr null, i32 9967920, ptr @.str.211, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@s2255_probe_v4l._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.6, i32 1621, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't register control\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s2255_probe_v4l\00", [16 x i8] zeroinitializer }, align 32
@s2255_probe_v4l._entry_ptr = internal global ptr @s2255_probe_v4l._entry, section ".printk_index", align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@s2255_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@s2255_probe_v4l._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.6, i32 1636, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s vb2_queue_init 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@s2255_probe_v4l._entry_ptr.174 = internal global ptr @s2255_probe_v4l._entry.172, section ".printk_index", align 4
@template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @s2255_fops_v4l, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"s2255v\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16777215, ptr @s2255_video_device_release, ptr @s2255_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@s2255_probe_v4l._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str.6, i32 1659, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register video device!\0A\00", [62 x i8] zeroinitializer }, align 32
@s2255_probe_v4l._entry_ptr.177 = internal global ptr @s2255_probe_v4l._entry.175, section ".printk_index", align 4
@s2255_probe_v4l._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.171, ptr @.str.6, i32 1664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: V4L2 device registered as %s\0A\00", [60 x i8] zeroinitializer }, align 32
@s2255_probe_v4l._entry_ptr.180 = internal global ptr @s2255_probe_v4l._entry.178, section ".printk_index", align 4
@s2255_probe_v4l._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.171, ptr @.str.6, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016Sensoray 2255 V4L driver Revision: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@s2255_probe_v4l._entry_ptr.183 = internal global ptr @s2255_probe_v4l._entry.181, section ".printk_index", align 4
@s2255_probe_v4l._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.171, ptr @.str.6, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014s2255: Not all channels available.\0A\00", [58 x i8] zeroinitializer }, align 32
@s2255_probe_v4l._entry_ptr.186 = internal global ptr @s2255_probe_v4l._entry.184, section ".printk_index", align 4
@s2255_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.6, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s channel: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s2255_set_mode\00", [17 x i8] zeroinitializer }, align 32
@s2255_set_mode._entry_ptr = internal global ptr @s2255_set_mode._entry, section ".printk_index", align 4
@s2255_set_mode._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.6, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s: reqsize %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@s2255_set_mode._entry_ptr.191 = internal global ptr @s2255_set_mode._entry.189, section ".printk_index", align 4
@s2255_set_mode._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.6, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: s2255: no set mode response\0A\00", [61 x i8] zeroinitializer }, align 32
@s2255_set_mode._entry_ptr.194 = internal global ptr @s2255_set_mode._entry.192, section ".printk_index", align 4
@s2255_set_mode._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.188, ptr @.str.6, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s chn %d, result: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@s2255_set_mode._entry_ptr.197 = internal global ptr @s2255_set_mode._entry.195, section ".printk_index", align 4
@s2255_print_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.6, i32 966, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"------------------------------------------------\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s2255_print_cfg\00", [16 x i8] zeroinitializer }, align 32
@s2255_print_cfg._entry_ptr = internal global ptr @s2255_print_cfg._entry, section ".printk_index", align 4
@s2255_print_cfg._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.6, i32 967, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"format: %d\0Ascale %d\0A\00", [43 x i8] zeroinitializer }, align 32
@s2255_print_cfg._entry_ptr.202 = internal global ptr @s2255_print_cfg._entry.200, section ".printk_index", align 4
@s2255_print_cfg._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.199, ptr @.str.6, i32 968, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fdec: %d\0Acolor %d\0A\00", [45 x i8] zeroinitializer }, align 32
@s2255_print_cfg._entry_ptr.205 = internal global ptr @s2255_print_cfg._entry.203, section ".printk_index", align 4
@s2255_print_cfg._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.199, ptr @.str.6, i32 969, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bright: 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@s2255_print_cfg._entry_ptr.208 = internal global ptr @s2255_print_cfg._entry.206, section ".printk_index", align 4
@s2255_print_cfg._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.6, i32 970, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@s2255_print_cfg._entry_ptr.210 = internal global ptr @s2255_print_cfg._entry.209, section ".printk_index", align 4
@.str.211 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Color Filter\00", [19 x i8] zeroinitializer }, align 32
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.6, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@buffer_prepare._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.6, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: invalid buffer prepare\0A\00", [34 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr.216 = internal global ptr @buffer_prepare._entry.214, section ".printk_index", align 4
@buffer_prepare._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.6, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr.218 = internal global ptr @buffer_prepare._entry.217, section ".printk_index", align 4
@s2255_start_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.6, i32 2137, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CMD_START error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s2255_start_acquire\00", [44 x i8] zeroinitializer }, align 32
@s2255_start_acquire._entry_ptr = internal global ptr @s2255_start_acquire._entry, section ".printk_index", align 4
@s2255_start_acquire._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.6, i32 2139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: start acquire exit[%d] %d\0A\00", [63 x i8] zeroinitializer }, align 32
@s2255_start_acquire._entry_ptr.223 = internal global ptr @s2255_start_acquire._entry.221, section ".printk_index", align 4
@stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.6, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: [%p/%d] done\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stop_streaming\00", [17 x i8] zeroinitializer }, align 32
@stop_streaming._entry_ptr = internal global ptr @stop_streaming._entry, section ".printk_index", align 4
@s2255_stop_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.6, i32 2160, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CMD_STOP error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s2255_stop_acquire\00", [45 x i8] zeroinitializer }, align 32
@s2255_stop_acquire._entry_ptr = internal global ptr @s2255_stop_acquire._entry, section ".printk_index", align 4
@s2255_stop_acquire._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.227, ptr @.str.6, i32 2162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: chn %d, res %d\0A\00", [38 x i8] zeroinitializer }, align 32
@s2255_stop_acquire._entry_ptr.230 = internal global ptr @s2255_stop_acquire._entry.228, section ".printk_index", align 4
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.231, ptr @.str.6, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@s2255_fops_v4l = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @s2255_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@s2255_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_jpegcomp, ptr @vidioc_s_jpegcomp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr @vidioc_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enum_framesizes, ptr @vidioc_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@s2255_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.6, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: s2255: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s2255_open\00", [21 x i8] zeroinitializer }, align 32
@s2255_open._entry_ptr = internal global ptr @s2255_open._entry, section ".printk_index", align 4
@s2255_open._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.6, i32 1420, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"s2255 - firmware load failed. retrying.\0A\00", [55 x i8] zeroinitializer }, align 32
@s2255_open._entry_ptr.236 = internal global ptr @s2255_open._entry.234, section ".printk_index", align 4
@s2255_open._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.233, ptr @.str.6, i32 1435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s waiting for firmware load\0A\00", [32 x i8] zeroinitializer }, align 32
@s2255_open._entry_ptr.239 = internal global ptr @s2255_open._entry.237, section ".printk_index", align 4
@s2255_open._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.233, ptr @.str.6, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0162255 firmware load failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@s2255_open._entry_ptr.242 = internal global ptr @s2255_open._entry.240, section ".printk_index", align 4
@s2255_open._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.233, ptr @.str.6, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: disconnecting\0A\00", [43 x i8] zeroinitializer }, align 32
@s2255_open._entry_ptr.245 = internal global ptr @s2255_open._entry.243, section ".printk_index", align 4
@s2255_open._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.233, ptr @.str.6, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: firmware not loaded, please retry\0A\00", [55 x i8] zeroinitializer }, align 32
@s2255_open._entry_ptr.248 = internal global ptr @s2255_open._entry.246, section ".printk_index", align 4
@s2255_open._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.233, ptr @.str.6, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: unknown state\0A\00", [43 x i8] zeroinitializer }, align 32
@s2255_open._entry_ptr.251 = internal global ptr @s2255_open._entry.249, section ".printk_index", align 4
@s2255_video_device_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.253, ptr @.str.6, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s, chnls: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s2255_video_device_release\00", [37 x i8] zeroinitializer }, align 32
@s2255_video_device_release._entry_ptr = internal global ptr @s2255_video_device_release._entry, section ".printk_index", align 4
@s2255_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.255, ptr @.str.6, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\017%s: %s\00", [23 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s2255_destroy\00", [18 x i8] zeroinitializer }, align 32
@s2255_destroy._entry_ptr = internal global ptr @s2255_destroy._entry, section ".printk_index", align 4
@.str.256 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str.6, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: queue busy\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_s_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.6, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: %s NTSC: %d suggested width: %d, height: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.260, ptr @.str.6, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s: set width %d height %d field %d\0A\00", [53 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr.263 = internal global ptr @vidioc_try_fmt_vid_cap._entry.261, section ".printk_index", align 4
@vidioc_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.265, ptr @.str.6, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: %s 60 Hz\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_std\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_std._entry_ptr = internal global ptr @vidioc_s_std._entry, section ".printk_index", align 4
@vidioc_s_std._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.265, ptr @.str.6, i32 1119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: %s 50 Hz\0A\00", [16 x i8] zeroinitializer }, align 32
@vidioc_s_std._entry_ptr.268 = internal global ptr @vidioc_s_std._entry.266, section ".printk_index", align 4
@vidioc_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str.6, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: s2255_cmd_status rc: %d status %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_enum_input\00", [46 x i8] zeroinitializer }, align 32
@vidioc_enum_input._entry_ptr = internal global ptr @vidioc_enum_input._entry, section ".printk_index", align 4
@.str.271 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@s2255_cmd_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.274, ptr @.str.6, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s chan %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s2255_cmd_status\00", [47 x i8] zeroinitializer }, align 32
@s2255_cmd_status._entry_ptr = internal global ptr @s2255_cmd_status._entry, section ".printk_index", align 4
@s2255_cmd_status._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.274, ptr @.str.6, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: s2255: no vidstatus response\0A\00", [60 x i8] zeroinitializer }, align 32
@s2255_cmd_status._entry_ptr.277 = internal global ptr @s2255_cmd_status._entry.275, section ".printk_index", align 4
@s2255_cmd_status._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.274, ptr @.str.6, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s, vid status %d\0A\00", [39 x i8] zeroinitializer }, align 32
@s2255_cmd_status._entry_ptr.280 = internal global ptr @s2255_cmd_status._entry.278, section ".printk_index", align 4
@vidioc_g_jpegcomp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.282, ptr @.str.6, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s: quality %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_g_jpegcomp\00", [46 x i8] zeroinitializer }, align 32
@vidioc_g_jpegcomp._entry_ptr = internal global ptr @vidioc_g_jpegcomp._entry, section ".printk_index", align 4
@vidioc_s_jpegcomp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.283, ptr @.str.6, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_s_jpegcomp\00", [46 x i8] zeroinitializer }, align 32
@vidioc_s_jpegcomp._entry_ptr = internal global ptr @vidioc_s_jpegcomp._entry, section ".printk_index", align 4
@vidioc_g_parm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.285, ptr @.str.6, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %s capture mode, %d timeperframe %d/%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vidioc_g_parm\00", [18 x i8] zeroinitializer }, align 32
@vidioc_g_parm._entry_ptr = internal global ptr @vidioc_g_parm._entry, section ".printk_index", align 4
@vidioc_s_parm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.6, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: %s capture mode, %d timeperframe %d/%d, fdec %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vidioc_s_parm\00", [18 x i8] zeroinitializer }, align 32
@vidioc_s_parm._entry_ptr = internal global ptr @vidioc_s_parm._entry, section ".printk_index", align 4
@ntsc_sizes = internal constant { [3 x %struct.v4l2_frmsize_discrete], [40 x i8] } { [3 x %struct.v4l2_frmsize_discrete] [%struct.v4l2_frmsize_discrete { i32 640, i32 480 }, %struct.v4l2_frmsize_discrete { i32 640, i32 240 }, %struct.v4l2_frmsize_discrete { i32 320, i32 240 }], [40 x i8] zeroinitializer }, align 32
@pal_sizes = internal constant { [3 x %struct.v4l2_frmsize_discrete], [40 x i8] } { [3 x %struct.v4l2_frmsize_discrete] [%struct.v4l2_frmsize_discrete { i32 704, i32 576 }, %struct.v4l2_frmsize_discrete { i32 704, i32 288 }, %struct.v4l2_frmsize_discrete { i32 352, i32 288 }], [40 x i8] zeroinitializer }, align 32
@__const.vidioc_enum_frameintervals.frm_dec = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 5], align 4
@vidioc_enum_frameintervals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.289, ptr @.str.6, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s discrete %d/%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vidioc_enum_frameintervals\00", [37 x i8] zeroinitializer }, align 32
@vidioc_enum_frameintervals._entry_ptr = internal global ptr @vidioc_enum_frameintervals._entry, section ".printk_index", align 4
@s2255_board_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.291, ptr @.str.6, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: dev: %p\00", [46 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s2255_board_shutdown\00", [43 x i8] zeroinitializer }, align 32
@s2255_board_shutdown._entry_ptr = internal global ptr @s2255_board_shutdown._entry, section ".printk_index", align 4
@s2255_stop_readpipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.292, ptr @.str.6, i32 2178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s2255_stop_readpipe\00", [44 x i8] zeroinitializer }, align 32
@s2255_stop_readpipe._entry_ptr = internal global ptr @s2255_stop_readpipe._entry, section ".printk_index", align 4
@s2255_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.294, ptr @.str.6, i32 2363, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s2255_disconnect\00", [47 x i8] zeroinitializer }, align 32
@s2255_disconnect._entry_ptr = internal global ptr @s2255_disconnect._entry, section ".printk_index", align 4
@switch.table.s2255_set_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 480, i32 240, i32 240, i32 480], [16 x i8] zeroinitializer }, align 32
@switch.table.s2255_set_mode.295 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 640, i32 640, i32 320, i32 640], [16 x i8] zeroinitializer }, align 32
@switch.table.s2255_set_mode.296 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 576, i32 288, i32 288, i32 576], [16 x i8] zeroinitializer }, align 32
@switch.table.s2255_set_mode.297 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 704, i32 704, i32 352, i32 704], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1255822626, i64 2896975138]
@__sancov_gen_cov_switch_values.298 = internal global [5 x i64] [i64 3, i64 32, i64 16777216, i64 268435456, i64 536870912]
@__sancov_gen_cov_switch_values.299 = internal global [8 x i64] [i64 6, i64 32, i64 1195724874, i64 1196444237, i64 1345466932, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.300 = internal global [8 x i64] [i64 6, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9967920, i64 10291459]
@__sancov_gen_cov_switch_values.301 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.302 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.303 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.304 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1196444237]
@__sancov_gen_cov_switch_values.305 = internal global [6 x i64] [i64 4, i64 32, i64 1345466932, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.306 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1196444237]
@__sancov_gen_cov_switch_values.307 = internal global [6 x i64] [i64 4, i64 32, i64 1195724874, i64 1196444237, i64 1345466932, i64 1497715271]
@__sancov_gen_cov_switch_values.308 = internal global [6 x i64] [i64 4, i64 32, i64 1345466932, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.309 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1196444237]
@__sancov_gen_cov_switch_values.310 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.311 = internal global [6 x i64] [i64 4, i64 32, i64 1345466932, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.312 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1196444237]
@__sancov_gen_cov_switch_values.313 = internal global [6 x i64] [i64 4, i64 32, i64 1345466932, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.314 = internal global [4 x i64] [i64 2, i64 32, i64 1195724874, i64 1196444237]
@___asan_gen_.315 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 333, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 360, i32 12 }
@___asan_gen_.321 = private unnamed_addr constant [12 x i8] c"jpeg_enable\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 363, i32 12 }
@___asan_gen_.324 = private unnamed_addr constant [13 x i8] c"s2255_driver\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2366, i32 26 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2378, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2367, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant [12 x i8] c"s2255_table\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 374, i32 35 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2213, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2219, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2228, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2229, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2233, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2237, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2242, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2253, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2256, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2257, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2262, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2263, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2264, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2265, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2274, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2279, i32 9 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2280, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2288, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2295, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2298, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2301, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2314, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2334, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 477, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1972, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1981, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1987, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1992, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 385, i32 31 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2012, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1913, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1915, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1939, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2092, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2106, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2041, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2046, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2052, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2058, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2066, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2079, i32 4 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2081, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1852, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1856, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1862, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1864, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1702, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1717, i32 5 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1723, i32 6 }
@___asan_gen_.657 = private unnamed_addr constant [9 x i8] c"G_chnmap\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 331, i32 22 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1755, i32 6 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1762, i32 6 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1771, i32 6 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1775, i32 6 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1809, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1825, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1828, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 551, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 566, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 628, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 632, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 635, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 1163, i32 7 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 498, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 505, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 530, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1601, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant [15 x i8] c"s2255_ctrl_ops\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1570, i32 35 }
@___asan_gen_.771 = private unnamed_addr constant [18 x i8] c"color_filter_ctrl\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1574, i32 38 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1621, i32 4 }
@___asan_gen_.783 = private unnamed_addr constant [17 x i8] c"s2255_video_qops\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 701, i32 29 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1635, i32 4 }
@___asan_gen_.792 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1562, i32 34 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1658, i32 4 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1663, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1667, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1675, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 992, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1003, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1020, i32 4 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1026, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 966, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 967, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 968, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 969, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 970, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1576, i32 10 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 665, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 673, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 678, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2137, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2139, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1088, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2160, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2162, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 692, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant [15 x i8] c"s2255_fops_v4l\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1508, i32 42 }
@___asan_gen_.945 = private unnamed_addr constant [16 x i8] c"s2255_ioctl_ops\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1518, i32 36 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1413, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1419, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1435, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1454, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1457, i32 3 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1461, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1472, i32 3 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1552, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1486, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 912, i32 31 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 828, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 770, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 803, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1109, i32 3 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1119, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1165, i32 3 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1174, i32 22 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1177, i32 52 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1040, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1052, i32 3 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1056, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1242, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1254, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1287, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1329, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant [11 x i8] c"ntsc_sizes\00", align 1
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1338, i32 43 }
@___asan_gen_.1125 = private unnamed_addr constant [10 x i8] c"pal_sizes\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1343, i32 43 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 1396, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2019, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2178, i32 2 }
@___asan_gen_.1152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1159 = private constant [38 x i8] c"../drivers/media/usb/s2255/s2255drv.c\00", align 1
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1159, i32 2363, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant [28 x i8] c"switch.table.s2255_set_mode\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant [32 x i8] c"switch.table.s2255_set_mode.295\00", align 1
@___asan_gen_.1163 = private unnamed_addr constant [32 x i8] c"switch.table.s2255_set_mode.296\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant [32 x i8] c"switch.table.s2255_set_mode.297\00", align 1
@llvm.compiler.used = appending global [407 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_debug304, ptr @__UNIQUE_ID_debugtype303, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_firmware317, ptr @__UNIQUE_ID_jpeg_enable308, ptr @__UNIQUE_ID_jpeg_enabletype307, ptr @__UNIQUE_ID_license315, ptr @__UNIQUE_ID_version316, ptr @__UNIQUE_ID_video_nr306, ptr @__UNIQUE_ID_video_nrtype305, ptr @__exitcall_s2255_driver_exit, ptr @__initcall__kmod_s2255drv__311_2373_s2255_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_jpeg_enable, ptr @__param_video_nr, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry.214, ptr @buffer_prepare._entry.217, ptr @buffer_prepare._entry_ptr, ptr @buffer_prepare._entry_ptr.216, ptr @buffer_prepare._entry_ptr.218, ptr @buffer_queue._entry, ptr @buffer_queue._entry_ptr, ptr @read_pipe_completion._entry, ptr @read_pipe_completion._entry.101, ptr @read_pipe_completion._entry.104, ptr @read_pipe_completion._entry.90, ptr @read_pipe_completion._entry.92, ptr @read_pipe_completion._entry.95, ptr @read_pipe_completion._entry.98, ptr @read_pipe_completion._entry_ptr, ptr @read_pipe_completion._entry_ptr.100, ptr @read_pipe_completion._entry_ptr.103, ptr @read_pipe_completion._entry_ptr.106, ptr @read_pipe_completion._entry_ptr.91, ptr @read_pipe_completion._entry_ptr.94, ptr @read_pipe_completion._entry_ptr.97, ptr @s2255_board_init._entry, ptr @s2255_board_init._entry.64, ptr @s2255_board_init._entry.67, ptr @s2255_board_init._entry.70, ptr @s2255_board_init._entry.73, ptr @s2255_board_init._entry_ptr, ptr @s2255_board_init._entry_ptr.66, ptr @s2255_board_init._entry_ptr.69, ptr @s2255_board_init._entry_ptr.72, ptr @s2255_board_init._entry_ptr.75, ptr @s2255_board_shutdown._entry, ptr @s2255_board_shutdown._entry_ptr, ptr @s2255_cmd_status._entry, ptr @s2255_cmd_status._entry.275, ptr @s2255_cmd_status._entry.278, ptr @s2255_cmd_status._entry_ptr, ptr @s2255_cmd_status._entry_ptr.277, ptr @s2255_cmd_status._entry_ptr.280, ptr @s2255_create_sys_buffers._entry, ptr @s2255_create_sys_buffers._entry_ptr, ptr @s2255_destroy._entry, ptr @s2255_destroy._entry_ptr, ptr @s2255_disconnect._entry, ptr @s2255_disconnect._entry_ptr, ptr @s2255_driver_exit, ptr @s2255_fillbuff._entry, ptr @s2255_fillbuff._entry.154, ptr @s2255_fillbuff._entry.157, ptr @s2255_fillbuff._entry_ptr, ptr @s2255_fillbuff._entry_ptr.156, ptr @s2255_fillbuff._entry_ptr.159, ptr @s2255_fwchunk_complete._entry, ptr @s2255_fwchunk_complete._entry.163, ptr @s2255_fwchunk_complete._entry.166, ptr @s2255_fwchunk_complete._entry_ptr, ptr @s2255_fwchunk_complete._entry_ptr.165, ptr @s2255_fwchunk_complete._entry_ptr.168, ptr @s2255_get_fx2fw._entry, ptr @s2255_get_fx2fw._entry.78, ptr @s2255_get_fx2fw._entry_ptr, ptr @s2255_get_fx2fw._entry_ptr.80, ptr @s2255_got_frame._entry, ptr @s2255_got_frame._entry.149, ptr @s2255_got_frame._entry_ptr, ptr @s2255_got_frame._entry_ptr.151, ptr @s2255_open._entry, ptr @s2255_open._entry.234, ptr @s2255_open._entry.237, ptr @s2255_open._entry.240, ptr @s2255_open._entry.243, ptr @s2255_open._entry.246, ptr @s2255_open._entry.249, ptr @s2255_open._entry_ptr, ptr @s2255_open._entry_ptr.236, ptr @s2255_open._entry_ptr.239, ptr @s2255_open._entry_ptr.242, ptr @s2255_open._entry_ptr.245, ptr @s2255_open._entry_ptr.248, ptr @s2255_open._entry_ptr.251, ptr @s2255_print_cfg._entry, ptr @s2255_print_cfg._entry.200, ptr @s2255_print_cfg._entry.203, ptr @s2255_print_cfg._entry.206, ptr @s2255_print_cfg._entry.209, ptr @s2255_print_cfg._entry_ptr, ptr @s2255_print_cfg._entry_ptr.202, ptr @s2255_print_cfg._entry_ptr.205, ptr @s2255_print_cfg._entry_ptr.208, ptr @s2255_print_cfg._entry_ptr.210, ptr @s2255_probe._entry, ptr @s2255_probe._entry.14, ptr @s2255_probe._entry.19, ptr @s2255_probe._entry.34, ptr @s2255_probe._entry.38, ptr @s2255_probe._entry.41, ptr @s2255_probe._entry.44, ptr @s2255_probe._entry.47, ptr @s2255_probe._entry.50, ptr @s2255_probe._entry.53, ptr @s2255_probe._entry.57, ptr @s2255_probe._entry.9, ptr @s2255_probe._entry_ptr, ptr @s2255_probe._entry_ptr.10, ptr @s2255_probe._entry_ptr.16, ptr @s2255_probe._entry_ptr.21, ptr @s2255_probe._entry_ptr.36, ptr @s2255_probe._entry_ptr.40, ptr @s2255_probe._entry_ptr.43, ptr @s2255_probe._entry_ptr.46, ptr @s2255_probe._entry_ptr.49, ptr @s2255_probe._entry_ptr.52, ptr @s2255_probe._entry_ptr.56, ptr @s2255_probe._entry_ptr.59, ptr @s2255_probe_v4l._entry, ptr @s2255_probe_v4l._entry.172, ptr @s2255_probe_v4l._entry.175, ptr @s2255_probe_v4l._entry.178, ptr @s2255_probe_v4l._entry.181, ptr @s2255_probe_v4l._entry.184, ptr @s2255_probe_v4l._entry_ptr, ptr @s2255_probe_v4l._entry_ptr.174, ptr @s2255_probe_v4l._entry_ptr.177, ptr @s2255_probe_v4l._entry_ptr.180, ptr @s2255_probe_v4l._entry_ptr.183, ptr @s2255_probe_v4l._entry_ptr.186, ptr @s2255_read_video_callback._entry, ptr @s2255_read_video_callback._entry.109, ptr @s2255_read_video_callback._entry.112, ptr @s2255_read_video_callback._entry.115, ptr @s2255_read_video_callback._entry_ptr, ptr @s2255_read_video_callback._entry_ptr.111, ptr @s2255_read_video_callback._entry_ptr.114, ptr @s2255_read_video_callback._entry_ptr.117, ptr @s2255_set_mode._entry, ptr @s2255_set_mode._entry.189, ptr @s2255_set_mode._entry.192, ptr @s2255_set_mode._entry.195, ptr @s2255_set_mode._entry_ptr, ptr @s2255_set_mode._entry_ptr.191, ptr @s2255_set_mode._entry_ptr.194, ptr @s2255_set_mode._entry_ptr.197, ptr @s2255_start_acquire._entry, ptr @s2255_start_acquire._entry.221, ptr @s2255_start_acquire._entry_ptr, ptr @s2255_start_acquire._entry_ptr.223, ptr @s2255_start_readpipe._entry, ptr @s2255_start_readpipe._entry.85, ptr @s2255_start_readpipe._entry_ptr, ptr @s2255_start_readpipe._entry_ptr.87, ptr @s2255_stop_acquire._entry, ptr @s2255_stop_acquire._entry.228, ptr @s2255_stop_acquire._entry_ptr, ptr @s2255_stop_acquire._entry_ptr.230, ptr @s2255_stop_readpipe._entry, ptr @s2255_stop_readpipe._entry_ptr, ptr @s2255_timer._entry, ptr @s2255_timer._entry_ptr, ptr @s2255_video_device_release._entry, ptr @s2255_video_device_release._entry_ptr, ptr @save_frame._entry, ptr @save_frame._entry.120, ptr @save_frame._entry.123, ptr @save_frame._entry.126, ptr @save_frame._entry.129, ptr @save_frame._entry.132, ptr @save_frame._entry.135, ptr @save_frame._entry.138, ptr @save_frame._entry.141, ptr @save_frame._entry.144, ptr @save_frame._entry_ptr, ptr @save_frame._entry_ptr.122, ptr @save_frame._entry_ptr.125, ptr @save_frame._entry_ptr.128, ptr @save_frame._entry_ptr.131, ptr @save_frame._entry_ptr.134, ptr @save_frame._entry_ptr.137, ptr @save_frame._entry_ptr.140, ptr @save_frame._entry_ptr.143, ptr @save_frame._entry_ptr.146, ptr @stop_streaming._entry, ptr @stop_streaming._entry_ptr, ptr @vidioc_enum_frameintervals._entry, ptr @vidioc_enum_frameintervals._entry_ptr, ptr @vidioc_enum_input._entry, ptr @vidioc_enum_input._entry_ptr, ptr @vidioc_g_jpegcomp._entry, ptr @vidioc_g_jpegcomp._entry_ptr, ptr @vidioc_g_parm._entry, ptr @vidioc_g_parm._entry_ptr, ptr @vidioc_s_fmt_vid_cap._entry, ptr @vidioc_s_fmt_vid_cap._entry_ptr, ptr @vidioc_s_jpegcomp._entry, ptr @vidioc_s_jpegcomp._entry_ptr, ptr @vidioc_s_parm._entry, ptr @vidioc_s_parm._entry_ptr, ptr @vidioc_s_std._entry, ptr @vidioc_s_std._entry.266, ptr @vidioc_s_std._entry_ptr, ptr @vidioc_s_std._entry_ptr.268, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry.261, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @vidioc_try_fmt_vid_cap._entry_ptr.263, ptr @debug, ptr @video_nr, ptr @jpeg_enable, ptr @s2255_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @s2255_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @s2255_probe.__key, ptr @.str.11, ptr @s2255_probe.__key.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @s2255_probe.__key.22, ptr @.str.23, ptr @s2255_probe.__key.24, ptr @.str.25, ptr @s2255_probe.__key.26, ptr @.str.27, ptr @s2255_probe.__key.28, ptr @.str.29, ptr @s2255_probe.__key.30, ptr @.str.31, ptr @s2255_probe.__key.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @formats, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @G_chnmap, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @s2255_probe_v4l._key, ptr @.str.169, ptr @s2255_ctrl_ops, ptr @color_filter_ctrl, ptr @.str.170, ptr @.str.171, ptr @s2255_video_qops, ptr @.str.173, ptr @template, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.229, ptr @.str.231, ptr @s2255_fops_v4l, ptr @s2255_ioctl_ops, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.262, ptr @.str.264, ptr @.str.265, ptr @.str.267, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.276, ptr @.str.279, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @ntsc_sizes, ptr @pal_sizes, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @switch.table.s2255_set_mode, ptr @switch.table.s2255_set_mode.295, ptr @switch.table.s2255_set_mode.296, ptr @switch.table.s2255_set_mode.297], section "llvm.metadata"
@0 = internal global [286 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_board_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_board_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_board_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_board_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_board_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_get_fx2fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_get_fx2fw._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_create_sys_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_start_readpipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_start_readpipe._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pipe_completion._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_read_video_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_read_video_callback._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_read_video_callback._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_read_video_callback._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @G_chnmap to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_frame._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_got_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_got_frame._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_fillbuff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_fillbuff._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_fillbuff._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_fwchunk_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_fwchunk_complete._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_fwchunk_complete._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe_v4l._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @color_filter_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe_v4l._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe_v4l._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe_v4l._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe_v4l._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe_v4l._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_probe_v4l._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_set_mode._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_set_mode._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_set_mode._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_print_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_print_cfg._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_print_cfg._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_print_cfg._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_print_cfg._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_start_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_start_acquire._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_stop_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_stop_acquire._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_fops_v4l to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_open._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_open._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_open._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_open._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_open._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_open._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_video_device_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_std._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_cmd_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_cmd_status._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_cmd_status._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_jpegcomp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_jpegcomp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_parm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_parm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntsc_sizes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pal_sizes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_frameintervals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_board_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_stop_readpipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2255_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s2255_set_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s2255_set_mode.295 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s2255_set_mode.296 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s2255_set_mode.297 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s2255_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @s2255_driver, ptr noundef null, ptr noundef nonnull @.str.1) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s2255_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_deregister(ptr noundef nonnull @s2255_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2255_probe(ptr noundef %interface, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 10616, i32 noundef 3520, i32 noundef 2) #17
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.4) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #19
  %cmdbuf = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %cmdbuf, align 4
  %cmp5 = icmp eq ptr %call7.i.i, null
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.4) #18
  br label %errorFWDATA1

if.end11:                                         ; preds = %if.end
  %num_channels = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_channels, i32 noundef 4) #14
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %num_channels, align 64
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %3 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idProduct, align 4
  %pid = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %pid, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i309 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 76) #19
  %fw_data = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %fw_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i309, ptr %fw_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i309, null
  br i1 %tobool.not, label %if.end11.errorFWDATA1_crit_edge, label %do.body16

if.end11.errorFWDATA1_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %errorFWDATA1

do.body16:                                        ; preds = %if.end11
  %lock = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @s2255_probe.__key) #14
  %cmdlock = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %cmdlock, ptr noundef nonnull @.str.13, ptr noundef nonnull @s2255_probe.__key.12) #14
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -128
  %call23 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #14
  %udev = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call23, ptr %udev, align 256
  %cmp25 = icmp eq ptr %call23, null
  br i1 %cmp25, label %do.end29, label %do.body32

do.end29:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  %dev30 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.15) #18
  br label %errorUDEV

do.body32:                                        ; preds = %do.body16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s2255_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s2255_probe, %if.then37)) #14
          to label %do.end42 [label %if.then37], !srcloc !564

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  %dev38 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 256
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s2255_probe.__UNIQUE_ID_ddebug309, ptr noundef %dev38, ptr noundef nonnull @.str.17, ptr noundef nonnull %call1.i.i.i, ptr noundef %12, ptr noundef %interface) #14
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %do.body32
  %interface43 = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %interface43 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %interface, ptr %interface43, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %14 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_altsetting, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s2255_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s2255_probe, %if.then56)) #14
          to label %do.end60 [label %if.then56], !srcloc !564

if.then56:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s2255_probe.__UNIQUE_ID_ddebug310, ptr noundef %dev57, ptr noundef nonnull @.str.18, i32 noundef %conv) #14
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.end42
  %bNumEndpoints62 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %bNumEndpoints62 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bNumEndpoints62, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp64315.not = icmp eq i8 %19, 0
  br i1 %cmp64315.not, label %do.end60.for.end_crit_edge, label %for.body.lr.ph

do.end60.for.end_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end60
  %endpoint66 = getelementptr inbounds %struct.usb_host_interface, ptr %15, i32 0, i32 3
  %read_endpoint = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0316 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %endpoint66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %endpoint66, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %21, i32 %i.0316
  %22 = ptrtoint ptr %read_endpoint to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %read_endpoint, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool68.not = icmp eq i8 %23, 0
  br i1 %tobool68.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i.i, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp.i.not.i = icmp eq i8 %26, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool70.not = icmp sgt i8 %28, -1
  br i1 %tobool70.not, label %usb_endpoint_is_bulk_in.exit.for.inc_crit_edge, label %if.then71

usb_endpoint_is_bulk_in.exit.for.inc_crit_edge:   ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then71:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bEndpointAddress.i.i, align 1
  %31 = ptrtoint ptr %read_endpoint to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %read_endpoint, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then71, %usb_endpoint_is_bulk_in.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0316, 1
  %32 = ptrtoint ptr %bNumEndpoints62 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bNumEndpoints62, align 4
  %conv63 = zext i8 %33 to i32
  %cmp64 = icmp ult i32 %inc, %conv63
  br i1 %cmp64, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end60.for.end_crit_edge
  %read_endpoint74 = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %read_endpoint74 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %read_endpoint74, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool75.not = icmp eq i8 %35, 0
  br i1 %tobool75.not, label %do.end79, label %do.body82

do.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev80 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.20) #18
  br label %errorEP

do.body82:                                        ; preds = %for.end
  %timer = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @s2255_timer, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @s2255_probe.__key.22) #14
  %36 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw_data, align 4
  %wait_fw = getelementptr inbounds %struct.s2255_fw, ptr %37, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait_fw, ptr noundef nonnull @.str.25, ptr noundef nonnull @s2255_probe.__key.24) #14
  %idx = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 0, i32 28
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %idx, align 32
  %39 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call1.i.i.i, ptr %call1.i.i.i, align 4096
  %wait_setmode = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 0, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %wait_setmode, ptr noundef nonnull @.str.27, ptr noundef nonnull @s2255_probe.__key.26) #14
  %wait_vidstatus = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 0, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %wait_vidstatus, ptr noundef nonnull @.str.29, ptr noundef nonnull @s2255_probe.__key.28) #14
  %qlock = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.31, ptr noundef nonnull @s2255_probe.__key.30, i16 noundef signext 3) #14
  %vb_lock = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 0, i32 30
  tail call void @__mutex_init(ptr noundef %vb_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @s2255_probe.__key.32) #14
  %arrayidx94.1 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 1
  %idx.1 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 1, i32 28
  %40 = ptrtoint ptr %idx.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %idx.1, align 16
  %41 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i.i.i, ptr %arrayidx94.1, align 16
  %wait_setmode.1 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 1, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %wait_setmode.1, ptr noundef nonnull @.str.27, ptr noundef nonnull @s2255_probe.__key.26) #14
  %wait_vidstatus.1 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 1, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %wait_vidstatus.1, ptr noundef nonnull @.str.29, ptr noundef nonnull @s2255_probe.__key.28) #14
  %qlock.1 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 1, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %qlock.1, ptr noundef nonnull @.str.31, ptr noundef nonnull @s2255_probe.__key.30, i16 noundef signext 3) #14
  %vb_lock.1 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 1, i32 30
  tail call void @__mutex_init(ptr noundef %vb_lock.1, ptr noundef nonnull @.str.33, ptr noundef nonnull @s2255_probe.__key.32) #14
  %arrayidx94.2 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 2
  %idx.2 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 2, i32 28
  %42 = ptrtoint ptr %idx.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %idx.2, align 64
  %43 = ptrtoint ptr %arrayidx94.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1.i.i.i, ptr %arrayidx94.2, align 32
  %wait_setmode.2 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 2, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %wait_setmode.2, ptr noundef nonnull @.str.27, ptr noundef nonnull @s2255_probe.__key.26) #14
  %wait_vidstatus.2 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 2, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %wait_vidstatus.2, ptr noundef nonnull @.str.29, ptr noundef nonnull @s2255_probe.__key.28) #14
  %qlock.2 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 2, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %qlock.2, ptr noundef nonnull @.str.31, ptr noundef nonnull @s2255_probe.__key.30, i16 noundef signext 3) #14
  %vb_lock.2 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 2, i32 30
  tail call void @__mutex_init(ptr noundef %vb_lock.2, ptr noundef nonnull @.str.33, ptr noundef nonnull @s2255_probe.__key.32) #14
  %arrayidx94.3 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 3
  %idx.3 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 3, i32 28
  %44 = ptrtoint ptr %idx.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %idx.3, align 16
  %45 = ptrtoint ptr %arrayidx94.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call1.i.i.i, ptr %arrayidx94.3, align 16
  %wait_setmode.3 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 3, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %wait_setmode.3, ptr noundef nonnull @.str.27, ptr noundef nonnull @s2255_probe.__key.26) #14
  %wait_vidstatus.3 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 3, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %wait_vidstatus.3, ptr noundef nonnull @.str.29, ptr noundef nonnull @s2255_probe.__key.28) #14
  %qlock.3 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 3, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %qlock.3, ptr noundef nonnull @.str.31, ptr noundef nonnull @s2255_probe.__key.30, i16 noundef signext 3) #14
  %vb_lock.3 = getelementptr [4 x %struct.s2255_vc], ptr %call1.i.i.i, i32 0, i32 3, i32 30
  tail call void @__mutex_init(ptr noundef %vb_lock.3, ptr noundef nonnull @.str.33, ptr noundef nonnull @s2255_probe.__key.32) #14
  %call112 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %46 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw_data, align 4
  %fw_urb = getelementptr inbounds %struct.s2255_fw, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %fw_urb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call112, ptr %fw_urb, align 4
  %49 = load ptr, ptr %fw_data, align 4
  %fw_urb115 = getelementptr inbounds %struct.s2255_fw, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %fw_urb115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw_urb115, align 4
  %tobool116.not = icmp eq ptr %51, null
  br i1 %tobool116.not, label %do.body82.errorFWURB_crit_edge, label %if.end118

do.body82.errorFWURB_crit_edge:                   ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #16
  br label %errorFWURB

if.end118:                                        ; preds = %do.body82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i310 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 512) #19
  %53 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw_data, align 4
  %pfw_data = getelementptr inbounds %struct.s2255_fw, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %pfw_data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i310, ptr %pfw_data, align 4
  %56 = load ptr, ptr %fw_data, align 4
  %pfw_data122 = getelementptr inbounds %struct.s2255_fw, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %pfw_data122 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pfw_data122, align 4
  %tobool123.not = icmp eq ptr %58, null
  br i1 %tobool123.not, label %do.end127, label %if.end129

do.end127:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #16
  %dev128 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev128, ptr noundef nonnull @.str.35) #18
  br label %errorFWDATA2

if.end129:                                        ; preds = %if.end118
  %fw = getelementptr inbounds %struct.s2255_fw, ptr %56, i32 0, i32 6
  %59 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev, align 256
  %dev132 = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  %call133 = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull @.str.37, ptr noundef %dev132) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end140, label %do.end138

do.end138:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  %dev139 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev139, ptr noundef nonnull @.str.39) #18
  br label %errorREQFW

if.end140:                                        ; preds = %if.end129
  %61 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fw_data, align 4
  %fw142 = getelementptr inbounds %struct.s2255_fw, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %fw142 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw142, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %sub = add i32 %66, -8
  %arrayidx145 = getelementptr i8, ptr %68, i32 %sub
  %69 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 791631138, i32 %70)
  %cmp146.not = icmp eq i32 %70, 791631138
  br i1 %cmp146.not, label %if.else, label %do.end151

do.end151:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  %dev152 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev152, ptr noundef nonnull @.str.42) #18
  br label %errorFWMARKER

if.else:                                          ; preds = %if.end140
  %sub156 = add i32 %66, -4
  %arrayidx157 = getelementptr i8, ptr %68, i32 %sub156
  %71 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx157, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %73) #18
  %74 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx157, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %dsp_fw_ver = getelementptr inbounds %struct.s2255_dev, ptr %call1.i.i.i, i32 0, i32 15
  %77 = ptrtoint ptr %dsp_fw_ver to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %dsp_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10104, i32 %76)
  %cmp164 = icmp slt i32 %76, 10104
  br i1 %cmp164, label %do.end169, label %if.else.if.end172_crit_edge

if.else.if.end172_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

do.end169:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #18
  br label %if.end172

if.end172:                                        ; preds = %do.end169, %if.else.if.end172_crit_edge
  %78 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pid, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 8791, i16 %79)
  %cmp175 = icmp eq i16 %79, 8791
  br i1 %cmp175, label %land.lhs.true177, label %if.end172.if.end187_crit_edge

if.end172.if.end187_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end187

land.lhs.true177:                                 ; preds = %if.end172
  %80 = ptrtoint ptr %dsp_fw_ver to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dsp_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %81)
  %cmp179 = icmp slt i32 %81, 8
  br i1 %cmp179, label %do.end184, label %land.lhs.true177.if.end187_crit_edge

land.lhs.true177.if.end187_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end187

do.end184:                                        ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #16
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 8) #18
  br label %if.end187

if.end187:                                        ; preds = %do.end184, %land.lhs.true177.if.end187_crit_edge, %if.end172.if.end187_crit_edge
  %82 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %udev, align 256
  %call190 = tail call i32 @usb_reset_device(ptr noundef %83) #14
  %call191 = tail call fastcc i32 @s2255_board_init(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end187.errorBOARDINIT_crit_edge

if.end187.errorBOARDINIT_crit_edge:               ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #16
  br label %errorBOARDINIT

if.end194:                                        ; preds = %if.end187
  tail call fastcc void @s2255_fwload_start(ptr noundef nonnull %call1.i.i.i)
  %call195 = tail call fastcc i32 @s2255_probe_v4l(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %do.end201, label %if.end194.errorBOARDINIT_crit_edge

if.end194.errorBOARDINIT_crit_edge:               ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  br label %errorBOARDINIT

do.end201:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  %dev202 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev202, ptr noundef nonnull @.str.54) #18
  br label %cleanup

errorBOARDINIT:                                   ; preds = %if.end194.errorBOARDINIT_crit_edge, %if.end187.errorBOARDINIT_crit_edge
  %retval1.0 = phi i32 [ %call191, %if.end187.errorBOARDINIT_crit_edge ], [ %call195, %if.end194.errorBOARDINIT_crit_edge ]
  tail call fastcc void @s2255_board_shutdown(ptr noundef nonnull %call1.i.i.i)
  br label %errorFWMARKER

errorFWMARKER:                                    ; preds = %errorBOARDINIT, %do.end151
  %retval1.1 = phi i32 [ -19, %do.end151 ], [ %retval1.0, %errorBOARDINIT ]
  %84 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw_data, align 4
  %fw205 = getelementptr inbounds %struct.s2255_fw, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %fw205 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fw205, align 4
  tail call void @release_firmware(ptr noundef %87) #14
  br label %errorREQFW

errorREQFW:                                       ; preds = %errorFWMARKER, %do.end138
  %retval1.2 = phi i32 [ -12, %do.end138 ], [ %retval1.1, %errorFWMARKER ]
  %88 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw_data, align 4
  %pfw_data207 = getelementptr inbounds %struct.s2255_fw, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %pfw_data207 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pfw_data207, align 4
  tail call void @kfree(ptr noundef %91) #14
  br label %errorFWDATA2

errorFWDATA2:                                     ; preds = %errorREQFW, %do.end127
  %retval1.3 = phi i32 [ %retval1.2, %errorREQFW ], [ -12, %do.end127 ]
  %92 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fw_data, align 4
  %fw_urb209 = getelementptr inbounds %struct.s2255_fw, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %fw_urb209 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fw_urb209, align 4
  tail call void @usb_free_urb(ptr noundef %95) #14
  br label %errorFWURB

errorFWURB:                                       ; preds = %errorFWDATA2, %do.body82.errorFWURB_crit_edge
  %retval1.4 = phi i32 [ %retval1.3, %errorFWDATA2 ], [ -12, %do.body82.errorFWURB_crit_edge ]
  %call211 = tail call i32 @del_timer_sync(ptr noundef %timer) #14
  br label %errorEP

errorEP:                                          ; preds = %errorFWURB, %do.end79
  %retval1.5 = phi i32 [ %retval1.4, %errorFWURB ], [ -12, %do.end79 ]
  %96 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %udev, align 256
  tail call void @usb_put_dev(ptr noundef %97) #14
  br label %errorUDEV

errorUDEV:                                        ; preds = %errorEP, %do.end29
  %retval1.6 = phi i32 [ -19, %do.end29 ], [ %retval1.5, %errorEP ]
  %98 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fw_data, align 4
  tail call void @kfree(ptr noundef %99) #14
  tail call void @mutex_destroy(ptr noundef %lock) #14
  br label %errorFWDATA1

errorFWDATA1:                                     ; preds = %errorUDEV, %if.end11.errorFWDATA1_crit_edge, %do.end9
  %retval1.7 = phi i32 [ -12, %do.end9 ], [ %retval1.6, %errorUDEV ], [ -12, %if.end11.errorFWDATA1_crit_edge ]
  %100 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cmdbuf, align 4
  tail call void @kfree(ptr noundef %101) #14
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #14
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %retval1.7) #18
  br label %cleanup

cleanup:                                          ; preds = %errorFWDATA1, %do.end201, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %retval1.7, %errorFWDATA1 ], [ 0, %do.end201 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s2255_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -10176
  %num_channels = getelementptr i8, ptr %1, i32 128
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_channels, i32 noundef 4) #14
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_channels, align 4
  %lock = getelementptr i8, ptr %1, i32 136
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  tail call void @v4l2_device_disconnect(ptr noundef %1) #14
  tail call void @mutex_unlock(ptr noundef %lock) #14
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_channels, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %num_channels, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_channels, ptr %num_channels, i32 1, ptr elementtype(i32) %num_channels) #14, !srcloc !565
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp48 = icmp sgt i32 %3, 0
  br i1 %cmp48, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %vdev = getelementptr [4 x %struct.s2255_vc], ptr %add.ptr.i, i32 0, i32 %i.049, i32 1
  tail call void @video_unregister_device(ptr noundef %vdev) #14
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %fw_data = getelementptr i8, ptr %1, i32 380
  %5 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_data, align 4
  %fw_state = getelementptr inbounds %struct.s2255_fw, ptr %6, i32 0, i32 3
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_state, i32 noundef 4) #14
  %7 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 4, ptr %fw_state, align 4
  %8 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_data, align 4
  %wait_fw = getelementptr inbounds %struct.s2255_fw, ptr %9, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_fw, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %setmode_ready = getelementptr i8, ptr %1, i32 -8368
  %10 = ptrtoint ptr %setmode_ready to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %setmode_ready, align 8
  %wait_setmode = getelementptr i8, ptr %1, i32 -8420
  tail call void @__wake_up(ptr noundef %wait_setmode, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %vidstatus_ready = getelementptr i8, ptr %1, i32 -8308
  %11 = ptrtoint ptr %vidstatus_ready to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %vidstatus_ready, align 4
  %wait_vidstatus = getelementptr i8, ptr %1, i32 -8360
  tail call void @__wake_up(ptr noundef %wait_vidstatus, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %setmode_ready.1 = getelementptr i8, ptr %1, i32 -5824
  %12 = ptrtoint ptr %setmode_ready.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %setmode_ready.1, align 8
  %wait_setmode.1 = getelementptr i8, ptr %1, i32 -5876
  tail call void @__wake_up(ptr noundef %wait_setmode.1, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %vidstatus_ready.1 = getelementptr i8, ptr %1, i32 -5764
  %13 = ptrtoint ptr %vidstatus_ready.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %vidstatus_ready.1, align 4
  %wait_vidstatus.1 = getelementptr i8, ptr %1, i32 -5816
  tail call void @__wake_up(ptr noundef %wait_vidstatus.1, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %setmode_ready.2 = getelementptr i8, ptr %1, i32 -3280
  %14 = ptrtoint ptr %setmode_ready.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %setmode_ready.2, align 8
  %wait_setmode.2 = getelementptr i8, ptr %1, i32 -3332
  tail call void @__wake_up(ptr noundef %wait_setmode.2, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %vidstatus_ready.2 = getelementptr i8, ptr %1, i32 -3220
  %15 = ptrtoint ptr %vidstatus_ready.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %vidstatus_ready.2, align 4
  %wait_vidstatus.2 = getelementptr i8, ptr %1, i32 -3272
  tail call void @__wake_up(ptr noundef %wait_vidstatus.2, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %setmode_ready.3 = getelementptr i8, ptr %1, i32 -736
  %16 = ptrtoint ptr %setmode_ready.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %setmode_ready.3, align 8
  %wait_setmode.3 = getelementptr i8, ptr %1, i32 -788
  tail call void @__wake_up(ptr noundef %wait_setmode.3, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %vidstatus_ready.3 = getelementptr i8, ptr %1, i32 -676
  %17 = ptrtoint ptr %vidstatus_ready.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %vidstatus_ready.3, align 4
  %wait_vidstatus.3 = getelementptr i8, ptr %1, i32 -728
  tail call void @__wake_up(ptr noundef %wait_vidstatus.3, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_channels, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !566
  tail call void @llvm.prefetch.p0(ptr %num_channels, i32 1, i32 3, i32 1) #14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_channels, ptr %num_channels, i32 1, ptr elementtype(i32) %num_channels) #14, !srcloc !567
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @s2255_destroy(ptr noundef %add.ptr.i)
  br label %do.end

do.end:                                           ; preds = %if.then, %for.end.do.end_crit_edge
  %dev22 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.293, ptr noundef nonnull @.str.294) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s2255_timer(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_data = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_data, align 4
  %fw_urb = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fw_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #18
  %fw_state = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_state, i32 noundef 4) #14
  %4 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 3, ptr %fw_state, align 4
  %wait_fw = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_fw, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s2255_board_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, ptr noundef %dev) #18
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 2
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %dev5 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 5
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev5, align 4
  %cur_transfer_size = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %cur_transfer_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16384, ptr %cur_transfer_size, align 4
  %5 = ptrtoint ptr %pipe1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16384, ptr %pipe1, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3520, i32 noundef 2) #17
  %transfer_buffer = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i.i.i, ptr %transfer_buffer, align 4
  %cmp9 = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp9, label %do.body11, label %if.end25

do.body11:                                        ; preds = %do.end4
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %do.end16, label %do.body11.cleanup_crit_edge

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %name19 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name19) #18
  br label %cleanup

if.end25:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 2) #19
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end25.do.body.i_crit_edge, label %if.end.i.i

if.end25.do.body.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end.i.i:                                       ; preds = %if.end25
  %udev.i.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i.i = shl i32 %12, 8
  %or5.i.i = or i32 %shl.i.i.i, -2147483520
  %call6.i.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or5.i.i, i8 noundef zeroext 48, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 2, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i.i)
  %cmp.i.i = icmp sgt i32 %call6.i.i, -1
  br i1 %cmp.i.i, label %s2255_vendor_req.exit.i, label %s2255_vendor_req.exit.thread42.i

s2255_vendor_req.exit.thread42.i:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %do.body.i

s2255_vendor_req.exit.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %transBuffer.sroa.0.0.copyload.i = load i8, ptr %call7.i.i.i, align 8
  %transBuffer.sroa.5.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 1
  %14 = ptrtoint ptr %transBuffer.sroa.5.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %transBuffer.sroa.5.0.copyload.i = load i8, ptr %transBuffer.sroa.5.0.call7.i.i.sroa_idx.i, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  %phi.cast.i = zext i8 %transBuffer.sroa.0.0.copyload.i to i32
  %phi.cast53.i = zext i8 %transBuffer.sroa.5.0.copyload.i to i32
  br label %if.end8.i

do.body.i:                                        ; preds = %s2255_vendor_req.exit.thread42.i, %if.end25.do.body.i_crit_edge
  %retval.0.i41.i = phi i32 [ %call6.i.i, %s2255_vendor_req.exit.thread42.i ], [ -12, %if.end25.do.body.i_crit_edge ]
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1.i = icmp sgt i32 %15, 1
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.s2255_get_fx2fw.exit_crit_edge

do.body.i.s2255_get_fx2fw.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_get_fx2fw.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name.i, i32 noundef %retval.0.i41.i) #18
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %s2255_vendor_req.exit.i
  %transBuffer.sroa.5.139.ph.i = phi i32 [ %phi.cast53.i, %s2255_vendor_req.exit.i ], [ 255, %do.end.i ]
  %transBuffer.sroa.0.137.ph.i = phi i32 [ %phi.cast.i, %s2255_vendor_req.exit.i ], [ 255, %do.end.i ]
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp12.i = icmp sgt i32 %.pr.i, 1
  br i1 %cmp12.i, label %do.end17.i, label %if.end8.i.s2255_get_fx2fw.exit_crit_edge

if.end8.i.s2255_get_fx2fw.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_get_fx2fw.exit

do.end17.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %name20.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name20.i, i32 noundef %transBuffer.sroa.0.137.ph.i, i32 noundef %transBuffer.sroa.5.139.ph.i) #18
  br label %s2255_get_fx2fw.exit

s2255_get_fx2fw.exit:                             ; preds = %do.end17.i, %if.end8.i.s2255_get_fx2fw.exit_crit_edge, %do.body.i.s2255_get_fx2fw.exit_crit_edge
  %conv1052.i = phi i32 [ %transBuffer.sroa.5.139.ph.i, %do.end17.i ], [ %transBuffer.sroa.5.139.ph.i, %if.end8.i.s2255_get_fx2fw.exit_crit_edge ], [ 255, %do.body.i.s2255_get_fx2fw.exit_crit_edge ]
  %conv51.i = phi i32 [ %transBuffer.sroa.0.137.ph.i, %do.end17.i ], [ %transBuffer.sroa.0.137.ph.i, %if.end8.i.s2255_get_fx2fw.exit_crit_edge ], [ 255, %do.body.i.s2255_get_fx2fw.exit_crit_edge ]
  %shl.i = shl nuw nsw i32 %conv1052.i, 8
  %add.i = or i32 %shl.i, %conv51.i
  %16 = lshr i32 %add.i, 8
  %and = and i32 %16, 255
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %and, i32 noundef %conv51.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 780, i32 %add.i)
  %cmp33 = icmp slt i32 %add.i, 780
  br i1 %cmp33, label %do.end37, label %s2255_get_fx2fw.exit.if.end40_crit_edge

s2255_get_fx2fw.exit.if.end40_crit_edge:          ; preds = %s2255_get_fx2fw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

do.end37:                                         ; preds = %s2255_get_fx2fw.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #18
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %s2255_get_fx2fw.exit.if.end40_crit_edge
  %pid = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %s2255_create_sys_buffers.exit.for.body_crit_edge, %if.end40
  %j.0111 = phi i32 [ 0, %if.end40 ], [ %inc, %s2255_create_sys_buffers.exit.for.body_crit_edge ]
  %mode = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 7
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %mode, align 4
  %mode_def.sroa.5.0.mode.sroa_idx = getelementptr inbounds i8, ptr %mode, i32 4
  %18 = ptrtoint ptr %mode_def.sroa.5.0.mode.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %mode_def.sroa.5.0.mode.sroa_idx, align 4
  %mode_def.sroa.7.0.mode.sroa_idx = getelementptr inbounds i8, ptr %mode, i32 8
  %19 = ptrtoint ptr %mode_def.sroa.7.0.mode.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %mode_def.sroa.7.0.mode.sroa_idx, align 4
  %mode_def.sroa.8.0.mode.sroa_idx = getelementptr inbounds i8, ptr %mode, i32 12
  %20 = call ptr @memcpy(ptr %mode_def.sroa.8.0.mode.sroa_idx, ptr getelementptr inbounds (%struct.s2255_mode, ptr @__const.s2255_board_init.mode_def, i32 0, i32 3), i32 32)
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8791, i16 %22)
  %cmp43 = icmp eq i16 %22, 8791
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.0111)
  %cmp45 = icmp ugt i32 %j.0111, 1
  %or.cond = select i1 %cmp43, i1 %cmp45, i1 false
  br i1 %or.cond, label %if.then47, label %for.body.get_transfer_size.exit_crit_edge

for.body.get_transfer_size.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_transfer_size.exit

if.then47:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %color = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 7, i32 2
  %23 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %color, align 4
  %or = or i32 %24, 65536
  store i32 %or, ptr %color, align 4
  br label %get_transfer_size.exit

get_transfer_size.exit:                           ; preds = %if.then47, %for.body.get_transfer_size.exit_crit_edge
  %jpegqual = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 9
  %25 = ptrtoint ptr %jpegqual to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50, ptr %jpegqual, align 8
  %width = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 24
  %26 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 640, ptr %width, align 8
  %height = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 25
  %27 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 480, ptr %height, align 4
  %std = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 8
  %28 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 4096, ptr %std, align 8
  %fmt = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 27
  %29 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @formats, ptr %fmt, align 4
  %restart = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 7, i32 10
  %30 = ptrtoint ptr %restart to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %restart, align 4
  %req_image_size = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 13
  %31 = ptrtoint ptr %req_image_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 622592, ptr %req_image_size, align 4
  %frame_count = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 16
  %32 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %frame_count, align 8
  %buffer.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6
  %33 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %buffer.i, align 8
  %call.i = tail call noalias ptr @vmalloc(i32 noundef 833536) #17
  %arrayidx.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 0
  %lpvbits.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %lpvbits.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %lpvbits.i, align 4
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 833536, ptr %arrayidx.i, align 4
  %cmp10.i = icmp eq ptr %call.i, null
  br i1 %cmp10.i, label %get_transfer_size.exit.do.end.i103_crit_edge, label %for.inc.i

get_transfer_size.exit.do.end.i103_crit_edge:     ; preds = %get_transfer_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i103

do.end.i103:                                      ; preds = %for.inc.2.i.do.end.i103_crit_edge, %for.inc.1.i.do.end.i103_crit_edge, %for.inc.i.do.end.i103_crit_edge, %get_transfer_size.exit.do.end.i103_crit_edge
  %i.02.lcssa.i = phi i32 [ 0, %get_transfer_size.exit.do.end.i103_crit_edge ], [ 1, %for.inc.i.do.end.i103_crit_edge ], [ 2, %for.inc.1.i.do.end.i103_crit_edge ], [ 3, %for.inc.2.i.do.end.i103_crit_edge ]
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #18
  %36 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.02.lcssa.i, ptr %buffer.i, align 8
  br label %s2255_create_sys_buffers.exit

for.inc.i:                                        ; preds = %get_transfer_size.exit
  %call.1.i = tail call noalias ptr @vmalloc(i32 noundef 833536) #17
  %arrayidx.1.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 1
  %lpvbits.1.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 1, i32 2
  %37 = ptrtoint ptr %lpvbits.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.1.i, ptr %lpvbits.1.i, align 4
  %38 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 833536, ptr %arrayidx.1.i, align 4
  %cmp10.1.i = icmp eq ptr %call.1.i, null
  br i1 %cmp10.1.i, label %for.inc.i.do.end.i103_crit_edge, label %for.inc.1.i

for.inc.i.do.end.i103_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i103

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call noalias ptr @vmalloc(i32 noundef 833536) #17
  %arrayidx.2.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 2
  %lpvbits.2.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 2, i32 2
  %39 = ptrtoint ptr %lpvbits.2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.2.i, ptr %lpvbits.2.i, align 4
  %40 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 833536, ptr %arrayidx.2.i, align 4
  %cmp10.2.i = icmp eq ptr %call.2.i, null
  br i1 %cmp10.2.i, label %for.inc.1.i.do.end.i103_crit_edge, label %for.inc.2.i

for.inc.1.i.do.end.i103_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i103

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call noalias ptr @vmalloc(i32 noundef 833536) #17
  %arrayidx.3.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 3
  %lpvbits.3.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 3, i32 2
  %41 = ptrtoint ptr %lpvbits.3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.3.i, ptr %lpvbits.3.i, align 4
  %42 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 833536, ptr %arrayidx.3.i, align 4
  %cmp10.3.i = icmp eq ptr %call.3.i, null
  br i1 %cmp10.3.i, label %for.inc.2.i.do.end.i103_crit_edge, label %for.inc.2.i.s2255_create_sys_buffers.exit_crit_edge

for.inc.2.i.s2255_create_sys_buffers.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_create_sys_buffers.exit

for.inc.2.i.do.end.i103_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i103

s2255_create_sys_buffers.exit:                    ; preds = %for.inc.2.i.s2255_create_sys_buffers.exit_crit_edge, %do.end.i103
  %ulState.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %ulState.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ulState.i, align 4
  %cur_size.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %cur_size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cur_size.i, align 4
  %ulState.1.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 1, i32 1
  %45 = ptrtoint ptr %ulState.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ulState.1.i, align 4
  %cur_size.1.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 1, i32 3
  %46 = ptrtoint ptr %cur_size.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %cur_size.1.i, align 4
  %ulState.2.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 2, i32 1
  %47 = ptrtoint ptr %ulState.2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %ulState.2.i, align 4
  %cur_size.2.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 2, i32 3
  %48 = ptrtoint ptr %cur_size.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %cur_size.2.i, align 4
  %ulState.3.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 3, i32 1
  %49 = ptrtoint ptr %ulState.3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ulState.3.i, align 4
  %cur_size.3.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 6, i32 1, i32 3, i32 3
  %50 = ptrtoint ptr %cur_size.3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %cur_size.3.i, align 4
  %cur_frame.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 11
  %51 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %cur_frame.i, align 4
  %last_frame.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %j.0111, i32 12
  %52 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %last_frame.i, align 8
  %inc = add nuw nsw i32 %j.0111, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %s2255_create_sys_buffers.exit.for.body_crit_edge

s2255_create_sys_buffers.exit.for.body_crit_edge: ; preds = %s2255_create_sys_buffers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %s2255_create_sys_buffers.exit
  %udev.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 6
  %53 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %udev.i, align 8
  %read_endpoint.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 8
  %55 = ptrtoint ptr %read_endpoint.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %read_endpoint.i, align 8
  %conv.i = zext i8 %56 to i32
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %54, align 8
  %shl.i.i = shl i32 %58, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or3.i = or i32 %or.i.i, -1073741696
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i = icmp sgt i32 %59, 1
  br i1 %cmp.i, label %do.end.i105, label %for.end.do.end10.i_crit_edge

for.end.do.end10.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

do.end.i105:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %name.i104 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name.i104, ptr noundef nonnull @.str.84, i32 noundef %conv.i) #18
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i105, %for.end.do.end10.i_crit_edge
  %state.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 3
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %state.i, align 4
  %err_count.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 6
  %61 = ptrtoint ptr %err_count.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %err_count.i, align 4
  %call11.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %stream_urb.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 4
  %62 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call11.i, ptr %stream_urb.i, align 4
  %tobool.not.i106 = icmp eq ptr %call11.i, null
  br i1 %tobool.not.i106, label %do.end10.i.s2255_start_readpipe.exit_crit_edge, label %if.end14.i

do.end10.i.s2255_start_readpipe.exit_crit_edge:   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_start_readpipe.exit

if.end14.i:                                       ; preds = %do.end10.i
  %63 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev.i, align 8
  %65 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %transfer_buffer, align 4
  %67 = ptrtoint ptr %cur_transfer_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cur_transfer_size, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call11.i, i32 0, i32 8
  %69 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %64, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call11.i, i32 0, i32 10
  %70 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call11.i, i32 0, i32 14
  %71 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %66, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call11.i, i32 0, i32 19
  %72 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %68, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call11.i, i32 0, i32 28
  %73 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @read_pipe_completion, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call11.i, i32 0, i32 27
  %74 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %pipe1, ptr %context4.i.i, align 4
  %75 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %stream_urb.i, align 4
  %call18.i = tail call i32 @usb_submit_urb(ptr noundef %76, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end14.i.s2255_start_readpipe.exit_crit_edge, label %do.end23.i

if.end14.i.s2255_start_readpipe.exit_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_start_readpipe.exit

do.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #18
  br label %s2255_start_readpipe.exit

s2255_start_readpipe.exit:                        ; preds = %do.end23.i, %if.end14.i.s2255_start_readpipe.exit_crit_edge, %do.end10.i.s2255_start_readpipe.exit_crit_edge
  %77 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp55 = icmp sgt i32 %77, 0
  br i1 %cmp55, label %do.end60, label %s2255_start_readpipe.exit.cleanup_crit_edge

s2255_start_readpipe.exit.cleanup_crit_edge:      ; preds = %s2255_start_readpipe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end60:                                         ; preds = %s2255_start_readpipe.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name63 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name63, ptr noundef nonnull @.str.63) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %s2255_start_readpipe.exit.cleanup_crit_edge, %do.end16, %do.body11.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end16 ], [ -12, %do.body11.cleanup_crit_edge ], [ 0, %do.end60 ], [ 0, %s2255_start_readpipe.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s2255_fwload_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @s2255_reset_dsppower(ptr noundef %dev)
  %fw_data = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_data, align 4
  %fw = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %fw_size = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fw_size, align 4
  %7 = load ptr, ptr %fw_data, align 4
  %fw_state = getelementptr inbounds %struct.s2255_fw, ptr %7, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_state, i32 noundef 4) #14
  %8 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %fw_state, align 4
  %9 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_data, align 4
  %pfw_data = getelementptr inbounds %struct.s2255_fw, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %pfw_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pfw_data, align 4
  %fw5 = getelementptr inbounds %struct.s2255_fw, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %fw5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw5, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = call ptr @memcpy(ptr %12, ptr %16, i32 512)
  %18 = load ptr, ptr %fw_data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 512, ptr %18, align 4
  %20 = load ptr, ptr %fw_data, align 4
  %fw_urb = getelementptr inbounds %struct.s2255_fw, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %fw_urb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw_urb, align 4
  %udev = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 6
  %23 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i = shl i32 %26, 8
  %or = or i32 %shl.i, -1073676288
  %pfw_data10 = getelementptr inbounds %struct.s2255_fw, ptr %20, i32 0, i32 4
  %27 = ptrtoint ptr %pfw_data10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pfw_data10, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 8
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 10
  %30 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 19
  %32 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 512, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 28
  %33 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @s2255_fwchunk_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 27
  %34 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %20, ptr %context4.i, align 4
  %timer = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %35, 100
  %call12 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s2255_probe_v4l(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @video_nr, align 4
  %interface = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 7
  %1 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  %v4l2_dev = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1
  %call = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dsp_fw_ver = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 15
  %pid = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 16
  %lock44 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 4
  %num_channels = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 2
  %name = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %video_device_node_name.exit.for.body_crit_edge, %for.cond.preheader
  %i.0171 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %video_device_node_name.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171
  %buf_list = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 5
  %3 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %prev.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf_list, ptr %prev.i, align 4
  %hdl = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 2
  %call3 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 6, ptr noundef nonnull @s2255_probe_v4l._key, ptr noundef nonnull @.str.169) #14
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @s2255_ctrl_ops, i32 noundef 9963776, i64 noundef -127, i64 noundef 127, i64 noundef 1, i64 noundef 0) #14
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @s2255_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 92) #14
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @s2255_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #14
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @s2255_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #14
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @s2255_ctrl_ops, i32 noundef 10291459, i64 noundef 0, i64 noundef 100, i64 noundef 1, i64 noundef 50) #14
  %jpegqual_ctrl = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 3
  %5 = ptrtoint ptr %jpegqual_ctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %jpegqual_ctrl, align 8
  %6 = ptrtoint ptr %dsp_fw_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsp_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp14 = icmp sgt i32 %7, 7
  br i1 %cmp14, label %land.lhs.true, label %for.body.if.end22_crit_edge

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8791, i16 %9)
  %cmp15.not = icmp eq i16 %9, 8791
  br i1 %cmp15.not, label %lor.lhs.false, label %land.lhs.true.if.then19_crit_edge

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

lor.lhs.false:                                    ; preds = %land.lhs.true
  %idx = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 28
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp17 = icmp slt i32 %11, 2
  br i1 %cmp17, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %call21 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl, ptr noundef nonnull @color_filter_ctrl, ptr noundef null) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %lor.lhs.false.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %error = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 2, i32 9
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %if.end30, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #14
  %udev = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 6
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 8
  %dev29 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.170) #18
  br label %do.end78

if.end30:                                         ; preds = %if.end22
  %vb_vidq = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 29
  %16 = ptrtoint ptr %vb_vidq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %vb_vidq, align 4
  %io_modes = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 29, i32 1
  %17 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %io_modes, align 4
  %drv_priv = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 29, i32 10
  %18 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %drv_priv, align 4
  %vb_lock = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 30
  %lock = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 29, i32 5
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vb_lock, ptr %lock, align 4
  %buf_struct_size = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 29, i32 12
  %20 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 744, ptr %buf_struct_size, align 4
  %mem_ops = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 29, i32 8
  %21 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %ops = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 29, i32 7
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @s2255_video_qops, ptr %ops, align 4
  %timestamp_flags = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 29, i32 13
  %23 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8192, ptr %timestamp_flags, align 4
  %call31 = tail call i32 @vb2_queue_init(ptr noundef %vb_vidq) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %udev38 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 6
  %24 = ptrtoint ptr %udev38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev38, align 8
  %dev39 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.171, i32 noundef %call31) #18
  br label %do.end78

if.end40:                                         ; preds = %if.end30
  %vdev = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1
  %26 = call ptr @memcpy(ptr %vdev, ptr @template, i32 1352)
  %queue = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1, i32 10
  %27 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vb_vidq, ptr %queue, align 8
  %ctrl_handler = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1, i32 9
  %28 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %lock46 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1, i32 26
  %29 = ptrtoint ptr %lock46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %lock44, ptr %lock46, align 8
  %v4l2_dev49 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1, i32 7
  %30 = ptrtoint ptr %v4l2_dev49 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %v4l2_dev, ptr %v4l2_dev49, align 4
  %device_caps = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1, i32 4
  %31 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 83886081, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1, i32 5, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %33 = load i32, ptr @video_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp52 = icmp eq i32 %33, -1
  %add = add i32 %i.0171, %0
  %add.sink = select i1 %cmp52, i32 -1, i32 %add
  %fops.i164 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1, i32 3
  %34 = ptrtoint ptr %fops.i164 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fops.i164, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call.i165 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef %add.sink, i32 noundef 1, ptr noundef %37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool60.not = icmp eq i32 %call.i165, 0
  br i1 %tobool60.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %udev65 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 6
  %38 = ptrtoint ptr %udev65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev65, align 8
  %dev66 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.176) #18
  br label %do.end78

if.end67:                                         ; preds = %if.end40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_channels, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %num_channels, i32 1, i32 3, i32 1) #14
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_channels, ptr %num_channels, i32 1, ptr elementtype(i32) %num_channels) #14, !srcloc !565
  %init_name.i.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1, i32 5, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end67.video_device_node_name.exit_crit_edge

if.end67.video_device_node_name.exit_crit_edge:   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 %i.0171, i32 1, i32 5
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %if.end67.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %if.end67.video_device_node_name.exit_crit_edge ]
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %name, ptr noundef %retval.0.i.i) #18
  %inc = add nuw nsw i32 %i.0171, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %video_device_node_name.exit.do.end78_crit_edge, label %video_device_node_name.exit.for.body_crit_edge

video_device_node_name.exit.for.body_crit_edge:   ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

video_device_node_name.exit.do.end78_crit_edge:   ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end78

do.end78:                                         ; preds = %video_device_node_name.exit.do.end78_crit_edge, %do.end64, %do.end37, %if.then25
  %ret.2 = phi i32 [ %13, %if.then25 ], [ %call31, %do.end37 ], [ %call.i165, %do.end64 ], [ 0, %video_device_node_name.exit.do.end78_crit_edge ]
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.2) #18
  %call.i.i162 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_channels, i32 noundef 4) #14
  %45 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp83 = icmp eq i32 %46, 0
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #14
  br label %cleanup

if.end87:                                         ; preds = %do.end78
  %call.i.i163 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_channels, i32 noundef 4) #14
  %47 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp90.not = icmp eq i32 %48, 4
  br i1 %cmp90.not, label %if.end87.cleanup_crit_edge, label %do.end95

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end95:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.end87.cleanup_crit_edge, %if.then85, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.then85 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end95 ], [ 0, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s2255_board_shutdown(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.290, ptr noundef %name, ptr noundef nonnull @.str.291, ptr noundef %dev) #18
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %streaming.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 0, i32 29, i32 28
  %1 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then6, label %do.end3.for.inc_crit_edge

do.end3.for.inc_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then6:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @s2255_stop_acquire(ptr noundef %dev)
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %do.end3.for.inc_crit_edge
  %streaming.i.1 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 1, i32 29, i32 28
  %2 = ptrtoint ptr %streaming.i.1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i.1 = load i16, ptr %streaming.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.1)
  %tobool.i.1 = icmp slt i16 %bf.load.i.1, 0
  br i1 %tobool.i.1, label %if.then6.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then6.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.1 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 1
  tail call fastcc void @s2255_stop_acquire(ptr noundef %arrayidx.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then6.1, %for.inc.for.inc.1_crit_edge
  %streaming.i.2 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 2, i32 29, i32 28
  %3 = ptrtoint ptr %streaming.i.2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i.2 = load i16, ptr %streaming.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.2)
  %tobool.i.2 = icmp slt i16 %bf.load.i.2, 0
  br i1 %tobool.i.2, label %if.then6.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then6.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.2 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 2
  tail call fastcc void @s2255_stop_acquire(ptr noundef %arrayidx.2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then6.2, %for.inc.1.for.inc.2_crit_edge
  %streaming.i.3 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 3, i32 29, i32 28
  %4 = ptrtoint ptr %streaming.i.3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.3 = load i16, ptr %streaming.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.3)
  %tobool.i.3 = icmp slt i16 %bf.load.i.3, 0
  br i1 %tobool.i.3, label %if.then6.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then6.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.3 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 3
  tail call fastcc void @s2255_stop_acquire(ptr noundef %arrayidx.3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then6.3, %for.inc.2.for.inc.3_crit_edge
  %state.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 3
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state.i, align 4
  %stream_urb.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream_urb.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.inc.3.do.body.i_crit_edge, label %if.then.i

for.inc.3.do.body.i_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.then.i:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #14
  %8 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %9) #14
  %10 = ptrtoint ptr %stream_urb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %stream_urb.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %for.inc.3.do.body.i_crit_edge
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp sgt i32 %11, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.s2255_stop_readpipe.exit_crit_edge

do.body.i.s2255_stop_readpipe.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_stop_readpipe.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef %name.i, ptr noundef nonnull @.str.292) #18
  br label %s2255_stop_readpipe.exit

s2255_stop_readpipe.exit:                         ; preds = %do.end.i, %do.body.i.s2255_stop_readpipe.exit_crit_edge
  %lpvbits.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 0, i32 6, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %lpvbits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lpvbits.i, align 4
  tail call void @vfree(ptr noundef %13) #14
  %14 = ptrtoint ptr %lpvbits.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %lpvbits.i, align 4
  %lpvbits.1.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 0, i32 6, i32 1, i32 1, i32 2
  %15 = ptrtoint ptr %lpvbits.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lpvbits.1.i, align 4
  tail call void @vfree(ptr noundef %16) #14
  %17 = ptrtoint ptr %lpvbits.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %lpvbits.1.i, align 4
  %lpvbits.2.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 0, i32 6, i32 1, i32 2, i32 2
  %18 = ptrtoint ptr %lpvbits.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lpvbits.2.i, align 4
  tail call void @vfree(ptr noundef %19) #14
  %20 = ptrtoint ptr %lpvbits.2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %lpvbits.2.i, align 4
  %lpvbits.3.i = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 0, i32 6, i32 1, i32 3, i32 2
  %21 = ptrtoint ptr %lpvbits.3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lpvbits.3.i, align 4
  tail call void @vfree(ptr noundef %22) #14
  %23 = ptrtoint ptr %lpvbits.3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %lpvbits.3.i, align 4
  %lpvbits.i.1 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 1, i32 6, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %lpvbits.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lpvbits.i.1, align 4
  tail call void @vfree(ptr noundef %25) #14
  %26 = ptrtoint ptr %lpvbits.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %lpvbits.i.1, align 4
  %lpvbits.1.i.1 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 1, i32 6, i32 1, i32 1, i32 2
  %27 = ptrtoint ptr %lpvbits.1.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lpvbits.1.i.1, align 4
  tail call void @vfree(ptr noundef %28) #14
  %29 = ptrtoint ptr %lpvbits.1.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %lpvbits.1.i.1, align 4
  %lpvbits.2.i.1 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 1, i32 6, i32 1, i32 2, i32 2
  %30 = ptrtoint ptr %lpvbits.2.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lpvbits.2.i.1, align 4
  tail call void @vfree(ptr noundef %31) #14
  %32 = ptrtoint ptr %lpvbits.2.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %lpvbits.2.i.1, align 4
  %lpvbits.3.i.1 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 1, i32 6, i32 1, i32 3, i32 2
  %33 = ptrtoint ptr %lpvbits.3.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lpvbits.3.i.1, align 4
  tail call void @vfree(ptr noundef %34) #14
  %35 = ptrtoint ptr %lpvbits.3.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %lpvbits.3.i.1, align 4
  %lpvbits.i.2 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 2, i32 6, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %lpvbits.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lpvbits.i.2, align 4
  tail call void @vfree(ptr noundef %37) #14
  %38 = ptrtoint ptr %lpvbits.i.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %lpvbits.i.2, align 4
  %lpvbits.1.i.2 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 2, i32 6, i32 1, i32 1, i32 2
  %39 = ptrtoint ptr %lpvbits.1.i.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lpvbits.1.i.2, align 4
  tail call void @vfree(ptr noundef %40) #14
  %41 = ptrtoint ptr %lpvbits.1.i.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %lpvbits.1.i.2, align 4
  %lpvbits.2.i.2 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 2, i32 6, i32 1, i32 2, i32 2
  %42 = ptrtoint ptr %lpvbits.2.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lpvbits.2.i.2, align 4
  tail call void @vfree(ptr noundef %43) #14
  %44 = ptrtoint ptr %lpvbits.2.i.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %lpvbits.2.i.2, align 4
  %lpvbits.3.i.2 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 2, i32 6, i32 1, i32 3, i32 2
  %45 = ptrtoint ptr %lpvbits.3.i.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lpvbits.3.i.2, align 4
  tail call void @vfree(ptr noundef %46) #14
  %47 = ptrtoint ptr %lpvbits.3.i.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %lpvbits.3.i.2, align 4
  %lpvbits.i.3 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 3, i32 6, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %lpvbits.i.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lpvbits.i.3, align 4
  tail call void @vfree(ptr noundef %49) #14
  %50 = ptrtoint ptr %lpvbits.i.3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %lpvbits.i.3, align 4
  %lpvbits.1.i.3 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 3, i32 6, i32 1, i32 1, i32 2
  %51 = ptrtoint ptr %lpvbits.1.i.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lpvbits.1.i.3, align 4
  tail call void @vfree(ptr noundef %52) #14
  %53 = ptrtoint ptr %lpvbits.1.i.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %lpvbits.1.i.3, align 4
  %lpvbits.2.i.3 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 3, i32 6, i32 1, i32 2, i32 2
  %54 = ptrtoint ptr %lpvbits.2.i.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lpvbits.2.i.3, align 4
  tail call void @vfree(ptr noundef %55) #14
  %56 = ptrtoint ptr %lpvbits.2.i.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %lpvbits.2.i.3, align 4
  %lpvbits.3.i.3 = getelementptr [4 x %struct.s2255_vc], ptr %dev, i32 0, i32 3, i32 6, i32 1, i32 3, i32 2
  %57 = ptrtoint ptr %lpvbits.3.i.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lpvbits.3.i.3, align 4
  tail call void @vfree(ptr noundef %58) #14
  %59 = ptrtoint ptr %lpvbits.3.i.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %lpvbits.3.i.3, align 4
  %transfer_buffer = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 11, i32 2
  %60 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %transfer_buffer, align 8
  tail call void @kfree(ptr noundef %61) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_pipe_completion(ptr nocapture noundef readonly %purb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev1 = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.88) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev9 = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 8
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.88) #18
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %status12 = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 12
  %8 = ptrtoint ptr %status12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %9)
  %cmp13 = icmp eq i32 %9, -108
  br i1 %cmp13, label %do.body15, label %if.end24

do.body15:                                        ; preds = %if.end11
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp16 = icmp sgt i32 %10, 1
  br i1 %cmp16, label %do.end20, label %do.body15.do.end23_crit_edge

do.body15.do.end23_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name, ptr noundef nonnull @.str.89) #18
  br label %do.end23

do.end23:                                         ; preds = %do.end20, %do.body15.do.end23_crit_edge
  %err_count = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err_count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %err_count, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  %state = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp25 = icmp eq i32 %14, 0
  br i1 %cmp25, label %do.body27, label %if.end41

do.body27:                                        ; preds = %if.end24
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp28 = icmp sgt i32 %15, 1
  br i1 %cmp28, label %do.end32, label %do.body27.cleanup_crit_edge

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end32:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  %name35 = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name35, ptr noundef nonnull @.str.89) #18
  br label %cleanup

if.end41:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp42 = icmp eq i32 %9, 0
  br i1 %cmp42, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end41
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %16)
  %cmp.i = icmp sgt i32 %16, 49
  br i1 %cmp.i, label %do.end.i, label %if.then43.do.end3.i_crit_edge

if.then43.do.end3.i_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name.i) #18
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then43.do.end3.i_crit_edge
  %cc.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 12
  %17 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp4.i = icmp ugt i32 %18, 3
  br i1 %cmp4.i, label %if.then5.i, label %if.end11.i

if.then5.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %cc.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cc.i, align 8
  %udev.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i, align 8
  %dev10.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.110) #18
  br label %if.end60

if.end11.i:                                       ; preds = %do.end3.i
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %22)
  %cmp.i.i = icmp sgt i32 %22, 99
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end11.i.do.end3.i.i_crit_edge

if.end11.i.do.end3.i.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name.i.i) #18
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.end11.i.do.end3.i.i_crit_edge
  %23 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cc.i, align 8
  %cur_frame.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %24, i32 11
  %25 = ptrtoint ptr %cur_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur_frame.i.i, align 4
  %ulState.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %24, i32 6, i32 1, i32 %26, i32 1
  %27 = ptrtoint ptr %ulState.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ulState.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp6.i.i = icmp eq i32 %28, 0
  br i1 %cmp6.i.i, label %if.then7.i.i, label %do.end3.i.i.if.end137.i.i_crit_edge

do.end3.i.i.if.end137.i.i_crit_edge:              ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137.i.i

if.then7.i.i:                                     ; preds = %do.end3.i.i
  %transfer_buffer.i.i = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer_buffer.i.i, align 4
  %cur_transfer_size.i.i = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %cur_transfer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_transfer_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %32)
  %cmp9379.not.i.i = icmp eq i32 %32, 12
  br i1 %cmp9379.not.i.i, label %if.then7.i.i.do.body15.i_crit_edge, label %for.body.lr.ph.i.i

if.then7.i.i.do.body15.i_crit_edge:               ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15.i

for.body.lr.ph.i.i:                               ; preds = %if.then7.i.i
  %arrayidx60.i.i = getelementptr i32, ptr %30, i32 1
  %arrayidx73.i.i = getelementptr i32, ptr %30, i32 2
  %arrayidx103.i.i = getelementptr i32, ptr %30, i32 3
  %name113.i.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %chn_ready.i.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 14
  %fw_data.i.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %jj.0381.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc130.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %pdata.0380.i.i = phi ptr [ %30, %for.body.lr.ph.i.i ], [ %pdata.1.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %sw.default125.i.i [
    i32 1255822626, label %do.body10.i.i
    i32 -1397992158, label %sw.bb58.i.i
  ]

do.body10.i.i:                                    ; preds = %for.body.i.i
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp11.i.i = icmp sgt i32 %36, 3
  br i1 %cmp11.i.i, label %do.end15.i.i, label %do.body10.i.i.do.end26.i.i_crit_edge

do.body10.i.i.do.end26.i.i_crit_edge:             ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i.i

do.end15.i.i:                                     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %pdata.0380.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pdata.0380.i.i, align 1
  %conv.i.i = zext i8 %38 to i32
  %arrayidx21.i.i = getelementptr i8, ptr %pdata.0380.i.i, i32 1
  %39 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx21.i.i, align 1
  %conv22.i.i = zext i8 %40 to i32
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name113.i.i, i32 noundef %jj.0381.i.i, i32 noundef %conv.i.i, i32 noundef %conv22.i.i) #18
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %do.end15.i.i, %do.body10.i.i.do.end26.i.i_crit_edge
  %add.i.i = add i32 %jj.0381.i.i, 512
  %41 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx60.i.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp28.i.i = icmp ugt i32 %43, 3
  br i1 %cmp28.i.i, label %do.body31.i.i, label %if.end46.i.i

do.body31.i.i:                                    ; preds = %do.end26.i.i
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp32.i.i = icmp sgt i32 %44, -1
  br i1 %cmp32.i.i, label %do.end37.i.i, label %do.body31.i.i.if.end60_crit_edge

do.body31.i.i.if.end60_crit_edge:                 ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end37.i.i:                                     ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call42.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name113.i.i) #18
  br label %do.body15.i

if.end46.i.i:                                     ; preds = %do.end26.i.i
  %arrayidx47.i.i = getelementptr [4 x i32], ptr @G_chnmap, i32 0, i32 %43
  %45 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx47.i.i, align 4
  %47 = ptrtoint ptr %cc.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %cc.i, align 8
  %48 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx103.i.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #14
  %req_image_size.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %46, i32 13
  %51 = ptrtoint ptr %req_image_size.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %req_image_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp53.i.i = icmp ugt i32 %50, %52
  br i1 %cmp53.i.i, label %if.then55.i.i, label %cleanup.i.i

if.then55.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bad_payload.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %46, i32 15
  %53 = ptrtoint ptr %bad_payload.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bad_payload.i.i, align 4
  %inc.i.i = add i32 %54, 1
  store i32 %inc.i.i, ptr %bad_payload.i.i, align 4
  br label %do.body15.i

sw.bb58.i.i:                                      ; preds = %for.body.i.i
  %add.ptr.i.i = getelementptr i8, ptr %pdata.0380.i.i, i32 16384
  %add59.i.i = add i32 %jj.0381.i.i, 16384
  %55 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx60.i.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp61.i.i = icmp ugt i32 %57, 3
  br i1 %cmp61.i.i, label %sw.bb58.i.i.for.inc.i.i_crit_edge, label %if.end64.i.i

sw.bb58.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb58.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end64.i.i:                                     ; preds = %sw.bb58.i.i
  %arrayidx66.i.i = getelementptr [4 x i32], ptr @G_chnmap, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx66.i.i, align 4
  %60 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx73.i.i, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.298)
  switch i32 %61, label %do.end122.i.i [
    i32 16777216, label %sw.bb74.i.i
    i32 268435456, label %sw.bb90.i.i
    i32 536870912, label %sw.bb102.i.i
  ]

sw.bb74.i.i:                                      ; preds = %if.end64.i.i
  %setmode_ready.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %59, i32 20
  %63 = ptrtoint ptr %setmode_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %setmode_ready.i.i, align 8
  %wait_setmode.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %59, i32 19
  tail call void @__wake_up(ptr noundef %wait_setmode.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp76.i.i = icmp sgt i32 %64, 4
  br i1 %cmp76.i.i, label %do.end81.i.i, label %sw.bb74.i.i.sw.epilog.i.i_crit_edge

sw.bb74.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb74.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end81.i.i:                                     ; preds = %sw.bb74.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call86.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name113.i.i, i32 noundef %59) #18
  br label %sw.epilog.i.i

sw.bb90.i.i:                                      ; preds = %if.end64.i.i
  %shl.i.i = shl nuw i32 1, %59
  %65 = ptrtoint ptr %chn_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chn_ready.i.i, align 8
  %or.i.i = or i32 %66, %shl.i.i
  store i32 %or.i.i, ptr %chn_ready.i.i, align 8
  %and.i.i = and i32 %or.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i.i)
  %cmp92.not.i.i = icmp eq i32 %and.i.i, 15
  br i1 %cmp92.not.i.i, label %do.end98.i.i, label %sw.bb90.i.i.sw.epilog.i.i_crit_edge

sw.bb90.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb90.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end98.i.i:                                     ; preds = %sw.bb90.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call100.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #18
  %67 = ptrtoint ptr %fw_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fw_data.i.i, align 4
  %fw_state.i.i = getelementptr inbounds %struct.s2255_fw, ptr %68, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_state.i.i, i32 noundef 4) #14
  %69 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 2, ptr %fw_state.i.i, align 4
  %70 = ptrtoint ptr %fw_data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw_data.i.i, align 4
  %wait_fw.i.i = getelementptr inbounds %struct.s2255_fw, ptr %71, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_fw.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %sw.epilog.i.i

sw.bb102.i.i:                                     ; preds = %if.end64.i.i
  %72 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx103.i.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #14
  %vidstatus.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %59, i32 21
  %75 = ptrtoint ptr %vidstatus.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %vidstatus.i.i, align 4
  %vidstatus_ready.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %59, i32 23
  %76 = ptrtoint ptr %vidstatus_ready.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %vidstatus_ready.i.i, align 4
  %wait_vidstatus.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %59, i32 22
  tail call void @__wake_up(ptr noundef %wait_vidstatus.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %77 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %cmp105.i.i = icmp sgt i32 %77, 4
  br i1 %cmp105.i.i, label %do.end110.i.i, label %sw.bb102.i.i.sw.epilog.i.i_crit_edge

sw.bb102.i.i.sw.epilog.i.i_crit_edge:             ; preds = %sw.bb102.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end110.i.i:                                    ; preds = %sw.bb102.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx103.i.i, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #14
  %call116.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name113.i.i, i32 noundef %80, i32 noundef %59) #18
  br label %sw.epilog.i.i

do.end122.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call124.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #18
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end122.i.i, %do.end110.i.i, %sw.bb102.i.i.sw.epilog.i.i_crit_edge, %do.end98.i.i, %sw.bb90.i.i.sw.epilog.i.i_crit_edge, %do.end81.i.i, %sw.bb74.i.i.sw.epilog.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr i8, ptr %pdata.0380.i.i, i32 16385
  br label %for.inc.i.i

sw.default125.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr126.i.i = getelementptr i8, ptr %pdata.0380.i.i, i32 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.default125.i.i, %sw.epilog.i.i, %sw.bb58.i.i.for.inc.i.i_crit_edge
  %pdata.1.ph.i.i = phi ptr [ %incdec.ptr.i.i, %sw.epilog.i.i ], [ %add.ptr.i.i, %sw.bb58.i.i.for.inc.i.i_crit_edge ], [ %incdec.ptr126.i.i, %sw.default125.i.i ]
  %jj.1.ph.i.i = phi i32 [ %add59.i.i, %sw.epilog.i.i ], [ %add59.i.i, %sw.bb58.i.i.for.inc.i.i_crit_edge ], [ %jj.0381.i.i, %sw.default125.i.i ]
  %inc130.i.i = add i32 %jj.1.ph.i.i, 1
  %81 = ptrtoint ptr %cur_transfer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cur_transfer_size.i.i, align 4
  %sub.i.i = add i32 %82, -12
  %cmp9.i.i = icmp ult i32 %inc130.i.i, %sub.i.i
  br i1 %cmp9.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.body15.i_crit_edge

for.inc.i.i.do.body15.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

cleanup.i.i:                                      ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pkt_size.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %46, i32 14
  %83 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %50, ptr %pkt_size.i.i, align 8
  %arrayidx57.i.i = getelementptr i32, ptr %30, i32 4
  %84 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx57.i.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #14
  %jpg_size.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %46, i32 17
  %87 = ptrtoint ptr %jpg_size.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %jpg_size.i.i, align 4
  br label %if.end137.i.i

if.end137.i.i:                                    ; preds = %cleanup.i.i, %do.end3.i.i.if.end137.i.i_crit_edge
  %offset.4.i.i = phi i32 [ %add.i.i, %cleanup.i.i ], [ 0, %do.end3.i.i.if.end137.i.i_crit_edge ]
  %88 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cc.i, align 8
  %arrayidx140.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89
  %cur_frame141.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 11
  %90 = ptrtoint ptr %cur_frame141.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cur_frame141.i.i, align 4
  %buffer142.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 6
  %arrayidx144.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 6, i32 1, i32 %91
  %streaming.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 29, i32 28
  %92 = ptrtoint ptr %streaming.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load.i.i.i = load i16, ptr %streaming.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i16 %bf.load.i.i.i, 0
  %ulState149.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 6, i32 1, i32 %91, i32 1
  br i1 %tobool.i.i.i, label %if.end148.i.i, label %if.then146.i.i

if.then146.i.i:                                   ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %93 = ptrtoint ptr %ulState149.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %ulState149.i.i, align 4
  br label %do.body15.i

if.end148.i.i:                                    ; preds = %if.end137.i.i
  %94 = ptrtoint ptr %ulState149.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ulState149.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp150.i.i = icmp eq i32 %95, 0
  br i1 %cmp150.i.i, label %if.then152.i.i, label %if.end148.i.i.if.end154.i.i_crit_edge

if.end148.i.i.if.end154.i.i_crit_edge:            ; preds = %if.end148.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154.i.i

if.then152.i.i:                                   ; preds = %if.end148.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %96 = ptrtoint ptr %ulState149.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %ulState149.i.i, align 4
  %cur_size.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 6, i32 1, i32 %91, i32 3
  %97 = ptrtoint ptr %cur_size.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %cur_size.i.i, align 4
  br label %if.end154.i.i

if.end154.i.i:                                    ; preds = %if.then152.i.i, %if.end148.i.i.if.end154.i.i_crit_edge
  %transfer_buffer155.i.i = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 2
  %98 = ptrtoint ptr %transfer_buffer155.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %transfer_buffer155.i.i, align 4
  %add.ptr156.i.i = getelementptr i8, ptr %99, i32 %offset.4.i.i
  %lpvbits.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 6, i32 1, i32 %91, i32 2
  %100 = ptrtoint ptr %lpvbits.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lpvbits.i.i, align 4
  %cmp157.i.i = icmp eq ptr %101, null
  br i1 %cmp157.i.i, label %do.body160.i.i, label %if.end176.i.i

do.body160.i.i:                                   ; preds = %if.end154.i.i
  %102 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp161.i.i = icmp sgt i32 %102, 0
  br i1 %cmp161.i.i, label %do.end166.i.i, label %do.body160.i.i.if.end60_crit_edge

do.body160.i.i.if.end60_crit_edge:                ; preds = %do.body160.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end166.i.i:                                    ; preds = %do.body160.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name169.i.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %103 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cc.i, align 8
  %call172.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name169.i.i, ptr noundef %arrayidx144.i.i, ptr noundef %5, i32 noundef %104, i32 noundef %91) #18
  br label %do.body15.i

if.end176.i.i:                                    ; preds = %if.end154.i.i
  %cur_size178.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 6, i32 1, i32 %91, i32 3
  %105 = ptrtoint ptr %cur_size178.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cur_size178.i.i, align 4
  %cur_transfer_size180.i.i = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 1
  %107 = ptrtoint ptr %cur_transfer_size180.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cur_transfer_size180.i.i, align 4
  %sub181.i.i = sub i32 %108, %offset.4.i.i
  %pkt_size182.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 14
  %109 = ptrtoint ptr %pkt_size182.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pkt_size182.i.i, align 8
  %sub183.i.i = add i32 %110, -512
  %add185.i.i = add i32 %sub181.i.i, %106
  %req_image_size186.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 13
  %111 = ptrtoint ptr %req_image_size186.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %req_image_size186.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add185.i.i, i32 %112)
  %cmp187.i.i = icmp ult i32 %add185.i.i, %112
  br i1 %cmp187.i.i, label %if.then189.i.i, label %if.end176.i.i.if.end190.i.i_crit_edge

if.end176.i.i.if.end190.i.i_crit_edge:            ; preds = %if.end176.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end190.i.i

if.then189.i.i:                                   ; preds = %if.end176.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr179.i.i = getelementptr i8, ptr %101, i32 %106
  %113 = call ptr @memcpy(ptr %add.ptr179.i.i, ptr %add.ptr156.i.i, i32 %sub181.i.i)
  br label %if.end190.i.i

if.end190.i.i:                                    ; preds = %if.then189.i.i, %if.end176.i.i.if.end190.i.i_crit_edge
  %114 = ptrtoint ptr %cur_size178.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cur_size178.i.i, align 4
  %add192.i.i = add i32 %115, %sub181.i.i
  store i32 %add192.i.i, ptr %cur_size178.i.i, align 4
  %116 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %116)
  %cmp194.i.i = icmp sgt i32 %116, 3
  br i1 %cmp194.i.i, label %do.end199.i.i, label %if.end190.i.i.do.end208.i.i_crit_edge

if.end190.i.i.do.end208.i.i_crit_edge:            ; preds = %if.end190.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end208.i.i

do.end199.i.i:                                    ; preds = %if.end190.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name202.i.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %call205.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name202.i.i, i32 noundef %add192.i.i, i32 noundef %sub183.i.i) #18
  br label %do.end208.i.i

do.end208.i.i:                                    ; preds = %do.end199.i.i, %if.end190.i.i.do.end208.i.i_crit_edge
  %117 = ptrtoint ptr %cur_size178.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cur_size178.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %sub183.i.i)
  %cmp210.not.i.i = icmp ult i32 %118, %sub183.i.i
  br i1 %cmp210.not.i.i, label %do.end208.i.i.do.body30.i_crit_edge, label %do.body213.i.i

do.end208.i.i.do.body30.i_crit_edge:              ; preds = %do.end208.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body30.i

do.body213.i.i:                                   ; preds = %do.end208.i.i
  %119 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp214.i.i = icmp sgt i32 %119, 1
  br i1 %cmp214.i.i, label %do.end219.i.i, label %do.body213.i.i.do.end228.i.i_crit_edge

do.body213.i.i.do.end228.i.i_crit_edge:           ; preds = %do.body213.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end228.i.i

do.end219.i.i:                                    ; preds = %do.body213.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name222.i.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %120 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cc.i, align 8
  %call225.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name222.i.i, i32 noundef %121, i32 noundef %91) #18
  br label %do.end228.i.i

do.end228.i.i:                                    ; preds = %do.end219.i.i, %do.body213.i.i.do.end228.i.i_crit_edge
  %122 = ptrtoint ptr %cur_frame141.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cur_frame141.i.i, align 4
  %last_frame.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 12
  %124 = ptrtoint ptr %last_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %last_frame.i.i, align 8
  %inc231.i.i = add i32 %123, 1
  store i32 %inc231.i.i, ptr %cur_frame141.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc231.i.i)
  %cmp233.i.i = icmp eq i32 %inc231.i.i, 4
  br i1 %cmp233.i.i, label %do.end228.i.i.if.then239.i.i_crit_edge, label %lor.lhs.false.i.i

do.end228.i.i.if.then239.i.i_crit_edge:           ; preds = %do.end228.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then239.i.i

lor.lhs.false.i.i:                                ; preds = %do.end228.i.i
  %125 = ptrtoint ptr %buffer142.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %buffer142.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc231.i.i, i32 %126)
  %cmp237.i.i = icmp eq i32 %inc231.i.i, %126
  br i1 %cmp237.i.i, label %lor.lhs.false.i.i.if.then239.i.i_crit_edge, label %lor.lhs.false.i.i.if.end241.i.i_crit_edge

lor.lhs.false.i.i.if.end241.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end241.i.i

lor.lhs.false.i.i.if.then239.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then239.i.i

if.then239.i.i:                                   ; preds = %lor.lhs.false.i.i.if.then239.i.i_crit_edge, %do.end228.i.i.if.then239.i.i_crit_edge
  %127 = ptrtoint ptr %cur_frame141.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %cur_frame141.i.i, align 4
  br label %if.end241.i.i

if.end241.i.i:                                    ; preds = %if.then239.i.i, %lor.lhs.false.i.i.if.end241.i.i_crit_edge
  %128 = ptrtoint ptr %streaming.i.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load.i363.i.i = load i16, ptr %streaming.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i363.i.i)
  %tobool.i364.i.i = icmp slt i16 %bf.load.i363.i.i, 0
  br i1 %tobool.i364.i.i, label %if.then244.i.i, label %if.end241.i.i.if.end246.i.i_crit_edge

if.end241.i.i.if.end246.i.i_crit_edge:            ; preds = %if.end241.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end246.i.i

if.then244.i.i:                                   ; preds = %if.end241.i.i
  %jpg_size245.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 17
  %129 = ptrtoint ptr %jpg_size245.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %jpg_size245.i.i, align 4
  %v4l2_dev.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 1, i32 7
  %131 = ptrtoint ptr %v4l2_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %v4l2_dev.i.i.i, align 4
  %qlock.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 31
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i.i.i) #14
  %buf_list.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 5
  %133 = ptrtoint ptr %buf_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile ptr, ptr %buf_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %134, %buf_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body7.i.i.i, label %if.end20.i.i.i

do.body7.i.i.i:                                   ; preds = %if.then244.i.i
  %135 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp8.i.i.i = icmp sgt i32 %135, 0
  br i1 %cmp8.i.i.i, label %do.end13.i.i.i, label %do.body7.i.i.i.do.end18.i.i.i_crit_edge

do.body7.i.i.i.do.end18.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18.i.i.i

do.end13.i.i.i:                                   ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i.i = getelementptr i8, ptr %132, i32 60
  %call16.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %name.i.i.i) #18
  br label %do.end18.i.i.i

do.end18.i.i.i:                                   ; preds = %do.end13.i.i.i, %do.body7.i.i.i.do.end18.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i.i.i, i32 noundef %call3.i.i.i) #14
  br label %if.end246.i.i

if.end20.i.i.i:                                   ; preds = %if.then244.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %134, i32 -736
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %134) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end20.i.i.i.list_del.exit.i.i.i_crit_edge

if.end20.i.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %136 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %134, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %prev1.i.i.i.i.i.i, align 4
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %139, ptr %137, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.end20.i.i.i.list_del.exit.i.i.i_crit_edge
  %142 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 256 to ptr), ptr %134, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %143 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %call.i.i365.i.i = tail call i64 @ktime_get() #14
  %timestamp.i.i.i = getelementptr i8, ptr %134, i32 -712
  %144 = ptrtoint ptr %timestamp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %call.i.i365.i.i, ptr %timestamp.i.i.i, align 8
  %field.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 26
  %145 = ptrtoint ptr %field.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %field.i.i.i, align 8
  %field25.i.i.i = getelementptr i8, ptr %134, i32 -292
  %147 = ptrtoint ptr %field25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %field25.i.i.i, align 4
  %frame_count.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 16
  %148 = ptrtoint ptr %frame_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %frame_count.i.i.i, align 8
  %sequence.i.i.i = getelementptr i8, ptr %134, i32 -272
  %150 = ptrtoint ptr %sequence.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %sequence.i.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i.i.i, i32 noundef %call3.i.i.i) #14
  %call.i63.i.i.i = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr.i.i.i, i32 noundef 0) #14
  %151 = ptrtoint ptr %arrayidx140.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx140.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i63.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %list_del.exit.i.i.i.s2255_fillbuff.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

list_del.exit.i.i.i.s2255_fillbuff.exit.i.i.i_crit_edge: ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_fillbuff.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %list_del.exit.i.i.i
  %153 = ptrtoint ptr %last_frame.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %last_frame.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %154)
  %cmp.not.i.i.i.i = icmp eq i32 %154, -1
  br i1 %cmp.not.i.i.i.i, label %do.end21.i.i.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %lpvbits.i.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 6, i32 1, i32 %154, i32 2
  %155 = ptrtoint ptr %lpvbits.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %lpvbits.i.i.i.i, align 4
  %fmt.i.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 27
  %157 = ptrtoint ptr %fmt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fmt.i.i.i.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %161 = zext i32 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %160, label %do.end.i.i.i.i [
    i32 1448695129, label %if.then3.i.i.i.i.sw.bb.i.i.i.i_crit_edge
    i32 1498831189, label %if.then3.i.i.i.i.sw.bb.i.i.i.i_crit_edge138
    i32 1497715271, label %sw.bb6.i.i.i.i
    i32 1195724874, label %if.then3.i.i.i.i.sw.bb9.i.i.i.i_crit_edge
    i32 1196444237, label %if.then3.i.i.i.i.sw.bb9.i.i.i.i_crit_edge139
    i32 1345466932, label %sw.bb12.i.i.i.i
  ]

if.then3.i.i.i.i.sw.bb9.i.i.i.i_crit_edge139:     ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9.i.i.i.i

if.then3.i.i.i.i.sw.bb9.i.i.i.i_crit_edge:        ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9.i.i.i.i

if.then3.i.i.i.i.sw.bb.i.i.i.i_crit_edge138:      ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i.i

if.then3.i.i.i.i.sw.bb.i.i.i.i_crit_edge:         ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.then3.i.i.i.i.sw.bb.i.i.i.i_crit_edge, %if.then3.i.i.i.i.sw.bb.i.i.i.i_crit_edge138
  %width.i.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 24
  %162 = ptrtoint ptr %width.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %width.i.i.i.i, align 8
  %height.i.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 25
  %164 = ptrtoint ptr %height.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %height.i.i.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %165, %163
  %mul6.i.i.i.i.i = shl i32 %mul.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul6.i.i.i.i.i)
  %cmp81.not.i.i.i.i.i = icmp eq i32 %mul6.i.i.i.i.i, 0
  br i1 %cmp81.not.i.i.i.i.i, label %sw.bb.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i.i

sw.bb.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:        ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i.i.i

for.body.lr.ph.i.i.i.i.i:                         ; preds = %sw.bb.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %156, i32 %mul.i.i.i.i.i
  %div.i.i.i.i.i = sdiv i32 %mul.i.i.i.i.i, 2
  %add.ptr5.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %div.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %160)
  %cmp7.i.i.i.i.i = icmp eq i32 %160, 1448695129
  %pY.1.idx.i.i.i.i.i = zext i1 %cmp7.i.i.i.i.i to i32
  %not.cmp7.i.i.i.i.i = xor i1 %cmp7.i.i.i.i.i, true
  %pCr.1.idx.i.i.i.i.i = zext i1 %not.cmp7.i.i.i.i.i to i32
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i.i
  %i.085.i.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i.i ], [ %add49.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %pCr.084.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %for.body.lr.ph.i.i.i.i.i ], [ %pCr.2.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %pCb.083.i.i.i.i.i = phi ptr [ %add.ptr5.i.i.i.i.i, %for.body.lr.ph.i.i.i.i.i ], [ %pCb.2.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %pY.082.i.i.i.i.i = phi ptr [ %156, %for.body.lr.ph.i.i.i.i.i ], [ %pY.4.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %pY.1.i.i.i.i.i = getelementptr i8, ptr %pY.082.i.i.i.i.i, i32 %pY.1.idx.i.i.i.i.i
  %pCr.1.i.i.i.i.i = getelementptr i8, ptr %pCr.084.i.i.i.i.i, i32 %pCr.1.idx.i.i.i.i.i
  %cond.in.in.i.i.i.i.i = select i1 %cmp7.i.i.i.i.i, ptr %pY.082.i.i.i.i.i, ptr %pCr.084.i.i.i.i.i
  %166 = ptrtoint ptr %cond.in.in.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %cond.in74.i.i.i.i.i = load i8, ptr %cond.in.in.i.i.i.i.i, align 1
  %arrayidx.i.i.i.i.i = getelementptr i8, ptr %call.i63.i.i.i, i32 %i.085.i.i.i.i.i
  %167 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %cond.in74.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 1
  %pY.2.i.i.i.i.i = getelementptr i8, ptr %pY.1.i.i.i.i.i, i32 %pCr.1.idx.i.i.i.i.i
  %pCr.2.i.i.i.i.i = getelementptr i8, ptr %pCr.1.i.i.i.i.i, i32 %pY.1.idx.i.i.i.i.i
  %cond20.in.in.i.i.i.i.i = select i1 %cmp7.i.i.i.i.i, ptr %pCr.1.i.i.i.i.i, ptr %pY.1.i.i.i.i.i
  %168 = ptrtoint ptr %cond20.in.in.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %cond20.in75.i.i.i.i.i = load i8, ptr %cond20.in.in.i.i.i.i.i, align 1
  %add.i.i.i.i.i = or i32 %i.085.i.i.i.i.i, 1
  %arrayidx22.i.i.i.i.i = getelementptr i8, ptr %call.i63.i.i.i, i32 %add.i.i.i.i.i
  %169 = ptrtoint ptr %arrayidx22.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %cond20.in75.i.i.i.i.i, ptr %arrayidx22.i.i.i.i.i, align 1
  %pY.3.i.i.i.i.i = getelementptr i8, ptr %pY.2.i.i.i.i.i, i32 %pY.1.idx.i.i.i.i.i
  %pCb.1.i.i.i.i.i = getelementptr i8, ptr %pCb.083.i.i.i.i.i, i32 %pCr.1.idx.i.i.i.i.i
  %cond32.in.in.i.i.i.i.i = select i1 %cmp7.i.i.i.i.i, ptr %pY.2.i.i.i.i.i, ptr %pCb.083.i.i.i.i.i
  %170 = ptrtoint ptr %cond32.in.in.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %cond32.in76.i.i.i.i.i = load i8, ptr %cond32.in.in.i.i.i.i.i, align 1
  %add34.i.i.i.i.i = or i32 %i.085.i.i.i.i.i, 2
  %arrayidx35.i.i.i.i.i = getelementptr i8, ptr %call.i63.i.i.i, i32 %add34.i.i.i.i.i
  %171 = ptrtoint ptr %arrayidx35.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %cond32.in76.i.i.i.i.i, ptr %arrayidx35.i.i.i.i.i, align 1
  %pY.4.i.i.i.i.i = getelementptr i8, ptr %pY.3.i.i.i.i.i, i32 %pCr.1.idx.i.i.i.i.i
  %pCb.2.i.i.i.i.i = getelementptr i8, ptr %pCb.1.i.i.i.i.i, i32 %pY.1.idx.i.i.i.i.i
  %cond45.in.in.i.i.i.i.i = select i1 %cmp7.i.i.i.i.i, ptr %pCb.1.i.i.i.i.i, ptr %pY.3.i.i.i.i.i
  %172 = ptrtoint ptr %cond45.in.in.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %cond45.in77.i.i.i.i.i = load i8, ptr %cond45.in.in.i.i.i.i.i, align 1
  %add47.i.i.i.i.i = or i32 %i.085.i.i.i.i.i, 3
  %arrayidx48.i.i.i.i.i = getelementptr i8, ptr %call.i63.i.i.i, i32 %add47.i.i.i.i.i
  %173 = ptrtoint ptr %arrayidx48.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %cond45.in77.i.i.i.i.i, ptr %arrayidx48.i.i.i.i.i, align 1
  %add49.i.i.i.i.i = add i32 %i.085.i.i.i.i.i, 4
  %cmp.i.i.i.i.i = icmp ult i32 %add49.i.i.i.i.i, %mul6.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, label %for.body.i.i.i.i.i.sw.epilog.i.i.i.i_crit_edge

for.body.i.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i.i.i

for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i.i

sw.bb6.i.i.i.i:                                   ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %width7.i.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 24
  %174 = ptrtoint ptr %width7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %width7.i.i.i.i, align 8
  %height8.i.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 25
  %176 = ptrtoint ptr %height8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %height8.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %177, %175
  %178 = call ptr @memcpy(ptr %call.i63.i.i.i, ptr %156, i32 %mul.i.i.i.i)
  br label %sw.epilog.i.i.i.i

sw.bb9.i.i.i.i:                                   ; preds = %if.then3.i.i.i.i.sw.bb9.i.i.i.i_crit_edge, %if.then3.i.i.i.i.sw.bb9.i.i.i.i_crit_edge139
  %num_planes.i.i.i.i.i = getelementptr i8, ptr %134, i32 -720
  %179 = ptrtoint ptr %num_planes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_planes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp.not.i.i.i.i.i = icmp eq i32 %180, 0
  br i1 %cmp.not.i.i.i.i.i, label %sw.bb9.i.i.i.i.vb2_set_plane_payload.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

sw.bb9.i.i.i.i.vb2_set_plane_payload.exit.i.i.i.i_crit_edge: ; preds = %sw.bb9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_set_plane_payload.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %sw.bb9.i.i.i.i
  %length.i.i.i.i.i = getelementptr i8, ptr %134, i32 -648
  %181 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %length.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %130)
  %cmp1.i.i.i.i.i = icmp ult i32 %182, %130
  br i1 %cmp1.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge

if.then.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge:   ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs.i.i.i.i.i.if.then38.i.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.i, !prof !569

land.rhs.i.i.i.i.i.if.then38.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.160, i32 noundef 1163, i32 noundef 9, ptr noundef null) #14
  br label %if.then38.i.i.i.i.i

if.then38.i.i.i.i.i:                              ; preds = %if.then8.i.i.i.i.i, %land.rhs.i.i.i.i.i.if.then38.i.i.i.i.i_crit_edge
  %183 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %length.i.i.i.i.i, align 8
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %if.then38.i.i.i.i.i, %if.then.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge
  %size.addr.0.i.i.i.i.i = phi i32 [ %184, %if.then38.i.i.i.i.i ], [ %130, %if.then.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %bytesused.i.i.i.i.i = getelementptr i8, ptr %134, i32 -652
  %185 = ptrtoint ptr %bytesused.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %size.addr.0.i.i.i.i.i, ptr %bytesused.i.i.i.i.i, align 4
  br label %vb2_set_plane_payload.exit.i.i.i.i

vb2_set_plane_payload.exit.i.i.i.i:               ; preds = %if.end42.i.i.i.i.i, %sw.bb9.i.i.i.i.vb2_set_plane_payload.exit.i.i.i.i_crit_edge
  %186 = call ptr @memcpy(ptr %call.i63.i.i.i, ptr %156, i32 %130)
  br label %sw.epilog.i.i.i.i

sw.bb12.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %width13.i.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 24
  %187 = ptrtoint ptr %width13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %width13.i.i.i.i, align 8
  %height14.i.i.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 25
  %189 = ptrtoint ptr %height14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %height14.i.i.i.i, align 4
  %mul15.i.i.i.i = shl i32 %188, 1
  %mul16.i.i.i.i = mul i32 %mul15.i.i.i.i, %190
  %191 = call ptr @memcpy(ptr %call.i63.i.i.i, ptr %156, i32 %mul16.i.i.i.i)
  br label %sw.epilog.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call17.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #18
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %do.end.i.i.i.i, %sw.bb12.i.i.i.i, %vb2_set_plane_payload.exit.i.i.i.i, %sw.bb6.i.i.i.i, %for.body.i.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, %sw.bb.i.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %192 = ptrtoint ptr %last_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -1, ptr %last_frame.i.i, align 8
  %193 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %193)
  %cmp26.i.i.i.i = icmp sgt i32 %193, 1
  br i1 %cmp26.i.i.i.i, label %do.end30.i.i.i.i, label %sw.epilog.i.i.i.i.s2255_fillbuff.exit.i.i.i_crit_edge

sw.epilog.i.i.i.i.s2255_fillbuff.exit.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_fillbuff.exit.i.i.i

do.end21.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call23.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155) #18
  br label %s2255_fillbuff.exit.i.i.i

do.end30.i.i.i.i:                                 ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i.i.i = getelementptr inbounds %struct.s2255_dev, ptr %152, i32 0, i32 1, i32 4
  %call32.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %name.i.i.i.i, ptr noundef nonnull %call.i63.i.i.i, i32 noundef 0) #18
  br label %s2255_fillbuff.exit.i.i.i

s2255_fillbuff.exit.i.i.i:                        ; preds = %do.end30.i.i.i.i, %do.end21.i.i.i.i, %sw.epilog.i.i.i.i.s2255_fillbuff.exit.i.i.i_crit_edge, %list_del.exit.i.i.i.s2255_fillbuff.exit.i.i.i_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i.i.i, i32 noundef 5) #14
  %194 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %194)
  %cmp31.i.i.i = icmp sgt i32 %194, 1
  br i1 %cmp31.i.i.i, label %do.end36.i.i.i, label %s2255_fillbuff.exit.i.i.i.if.end246.i.i_crit_edge

s2255_fillbuff.exit.i.i.i.if.end246.i.i_crit_edge: ; preds = %s2255_fillbuff.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end246.i.i

do.end36.i.i.i:                                   ; preds = %s2255_fillbuff.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name39.i.i.i = getelementptr i8, ptr %132, i32 60
  %call41.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name39.i.i.i, ptr noundef nonnull @.str.148, ptr noundef %add.ptr.i.i.i) #18
  br label %if.end246.i.i

if.end246.i.i:                                    ; preds = %do.end36.i.i.i, %s2255_fillbuff.exit.i.i.i.if.end246.i.i_crit_edge, %do.end18.i.i.i, %if.end241.i.i.if.end246.i.i_crit_edge
  %frame_count.i.i = getelementptr [4 x %struct.s2255_vc], ptr %5, i32 0, i32 %89, i32 16
  %195 = ptrtoint ptr %frame_count.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %frame_count.i.i, align 8
  %inc247.i.i = add i32 %196, 1
  store i32 %inc247.i.i, ptr %frame_count.i.i, align 8
  %197 = ptrtoint ptr %ulState149.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %ulState149.i.i, align 4
  %198 = ptrtoint ptr %cur_size178.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %cur_size178.i.i, align 4
  br label %do.body30.i

do.body15.i:                                      ; preds = %do.end166.i.i, %if.then146.i.i, %for.inc.i.i.do.body15.i_crit_edge, %if.then55.i.i, %do.end37.i.i, %if.then7.i.i.do.body15.i_crit_edge
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp16.i = icmp sgt i32 %.pr.i, 3
  br i1 %cmp16.i, label %do.end20.i, label %do.body15.i.if.end60_crit_edge

do.body15.i.if.end60_crit_edge:                   ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end20.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #16
  %name23.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name23.i) #18
  br label %do.body30.i

do.body30.i:                                      ; preds = %do.end20.i, %if.end246.i.i, %do.end208.i.i.do.body30.i_crit_edge
  %.pr53.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %.pr53.pr.i)
  %cmp31.i = icmp sgt i32 %.pr53.pr.i, 49
  br i1 %cmp31.i, label %do.end35.i, label %do.body30.i.if.end60_crit_edge

do.body30.i.if.end60_crit_edge:                   ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end35.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #16
  %name38.i = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name38.i) #18
  br label %if.end60

if.else:                                          ; preds = %if.end41
  %err_count44 = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 6
  %199 = ptrtoint ptr %err_count44 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %err_count44, align 4
  %inc45 = add i32 %200, 1
  store i32 %inc45, ptr %err_count44, align 4
  %201 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp47 = icmp sgt i32 %201, 0
  br i1 %cmp47, label %do.end51, label %if.else.if.end60_crit_edge

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end51:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %name54 = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name54, ptr noundef nonnull @.str.89, i32 noundef %9) #18
  br label %if.end60

if.end60:                                         ; preds = %do.end51, %if.else.if.end60_crit_edge, %do.end35.i, %do.body30.i.if.end60_crit_edge, %do.body15.i.if.end60_crit_edge, %do.body160.i.i.if.end60_crit_edge, %do.body31.i.i.if.end60_crit_edge, %if.then5.i
  %udev = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 6
  %202 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %udev, align 8
  %read_endpoint = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 8
  %204 = ptrtoint ptr %read_endpoint to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %read_endpoint, align 8
  %conv = zext i8 %205 to i32
  %206 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %203, align 8
  %shl.i = shl i32 %207, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or62 = or i32 %or.i, -1073741696
  %stream_urb = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 4
  %208 = ptrtoint ptr %stream_urb to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %stream_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 2
  %210 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %transfer_buffer, align 4
  %cur_transfer_size = getelementptr inbounds %struct.s2255_pipeinfo, ptr %1, i32 0, i32 1
  %212 = ptrtoint ptr %cur_transfer_size to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %cur_transfer_size, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %209, i32 0, i32 8
  %214 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %203, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %209, i32 0, i32 10
  %215 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %or62, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %209, i32 0, i32 14
  %216 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %211, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %209, i32 0, i32 19
  %217 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %213, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %209, i32 0, i32 28
  %218 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @read_pipe_completion, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %209, i32 0, i32 27
  %219 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %1, ptr %context4.i, align 4
  %220 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp65.not = icmp eq i32 %221, 0
  br i1 %cmp65.not, label %do.body78, label %if.then67

if.then67:                                        ; preds = %if.end60
  %222 = ptrtoint ptr %stream_urb to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %stream_urb, align 4
  %call69 = tail call i32 @usb_submit_urb(ptr noundef %223, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool.not = icmp eq i32 %call69, 0
  br i1 %tobool.not, label %if.then67.cleanup_crit_edge, label %do.end73

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end73:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  %224 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %udev, align 8
  %dev75 = getelementptr inbounds %struct.usb_device, ptr %225, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75, ptr noundef nonnull @.str.102) #18
  br label %cleanup

do.body78:                                        ; preds = %if.end60
  %226 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %226)
  %cmp79 = icmp sgt i32 %226, 1
  br i1 %cmp79, label %do.end84, label %do.body78.cleanup_crit_edge

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #16
  %name87 = getelementptr inbounds %struct.s2255_dev, ptr %5, i32 0, i32 1, i32 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name87, ptr noundef nonnull @.str.89) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %do.body78.cleanup_crit_edge, %do.end73, %if.then67.cleanup_crit_edge, %do.end32, %do.body27.cleanup_crit_edge, %do.end23, %do.end8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vb2_set_plane_payload(ptr nocapture noundef %vb, i32 noundef %size) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %num_planes = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end45_crit_edge, label %if.then

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp1 = icmp ult i32 %3, %size
  br i1 %cmp1, label %land.rhs, label %if.then.if.end42_crit_edge

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.rhs:                                         ; preds = %if.then
  %.b1 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.then38_crit_edge, label %if.then8, !prof !569

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.160, i32 noundef 1163, i32 noundef 9, ptr noundef null) #14
  br label %if.then38

if.then38:                                        ; preds = %if.then8, %land.rhs.if.then38_crit_edge
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.then.if.end42_crit_edge
  %size.addr.0 = phi i32 [ %5, %if.then38 ], [ %size, %if.then.if.end42_crit_edge ]
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %6 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %size.addr.0, ptr %bytesused, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %entry.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s2255_reset_dsppower(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %udev10.i = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %udev10.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev10.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i1.i = shl i32 %3, 8
  %or13.i = or i32 %shl.i1.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or13.i, i8 noundef zeroext 64, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull inttoptr (i32 16 to ptr), i16 noundef zeroext 0, i32 noundef 5000) #14
  tail call void @kfree(ptr noundef nonnull inttoptr (i32 16 to ptr)) #14
  tail call void @msleep(i32 noundef 50) #14
  %4 = ptrtoint ptr %udev10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev10.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i1.i6 = shl i32 %7, 8
  %or13.i7 = or i32 %shl.i1.i6, -2147483648
  %call15.i8 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or13.i7, i8 noundef zeroext 80, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull inttoptr (i32 16 to ptr), i16 noundef zeroext 0, i32 noundef 5000) #14
  tail call void @kfree(ptr noundef nonnull inttoptr (i32 16 to ptr)) #14
  tail call void @msleep(i32 noundef 600) #14
  %8 = ptrtoint ptr %udev10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev10.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i1.i10 = shl i32 %11, 8
  %or13.i11 = or i32 %shl.i1.i10, -2147483648
  %call15.i12 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or13.i11, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull inttoptr (i32 16 to ptr), i16 noundef zeroext 0, i32 noundef 5000) #14
  tail call void @kfree(ptr noundef nonnull inttoptr (i32 16 to ptr)) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s2255_fwchunk_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.161, i32 noundef %5) #18
  %fw_state = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_state, i32 noundef 4) #14
  %6 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 3, ptr %fw_state, align 4
  %wait_fw = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_fw, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_urb = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fw_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_urb, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %do.end6, label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.164) #18
  %fw_state8 = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 3
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_state8, i32 noundef 4) #14
  %9 = ptrtoint ptr %fw_state8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 3, ptr %fw_state8, align 4
  %wait_fw9 = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_fw9, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %fw_size = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp11 = icmp slt i32 %11, %13
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %add = add i32 %11, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp15 = icmp sgt i32 %add, %13
  %rem = srem i32 %13, 512
  %spec.select = select i1 %cmp15, i32 %rem, i32 512
  br i1 %cmp15, label %if.then18, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %pfw_data = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %pfw_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pfw_data, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 512)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then12.if.end19_crit_edge
  %pfw_data20 = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %pfw_data20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pfw_data20, align 4
  %fw = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw, align 4
  %data21 = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data21, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %24
  %25 = call ptr @memcpy(ptr %18, ptr %add.ptr, i32 %spec.select)
  %26 = ptrtoint ptr %fw_urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw_urb, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 8
  %shl.i = shl i32 %29, 8
  %or = or i32 %shl.i, -1073676288
  %30 = load ptr, ptr %pfw_data20, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 8
  %31 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 10
  %32 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 19
  %34 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 512, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 28
  %35 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @s2255_fwchunk_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 27
  %36 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %context4.i, align 4
  %37 = load ptr, ptr %fw_urb, align 4
  %call26 = tail call i32 @usb_submit_urb(ptr noundef %37, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end35

do.end31:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %dev32 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.167) #18
  %fw_state33 = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 3
  %call.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_state33, i32 noundef 4) #14
  %38 = ptrtoint ptr %fw_state33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 3, ptr %fw_state33, align 4
  %wait_fw34 = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_fw34, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

if.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  %add37 = add i32 %40, %spec.select
  store i32 %add37, ptr %1, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %fw_state38 = getelementptr inbounds %struct.s2255_fw, ptr %1, i32 0, i32 3
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw_state38, i32 noundef 4) #14
  %41 = ptrtoint ptr %fw_state38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %fw_state38, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end35, %do.end31, %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2255_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %mode = alloca %struct.s2255_mode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1360
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mode) #14
  %mode1 = getelementptr i8, ptr %1, i32 268
  %2 = call ptr @memcpy(ptr %mode, ptr %mode1, i32 44)
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.300)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb2
    i32 9963779, label %sw.bb4
    i32 9963778, label %sw.bb6
    i32 9967920, label %sw.bb8
    i32 10291459, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %bright = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 4
  %8 = ptrtoint ptr %bright to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bright, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val3, align 4
  %contrast = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 5
  %11 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %contrast, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val5, align 4
  %hue = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 7
  %14 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hue, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val7, align 4
  %saturation = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 6
  %17 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %saturation, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %color = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 2
  %18 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %color, align 4
  %and = and i32 %19, -983041
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  %shl = select i1 %tobool.not, i32 65536, i32 0
  %or = or i32 %shl, %and
  %22 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %color, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val12, align 4
  %jpegqual = getelementptr i8, ptr %1, i32 320
  %25 = ptrtoint ptr %jpegqual to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %jpegqual, align 8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %restart = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 10
  %26 = ptrtoint ptr %restart to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %restart, align 4
  call fastcc void @s2255_set_mode(ptr noundef %add.ptr, ptr noundef nonnull %mode)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb11 ], [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mode) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s2255_set_mode(ptr noundef %vc, ptr noundef %mode) unnamed_addr #2 align 64 {
entry:
  %done.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %cmdbuf = getelementptr i8, ptr %1, i32 436
  %2 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmdbuf, align 4
  %cmdlock = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_lock_nested(ptr noundef %cmdlock, i32 noundef 0) #14
  %idx = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 28
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 8
  %arrayidx = getelementptr [4 x i32], ptr @G_chnmap, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp sgt i32 %8, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr i8, ptr %1, i32 60
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %name, ptr noundef nonnull @.str.188, i32 noundef %5) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %color = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 2
  %9 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %color, align 4
  %and = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp7 = icmp eq i32 %and, 5
  br i1 %cmp7, label %if.then8, label %do.end6.if.end16_crit_edge

do.end6.if.end16_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then8:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  %and10 = and i32 %10, -65536
  %or = or i32 %and10, 5
  %11 = ptrtoint ptr %color to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %color, align 4
  %jpegqual = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 9
  %12 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jpegqual, align 8
  %shl = shl i32 %13, 8
  %or15 = or i32 %shl, %or
  store i32 %or15, ptr %color, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %do.end6.if.end16_crit_edge
  %mode17 = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %mode17, ptr %mode, i32 44)
  %cmp.i = icmp eq ptr %mode, null
  br i1 %cmp.i, label %if.end16.get_transfer_size.exit_crit_edge, label %if.end.i

if.end16.get_transfer_size.exit_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_transfer_size.exit

if.end.i:                                         ; preds = %if.end16
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.301)
  switch i32 %16, label %if.end.i.if.end15.i_crit_edge [
    i32 1, label %if.then2.i
    i32 2, label %if.then7.i
  ]

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.then2.i:                                       ; preds = %if.end.i
  %scale.i = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 1
  %18 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scale.i, align 4
  %switch.tableidx = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 4
  br i1 %20, label %switch.lookup, label %if.then2.i.if.end15.i_crit_edge

if.then2.i.if.end15.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.end.i
  %scale8.i = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 1
  %21 = ptrtoint ptr %scale8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scale8.i, align 4
  %switch.tableidx20 = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx20)
  %23 = icmp ult i32 %switch.tableidx20, 4
  br i1 %23, label %switch.lookup19, label %if.then7.i.if.end15.i_crit_edge

if.then7.i.if.end15.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

switch.lookup:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.s2255_set_mode, i32 0, i32 %switch.tableidx
  %switch.gep17 = getelementptr inbounds [4 x i32], ptr @switch.table.s2255_set_mode.295, i32 0, i32 %switch.tableidx
  br label %if.end15.i.sink.split

switch.lookup19:                                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep21 = getelementptr inbounds [4 x i32], ptr @switch.table.s2255_set_mode.296, i32 0, i32 %switch.tableidx20
  %switch.gep23 = getelementptr inbounds [4 x i32], ptr @switch.table.s2255_set_mode.297, i32 0, i32 %switch.tableidx20
  br label %if.end15.i.sink.split

if.end15.i.sink.split:                            ; preds = %switch.lookup19, %switch.lookup
  %switch.gep23.sink = phi ptr [ %switch.gep23, %switch.lookup19 ], [ %switch.gep17, %switch.lookup ]
  %linesPerFrame.0.i.ph.in = phi ptr [ %switch.gep21, %switch.lookup19 ], [ %switch.gep, %switch.lookup ]
  %24 = ptrtoint ptr %linesPerFrame.0.i.ph.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %linesPerFrame.0.i.ph = load i32, ptr %linesPerFrame.0.i.ph.in, align 4
  %25 = ptrtoint ptr %switch.gep23.sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load24 = load i32, ptr %switch.gep23.sink, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end15.i.sink.split, %if.then7.i.if.end15.i_crit_edge, %if.then2.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %linesPerFrame.0.i = phi i32 [ 640, %if.then2.i.if.end15.i_crit_edge ], [ 640, %if.then7.i.if.end15.i_crit_edge ], [ 640, %if.end.i.if.end15.i_crit_edge ], [ %linesPerFrame.0.i.ph, %if.end15.i.sink.split ]
  %pixelsPerLine.0.i = phi i32 [ 240, %if.then2.i.if.end15.i_crit_edge ], [ 240, %if.then7.i.if.end15.i_crit_edge ], [ 240, %if.end.i.if.end15.i_crit_edge ], [ %switch.load24, %if.end15.i.sink.split ]
  %mul.i = mul nuw nsw i32 %pixelsPerLine.0.i, %linesPerFrame.0.i
  %26 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %color, align 4
  %and.i = and i32 %27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp16.not.i = icmp ne i32 %and.i, 4
  %mul18.i = zext i1 %cmp16.not.i to i32
  %spec.select.i = shl nuw nsw i32 %mul.i, %mul18.i
  %add.i = add nuw nsw i32 %spec.select.i, 512
  %and20.i = and i32 %add.i, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool.not.i = icmp eq i32 %and20.i, 0
  %28 = add nuw nsw i32 %spec.select.i, 16896
  %add23.i = and i32 %28, 4177920
  %usbInSize.0.i = select i1 %tobool.not.i, i32 %add.i, i32 %add23.i
  br label %get_transfer_size.exit

get_transfer_size.exit:                           ; preds = %if.end15.i, %if.end16.get_transfer_size.exit_crit_edge
  %retval.0.i = phi i32 [ %usbInSize.0.i, %if.end15.i ], [ 0, %if.end16.get_transfer_size.exit_crit_edge ]
  %req_image_size = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 13
  %29 = ptrtoint ptr %req_image_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i, ptr %req_image_size, align 4
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp20 = icmp sgt i32 %30, 0
  br i1 %cmp20, label %do.end24, label %get_transfer_size.exit.do.end33_crit_edge

get_transfer_size.exit.do.end33_crit_edge:        ; preds = %get_transfer_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33

do.end24:                                         ; preds = %get_transfer_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name27 = getelementptr i8, ptr %1, i32 60
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %name27, ptr noundef nonnull @.str.188, i32 noundef %retval.0.i) #18
  br label %do.end33

do.end33:                                         ; preds = %do.end24, %get_transfer_size.exit.do.end33_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -557820638, ptr %3, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %7)
  %arrayidx35 = getelementptr i32, ptr %3, i32 1
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr i32, ptr %3, i32 2
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 273688002, ptr %arrayidx36, align 4
  %35 = ptrtoint ptr %mode17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode17, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %arrayidx40 = getelementptr i32, ptr %3, i32 3
  %38 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx40, align 4
  %arrayidx39.1 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx39.1, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %arrayidx40.1 = getelementptr i32, ptr %3, i32 4
  %42 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx40.1, align 4
  %arrayidx39.2 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx39.2, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %arrayidx40.2 = getelementptr i32, ptr %3, i32 5
  %46 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx40.2, align 4
  %arrayidx39.3 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 3
  %47 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx39.3, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %arrayidx40.3 = getelementptr i32, ptr %3, i32 6
  %50 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx40.3, align 4
  %arrayidx39.4 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 4
  %51 = ptrtoint ptr %arrayidx39.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx39.4, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %arrayidx40.4 = getelementptr i32, ptr %3, i32 7
  %54 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx40.4, align 4
  %arrayidx39.5 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 5
  %55 = ptrtoint ptr %arrayidx39.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx39.5, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %arrayidx40.5 = getelementptr i32, ptr %3, i32 8
  %58 = ptrtoint ptr %arrayidx40.5 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx40.5, align 4
  %arrayidx39.6 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 6
  %59 = ptrtoint ptr %arrayidx39.6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx39.6, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %arrayidx40.6 = getelementptr i32, ptr %3, i32 9
  %62 = ptrtoint ptr %arrayidx40.6 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx40.6, align 4
  %arrayidx39.7 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 7
  %63 = ptrtoint ptr %arrayidx39.7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx39.7, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %arrayidx40.7 = getelementptr i32, ptr %3, i32 10
  %66 = ptrtoint ptr %arrayidx40.7 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx40.7, align 4
  %arrayidx39.8 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 8
  %67 = ptrtoint ptr %arrayidx39.8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx39.8, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %arrayidx40.8 = getelementptr i32, ptr %3, i32 11
  %70 = ptrtoint ptr %arrayidx40.8 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx40.8, align 4
  %arrayidx39.9 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 9
  %71 = ptrtoint ptr %arrayidx39.9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx39.9, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %arrayidx40.9 = getelementptr i32, ptr %3, i32 12
  %74 = ptrtoint ptr %arrayidx40.9 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx40.9, align 4
  %arrayidx39.10 = getelementptr %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 10
  %75 = ptrtoint ptr %arrayidx39.10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx39.10, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %arrayidx40.10 = getelementptr i32, ptr %3, i32 13
  %78 = ptrtoint ptr %arrayidx40.10 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx40.10, align 4
  %setmode_ready = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 20
  %79 = ptrtoint ptr %setmode_ready to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %setmode_ready, align 8
  %udev = getelementptr i8, ptr %1, i32 320
  %80 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %udev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done.i) #14
  %82 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %done.i, align 4, !annotation !570
  %tobool.not.i1 = icmp eq ptr %81, null
  br i1 %tobool.not.i1, label %do.end33.s2255_write_config.exit_crit_edge, label %if.then.i

do.end33.s2255_write_config.exit_crit_edge:       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_write_config.exit

if.then.i:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %81, align 8
  %shl.i.i = shl i32 %84, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %call2.i = call i32 @usb_bulk_msg(ptr noundef nonnull %81, i32 noundef %or.i, ptr noundef %3, i32 noundef 512, ptr noundef nonnull %done.i, i32 noundef 500) #14
  br label %s2255_write_config.exit

s2255_write_config.exit:                          ; preds = %if.then.i, %do.end33.s2255_write_config.exit_crit_edge
  %retval1.0.i = phi i32 [ %call2.i, %if.then.i ], [ -1, %do.end33.s2255_write_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i) #14
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not = icmp eq i32 %85, 0
  br i1 %tobool.not, label %s2255_write_config.exit.if.end43_crit_edge, label %if.then42

s2255_write_config.exit.if.end43_crit_edge:       ; preds = %s2255_write_config.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then42:                                        ; preds = %s2255_write_config.exit
  call void @__sanitizer_cov_trace_pc() #16
  %86 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %udev, align 8
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %87, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.198) #18
  %88 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mode, align 4
  %scale.i3 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 1
  %90 = ptrtoint ptr %scale.i3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %scale.i3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.201, i32 noundef %89, i32 noundef %91) #18
  %fdec.i = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 3
  %92 = ptrtoint ptr %fdec.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fdec.i, align 4
  %94 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %color, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.204, i32 noundef %93, i32 noundef %95) #18
  %bright.i = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 4
  %96 = ptrtoint ptr %bright.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bright.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.207, i32 noundef %97) #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.198) #18
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %s2255_write_config.exit.if.end43_crit_edge
  %restart = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 10
  %98 = ptrtoint ptr %restart to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %restart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool44.not = icmp eq i32 %99, 0
  br i1 %tobool44.not, label %if.end43.if.end111_crit_edge, label %if.then45

if.end43.if.end111_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then45:                                        ; preds = %if.end43
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1018) #14
  %100 = ptrtoint ptr %setmode_ready to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %setmode_ready, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp54.not.not = icmp eq i32 %101, 0
  br i1 %cmp54.not.not, label %if.then63, label %if.then45.if.end91_crit_edge

if.then45.if.end91_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.then63:                                        ; preds = %if.then45
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %102 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %wait_setmode = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 19
  %call6713 = call i32 @prepare_to_wait_event(ptr noundef %wait_setmode, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %103 = ptrtoint ptr %setmode_ready to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %setmode_ready, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp70.not14.not = icmp eq i32 %104, 0
  br i1 %cmp70.not14.not, label %if.then63.cleanup_crit_edge, label %if.then63.for.end88_crit_edge

if.then63.for.end88_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end88

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then63.cleanup_crit_edge
  %__ret64.116 = phi i32 [ %__ret64.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then63.cleanup_crit_edge ]
  %call87 = call i32 @schedule_timeout(i32 noundef %__ret64.116) #14
  %call67 = call i32 @prepare_to_wait_event(ptr noundef %wait_setmode, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %105 = ptrtoint ptr %setmode_ready to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %setmode_ready, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp70.not = icmp eq i32 %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool74.not = icmp eq i32 %call87, 0
  %spec.store.select135 = select i1 %tobool74.not, i32 1, i32 %call87
  %__ret64.1 = select i1 %cmp70.not, i32 %call87, i32 %spec.store.select135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret64.1)
  %tobool80.not = icmp eq i32 %__ret64.1, 0
  %not.cmp70.not = xor i1 %cmp70.not, true
  %107 = select i1 %not.cmp70.not, i1 true, i1 %tobool80.not
  br i1 %107, label %cleanup.for.end88_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end88_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end88

for.end88:                                        ; preds = %cleanup.for.end88_crit_edge, %if.then63.for.end88_crit_edge
  call void @finish_wait(ptr noundef %wait_setmode, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  %108 = ptrtoint ptr %setmode_ready to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr = load i32, ptr %setmode_ready, align 8
  br label %if.end91

if.end91:                                         ; preds = %for.end88, %if.then45.if.end91_crit_edge
  %109 = phi i32 [ %.pr, %for.end88 ], [ %101, %if.then45.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp94.not = icmp eq i32 %109, 1
  br i1 %cmp94.not, label %if.end91.if.end111_crit_edge, label %do.body96

if.end91.if.end111_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

do.body96:                                        ; preds = %if.end91
  %110 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp97 = icmp sgt i32 %110, -1
  br i1 %cmp97, label %do.end101, label %if.end111.thread

if.end111.thread:                                 ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #16
  %restart11310 = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 10
  %111 = ptrtoint ptr %restart11310 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %restart11310, align 4
  br label %do.end128

do.end101:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #16
  %name104 = getelementptr i8, ptr %1, i32 60
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef %name104) #18
  br label %if.end111

if.end111:                                        ; preds = %do.end101, %if.end91.if.end111_crit_edge, %if.end43.if.end111_crit_edge
  %res.0.ph = phi i32 [ -14, %do.end101 ], [ %retval1.0.i, %if.end43.if.end111_crit_edge ], [ %retval1.0.i, %if.end91.if.end111_crit_edge ]
  %.pr8 = load i32, ptr @debug, align 4
  %restart113 = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 7, i32 10
  %112 = ptrtoint ptr %restart113 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %restart113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr8)
  %cmp115 = icmp sgt i32 %.pr8, 0
  br i1 %cmp115, label %do.end119, label %if.end111.do.end128_crit_edge

if.end111.do.end128_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end128

do.end119:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  %name122 = getelementptr i8, ptr %1, i32 60
  %113 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %idx, align 8
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %name122, ptr noundef nonnull @.str.188, i32 noundef %114, i32 noundef %res.0.ph) #18
  br label %do.end128

do.end128:                                        ; preds = %do.end119, %if.end111.do.end128_crit_edge, %if.end111.thread
  call void @mutex_unlock(ptr noundef %cmdlock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbuffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %nplanes, align 4
  %width = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %mul = mul i32 %9, %7
  %fmt = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fmt, align 4
  %depth = getelementptr inbounds %struct.s2255_fmt, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %depth, align 4
  %shr = ashr i32 %13, 3
  %mul1 = mul i32 %mul, %shr
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul1, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %width = getelementptr inbounds %struct.s2255_vc, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.s2255_vc, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp sgt i32 %8, 3
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %10, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef %name, ptr noundef nonnull @.str.213) #18
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %fmt = getelementptr inbounds %struct.s2255_vc, ptr %3, i32 0, i32 27
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt, align 4
  %cmp9 = icmp eq ptr %12, null
  br i1 %cmp9, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %std.i = getelementptr inbounds %struct.s2255_vc, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %std.i, align 8
  %and.i = and i64 %14, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 352, i32 320
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cond.i)
  %cmp13 = icmp slt i32 %5, %cond.i
  %cond.i87 = select i1 %tobool.not.i, i32 704, i32 640
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cond.i87)
  %cmp15 = icmp sgt i32 %5, %cond.i87
  %or.cond = or i1 %cmp13, %cmp15
  %cond.i91 = select i1 %tobool.not.i, i32 288, i32 240
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond.i91)
  %cmp18 = icmp slt i32 %7, %cond.i91
  %or.cond96 = select i1 %or.cond, i1 true, i1 %cmp18
  %cond.i95 = select i1 %tobool.not.i, i32 576, i32 480
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond.i95)
  %cmp21 = icmp sgt i32 %7, %cond.i95
  %or.cond97 = select i1 %or.cond96, i1 true, i1 %cmp21
  br i1 %or.cond97, label %do.body23, label %if.end38

do.body23:                                        ; preds = %if.end11
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp24 = icmp sgt i32 %15, 3
  br i1 %cmp24, label %do.end28, label %do.body23.cleanup_crit_edge

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end28:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %name32 = getelementptr inbounds %struct.s2255_dev, ptr %17, i32 0, i32 1, i32 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef %name32) #18
  br label %cleanup

if.end38:                                         ; preds = %if.end11
  %mul = mul i32 %7, %5
  %depth = getelementptr inbounds %struct.s2255_fmt, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %depth, align 4
  %shr = ashr i32 %19, 3
  %mul40 = mul i32 %mul, %shr
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %20 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %if.end38.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end38.vb2_plane_size.exit_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end38.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.then.i ], [ 0, %if.end38.vb2_plane_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %mul40)
  %cmp42 = icmp ult i32 %retval.0.i, %mul40
  br i1 %cmp42, label %do.body44, label %if.end59

do.body44:                                        ; preds = %vb2_plane_size.exit
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp45 = icmp sgt i32 %24, 3
  br i1 %cmp45, label %do.end49, label %do.body44.cleanup_crit_edge

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %name53 = getelementptr inbounds %struct.s2255_dev, ptr %26, i32 0, i32 1, i32 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef %name53) #18
  br label %cleanup

if.end59:                                         ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @vb2_set_plane_payload(ptr noundef %vb, i32 noundef %mul40)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.end49, %do.body44.cleanup_crit_edge, %do.end28, %do.body23.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -22, %do.end8.cleanup_crit_edge ], [ -22, %do.end28 ], [ -22, %do.body23.cleanup_crit_edge ], [ -22, %do.end49 ], [ -22, %do.body44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  %done.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %last_frame = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %last_frame to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %last_frame, align 8
  %bad_payload = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %bad_payload to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bad_payload, align 4
  %cur_frame = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %cur_frame to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_frame, align 4
  %frame_count = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %frame_count, align 8
  %ulState = getelementptr %struct.s2255_vc, ptr %1, i32 0, i32 6, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %ulState to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ulState, align 4
  %cur_size = getelementptr %struct.s2255_vc, ptr %1, i32 0, i32 6, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %cur_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cur_size, align 4
  %ulState.1 = getelementptr %struct.s2255_vc, ptr %1, i32 0, i32 6, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %ulState.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ulState.1, align 4
  %cur_size.1 = getelementptr %struct.s2255_vc, ptr %1, i32 0, i32 6, i32 1, i32 1, i32 3
  %9 = ptrtoint ptr %cur_size.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cur_size.1, align 4
  %ulState.2 = getelementptr %struct.s2255_vc, ptr %1, i32 0, i32 6, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %ulState.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ulState.2, align 4
  %cur_size.2 = getelementptr %struct.s2255_vc, ptr %1, i32 0, i32 6, i32 1, i32 2, i32 3
  %11 = ptrtoint ptr %cur_size.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cur_size.2, align 4
  %ulState.3 = getelementptr %struct.s2255_vc, ptr %1, i32 0, i32 6, i32 1, i32 3, i32 1
  %12 = ptrtoint ptr %ulState.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ulState.3, align 4
  %cur_size.3 = getelementptr %struct.s2255_vc, ptr %1, i32 0, i32 6, i32 1, i32 3, i32 3
  %13 = ptrtoint ptr %cur_size.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cur_size.3, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v4l2_dev.i, align 4
  %cmdbuf.i = getelementptr i8, ptr %15, i32 436
  %16 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmdbuf.i, align 4
  %cmdlock.i = getelementptr i8, ptr %15, i32 228
  tail call void @mutex_lock_nested(ptr noundef %cmdlock.i, i32 noundef 0) #14
  %idx.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 28
  %18 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx.i, align 8
  %arrayidx.i = getelementptr [4 x i32], ptr @G_chnmap, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %last_frame to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %last_frame, align 8
  %23 = ptrtoint ptr %bad_payload to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bad_payload, align 4
  %24 = ptrtoint ptr %cur_frame to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cur_frame, align 4
  %25 = ptrtoint ptr %ulState to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ulState, align 4
  %26 = ptrtoint ptr %cur_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cur_size, align 4
  %27 = ptrtoint ptr %ulState.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ulState.1, align 4
  %28 = ptrtoint ptr %cur_size.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cur_size.1, align 4
  %29 = ptrtoint ptr %ulState.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ulState.2, align 4
  %30 = ptrtoint ptr %cur_size.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cur_size.2, align 4
  %31 = ptrtoint ptr %ulState.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ulState.3, align 4
  %32 = ptrtoint ptr %cur_size.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %cur_size.3, align 4
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -557820638, ptr %17, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %arrayidx7.i = getelementptr i32, ptr %17, i32 1
  %35 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %17, i32 2
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 542123458, ptr %arrayidx8.i, align 4
  %udev.i = getelementptr i8, ptr %15, i32 320
  %37 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done.i.i) #14
  %39 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %done.i.i, align 4, !annotation !570
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %s2255_write_config.exit.thread.i, label %s2255_write_config.exit.i

s2255_write_config.exit.thread.i:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i.i) #14
  br label %do.end.i

s2255_write_config.exit.i:                        ; preds = %entry
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %38, align 8
  %shl.i.i.i = shl i32 %41, 8
  %or.i.i = or i32 %shl.i.i.i, -1073676288
  %call2.i.i = call i32 @usb_bulk_msg(ptr noundef nonnull %38, i32 noundef %or.i.i, ptr noundef %17, i32 noundef 512, ptr noundef nonnull %done.i.i, i32 noundef 500) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp10.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp10.not.i, label %s2255_write_config.exit.i.do.body13.i_crit_edge, label %s2255_write_config.exit.i.do.end.i_crit_edge

s2255_write_config.exit.i.do.end.i_crit_edge:     ; preds = %s2255_write_config.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

s2255_write_config.exit.i.do.body13.i_crit_edge:  ; preds = %s2255_write_config.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13.i

do.end.i:                                         ; preds = %s2255_write_config.exit.i.do.end.i_crit_edge, %s2255_write_config.exit.thread.i
  %retval1.0.i48.i = phi i32 [ -1, %s2255_write_config.exit.thread.i ], [ %call2.i.i, %s2255_write_config.exit.i.do.end.i_crit_edge ]
  %42 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %udev.i, align 8
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.219) #18
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.end.i, %s2255_write_config.exit.i.do.body13.i_crit_edge
  %retval1.0.i49.i = phi i32 [ 0, %s2255_write_config.exit.i.do.body13.i_crit_edge ], [ %retval1.0.i48.i, %do.end.i ]
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp14.i = icmp sgt i32 %44, 1
  br i1 %cmp14.i, label %do.end18.i, label %do.body13.i.s2255_start_acquire.exit_crit_edge

do.body13.i.s2255_start_acquire.exit_crit_edge:   ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_start_acquire.exit

do.end18.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr i8, ptr %15, i32 60
  %45 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %idx.i, align 8
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %name.i, i32 noundef %46, i32 noundef %retval1.0.i49.i) #18
  br label %s2255_start_acquire.exit

s2255_start_acquire.exit:                         ; preds = %do.end18.i, %do.body13.i.s2255_start_acquire.exit_crit_edge
  call void @mutex_unlock(ptr noundef %cmdlock.i) #14
  ret i32 %retval1.0.i49.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call fastcc void @s2255_stop_acquire(ptr noundef %1)
  %qlock = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 31
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #14
  %buf_list = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_list, align 8
  %cmp14.not49 = icmp eq ptr %3, %buf_list
  br i1 %cmp14.not49, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in50 = phi ptr [ %.pn53, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %buf.052 = getelementptr i8, ptr %.pn.in50, i32 -736
  %4 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn53 = load ptr, ptr %.pn.in50, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in50) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in50, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in50, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.052, i32 noundef 6) #14
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp18 = icmp sgt i32 %13, 1
  br i1 %cmp18, label %do.end22, label %list_del.exit.for.inc_crit_edge

list_del.exit.for.inc_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end22:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %15, i32 0, i32 1, i32 4
  %index = getelementptr i8, ptr %.pn.in50, i32 -732
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef %name, ptr noundef %buf.052, i32 noundef %17) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end22, %list_del.exit.for.inc_crit_edge
  %cmp14.not = icmp eq ptr %.pn53, %buf_list
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.body10_crit_edge

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %6, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef %name, ptr noundef nonnull @.str.231) #18
  br label %do.body10

do.body10:                                        ; preds = %do.end, %entry.do.body10_crit_edge
  %qlock = getelementptr inbounds %struct.s2255_vc, ptr %3, i32 0, i32 31
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #14
  %list = getelementptr inbounds %struct.s2255_buffer, ptr %vb, i32 0, i32 1
  %buf_list = getelementptr inbounds %struct.s2255_vc, ptr %3, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.s2255_vc, ptr %3, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %8, ptr noundef %buf_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.body10.list_add_tail.exit_crit_edge

do.body10.list_add_tail.exit_crit_edge:           ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.s2255_buffer, ptr %vb, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body10.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call14) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s2255_stop_acquire(ptr nocapture noundef readonly %vc) unnamed_addr #2 align 64 {
entry:
  %done.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %cmdbuf = getelementptr i8, ptr %1, i32 436
  %2 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmdbuf, align 4
  %cmdlock = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_lock_nested(ptr noundef %cmdlock, i32 noundef 0) #14
  %idx = getelementptr inbounds %struct.s2255_vc, ptr %vc, i32 0, i32 28
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 8
  %arrayidx = getelementptr [4 x i32], ptr @G_chnmap, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -557820638, ptr %3, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %7)
  %arrayidx2 = getelementptr i32, ptr %3, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %3, i32 2
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 810558914, ptr %arrayidx3, align 4
  %udev = getelementptr i8, ptr %1, i32 320
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done.i) #14
  %14 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %done.i, align 4, !annotation !570
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %s2255_write_config.exit.thread, label %s2255_write_config.exit

s2255_write_config.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i) #14
  br label %do.end

s2255_write_config.exit:                          ; preds = %entry
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %call2.i = call i32 @usb_bulk_msg(ptr noundef nonnull %13, i32 noundef %or.i, ptr noundef %3, i32 noundef 512, ptr noundef nonnull %done.i, i32 noundef 500) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not = icmp eq i32 %call2.i, 0
  br i1 %cmp.not, label %s2255_write_config.exit.do.body7_crit_edge, label %s2255_write_config.exit.do.end_crit_edge

s2255_write_config.exit.do.end_crit_edge:         ; preds = %s2255_write_config.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

s2255_write_config.exit.do.body7_crit_edge:       ; preds = %s2255_write_config.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7

do.end:                                           ; preds = %s2255_write_config.exit.do.end_crit_edge, %s2255_write_config.exit.thread
  %retval1.0.i3 = phi i32 [ -1, %s2255_write_config.exit.thread ], [ %call2.i, %s2255_write_config.exit.do.end_crit_edge ]
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 8
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.226) #18
  br label %do.body7

do.body7:                                         ; preds = %do.end, %s2255_write_config.exit.do.body7_crit_edge
  %retval1.0.i4 = phi i32 [ 0, %s2255_write_config.exit.do.body7_crit_edge ], [ %retval1.0.i3, %do.end ]
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp8 = icmp sgt i32 %19, 3
  br i1 %cmp8, label %do.end12, label %do.body7.do.end18_crit_edge

do.body7.do.end18_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr i8, ptr %1, i32 60
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef %name, ptr noundef nonnull @.str.227, i32 noundef %21, i32 noundef %retval1.0.i4) #18
  br label %do.end18

do.end18:                                         ; preds = %do.end12, %do.body7.do.end18_crit_edge
  call void @mutex_unlock(ptr noundef %cmdlock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s2255_video_device_release(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -10176
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr i8, ptr %1, i32 60
  %num_channels = getelementptr i8, ptr %1, i32 128
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_channels, i32 noundef 4) #14
  %3 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %num_channels, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef %name, ptr noundef nonnull @.str.253, i32 noundef %4) #18
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %hdl = getelementptr i8, ptr %vdev, i32 1352
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #14
  %num_channels8 = getelementptr i8, ptr %1, i32 128
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_channels8, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !566
  tail call void @llvm.prefetch.p0(ptr %num_channels8, i32 1, i32 3, i32 1) #14
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_channels8, ptr %num_channels8, i32 1, ptr elementtype(i32) %num_channels8) #14, !srcloc !567
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then10, label %do.end7.if.end11_crit_edge

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @s2255_destroy(ptr noundef %add.ptr.i)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end7.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2255_open(ptr noundef %file) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry123 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @v4l2_fh_open(ptr noundef %file) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup206_crit_edge

entry.cleanup206_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup206

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.s2255_dev, ptr %3, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef %name, ptr noundef nonnull @.str.233) #18
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %fw_data = getelementptr inbounds %struct.s2255_dev, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_data, align 4
  %fw_state = getelementptr inbounds %struct.s2255_fw, ptr %6, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_state, i32 noundef 4) #14
  %7 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %fw_state, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.302)
  switch i32 %8, label %do.end9.sw.epilog_crit_edge [
    i32 4, label %do.end9.cleanup206_crit_edge
    i32 3, label %do.end14
    i32 0, label %do.end9.do.end85_crit_edge
    i32 1, label %do.end9.do.end85_crit_edge295
  ]

do.end9.do.end85_crit_edge295:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end85

do.end9.do.end85_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end85

do.end9.cleanup206_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup206

do.end9.sw.epilog_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end14:                                         ; preds = %do.end9
  %udev = getelementptr inbounds %struct.s2255_dev, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 8
  %dev15 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.235) #18
  tail call fastcc void @s2255_fwload_start(ptr noundef %3)
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1427) #14
  %12 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_data, align 4
  %fw_state24 = getelementptr inbounds %struct.s2255_fw, ptr %13, i32 0, i32 3
  %call.i.i255 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_state24, i32 noundef 4) #14
  %14 = ptrtoint ptr %fw_state24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %fw_state24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp26 = icmp eq i32 %15, 2
  br i1 %cmp26, label %do.end14.sw.epilog.sink.split_crit_edge, label %lor.end

do.end14.sw.epilog.sink.split_crit_edge:          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

lor.end:                                          ; preds = %do.end14
  %16 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_data, align 4
  %fw_state28 = getelementptr inbounds %struct.s2255_fw, ptr %17, i32 0, i32 3
  %call.i.i256 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_state28, i32 noundef 4) #14
  %18 = ptrtoint ptr %fw_state28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %fw_state28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp30 = icmp eq i32 %19, 4
  br i1 %cmp30, label %lor.end.sw.epilog.sink.split_crit_edge, label %if.then40

lor.end.sw.epilog.sink.split_crit_edge:           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then40:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %21 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw_data, align 4
  %wait_fw288 = getelementptr inbounds %struct.s2255_fw, ptr %22, i32 0, i32 5
  %call44289 = call i32 @prepare_to_wait_event(ptr noundef %wait_fw288, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %23 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw_data, align 4
  %fw_state47290 = getelementptr inbounds %struct.s2255_fw, ptr %24, i32 0, i32 3
  %call.i.i257291 = call zeroext i1 @__kasan_check_read(ptr noundef %fw_state47290, i32 noundef 4) #14
  %25 = ptrtoint ptr %fw_state47290 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %fw_state47290, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp49292 = icmp eq i32 %26, 2
  br i1 %cmp49292, label %if.then40.for.end_crit_edge, label %if.then40.lor.end55_crit_edge

if.then40.lor.end55_crit_edge:                    ; preds = %if.then40
  br label %lor.end55

if.then40.for.end_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

lor.end55:                                        ; preds = %cleanup.lor.end55_crit_edge, %if.then40.lor.end55_crit_edge
  %__ret41.0293 = phi i32 [ %call73, %cleanup.lor.end55_crit_edge ], [ 580, %if.then40.lor.end55_crit_edge ]
  %27 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw_data, align 4
  %fw_state52 = getelementptr inbounds %struct.s2255_fw, ptr %28, i32 0, i32 3
  %call.i.i258 = call zeroext i1 @__kasan_check_read(ptr noundef %fw_state52, i32 noundef 4) #14
  %29 = ptrtoint ptr %fw_state52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %fw_state52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp54 = icmp eq i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret41.0293)
  %tobool66.not = icmp eq i32 %__ret41.0293, 0
  %or.cond = select i1 %cmp54, i1 true, i1 %tobool66.not
  br i1 %or.cond, label %lor.end55.for.end_crit_edge, label %cleanup

lor.end55.for.end_crit_edge:                      ; preds = %lor.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %lor.end55
  %call73 = call i32 @schedule_timeout(i32 noundef %__ret41.0293) #14
  %31 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw_data, align 4
  %wait_fw = getelementptr inbounds %struct.s2255_fw, ptr %32, i32 0, i32 5
  %call44 = call i32 @prepare_to_wait_event(ptr noundef %wait_fw, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %33 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw_data, align 4
  %fw_state47 = getelementptr inbounds %struct.s2255_fw, ptr %34, i32 0, i32 3
  %call.i.i257 = call zeroext i1 @__kasan_check_read(ptr noundef %fw_state47, i32 noundef 4) #14
  %35 = ptrtoint ptr %fw_state47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %fw_state47, align 4
  %cmp49 = icmp eq i32 %36, 2
  br i1 %cmp49, label %cleanup.for.end_crit_edge, label %cleanup.lor.end55_crit_edge

cleanup.lor.end55_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end55

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end55.for.end_crit_edge, %if.then40.for.end_crit_edge
  %37 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw_data, align 4
  %wait_fw75 = getelementptr inbounds %struct.s2255_fw, ptr %38, i32 0, i32 5
  call void @finish_wait(ptr noundef %wait_fw75, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %sw.epilog.sink.split

do.end85:                                         ; preds = %do.end9.do.end85_crit_edge, %do.end9.do.end85_crit_edge295
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.233) #18
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1441) #14
  %39 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw_data, align 4
  %fw_state98 = getelementptr inbounds %struct.s2255_fw, ptr %40, i32 0, i32 3
  %call.i.i260 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_state98, i32 noundef 4) #14
  %41 = ptrtoint ptr %fw_state98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %fw_state98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp100 = icmp eq i32 %42, 2
  br i1 %cmp100, label %do.end85.sw.epilog.sink.split_crit_edge, label %lor.end106

do.end85.sw.epilog.sink.split_crit_edge:          ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

lor.end106:                                       ; preds = %do.end85
  %43 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_data, align 4
  %fw_state103 = getelementptr inbounds %struct.s2255_fw, ptr %44, i32 0, i32 3
  %call.i.i261 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw_state103, i32 noundef 4) #14
  %45 = ptrtoint ptr %fw_state103 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %fw_state103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp105 = icmp eq i32 %46, 4
  br i1 %cmp105, label %lor.end106.sw.epilog.sink.split_crit_edge, label %if.then122

lor.end106.sw.epilog.sink.split_crit_edge:        ; preds = %lor.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then122:                                       ; preds = %lor.end106
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry123) #14
  %47 = call ptr @memset(ptr %__wq_entry123, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry123, i32 noundef 0) #14
  %48 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw_data, align 4
  %wait_fw129282 = getelementptr inbounds %struct.s2255_fw, ptr %49, i32 0, i32 5
  %call130283 = call i32 @prepare_to_wait_event(ptr noundef %wait_fw129282, ptr noundef nonnull %__wq_entry123, i32 noundef 2) #14
  %50 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw_data, align 4
  %fw_state133284 = getelementptr inbounds %struct.s2255_fw, ptr %51, i32 0, i32 3
  %call.i.i262285 = call zeroext i1 @__kasan_check_read(ptr noundef %fw_state133284, i32 noundef 4) #14
  %52 = ptrtoint ptr %fw_state133284 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %fw_state133284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp135286 = icmp eq i32 %53, 2
  br i1 %cmp135286, label %if.then122.for.end163_crit_edge, label %if.then122.lor.end141_crit_edge

if.then122.lor.end141_crit_edge:                  ; preds = %if.then122
  br label %lor.end141

if.then122.for.end163_crit_edge:                  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end163

lor.end141:                                       ; preds = %cleanup160.lor.end141_crit_edge, %if.then122.lor.end141_crit_edge
  %__ret124.0287 = phi i32 [ %call159, %cleanup160.lor.end141_crit_edge ], [ 580, %if.then122.lor.end141_crit_edge ]
  %54 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw_data, align 4
  %fw_state138 = getelementptr inbounds %struct.s2255_fw, ptr %55, i32 0, i32 3
  %call.i.i263 = call zeroext i1 @__kasan_check_read(ptr noundef %fw_state138, i32 noundef 4) #14
  %56 = ptrtoint ptr %fw_state138 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %fw_state138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp140 = icmp eq i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret124.0287)
  %tobool152.not = icmp eq i32 %__ret124.0287, 0
  %or.cond281 = select i1 %cmp140, i1 true, i1 %tobool152.not
  br i1 %or.cond281, label %lor.end141.for.end163_crit_edge, label %cleanup160

lor.end141.for.end163_crit_edge:                  ; preds = %lor.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end163

cleanup160:                                       ; preds = %lor.end141
  %call159 = call i32 @schedule_timeout(i32 noundef %__ret124.0287) #14
  %58 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fw_data, align 4
  %wait_fw129 = getelementptr inbounds %struct.s2255_fw, ptr %59, i32 0, i32 5
  %call130 = call i32 @prepare_to_wait_event(ptr noundef %wait_fw129, ptr noundef nonnull %__wq_entry123, i32 noundef 2) #14
  %60 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fw_data, align 4
  %fw_state133 = getelementptr inbounds %struct.s2255_fw, ptr %61, i32 0, i32 3
  %call.i.i262 = call zeroext i1 @__kasan_check_read(ptr noundef %fw_state133, i32 noundef 4) #14
  %62 = ptrtoint ptr %fw_state133 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %fw_state133, align 4
  %cmp135 = icmp eq i32 %63, 2
  br i1 %cmp135, label %cleanup160.for.end163_crit_edge, label %cleanup160.lor.end141_crit_edge

cleanup160.lor.end141_crit_edge:                  ; preds = %cleanup160
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end141

cleanup160.for.end163_crit_edge:                  ; preds = %cleanup160
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end163

for.end163:                                       ; preds = %cleanup160.for.end163_crit_edge, %lor.end141.for.end163_crit_edge, %if.then122.for.end163_crit_edge
  %64 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fw_data, align 4
  %wait_fw165 = getelementptr inbounds %struct.s2255_fw, ptr %65, i32 0, i32 5
  call void @finish_wait(ptr noundef %wait_fw165, ptr noundef nonnull %__wq_entry123) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry123) #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %for.end163, %lor.end106.sw.epilog.sink.split_crit_edge, %do.end85.sw.epilog.sink.split_crit_edge, %for.end, %lor.end.sw.epilog.sink.split_crit_edge, %do.end14.sw.epilog.sink.split_crit_edge
  %66 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fw_data, align 4
  %fw_state80 = getelementptr inbounds %struct.s2255_fw, ptr %67, i32 0, i32 3
  %call.i.i264 = call zeroext i1 @__kasan_check_read(ptr noundef %fw_state80, i32 noundef 4) #14
  %68 = ptrtoint ptr %fw_state80 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %fw_state80, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end9.sw.epilog_crit_edge
  %state.0 = phi i32 [ %8, %do.end9.sw.epilog_crit_edge ], [ %69, %sw.epilog.sink.split ]
  %70 = zext i32 %state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.303)
  switch i32 %state.0, label %do.end197 [
    i32 2, label %sw.epilog200
    i32 3, label %do.end177
    i32 4, label %do.end183
    i32 1, label %sw.epilog.do.end189_crit_edge
    i32 0, label %sw.epilog.do.end189_crit_edge296
  ]

sw.epilog.do.end189_crit_edge296:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end189

sw.epilog.do.end189_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end189

do.end177:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241) #18
  br label %cleanup206

do.end183:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.233) #18
  br label %cleanup206

do.end189:                                        ; preds = %sw.epilog.do.end189_crit_edge, %sw.epilog.do.end189_crit_edge296
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.233) #18
  %71 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fw_data, align 4
  %fw_state193 = getelementptr inbounds %struct.s2255_fw, ptr %72, i32 0, i32 3
  %call.i.i265 = call zeroext i1 @__kasan_check_write(ptr noundef %fw_state193, i32 noundef 4) #14
  %73 = ptrtoint ptr %fw_state193 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 3, ptr %fw_state193, align 4
  br label %cleanup206

do.end197:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.233) #18
  br label %cleanup206

sw.epilog200:                                     ; preds = %sw.epilog
  %configured = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 18
  %74 = ptrtoint ptr %configured to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %configured, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool201.not = icmp eq i32 %75, 0
  br i1 %tobool201.not, label %if.then202, label %sw.epilog200.cleanup206_crit_edge

sw.epilog200.cleanup206_crit_edge:                ; preds = %sw.epilog200
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup206

if.then202:                                       ; preds = %sw.epilog200
  call void @__sanitizer_cov_trace_pc() #16
  %fmt = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 27
  %76 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @formats, ptr %fmt, align 4
  %mode = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 7
  call fastcc void @s2255_set_mode(ptr noundef %1, ptr noundef %mode)
  %77 = ptrtoint ptr %configured to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %configured, align 8
  br label %cleanup206

cleanup206:                                       ; preds = %if.then202, %sw.epilog200.cleanup206_crit_edge, %do.end197, %do.end189, %do.end183, %do.end177, %do.end9.cleanup206_crit_edge, %entry.cleanup206_crit_edge
  %retval.0 = phi i32 [ -14, %do.end197 ], [ -11, %do.end189 ], [ -19, %do.end183 ], [ -19, %do.end177 ], [ %call2, %entry.cleanup206_crit_edge ], [ -19, %do.end9.cleanup206_crit_edge ], [ 0, %if.then202 ], [ 0, %sw.epilog200.cleanup206_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s2255_destroy(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef %name, ptr noundef nonnull @.str.255) #18
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call fastcc void @s2255_board_shutdown(ptr noundef %dev)
  %timer = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 9
  %call4 = tail call i32 @del_timer_sync(ptr noundef %timer) #14
  %fw_data = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw_data, align 4
  %fw_urb = getelementptr inbounds %struct.s2255_fw, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %fw_urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_urb, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end2.if.end12_crit_edge, label %if.then5

do.end2.if.end12_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then5:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_kill_urb(ptr noundef nonnull %4) #14
  %5 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_data, align 4
  %fw_urb9 = getelementptr inbounds %struct.s2255_fw, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fw_urb9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_urb9, align 4
  tail call void @usb_free_urb(ptr noundef %8) #14
  %9 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_data, align 4
  %fw_urb11 = getelementptr inbounds %struct.s2255_fw, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %fw_urb11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fw_urb11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %do.end2.if.end12_crit_edge
  %12 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_data, align 4
  %fw = getelementptr inbounds %struct.s2255_fw, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %15) #14
  %16 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_data, align 4
  %pfw_data = getelementptr inbounds %struct.s2255_fw, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %pfw_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pfw_data, align 4
  tail call void @kfree(ptr noundef %19) #14
  %20 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw_data, align 4
  tail call void @kfree(ptr noundef %21) #14
  tail call fastcc void @s2255_reset_dsppower(ptr noundef %dev)
  %lock = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %lock) #14
  %udev = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 6
  %22 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev, align 8
  tail call void @usb_put_dev(ptr noundef %23) #14
  %v4l2_dev16 = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 1
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev16) #14
  %cmdbuf = getelementptr inbounds %struct.s2255_dev, ptr %dev, i32 0, i32 17
  %24 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmdbuf, align 4
  tail call void @kfree(ptr noundef %25) #14
  tail call void @kfree(ptr noundef %dev) #14
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.3, i32 noundef 16) #14
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.3, i32 noundef 32) #14
  %udev = getelementptr inbounds %struct.s2255_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 1
  %call.i9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.256, ptr noundef %9, ptr noundef %devpath.i) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ugt i32 %1, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @jpeg_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr [6 x %struct.s2255_fmt], ptr @formats, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.304)
  switch i32 %4, label %land.lhs.true.if.end7_crit_edge [
    i32 1195724874, label %land.lhs.true.cleanup_crit_edge
    i32 1196444237, label %land.lhs.true.cleanup_crit_edge15
  ]

land.lhs.true.cleanup_crit_edge15:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %arrayidx8 = getelementptr [6 x %struct.s2255_fmt], ptr @formats, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %width = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height3, align 4
  %conv39 = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv39)
  %tobool.not = icmp eq i64 %conv39, 0
  %mul = select i1 %tobool.not, i32 576, i32 480
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mul)
  %cmp.not = icmp ult i32 %8, %mul
  %spec.select = select i1 %cmp.not, i32 2, i32 4
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %fmt10 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %fmt10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt10, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pixelformat, align 4
  %17 = load ptr, ptr %fmt10, align 4
  %depth = getelementptr inbounds %struct.s2255_fmt, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %depth, align 4
  %shr = ashr i32 %19, 3
  %mul15 = mul i32 %shr, %5
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul15, ptr %bytesperline, align 4
  %mul21 = mul i32 %mul15, %8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul21, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  %mode = alloca %struct.s2255_mode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mode) #14
  %call1 = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %1, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.305)
  switch i32 %3, label %if.end.4.i [
    i32 1448695129, label %if.end.format_by_fourcc.exit_crit_edge
    i32 1498831189, label %if.then14.fold.split.i
    i32 1345466932, label %if.then14.fold.split27.i
    i32 1497715271, label %if.then14.fold.split28.i
  ]

if.end.format_by_fourcc.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split27.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split28.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split29.i:                         ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.end.4.i:                                       ; preds = %if.end
  %5 = load i32, ptr @jpeg_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.4.i = icmp eq i32 %5, 0
  br i1 %tobool.not.4.i, label %if.end.4.i.cleanup_crit_edge, label %if.end10.4.i

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10.4.i:                                     ; preds = %if.end.4.i
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.306)
  switch i32 %3, label %if.end10.4.i.cleanup_crit_edge [
    i32 1195724874, label %if.end10.4.i.format_by_fourcc.exit_crit_edge
    i32 1196444237, label %if.then14.fold.split29.i
  ]

if.end10.4.i.format_by_fourcc.exit_crit_edge:     ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.end10.4.i.cleanup_crit_edge:                   ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

format_by_fourcc.exit:                            ; preds = %if.end10.4.i.format_by_fourcc.exit_crit_edge, %if.then14.fold.split29.i, %if.then14.fold.split28.i, %if.then14.fold.split27.i, %if.then14.fold.split.i, %if.end.format_by_fourcc.exit_crit_edge
  %i.023.lcssa.i = phi i32 [ 0, %if.end.format_by_fourcc.exit_crit_edge ], [ 4, %if.end10.4.i.format_by_fourcc.exit_crit_edge ], [ 1, %if.then14.fold.split.i ], [ 2, %if.then14.fold.split27.i ], [ 3, %if.then14.fold.split28.i ], [ 5, %if.then14.fold.split29.i ]
  %add.ptr.i = getelementptr %struct.s2255_fmt, ptr @formats, i32 %i.023.lcssa.i
  %cmp4 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp4, label %format_by_fourcc.exit.cleanup_crit_edge, label %if.end6

format_by_fourcc.exit.cleanup_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %format_by_fourcc.exit
  %num_buffers.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 29, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end16, label %do.body

do.body:                                          ; preds = %if.end6
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp sgt i32 %9, 0
  br i1 %cmp9, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %11, i32 0, i32 1, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef %name) #18
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %mode17 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %mode, ptr %mode17, i32 44)
  %fmt18 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %fmt18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %fmt18, align 4
  %14 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt2, align 4
  %width20 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %width20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %width20, align 8
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %height22 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 25
  %19 = ptrtoint ptr %height22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height22, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field, align 4
  %field24 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 26
  %22 = ptrtoint ptr %field24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %field24, align 8
  %std.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %std.i, align 8
  %and.i = and i64 %24, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 352, i32 320
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cond.i)
  %cmp27 = icmp ugt i32 %15, %cond.i
  br i1 %cmp27, label %if.then28, label %if.else39

if.then28:                                        ; preds = %if.end16
  %cond.i120 = select i1 %tobool.not.i, i32 288, i32 240
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %cond.i120)
  %cmp31 = icmp ugt i32 %18, %cond.i120
  br i1 %cmp31, label %if.then32, label %if.else36

if.then32:                                        ; preds = %if.then28
  %capturemode = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %capturemode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capturemode, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %scale34 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %scale34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %scale34, align 4
  br label %if.end41

if.else:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %scale34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %scale34, align 4
  br label %if.end41

if.else36:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %scale37 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 1
  %29 = ptrtoint ptr %scale37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %scale37, align 4
  br label %if.end41

if.else39:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %scale40 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 1
  %30 = ptrtoint ptr %scale40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %scale40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.else36, %if.else, %if.then33
  %31 = ptrtoint ptr %fmt18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fmt18, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.307)
  switch i32 %34, label %sw.default [
    i32 1497715271, label %sw.bb
    i32 1195724874, label %if.end41.sw.bb45_crit_edge
    i32 1196444237, label %if.end41.sw.bb45_crit_edge123
    i32 1345466932, label %sw.bb52
  ]

if.end41.sw.bb45_crit_edge123:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb45

if.end41.sw.bb45_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb45

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %color = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 2
  %36 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %color, align 4
  %and43 = and i32 %37, -256
  %or = or i32 %and43, 4
  store i32 %or, ptr %color, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end41.sw.bb45_crit_edge, %if.end41.sw.bb45_crit_edge123
  %color46 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 2
  %38 = ptrtoint ptr %color46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %color46, align 4
  %and47 = and i32 %39, -256
  %or49 = or i32 %and47, 5
  %jpegqual = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %jpegqual, align 8
  %shl = shl i32 %41, 8
  %or51 = or i32 %shl, %or49
  store i32 %or51, ptr %color46, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %color53 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 2
  %42 = ptrtoint ptr %color53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %color53, align 4
  %and54 = and i32 %43, -256
  %or56 = or i32 %and54, 1
  store i32 %or56, ptr %color53, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %color58 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 2
  %44 = ptrtoint ptr %color58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %color58, align 4
  %and59 = and i32 %45, -256
  %or61 = or i32 %and59, 2
  store i32 %or61, ptr %color58, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb52, %sw.bb45, %sw.bb
  %color62 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 2
  %46 = ptrtoint ptr %color62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %color62, align 4
  %color65 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 7, i32 2
  %48 = ptrtoint ptr %color65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %color65, align 4
  %50 = xor i32 %49, %47
  %51 = and i32 %50, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp67.not = icmp eq i32 %51, 0
  br i1 %cmp67.not, label %if.else69, label %sw.epilog.if.end84.sink.split_crit_edge

sw.epilog.if.end84.sink.split_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84.sink.split

if.else69:                                        ; preds = %sw.epilog
  %scale70 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 1
  %52 = ptrtoint ptr %scale70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scale70, align 4
  %scale72 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %scale72 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %scale72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp73.not = icmp eq i32 %53, %55
  br i1 %cmp73.not, label %if.else76, label %if.else69.if.end84.sink.split_crit_edge

if.else69.if.end84.sink.split_crit_edge:          ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84.sink.split

if.else76:                                        ; preds = %if.else69
  %56 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode, align 4
  %58 = ptrtoint ptr %mode17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mode17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp79.not = icmp eq i32 %57, %59
  br i1 %cmp79.not, label %if.else76.if.end84_crit_edge, label %if.else76.if.end84.sink.split_crit_edge

if.else76.if.end84.sink.split_crit_edge:          ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84.sink.split

if.else76.if.end84_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84

if.end84.sink.split:                              ; preds = %if.else76.if.end84.sink.split_crit_edge, %if.else69.if.end84.sink.split_crit_edge, %sw.epilog.if.end84.sink.split_crit_edge
  %restart75 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 10
  %60 = ptrtoint ptr %restart75 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %restart75, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end84.sink.split, %if.else76.if.end84_crit_edge
  %61 = call ptr @memcpy(ptr %mode17, ptr %mode, i32 44)
  call fastcc void @s2255_set_mode(ptr noundef %1, ptr noundef nonnull %mode)
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %do.end, %do.body.cleanup_crit_edge, %format_by_fourcc.exit.cleanup_crit_edge, %if.end10.4.i.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end84 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %format_by_fourcc.exit.cleanup_crit_edge ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -22, %if.end.4.i.cleanup_crit_edge ], [ -22, %if.end10.4.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mode) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 63744
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.308)
  switch i32 %6, label %if.end.4.i [
    i32 1448695129, label %entry.format_by_fourcc.exit_crit_edge
    i32 1498831189, label %if.then14.fold.split.i
    i32 1345466932, label %if.then14.fold.split27.i
    i32 1497715271, label %if.then14.fold.split28.i
  ]

entry.format_by_fourcc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split27.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split28.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split29.i:                         ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.end.4.i:                                       ; preds = %entry
  %8 = load i32, ptr @jpeg_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.4.i = icmp eq i32 %8, 0
  br i1 %tobool.not.4.i, label %if.end.4.i.cleanup_crit_edge, label %if.end10.4.i

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10.4.i:                                     ; preds = %if.end.4.i
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.309)
  switch i32 %6, label %if.end10.4.i.cleanup_crit_edge [
    i32 1195724874, label %if.end10.4.i.format_by_fourcc.exit_crit_edge
    i32 1196444237, label %if.then14.fold.split29.i
  ]

if.end10.4.i.format_by_fourcc.exit_crit_edge:     ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.end10.4.i.cleanup_crit_edge:                   ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

format_by_fourcc.exit:                            ; preds = %if.end10.4.i.format_by_fourcc.exit_crit_edge, %if.then14.fold.split29.i, %if.then14.fold.split28.i, %if.then14.fold.split27.i, %if.then14.fold.split.i, %entry.format_by_fourcc.exit_crit_edge
  %i.023.lcssa.i = phi i32 [ 0, %entry.format_by_fourcc.exit_crit_edge ], [ 4, %if.end10.4.i.format_by_fourcc.exit_crit_edge ], [ 1, %if.then14.fold.split.i ], [ 2, %if.then14.fold.split27.i ], [ 3, %if.then14.fold.split28.i ], [ 5, %if.then14.fold.split29.i ]
  %add.ptr.i = getelementptr %struct.s2255_fmt, ptr @formats, i32 %i.023.lcssa.i
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %format_by_fourcc.exit.cleanup_crit_edge, label %do.body

format_by_fourcc.exit.cleanup_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %format_by_fourcc.exit
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %10)
  %cmp4 = icmp sgt i32 %10, 49
  br i1 %cmp4, label %do.end, label %do.body.do.end13_crit_edge

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %12, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt1, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef %name, ptr noundef nonnull @.str.260, i32 noundef %conv, i32 noundef %14, i32 noundef %16) #18
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  %height38 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height38, align 4
  br i1 %tobool.not, label %if.else36, label %if.then14

if.then14:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 479, i32 %18)
  %cmp17 = icmp ugt i32 %18, 479
  %. = select i1 %cmp17, i32 480, i32 240
  %.126 = select i1 %cmp17, i32 4, i32 2
  %19 = ptrtoint ptr %height38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %., ptr %height38, align 4
  %20 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %21)
  %cmp27.inv = icmp ult i32 %21, 640
  %.131 = select i1 %cmp27.inv, i32 320, i32 640
  br label %if.end59

if.else36:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 575, i32 %18)
  %cmp39 = icmp ugt i32 %18, 575
  %.127 = select i1 %cmp39, i32 576, i32 288
  %.128 = select i1 %cmp39, i32 4, i32 2
  %22 = ptrtoint ptr %height38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.127, ptr %height38, align 4
  %23 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %24)
  %cmp50.inv = icmp ult i32 %24, 704
  %.132 = select i1 %cmp50.inv, i32 352, i32 704
  br label %if.end59

if.end59:                                         ; preds = %if.else36, %if.then14
  %.sink = phi i32 [ %.131, %if.then14 ], [ %.132, %if.else36 ]
  %field.2 = phi i32 [ %.126, %if.then14 ], [ %.128, %if.else36 ]
  %25 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %fmt1, align 4
  %field61 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %field61 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %field.2, ptr %field61, align 4
  %depth = getelementptr %struct.s2255_fmt, ptr @formats, i32 %i.023.lcssa.i, i32 1
  %27 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %depth, align 4
  %mul = mul i32 %28, %.sink
  %shr = lshr exact i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr, ptr %bytesperline, align 4
  %height66 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %height66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height66, align 4
  %mul69 = mul i32 %31, %shr
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul69, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %colorspace, align 4
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %34)
  %cmp73 = icmp sgt i32 %34, 49
  br i1 %cmp73, label %do.end78, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end78:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %name82 = getelementptr inbounds %struct.s2255_dev, ptr %36, i32 0, i32 1, i32 4
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef %name82, ptr noundef nonnull @.str.260, i32 noundef %.sink, i32 noundef %31, i32 noundef %field.2) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end59.cleanup_crit_edge, %format_by_fourcc.exit.cleanup_crit_edge, %if.end10.4.i.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %format_by_fourcc.exit.cleanup_crit_edge ], [ 0, %do.end78 ], [ 0, %if.end59.cleanup_crit_edge ], [ -22, %if.end.4.i.cleanup_crit_edge ], [ -22, %if.end10.4.i.cleanup_crit_edge ]
  ret i32 %retval.0
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
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %i) #2 align 64 {
entry:
  %mode = alloca %struct.s2255_mode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mode) #14
  %num_buffers.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 29, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode2 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %mode, ptr %mode2, i32 44)
  %and = and i64 %i, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp sgt i32 %5, 3
  br i1 %cmp, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %7, i32 0, i32 1, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef %name, ptr noundef nonnull @.str.265) #18
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp10.not = icmp eq i32 %9, 1
  br i1 %cmp10.not, label %do.end9.if.end43_crit_edge, label %do.end9.if.end43.sink.split_crit_edge

do.end9.if.end43.sink.split_crit_edge:            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.sink.split

do.end9.if.end43_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.else:                                          ; preds = %if.end
  %and14 = and i64 %i, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %do.body17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body17:                                        ; preds = %if.else
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp18 = icmp sgt i32 %10, 3
  br i1 %cmp18, label %do.end22, label %do.body17.do.end31_crit_edge

do.body17.do.end31_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %name26 = getelementptr inbounds %struct.s2255_dev, ptr %12, i32 0, i32 1, i32 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, ptr noundef %name26, ptr noundef nonnull @.str.265) #18
  br label %do.end31

do.end31:                                         ; preds = %do.end22, %do.body17.do.end31_crit_edge
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp33.not = icmp eq i32 %14, 2
  br i1 %cmp33.not, label %do.end31.if.end43_crit_edge, label %do.end31.if.end43.sink.split_crit_edge

do.end31.if.end43.sink.split_crit_edge:           ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.sink.split

do.end31.if.end43_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.end43.sink.split:                              ; preds = %do.end31.if.end43.sink.split_crit_edge, %do.end9.if.end43.sink.split_crit_edge
  %storemerge = phi i32 [ 1, %do.end9.if.end43.sink.split_crit_edge ], [ 2, %do.end31.if.end43.sink.split_crit_edge ]
  %.sink62 = phi i32 [ 640, %do.end9.if.end43.sink.split_crit_edge ], [ 704, %do.end31.if.end43.sink.split_crit_edge ]
  %.sink = phi i32 [ 480, %do.end9.if.end43.sink.split_crit_edge ], [ 576, %do.end31.if.end43.sink.split_crit_edge ]
  %restart = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 10
  %15 = ptrtoint ptr %restart to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %restart, align 4
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %mode, align 4
  %fdec37 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 3
  %17 = ptrtoint ptr %fdec37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %fdec37, align 4
  %width38 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 24
  %18 = ptrtoint ptr %width38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink62, ptr %width38, align 8
  %height39 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 25
  %19 = ptrtoint ptr %height39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %height39, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %do.end31.if.end43_crit_edge, %do.end9.if.end43_crit_edge
  %std = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %i, ptr %std, align 8
  %restart44 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 10
  %21 = ptrtoint ptr %restart44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %restart44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool45.not = icmp eq i32 %22, 0
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.then46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @s2255_set_mode(ptr noundef %1, ptr noundef nonnull %mode)
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end43.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mode) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %inp) #2 align 64 {
entry:
  %done.i.i = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 4
  %std = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 5
  %7 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 16777215, ptr %std, align 8
  %status2 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %8 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %status2, align 8
  %dsp_fw_ver = getelementptr inbounds %struct.s2255_dev, ptr %3, i32 0, i32 15
  %9 = ptrtoint ptr %dsp_fw_ver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dsp_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp3 = icmp sgt i32 %10, 4
  br i1 %cmp3, label %if.then4, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then4:                                         ; preds = %if.end
  %v4l2_dev.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v4l2_dev.i, align 4
  %cmdbuf.i = getelementptr i8, ptr %12, i32 436
  %13 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmdbuf.i, align 4
  %cmdlock.i = getelementptr i8, ptr %12, i32 228
  tail call void @mutex_lock_nested(ptr noundef %cmdlock.i, i32 noundef 0) #14
  %idx.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx.i, align 8
  %arrayidx.i = getelementptr [4 x i32], ptr @G_chnmap, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp.i = icmp sgt i32 %19, 3
  br i1 %cmp.i, label %do.end.i, label %if.then4.do.end6.i_crit_edge

if.then4.do.end6.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr i8, ptr %12, i32 60
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, ptr noundef %name.i, ptr noundef nonnull @.str.274, i32 noundef %16) #18
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.then4.do.end6.i_crit_edge
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -557820638, ptr %14, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #14
  %arrayidx8.i = getelementptr i32, ptr %14, i32 1
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %14, i32 2
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1078994370, ptr %arrayidx9.i, align 4
  %vidstatus_ready.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 23
  %24 = ptrtoint ptr %vidstatus_ready.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %vidstatus_ready.i, align 4
  %udev.i = getelementptr i8, ptr %12, i32 320
  %25 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done.i.i) #14
  %27 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %done.i.i, align 4, !annotation !570
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %do.end6.i.s2255_write_config.exit.i_crit_edge, label %if.then.i.i

do.end6.i.s2255_write_config.exit.i_crit_edge:    ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_write_config.exit.i

if.then.i.i:                                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %26, align 8
  %shl.i.i.i = shl i32 %29, 8
  %or.i.i = or i32 %shl.i.i.i, -1073676288
  %call2.i.i = call i32 @usb_bulk_msg(ptr noundef nonnull %26, i32 noundef %or.i.i, ptr noundef %14, i32 noundef 512, ptr noundef nonnull %done.i.i, i32 noundef 500) #14
  br label %s2255_write_config.exit.i

s2255_write_config.exit.i:                        ; preds = %if.then.i.i, %do.end6.i.s2255_write_config.exit.i_crit_edge
  %retval1.0.i.i = phi i32 [ %call2.i.i, %if.then.i.i ], [ -1, %do.end6.i.s2255_write_config.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i.i) #14
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1050) #14
  %30 = ptrtoint ptr %vidstatus_ready.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vidstatus_ready.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp19.not.not.i = icmp eq i32 %31, 0
  br i1 %cmp19.not.not.i, label %if.then27.i, label %s2255_write_config.exit.i.if.end53.i_crit_edge

s2255_write_config.exit.i.if.end53.i_crit_edge:   ; preds = %s2255_write_config.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53.i

if.then27.i:                                      ; preds = %s2255_write_config.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %32 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %wait_vidstatus.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 22
  %call30123.i = call i32 @prepare_to_wait_event(ptr noundef %wait_vidstatus.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %33 = ptrtoint ptr %vidstatus_ready.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vidstatus_ready.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp33.not124.not.i = icmp eq i32 %34, 0
  br i1 %cmp33.not124.not.i, label %if.then27.i.cleanup.i_crit_edge, label %if.then27.i.for.end.i_crit_edge

if.then27.i.for.end.i_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.then27.i.cleanup.i_crit_edge:                  ; preds = %if.then27.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then27.i.cleanup.i_crit_edge
  %__ret28.1126.i = phi i32 [ %__ret28.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 35, %if.then27.i.cleanup.i_crit_edge ]
  %call50.i = call i32 @schedule_timeout(i32 noundef %__ret28.1126.i) #14
  %call30.i = call i32 @prepare_to_wait_event(ptr noundef %wait_vidstatus.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %35 = ptrtoint ptr %vidstatus_ready.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vidstatus_ready.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp33.not.i = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool37.not.i = icmp eq i32 %call50.i, 0
  %spec.store.select92.i = select i1 %tobool37.not.i, i32 1, i32 %call50.i
  %__ret28.1.i = select i1 %cmp33.not.i, i32 %call50.i, i32 %spec.store.select92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.1.i)
  %tobool43.not.i = icmp eq i32 %__ret28.1.i, 0
  %not.cmp33.not.i = xor i1 %cmp33.not.i, true
  %37 = select i1 %not.cmp33.not.i, i1 true, i1 %tobool43.not.i
  br i1 %37, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then27.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wait_vidstatus.i, ptr noundef nonnull %__wq_entry.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %38 = ptrtoint ptr %vidstatus_ready.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i = load i32, ptr %vidstatus_ready.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %for.end.i, %s2255_write_config.exit.i.if.end53.i_crit_edge
  %39 = phi i32 [ %.pr.i, %for.end.i ], [ %31, %s2255_write_config.exit.i.if.end53.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp56.not.i = icmp eq i32 %39, 1
  br i1 %cmp56.not.i, label %if.end53.i.if.end72.i_crit_edge, label %do.body58.i

if.end53.i.if.end72.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

do.body58.i:                                      ; preds = %if.end53.i
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp59.i = icmp sgt i32 %40, -1
  br i1 %cmp59.i, label %do.end63.i, label %if.end72.i.thread

if.end72.i.thread:                                ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #16
  %vidstatus.i44 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 21
  %41 = ptrtoint ptr %vidstatus.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vidstatus.i44, align 4
  br label %s2255_cmd_status.exit

do.end63.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #16
  %name66.i = getelementptr i8, ptr %12, i32 60
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, ptr noundef %name66.i) #18
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end63.i, %if.end53.i.if.end72.i_crit_edge
  %res.0.i.ph = phi i32 [ -14, %do.end63.i ], [ %retval1.0.i.i, %if.end53.i.if.end72.i_crit_edge ]
  %.pr = load i32, ptr @debug, align 4
  %vidstatus.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 21
  %43 = ptrtoint ptr %vidstatus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vidstatus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp74.i = icmp sgt i32 %.pr, 3
  br i1 %cmp74.i, label %do.end78.i, label %if.end72.i.s2255_cmd_status.exit_crit_edge

if.end72.i.s2255_cmd_status.exit_crit_edge:       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s2255_cmd_status.exit

do.end78.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  %name81.i = getelementptr i8, ptr %12, i32 60
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, ptr noundef %name81.i, ptr noundef nonnull @.str.274, i32 noundef %44) #18
  br label %s2255_cmd_status.exit

s2255_cmd_status.exit:                            ; preds = %do.end78.i, %if.end72.i.s2255_cmd_status.exit_crit_edge, %if.end72.i.thread
  %45 = phi i32 [ %42, %if.end72.i.thread ], [ %44, %if.end72.i.s2255_cmd_status.exit_crit_edge ], [ %44, %do.end78.i ]
  %res.0.i46 = phi i32 [ -14, %if.end72.i.thread ], [ %res.0.i.ph, %if.end72.i.s2255_cmd_status.exit_crit_edge ], [ %res.0.i.ph, %do.end78.i ]
  call void @mutex_unlock(ptr noundef %cmdlock.i) #14
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp6 = icmp sgt i32 %46, 3
  br i1 %cmp6, label %do.end, label %s2255_cmd_status.exit.do.end12_crit_edge

s2255_cmd_status.exit.do.end12_crit_edge:         ; preds = %s2255_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end:                                           ; preds = %s2255_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.s2255_dev, ptr %3, i32 0, i32 1, i32 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef %name, i32 noundef %res.0.i46, i32 noundef %45) #18
  br label %do.end12

do.end12:                                         ; preds = %do.end, %s2255_cmd_status.exit.do.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i46)
  %cmp13 = icmp eq i32 %res.0.i46, 0
  br i1 %cmp13, label %if.then14, label %do.end12.if.end17_crit_edge

do.end12.if.end17_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  %and = shl i32 %45, 1
  %47 = and i32 %and, 2
  %48 = xor i32 %47, 2
  %49 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %status2, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.end12.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %pid = getelementptr inbounds %struct.s2255_dev, ptr %3, i32 0, i32 16
  %50 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8791, i16 %51)
  %cond30 = icmp eq i16 %51, 8791
  %name22 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  br i1 %cond30, label %sw.bb21, label %if.end17.cleanup.sink.split_crit_edge

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %idx = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 28
  %52 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp24 = icmp slt i32 %53, 2
  %cond26 = select i1 %cmp24, ptr @.str.271, ptr @.str.272
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb21, %if.end17.cleanup.sink.split_crit_edge
  %.str.271.sink = phi ptr [ %cond26, %sw.bb21 ], [ @.str.271, %if.end17.cleanup.sink.split_crit_edge ]
  %call20 = call i32 @strscpy(ptr noundef %name22, ptr noundef nonnull %.str.271.sink, i32 noundef 32) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_jpegcomp(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %jc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = call ptr @memset(ptr %jc, i32 0, i32 140)
  %jpegqual = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %jpegqual, align 8
  %5 = ptrtoint ptr %jc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %jc, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %8, i32 0, i32 1, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, ptr noundef %name, ptr noundef nonnull @.str.282, i32 noundef %4) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_jpegcomp(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %jc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %jc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %3)
  %4 = icmp ugt i32 %3, 100
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %jpegqual_ctrl = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %jpegqual_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jpegqual_ctrl, align 8
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #14
  %call.i17 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %6, i32 noundef %3) #14
  %11 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %14) #14
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp5 = icmp sgt i32 %15, 1
  br i1 %cmp5, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %17, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %jc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %jc, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, ptr noundef %name, ptr noundef nonnull @.str.283, i32 noundef %19) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1
  %4 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %parm, align 4
  %capturemode = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %capturemode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capturemode, align 4
  %capturemode2 = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %capturemode2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %capturemode2, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %readbuffers, align 4
  %mode = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp4 = icmp eq i32 %10, 1
  %cond = select i1 %cmp4, i32 1001, i32 1000
  %cond8 = select i1 %cmp4, i32 30000, i32 25000
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond8, ptr %denominator, align 4
  %fdec = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %fdec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fdec, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %13, label %if.end.do.body_crit_edge [
    i32 5, label %sw.bb22
    i32 2, label %sw.bb13
    i32 3, label %sw.bb17
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mul = shl nuw nsw i32 %cond, 1
  br label %do.body

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mul18 = mul nuw nsw i32 %cond, 3
  br label %do.body

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mul23 = mul nuw nsw i32 %cond, 5
  br label %do.body

do.body:                                          ; preds = %sw.bb22, %sw.bb17, %sw.bb13, %if.end.do.body_crit_edge
  %cond.sink = phi i32 [ %mul, %sw.bb13 ], [ %mul18, %sw.bb17 ], [ %mul23, %sw.bb22 ], [ %cond, %if.end.do.body_crit_edge ]
  %15 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.sink, ptr %timeperframe, align 4
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp27 = icmp sgt i32 %16, 3
  br i1 %cmp27, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %18, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeperframe, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284, ptr noundef %name, ptr noundef nonnull @.str.285, i32 noundef %6, i32 noundef %20, i32 noundef %cond8) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sp) #2 align 64 {
entry:
  %mode = alloca %struct.s2255_mode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mode) #14
  %2 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode1 = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %mode, ptr %mode1, i32 44)
  %capturemode = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %capturemode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capturemode, align 4
  %capturemode2 = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %capturemode2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capturemode2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3.not = icmp eq i32 %6, %8
  br i1 %cmp3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %streaming.i = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 29, i32 28
  %9 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7 = icmp eq i32 %11, 1
  %cond = select i1 %cmp7, i32 1001, i32 1000
  %cond10 = select i1 %cmp7, i32 30000, i32 25000
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond10, i32 %13)
  %cmp12.not = icmp eq i32 %cond10, %13
  br i1 %cmp12.not, label %if.else, label %if.end6.if.end53_crit_edge

if.end6.if.end53_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.else:                                          ; preds = %if.end6
  %14 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeperframe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cond)
  %cmp19.not = icmp ugt i32 %15, %cond
  br i1 %cmp19.not, label %if.else24, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.else24:                                        ; preds = %if.else
  %mul = shl nuw nsw i32 %cond, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul)
  %cmp28.not = icmp ugt i32 %15, %mul
  br i1 %cmp28.not, label %if.else34, label %if.else24.if.end53_crit_edge

if.else24.if.end53_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.else34:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  %mul38 = mul nuw nsw i32 %cond, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul38)
  %cmp39.not = icmp ugt i32 %15, %mul38
  %mul46 = mul nuw nsw i32 %cond, 5
  %spec.select = select i1 %cmp39.not, i32 %mul46, i32 %mul38
  %spec.select107 = select i1 %cmp39.not, i32 5, i32 3
  br label %if.end53

if.end53:                                         ; preds = %if.else34, %if.else24.if.end53_crit_edge, %if.else.if.end53_crit_edge, %if.end6.if.end53_crit_edge
  %cond.sink = phi i32 [ %cond, %if.end6.if.end53_crit_edge ], [ %cond, %if.else.if.end53_crit_edge ], [ %mul, %if.else24.if.end53_crit_edge ], [ %spec.select, %if.else34 ]
  %fdec.0 = phi i32 [ 1, %if.end6.if.end53_crit_edge ], [ 1, %if.else.if.end53_crit_edge ], [ 2, %if.else24.if.end53_crit_edge ], [ %spec.select107, %if.else34 ]
  %16 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.sink, ptr %timeperframe, align 4
  %fdec54 = getelementptr inbounds %struct.s2255_mode, ptr %mode, i32 0, i32 3
  %17 = ptrtoint ptr %fdec54 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %fdec.0, ptr %fdec54, align 4
  %18 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond10, ptr %denominator, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %readbuffers, align 4
  call fastcc void @s2255_set_mode(ptr noundef %1, ptr noundef nonnull %mode)
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp60 = icmp sgt i32 %20, 3
  br i1 %cmp60, label %do.end, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %22, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %capturemode2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capturemode2, align 4
  %25 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeperframe, align 4
  %27 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %denominator, align 4
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, ptr noundef %name, ptr noundef nonnull @.str.287, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %fdec.0) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end53.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mode) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fe, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_format, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %7, label %if.end.4.i [
    i32 1448695129, label %if.end.format_by_fourcc.exit_crit_edge
    i32 1498831189, label %if.then14.fold.split.i
    i32 1345466932, label %if.then14.fold.split27.i
    i32 1497715271, label %if.then14.fold.split28.i
  ]

if.end.format_by_fourcc.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split27.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split28.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split29.i:                         ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.end.4.i:                                       ; preds = %if.end
  %9 = load i32, ptr @jpeg_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.4.i = icmp eq i32 %9, 0
  br i1 %tobool.not.4.i, label %if.end.4.i.cleanup_crit_edge, label %if.end10.4.i

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10.4.i:                                     ; preds = %if.end.4.i
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %7, label %if.end10.4.i.cleanup_crit_edge [
    i32 1195724874, label %if.end10.4.i.format_by_fourcc.exit_crit_edge
    i32 1196444237, label %if.then14.fold.split29.i
  ]

if.end10.4.i.format_by_fourcc.exit_crit_edge:     ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.end10.4.i.cleanup_crit_edge:                   ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

format_by_fourcc.exit:                            ; preds = %if.end10.4.i.format_by_fourcc.exit_crit_edge, %if.then14.fold.split29.i, %if.then14.fold.split28.i, %if.then14.fold.split27.i, %if.then14.fold.split.i, %if.end.format_by_fourcc.exit_crit_edge
  %i.023.lcssa.i = phi i32 [ 0, %if.end.format_by_fourcc.exit_crit_edge ], [ 4, %if.end10.4.i.format_by_fourcc.exit_crit_edge ], [ 1, %if.then14.fold.split.i ], [ 2, %if.then14.fold.split27.i ], [ 3, %if.then14.fold.split28.i ], [ 5, %if.then14.fold.split29.i ]
  %add.ptr.i = getelementptr %struct.s2255_fmt, ptr @formats, i32 %i.023.lcssa.i
  %cmp3 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp3, label %format_by_fourcc.exit.cleanup_crit_edge, label %if.end6

format_by_fourcc.exit.cleanup_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fe, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %type, align 4
  %12 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fe, i32 0, i32 3
  %conv17 = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv17)
  %tobool.not = icmp eq i64 %conv17, 0
  %arrayidx = getelementptr [3 x %struct.v4l2_frmsize_discrete], ptr @ntsc_sizes, i32 0, i32 %5
  %arrayidx9 = getelementptr [3 x %struct.v4l2_frmsize_discrete], ptr @pal_sizes, i32 0, i32 %5
  %storemerge.in = select i1 %tobool.not, ptr %arrayidx9, ptr %arrayidx
  %13 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %storemerge = load i64, ptr %storemerge.in, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %storemerge, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %format_by_fourcc.exit.cleanup_crit_edge, %if.end10.4.i.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %format_by_fourcc.exit.cleanup_crit_edge ], [ -22, %if.end.4.i.cleanup_crit_edge ], [ -22, %if.end10.4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std = getelementptr inbounds %struct.s2255_vc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_format, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %7, label %if.end.4.i [
    i32 1448695129, label %if.end.format_by_fourcc.exit_crit_edge
    i32 1498831189, label %if.then14.fold.split.i
    i32 1345466932, label %if.then14.fold.split27.i
    i32 1497715271, label %if.then14.fold.split28.i
  ]

if.end.format_by_fourcc.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split27.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split28.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.then14.fold.split29.i:                         ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.end.4.i:                                       ; preds = %if.end
  %9 = load i32, ptr @jpeg_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.4.i = icmp eq i32 %9, 0
  br i1 %tobool.not.4.i, label %if.end.4.i.cleanup_crit_edge, label %if.end10.4.i

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10.4.i:                                     ; preds = %if.end.4.i
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %7, label %if.end10.4.i.cleanup_crit_edge [
    i32 1195724874, label %if.end10.4.i.format_by_fourcc.exit_crit_edge
    i32 1196444237, label %if.then14.fold.split29.i
  ]

if.end10.4.i.format_by_fourcc.exit_crit_edge:     ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %format_by_fourcc.exit

if.end10.4.i.cleanup_crit_edge:                   ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

format_by_fourcc.exit:                            ; preds = %if.end10.4.i.format_by_fourcc.exit_crit_edge, %if.then14.fold.split29.i, %if.then14.fold.split28.i, %if.then14.fold.split27.i, %if.then14.fold.split.i, %if.end.format_by_fourcc.exit_crit_edge
  %i.023.lcssa.i = phi i32 [ 0, %if.end.format_by_fourcc.exit_crit_edge ], [ 4, %if.end10.4.i.format_by_fourcc.exit_crit_edge ], [ 1, %if.then14.fold.split.i ], [ 2, %if.then14.fold.split27.i ], [ 3, %if.then14.fold.split28.i ], [ 5, %if.then14.fold.split29.i ]
  %add.ptr.i = getelementptr %struct.s2255_fmt, ptr @formats, i32 %i.023.lcssa.i
  %cmp3 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp3, label %format_by_fourcc.exit.cleanup_crit_edge, label %if.end6

format_by_fourcc.exit.cleanup_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %format_by_fourcc.exit
  %conv57 = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv57)
  %tobool.not = icmp eq i64 %conv57, 0
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 3
  %13 = select i1 %tobool.not, i32 704, i32 640
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp10 = icmp eq i32 %12, %13
  br i1 %cmp10, label %land.lhs.true, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end6
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %16 = select i1 %tobool.not, i32 576, i32 480
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp13 = icmp eq i32 %15, %16
  br i1 %cmp13, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end6.for.inc_crit_edge
  %17 = select i1 %tobool.not, i32 704, i32 640
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %17)
  %cmp10.1 = icmp eq i32 %12, %17
  br i1 %cmp10.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %20 = select i1 %tobool.not, i32 288, i32 240
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp13.1 = icmp eq i32 %19, %20
  br i1 %cmp13.1, label %land.lhs.true.1.if.end20_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true.1.if.end20_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %21 = select i1 %tobool.not, i32 352, i32 320
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %21)
  %cmp10.2 = icmp eq i32 %12, %21
  br i1 %cmp10.2, label %land.lhs.true.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.2:                                  ; preds = %for.inc.1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %24 = select i1 %tobool.not, i32 288, i32 240
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %24)
  %cmp13.2 = icmp eq i32 %23, %24
  br i1 %cmp13.2, label %land.lhs.true.2.if.end20_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.2.if.end20_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.2.if.end20_crit_edge, %land.lhs.true.1.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 4
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %type, align 4
  %cond22 = select i1 %tobool.not, i32 25000, i32 30000
  %26 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 5
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 5, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond22, ptr %denominator, align 4
  %cond24 = select i1 %tobool.not, i32 1000, i32 1001
  %arrayidx = getelementptr [4 x i32], ptr @__const.vidioc_enum_frameintervals.frm_dec, i32 0, i32 %5
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %29, %cond24
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %26, align 4
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp26 = icmp sgt i32 %31, 3
  br i1 %cmp26, label %do.end, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.s2255_dev, ptr %33, i32 0, i32 1, i32 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %name, ptr noundef nonnull @.str.289, i32 noundef %mul, i32 noundef %cond22) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end20.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %format_by_fourcc.exit.cleanup_crit_edge, %if.end10.4.i.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %format_by_fourcc.exit.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end20.cleanup_crit_edge ], [ -22, %if.end.4.i.cleanup_crit_edge ], [ -22, %if.end10.4.i.cleanup_crit_edge ], [ -22, %land.lhs.true.2.cleanup_crit_edge ], [ -22, %for.inc.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 286)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 286)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !271, !272, !273, !274, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !312, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !339, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !376, !378, !380, !382, !383, !384, !385, !387, !388, !389, !391, !392, !394, !395, !396, !397, !399, !400, !401, !403, !404, !405, !406, !408, !409, !410, !411, !413, !414, !415, !417, !418, !419, !421, !423, !425, !426, !427, !428, !430, !431, !432, !434, !435, !436, !438, !439, !440, !442, !443, !444, !446, !447, !448, !450, !451, !452, !454, !455, !456, !457, !459, !460, !461, !462, !464, !466, !468, !469, !470, !471, !473, !474, !475, !476, !478, !479, !480, !482, !483, !484, !485, !487, !488, !489, !491, !492, !493, !494, !496, !498, !500, !501, !502, !503, !505, !506, !507, !509, !510, !511, !513, !514, !515, !516, !518, !519, !520, !522, !523, !524, !525, !527, !528, !529, !530, !532, !534, !536, !537, !538, !539, !541, !542, !543, !544, !546, !547, !548, !550, !551, !552, !553}
!llvm.module.flags = !{!555, !556, !557, !558, !559, !560, !561, !562}
!llvm.ident = !{!563}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 365, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype303, !1, !"__UNIQUE_ID_debugtype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug304, !4, !"__UNIQUE_ID_debug304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 366, i32 1}
!5 = !{ptr @__param_video_nr, !6, !"__param_video_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 367, i32 1}
!7 = !{ptr @__UNIQUE_ID_video_nrtype305, !6, !"__UNIQUE_ID_video_nrtype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_video_nr306, !9, !"__UNIQUE_ID_video_nr306", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 368, i32 1}
!10 = !{ptr @__param_jpeg_enable, !11, !"__param_jpeg_enable", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 369, i32 1}
!12 = !{ptr @__UNIQUE_ID_jpeg_enabletype307, !11, !"__UNIQUE_ID_jpeg_enabletype307", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_jpeg_enable308, !14, !"__UNIQUE_ID_jpeg_enable308", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 370, i32 1}
!15 = !{ptr @__initcall__kmod_s2255drv__311_2373_s2255_driver_init6, !16, !"__initcall__kmod_s2255drv__311_2373_s2255_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2373, i32 1}
!17 = !{ptr @__exitcall_s2255_driver_exit, !16, !"__exitcall_s2255_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description312, !19, !"__UNIQUE_ID_description312", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2375, i32 1}
!20 = !{ptr @__UNIQUE_ID_author313, !21, !"__UNIQUE_ID_author313", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2376, i32 1}
!22 = !{ptr @__UNIQUE_ID_file314, !23, !"__UNIQUE_ID_file314", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2377, i32 1}
!24 = !{ptr @__UNIQUE_ID_license315, !23, !"__UNIQUE_ID_license315", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_version316, !26, !"__UNIQUE_ID_version316", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2378, i32 1}
!27 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__modver_attr, !26, !"__modver_attr", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_firmware317, !32, !"__UNIQUE_ID_firmware317", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2379, i32 1}
!33 = !{ptr @debug, !34, !"debug", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 333, i32 12}
!35 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!36 = !{ptr @__param_str_video_nr, !6, !"__param_str_video_nr", i1 false, i1 false}
!37 = !{ptr @video_nr, !38, !"video_nr", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 360, i32 12}
!39 = !{ptr @__param_str_jpeg_enable, !11, !"__param_str_jpeg_enable", i1 false, i1 false}
!40 = !{ptr @jpeg_enable, !41, !"jpeg_enable", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 363, i32 12}
!42 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2367, i32 10}
!44 = !{ptr @s2255_driver, !45, !"s2255_driver", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2366, i32 26}
!46 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2213, i32 3}
!48 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @s2255_probe._entry, !47, !"_entry", i1 false, i1 false}
!53 = !{ptr @s2255_probe._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @s2255_probe._entry.9, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2219, i32 3}
!56 = !{ptr @s2255_probe._entry_ptr.10, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @s2255_probe.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2228, i32 2}
!59 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @s2255_probe.__key.12, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2229, i32 2}
!62 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2233, i32 3}
!65 = !{ptr @s2255_probe._entry.14, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @s2255_probe._entry_ptr.16, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2237, i32 2}
!69 = !{ptr @s2255_probe.__UNIQUE_ID_ddebug309, !68, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2242, i32 2}
!72 = !{ptr @s2255_probe.__UNIQUE_ID_ddebug310, !71, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2253, i32 3}
!75 = !{ptr @s2255_probe._entry.19, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @s2255_probe._entry_ptr.21, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @s2255_probe.__key.22, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2256, i32 2}
!79 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @s2255_probe.__key.24, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2257, i32 2}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @s2255_probe.__key.26, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2262, i32 3}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @s2255_probe.__key.28, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2263, i32 3}
!88 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @s2255_probe.__key.30, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2264, i32 3}
!91 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @s2255_probe.__key.32, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2265, i32 3}
!94 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2274, i32 3}
!97 = !{ptr @s2255_probe._entry.34, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @s2255_probe._entry_ptr.36, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2279, i32 9}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2280, i32 3}
!103 = !{ptr @s2255_probe._entry.38, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @s2255_probe._entry_ptr.40, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2288, i32 3}
!107 = !{ptr @s2255_probe._entry.41, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @s2255_probe._entry_ptr.43, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2295, i32 3}
!111 = !{ptr @s2255_probe._entry.44, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @s2255_probe._entry_ptr.46, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2298, i32 4}
!115 = !{ptr @s2255_probe._entry.47, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @s2255_probe._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2301, i32 4}
!119 = !{ptr @s2255_probe._entry.50, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @s2255_probe._entry_ptr.52, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2314, i32 2}
!123 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @s2255_probe._entry.53, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @s2255_probe._entry_ptr.56, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2334, i32 2}
!128 = !{ptr @s2255_probe._entry.57, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @s2255_probe._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 477, i32 3}
!132 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @s2255_timer._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @s2255_timer._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1972, i32 2}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @s2255_board_init._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @s2255_board_init._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1981, i32 3}
!142 = !{ptr @s2255_board_init._entry.64, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @s2255_board_init._entry_ptr.66, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1987, i32 2}
!146 = !{ptr @s2255_board_init._entry.67, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @s2255_board_init._entry_ptr.69, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1992, i32 3}
!150 = !{ptr @s2255_board_init._entry.70, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @s2255_board_init._entry_ptr.72, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2012, i32 2}
!154 = !{ptr @s2255_board_init._entry.73, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @s2255_board_init._entry_ptr.75, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1913, i32 3}
!158 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @s2255_get_fx2fw._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @s2255_get_fx2fw._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1915, i32 2}
!163 = !{ptr @s2255_get_fx2fw._entry.78, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @s2255_get_fx2fw._entry_ptr.80, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @formats, !166, !"formats", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 385, i32 31}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1939, i32 4}
!169 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @s2255_create_sys_buffers._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @s2255_create_sys_buffers._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2092, i32 2}
!174 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @s2255_start_readpipe._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @s2255_start_readpipe._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2106, i32 3}
!179 = !{ptr @s2255_start_readpipe._entry.85, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @s2255_start_readpipe._entry_ptr.87, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2041, i32 3}
!183 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @read_pipe_completion._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @read_pipe_completion._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @read_pipe_completion._entry.90, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2046, i32 3}
!188 = !{ptr @read_pipe_completion._entry_ptr.91, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2052, i32 3}
!191 = !{ptr @read_pipe_completion._entry.92, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @read_pipe_completion._entry_ptr.94, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2058, i32 3}
!195 = !{ptr @read_pipe_completion._entry.95, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @read_pipe_completion._entry_ptr.97, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2066, i32 3}
!199 = !{ptr @read_pipe_completion._entry.98, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @read_pipe_completion._entry_ptr.100, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2079, i32 4}
!203 = !{ptr @read_pipe_completion._entry.101, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @read_pipe_completion._entry_ptr.103, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2081, i32 3}
!207 = !{ptr @read_pipe_completion._entry.104, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @read_pipe_completion._entry_ptr.106, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.107, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1852, i32 2}
!211 = !{ptr @.str.108, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @s2255_read_video_callback._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @s2255_read_video_callback._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1856, i32 3}
!216 = !{ptr @s2255_read_video_callback._entry.109, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @s2255_read_video_callback._entry_ptr.111, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1862, i32 3}
!220 = !{ptr @s2255_read_video_callback._entry.112, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @s2255_read_video_callback._entry_ptr.114, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.116, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1864, i32 2}
!224 = !{ptr @s2255_read_video_callback._entry.115, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @s2255_read_video_callback._entry_ptr.117, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.118, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1702, i32 2}
!228 = !{ptr @.str.119, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @save_frame._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @save_frame._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.121, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1717, i32 5}
!233 = !{ptr @save_frame._entry.120, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @save_frame._entry_ptr.122, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.124, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1723, i32 6}
!237 = !{ptr @save_frame._entry.123, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @save_frame._entry_ptr.125, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.127, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1755, i32 6}
!241 = !{ptr @save_frame._entry.126, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @save_frame._entry_ptr.128, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.130, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1762, i32 6}
!245 = !{ptr @save_frame._entry.129, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @save_frame._entry_ptr.131, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.133, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1771, i32 6}
!249 = !{ptr @save_frame._entry.132, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @save_frame._entry_ptr.134, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.136, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1775, i32 6}
!253 = !{ptr @save_frame._entry.135, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @save_frame._entry_ptr.137, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.139, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1809, i32 3}
!257 = !{ptr @save_frame._entry.138, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @save_frame._entry_ptr.140, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.142, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1825, i32 2}
!261 = !{ptr @save_frame._entry.141, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @save_frame._entry_ptr.143, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.145, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1828, i32 3}
!265 = !{ptr @save_frame._entry.144, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @save_frame._entry_ptr.146, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @G_chnmap, !268, !"G_chnmap", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 331, i32 22}
!269 = !{ptr @.str.147, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 551, i32 3}
!271 = !{ptr @.str.148, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @s2255_got_frame._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @s2255_got_frame._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.150, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 566, i32 2}
!276 = !{ptr @s2255_got_frame._entry.149, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @s2255_got_frame._entry_ptr.151, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.152, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 628, i32 4}
!280 = !{ptr @.str.153, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @s2255_fillbuff._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @s2255_fillbuff._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.155, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 632, i32 3}
!285 = !{ptr @s2255_fillbuff._entry.154, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @s2255_fillbuff._entry_ptr.156, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.158, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 635, i32 2}
!289 = !{ptr @s2255_fillbuff._entry.157, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @s2255_fillbuff._entry_ptr.159, !288, !"_entry_ptr", i1 false, i1 false}
!291 = distinct !{null, !292, !"__already_done", i1 false, i1 false}
!292 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!293 = !{ptr @.str.160, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.161, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 498, i32 3}
!296 = !{ptr @.str.162, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @s2255_fwchunk_complete._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @s2255_fwchunk_complete._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.164, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 505, i32 3}
!301 = !{ptr @s2255_fwchunk_complete._entry.163, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @s2255_fwchunk_complete._entry_ptr.165, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.167, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 530, i32 4}
!305 = !{ptr @s2255_fwchunk_complete._entry.166, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @s2255_fwchunk_complete._entry_ptr.168, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @s2255_probe_v4l._key, !308, !"_key", i1 false, i1 false}
!308 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1601, i32 3}
!309 = !{ptr @.str.169, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.170, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1621, i32 4}
!312 = !{ptr @.str.171, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @s2255_probe_v4l._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @s2255_probe_v4l._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.173, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1635, i32 4}
!317 = !{ptr @s2255_probe_v4l._entry.172, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @s2255_probe_v4l._entry_ptr.174, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.176, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1658, i32 4}
!321 = !{ptr @s2255_probe_v4l._entry.175, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @s2255_probe_v4l._entry_ptr.177, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.179, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1663, i32 3}
!325 = !{ptr @s2255_probe_v4l._entry.178, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @s2255_probe_v4l._entry_ptr.180, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.182, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1667, i32 2}
!329 = !{ptr @s2255_probe_v4l._entry.181, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @s2255_probe_v4l._entry_ptr.183, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.185, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1675, i32 3}
!333 = !{ptr @s2255_probe_v4l._entry.184, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @s2255_probe_v4l._entry_ptr.186, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @s2255_ctrl_ops, !336, !"s2255_ctrl_ops", i1 false, i1 false}
!336 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1570, i32 35}
!337 = !{ptr @.str.187, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 992, i32 2}
!339 = !{ptr @.str.188, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @s2255_set_mode._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @s2255_set_mode._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.190, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1003, i32 2}
!344 = !{ptr @s2255_set_mode._entry.189, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @s2255_set_mode._entry_ptr.191, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.193, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1020, i32 4}
!348 = !{ptr @s2255_set_mode._entry.192, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @s2255_set_mode._entry_ptr.194, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.196, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1026, i32 2}
!352 = !{ptr @s2255_set_mode._entry.195, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @s2255_set_mode._entry_ptr.197, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.198, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 966, i32 2}
!356 = !{ptr @.str.199, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @s2255_print_cfg._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @s2255_print_cfg._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.201, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 967, i32 2}
!361 = !{ptr @s2255_print_cfg._entry.200, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @s2255_print_cfg._entry_ptr.202, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.204, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 968, i32 2}
!365 = !{ptr @s2255_print_cfg._entry.203, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @s2255_print_cfg._entry_ptr.205, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.207, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 969, i32 2}
!369 = !{ptr @s2255_print_cfg._entry.206, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @s2255_print_cfg._entry_ptr.208, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @s2255_print_cfg._entry.209, !372, !"_entry", i1 false, i1 false}
!372 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 970, i32 2}
!373 = !{ptr @s2255_print_cfg._entry_ptr.210, !372, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.211, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1576, i32 10}
!376 = !{ptr @color_filter_ctrl, !377, !"color_filter_ctrl", i1 false, i1 false}
!377 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1574, i32 38}
!378 = !{ptr @s2255_video_qops, !379, !"s2255_video_qops", i1 false, i1 false}
!379 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 701, i32 29}
!380 = !{ptr @.str.212, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 665, i32 2}
!382 = !{ptr @.str.213, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @buffer_prepare._entry, !381, !"_entry", i1 false, i1 false}
!384 = !{ptr @buffer_prepare._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.215, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 673, i32 3}
!387 = !{ptr @buffer_prepare._entry.214, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @buffer_prepare._entry_ptr.216, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @buffer_prepare._entry.217, !390, !"_entry", i1 false, i1 false}
!390 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 678, i32 3}
!391 = !{ptr @buffer_prepare._entry_ptr.218, !390, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.219, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2137, i32 3}
!394 = !{ptr @.str.220, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @s2255_start_acquire._entry, !393, !"_entry", i1 false, i1 false}
!396 = !{ptr @s2255_start_acquire._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.222, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2139, i32 2}
!399 = !{ptr @s2255_start_acquire._entry.221, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @s2255_start_acquire._entry_ptr.223, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.224, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1088, i32 3}
!403 = !{ptr @.str.225, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @stop_streaming._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @stop_streaming._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.226, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2160, i32 3}
!408 = !{ptr @.str.227, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @s2255_stop_acquire._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @s2255_stop_acquire._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.229, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2162, i32 2}
!413 = !{ptr @s2255_stop_acquire._entry.228, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @s2255_stop_acquire._entry_ptr.230, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.231, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 692, i32 2}
!417 = !{ptr @buffer_queue._entry, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @buffer_queue._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @template, !420, !"template", i1 false, i1 false}
!420 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1562, i32 34}
!421 = !{ptr @s2255_fops_v4l, !422, !"s2255_fops_v4l", i1 false, i1 false}
!422 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1508, i32 42}
!423 = !{ptr @.str.232, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1413, i32 2}
!425 = !{ptr @.str.233, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @s2255_open._entry, !424, !"_entry", i1 false, i1 false}
!427 = !{ptr @s2255_open._entry_ptr, !424, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.235, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1419, i32 3}
!430 = !{ptr @s2255_open._entry.234, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @s2255_open._entry_ptr.236, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.238, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1435, i32 3}
!434 = !{ptr @s2255_open._entry.237, !433, !"_entry", i1 false, i1 false}
!435 = !{ptr @s2255_open._entry_ptr.239, !433, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.241, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1454, i32 3}
!438 = !{ptr @s2255_open._entry.240, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @s2255_open._entry_ptr.242, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.244, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1457, i32 3}
!442 = !{ptr @s2255_open._entry.243, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @s2255_open._entry_ptr.245, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.247, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1461, i32 3}
!446 = !{ptr @s2255_open._entry.246, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @s2255_open._entry_ptr.248, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.250, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1472, i32 3}
!450 = !{ptr @s2255_open._entry.249, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @s2255_open._entry_ptr.251, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.252, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1552, i32 2}
!454 = !{ptr @.str.253, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @s2255_video_device_release._entry, !453, !"_entry", i1 false, i1 false}
!456 = !{ptr @s2255_video_device_release._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.254, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1486, i32 2}
!459 = !{ptr @.str.255, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @s2255_destroy._entry, !458, !"_entry", i1 false, i1 false}
!461 = !{ptr @s2255_destroy._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @s2255_ioctl_ops, !463, !"s2255_ioctl_ops", i1 false, i1 false}
!463 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1518, i32 36}
!464 = !{ptr @.str.256, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../include/linux/usb.h", i32 912, i32 31}
!466 = !{ptr @.str.257, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 828, i32 3}
!468 = !{ptr @.str.258, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @vidioc_s_fmt_vid_cap._entry, !467, !"_entry", i1 false, i1 false}
!470 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr, !467, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.259, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 770, i32 2}
!473 = !{ptr @.str.260, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @vidioc_try_fmt_vid_cap._entry, !472, !"_entry", i1 false, i1 false}
!475 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !472, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.262, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 803, i32 2}
!478 = !{ptr @vidioc_try_fmt_vid_cap._entry.261, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr.263, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.264, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1109, i32 3}
!482 = !{ptr @.str.265, !481, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @vidioc_s_std._entry, !481, !"_entry", i1 false, i1 false}
!484 = !{ptr @vidioc_s_std._entry_ptr, !481, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.267, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1119, i32 3}
!487 = !{ptr @vidioc_s_std._entry.266, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @vidioc_s_std._entry_ptr.268, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.269, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1165, i32 3}
!491 = !{ptr @.str.270, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @vidioc_enum_input._entry, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @vidioc_enum_input._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.271, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1174, i32 22}
!496 = !{ptr @.str.272, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1177, i32 52}
!498 = !{ptr @.str.273, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1040, i32 2}
!500 = !{ptr @.str.274, !499, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @s2255_cmd_status._entry, !499, !"_entry", i1 false, i1 false}
!502 = !{ptr @s2255_cmd_status._entry_ptr, !499, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.276, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1052, i32 3}
!505 = !{ptr @s2255_cmd_status._entry.275, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @s2255_cmd_status._entry_ptr.277, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.279, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1056, i32 2}
!509 = !{ptr @s2255_cmd_status._entry.278, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @s2255_cmd_status._entry_ptr.280, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.281, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1242, i32 2}
!513 = !{ptr @.str.282, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @vidioc_g_jpegcomp._entry, !512, !"_entry", i1 false, i1 false}
!515 = !{ptr @vidioc_g_jpegcomp._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.283, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1254, i32 2}
!518 = !{ptr @vidioc_s_jpegcomp._entry, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @vidioc_s_jpegcomp._entry_ptr, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.284, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1287, i32 2}
!522 = !{ptr @.str.285, !521, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @vidioc_g_parm._entry, !521, !"_entry", i1 false, i1 false}
!524 = !{ptr @vidioc_g_parm._entry_ptr, !521, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.286, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1329, i32 2}
!527 = !{ptr @.str.287, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @vidioc_s_parm._entry, !526, !"_entry", i1 false, i1 false}
!529 = !{ptr @vidioc_s_parm._entry_ptr, !526, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @ntsc_sizes, !531, !"ntsc_sizes", i1 false, i1 false}
!531 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1338, i32 43}
!532 = !{ptr @pal_sizes, !533, !"pal_sizes", i1 false, i1 false}
!533 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1343, i32 43}
!534 = !{ptr @.str.288, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 1396, i32 2}
!536 = !{ptr @.str.289, !535, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @vidioc_enum_frameintervals._entry, !535, !"_entry", i1 false, i1 false}
!538 = !{ptr @vidioc_enum_frameintervals._entry_ptr, !535, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @.str.290, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2019, i32 2}
!541 = !{ptr @.str.291, !540, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @s2255_board_shutdown._entry, !540, !"_entry", i1 false, i1 false}
!543 = !{ptr @s2255_board_shutdown._entry_ptr, !540, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.292, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2178, i32 2}
!546 = !{ptr @s2255_stop_readpipe._entry, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @s2255_stop_readpipe._entry_ptr, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.293, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 2363, i32 2}
!550 = !{ptr @.str.294, !549, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @s2255_disconnect._entry, !549, !"_entry", i1 false, i1 false}
!552 = !{ptr @s2255_disconnect._entry_ptr, !549, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @s2255_table, !554, !"s2255_table", i1 false, i1 false}
!554 = !{!"../drivers/media/usb/s2255/s2255drv.c", i32 374, i32 35}
!555 = !{i32 1, !"wchar_size", i32 2}
!556 = !{i32 1, !"min_enum_size", i32 4}
!557 = !{i32 8, !"branch-target-enforcement", i32 0}
!558 = !{i32 8, !"sign-return-address", i32 0}
!559 = !{i32 8, !"sign-return-address-all", i32 0}
!560 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!561 = !{i32 7, !"uwtable", i32 1}
!562 = !{i32 7, !"frame-pointer", i32 2}
!563 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!564 = !{i64 2149019434, i64 2149019439, i64 2149019452, i64 2149019496, i64 2149019530, i64 2149019551}
!565 = !{i64 2148406057, i64 2148406083, i64 2148406112, i64 2148406146, i64 2148406177, i64 2148406200}
!566 = !{i64 2148494533}
!567 = !{i64 2148409242, i64 2148409274, i64 2148409303, i64 2148409337, i64 2148409368, i64 2148409391}
!568 = !{i64 2148494762}
!569 = !{!"branch_weights", i32 2000, i32 1}
!570 = !{!"auto-init"}
