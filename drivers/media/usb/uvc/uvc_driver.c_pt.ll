; ModuleID = '/llk/IR_all_yes/drivers/media/usb/uvc/uvc_driver.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.uvc_driver = type { %struct.usb_driver }
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
%struct.uvc_device_info = type { i32, i32, i16 }
%struct.uvc_format_desc = type { ptr, [16 x i8], i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.uvc_entity = type { %struct.list_head, %struct.list_head, i32, i16, i16, [64 x i8], [16 x i8], ptr, %struct.v4l2_subdev, i32, i32, ptr, %union.anon.111, i8, ptr, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%union.anon.111 = type { %struct.anon.113 }
%struct.anon.113 = type { i8, ptr, i8, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.uvc_streaming = type { %struct.list_head, ptr, %struct.video_device, ptr, %struct.atomic_t, ptr, i32, i16, %struct.uvc_streaming_header, i32, i32, ptr, %struct.uvc_streaming_control, ptr, ptr, ptr, %struct.mutex, i8, %struct.uvc_video_queue, ptr, ptr, %struct.anon.119, %struct.anon.120, [5 x %struct.uvc_urb], i32, i32, i8, ptr, %struct.anon.121, %struct.uvc_clock }
%struct.uvc_streaming_header = type { i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.uvc_streaming_control = type <{ i16, i8, i8, i32, i16, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8 }>
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.119 = type { %struct.video_device, %struct.uvc_video_queue, i32 }
%struct.anon.120 = type { [256 x i8], i32, i32, i32, i32 }
%struct.uvc_urb = type { ptr, ptr, ptr, i32, ptr, i32, [32 x %struct.uvc_copy_op], %struct.work_struct }
%struct.uvc_copy_op = type { ptr, ptr, ptr, i32 }
%struct.anon.121 = type { %struct.uvc_stats_frame, %struct.uvc_stats_stream }
%struct.uvc_stats_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i16, i32 }
%struct.uvc_stats_stream = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_clock = type { ptr, i32, i32, i32, i16, i16, [6 x i8], %struct.spinlock }
%struct.uvc_video_chain = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex, %struct.v4l2_prio_state, i32, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.anon.117 = type { i8, i8, ptr, ptr }
%struct.uvc_format = type { i8, i8, i8, i32, i32, i32, i32, i32, [32 x i8], i32, ptr }
%struct.uvc_frame = type { i8, i8, i16, i16, i32, i32, i32, i8, i32, ptr }
%struct.v4l2_format_info = type { i32, i8, i8, i8, [4 x i8], i8, i8, [4 x i8], [4 x i8] }
%struct.anon.112 = type { i16, i16, i16, i8, ptr }
%struct.anon.115 = type { i16, i8, ptr, i8 }
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@uvc_clock_param = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@uvc_timeout_param = dso_local global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@uvc_no_drop_param = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@uvc_register_video_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2247, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register %s device (%d).\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uvc_register_video_device\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/uvc/uvc_driver.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_register_video_device._entry_ptr = internal global ptr @uvc_register_video_device._entry, section ".printk_index", align 4
@v4l2_type_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__param_str_clock = internal constant [15 x i8] c"uvcvideo.clock\00", align 1
@__param_ops_clock = internal constant %struct.kernel_param_ops { i32 0, ptr @uvc_clock_param_set, ptr @uvc_clock_param_get, ptr null }, align 4
@__param_clock = internal constant %struct.kernel_param { ptr @__param_str_clock, ptr null, ptr @__param_ops_clock, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @uvc_clock_param } }, section "__param", align 4
@__UNIQUE_ID_clock307 = internal constant [50 x i8] c"uvcvideo.parm=clock:Video buffers timestamp clock\00", section ".modinfo", align 1
@__param_str_hwtimestamps = internal constant [22 x i8] c"uvcvideo.hwtimestamps\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@uvc_hw_timestamps_param = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_hwtimestamps = internal constant %struct.kernel_param { ptr @__param_str_hwtimestamps, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @uvc_hw_timestamps_param } }, section "__param", align 4
@__UNIQUE_ID_hwtimestampstype308 = internal constant [36 x i8] c"uvcvideo.parmtype=hwtimestamps:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_hwtimestamps309 = internal constant [51 x i8] c"uvcvideo.parm=hwtimestamps:Use hardware timestamps\00", section ".modinfo", align 1
@__param_str_nodrop = internal constant [16 x i8] c"uvcvideo.nodrop\00", align 1
@__param_nodrop = internal constant %struct.kernel_param { ptr @__param_str_nodrop, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @uvc_no_drop_param } }, section "__param", align 4
@__UNIQUE_ID_nodroptype310 = internal constant [30 x i8] c"uvcvideo.parmtype=nodrop:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_nodrop311 = internal constant [50 x i8] c"uvcvideo.parm=nodrop:Don't drop incomplete frames\00", section ".modinfo", align 1
@__param_str_quirks = internal constant [16 x i8] c"uvcvideo.quirks\00", align 1
@uvc_quirks_param = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @uvc_quirks_param } }, section "__param", align 4
@__UNIQUE_ID_quirkstype312 = internal constant [30 x i8] c"uvcvideo.parmtype=quirks:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_quirks313 = internal constant [42 x i8] c"uvcvideo.parm=quirks:Forced device quirks\00", section ".modinfo", align 1
@__param_str_trace = internal constant [15 x i8] c"uvcvideo.trace\00", align 1
@uvc_dbg_param = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_trace = internal constant %struct.kernel_param { ptr @__param_str_trace, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @uvc_dbg_param } }, section "__param", align 4
@__UNIQUE_ID_tracetype314 = internal constant [29 x i8] c"uvcvideo.parmtype=trace:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_trace315 = internal constant [40 x i8] c"uvcvideo.parm=trace:Trace level bitmask\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [17 x i8] c"uvcvideo.timeout\00", align 1
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @uvc_timeout_param } }, section "__param", align 4
@__UNIQUE_ID_timeouttype316 = internal constant [31 x i8] c"uvcvideo.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout317 = internal constant [57 x i8] c"uvcvideo.parm=timeout:Streaming control requests timeout\00", section ".modinfo", align 1
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uvcvideo\00", [23 x i8] zeroinitializer }, align 32
@uvc_ids = internal constant { [58 x %struct.usb_device_id], [336 x i8] } { [58 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1046, i16 -22246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1112, i16 28782, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1118, i16 248, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1118, i16 1825, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1118, i16 1827, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1133, i16 2241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 899, i16 1266, i16 -20367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }, %struct.usb_device_id { i16 899, i16 1423, i16 14368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 9792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 9793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 9795, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 9802, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 30320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1452, i16 -31487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.296 to i32) }, %struct.usb_device_id { i16 899, i16 1452, i16 -31232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1480, i16 1027, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 1507, i16 1285, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 1784, i16 12300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 2760, i16 13101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 2760, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 2760, i16 13344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 3027, i16 1365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 3725, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.297 to i32) }, %struct.usb_device_id { i16 899, i16 5075, i16 20739, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5421, i16 784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 21010, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 22833, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 -30190, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 -30159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 -30157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 -30156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 6108, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 6127, i16 18443, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 6257, i16 774, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.298 to i32) }, %struct.usb_device_id { i16 899, i16 6257, i16 1302, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6349, i16 -13570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.299 to i32) }, %struct.usb_device_id { i16 899, i16 6380, i16 12680, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 6380, i16 12936, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 6380, i16 12944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 6558, i16 -32510, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 907, i16 6571, i16 4096, i16 0, i16 294, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.300 to i32) }, %struct.usb_device_id { i16 899, i16 6971, i16 10577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 6975, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 7119, i16 2880, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }, %struct.usb_device_id { i16 899, i16 7247, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.302 to i32) }, %struct.usb_device_id { i16 899, i16 10291, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_force_y8 to i32) }, %struct.usb_device_id { i16 899, i16 10291, i16 529, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_force_y8 to i32) }, %struct.usb_device_id { i16 899, i16 10750, i16 19795, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.303 to i32) }, %struct.usb_device_id { i16 899, i16 -32634, i16 2819, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.304 to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 1, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [336 x i8] zeroinitializer }, align 32
@uvc_driver = dso_local global { %struct.uvc_driver, [44 x i8] } { %struct.uvc_driver { %struct.usb_driver { ptr @.str.5, ptr @uvc_probe, ptr @uvc_disconnect, ptr null, ptr @uvc_suspend, ptr @uvc_resume, ptr @uvc_reset_resume, ptr null, ptr null, ptr @uvc_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_uvcvideo__318_3210_uvc_init6 = internal global ptr @uvc_init, section ".initcall6.init", align 4
@__exitcall_uvc_cleanup = internal global ptr @uvc_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author319 = internal constant [69 x i8] c"uvcvideo.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [44 x i8] c"uvcvideo.description=USB Video Class driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [45 x i8] c"uvcvideo.file=drivers/media/usb/uvc/uvcvideo\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [21 x i8] c"uvcvideo.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version323 = internal constant [23 x i8] c"uvcvideo.version=1.1.1\00", section ".modinfo", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.1.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.5, ptr @.str.7 }, section "__modver", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clock_\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"monotonic\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"realtime\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CLOCK_MONOTONIC\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CLOCK_REALTIME\00", [17 x i8] zeroinitializer }, align 32
@uvc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@uvc_quirk_none = internal constant { %struct.uvc_device_info, [20 x i8] } zeroinitializer, align 32
@uvc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 2378, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Probing known UVC device %s (%04x:%04x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uvc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr = internal global ptr @uvc_probe._entry, section ".printk_index", align 4
@uvc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 2381, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Probing generic UVC device %s\0A\00", [33 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.19 = internal global ptr @uvc_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UVC Camera (%04x:%04x)\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c": \00", [29 x i8] zeroinitializer }, align 32
@uvc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 2425, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to parse UVC descriptors\0A\00", [63 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.24 = internal global ptr @uvc_probe._entry.22, section ".printk_index", align 4
@uvc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.2, i32 2431, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to parse UVC GPIOs\0A\00", [37 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.27 = internal global ptr @uvc_probe._entry.25, section ".printk_index", align 4
@uvc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.2, i32 2439, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Found UVC %u.%02x device %s (%04x:%04x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.31 = internal global ptr @uvc_probe._entry.28, section ".printk_index", align 4
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unnamed>\00", [22 x i8] zeroinitializer }, align 32
@uvc_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.15, ptr @.str.2, i32 2444, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Forcing device quirks to 0x%x by module parameter for testing purpose.\0A\00", [56 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.35 = internal global ptr @uvc_probe._entry.33, section ".printk_index", align 4
@uvc_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.15, ptr @.str.2, i32 2446, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Please report required quirks to the linux-uvc-devel mailing list.\0A\00", [60 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.38 = internal global ptr @uvc_probe._entry.36, section ".printk_index", align 4
@uvc_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.15, ptr @.str.2, i32 2452, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Forcing UVC version to %u.%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.41 = internal global ptr @uvc_probe._entry.39, section ".printk_index", align 4
@uvc_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.15, ptr @.str.2, i32 2483, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Unable to initialize the status endpoint (%d), status interrupt will not be supported.\0A\00", [40 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.44 = internal global ptr @uvc_probe._entry.42, section ".printk_index", align 4
@uvc_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.15, ptr @.str.2, i32 2489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to request privacy GPIO IRQ (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.47 = internal global ptr @uvc_probe._entry.45, section ".printk_index", align 4
@uvc_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.15, ptr @.str.2, i32 2493, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"UVC device initialized\0A\00", [40 x i8] zeroinitializer }, align 32
@uvc_probe._entry_ptr.50 = internal global ptr @uvc_probe._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@uvc_parse_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1470, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Found a Status endpoint (addr %02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uvc_parse_control\00", [46 x i8] zeroinitializer }, align 32
@uvc_parse_control._entry_ptr = internal global ptr @uvc_parse_control._entry, section ".printk_index", align 4
@uvc_parse_vendor_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1137, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"device %d videocontrol interface %d EXTENSION_UNIT error\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"uvc_parse_vendor_control\00", [39 x i8] zeroinitializer }, align 32
@uvc_parse_vendor_control._entry_ptr = internal global ptr @uvc_parse_vendor_control._entry, section ".printk_index", align 4
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Extension %u\00", [19 x i8] zeroinitializer }, align 32
@uvc_gpio_guid = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\03", [16 x i8] zeroinitializer }, align 32
@uvc_camera_guid = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8] zeroinitializer }, align 32
@uvc_media_transport_input_guid = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03", [16 x i8] zeroinitializer }, align 32
@uvc_processing_guid = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", [16 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1186, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"device %d videocontrol interface %d HEADER error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"uvc_parse_standard_control\00", [37 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr = internal global ptr @uvc_parse_standard_control._entry, section ".printk_index", align 4
@uvc_parse_standard_control._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 1199, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"device %d interface %d doesn't exists\0A\00", [57 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.61 = internal global ptr @uvc_parse_standard_control._entry.59, section ".printk_index", align 4
@uvc_parse_standard_control._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 1211, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"device %d videocontrol interface %d INPUT_TERMINAL error\0A\00", [38 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.64 = internal global ptr @uvc_parse_standard_control._entry.62, section ".printk_index", align 4
@uvc_parse_standard_control._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 1231, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"device %d videocontrol interface %d INPUT_TERMINAL %d has invalid type 0x%04x, skipping\0A\00", [39 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.67 = internal global ptr @uvc_parse_standard_control._entry.65, section ".printk_index", align 4
@uvc_parse_standard_control._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 1252, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.69 = internal global ptr @uvc_parse_standard_control._entry.68, section ".printk_index", align 4
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Camera %u\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Media %u\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Input %u\00", [23 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.58, ptr @.str.2, i32 1299, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"device %d videocontrol interface %d OUTPUT_TERMINAL error\0A\00", [37 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.75 = internal global ptr @uvc_parse_standard_control._entry.73, section ".printk_index", align 4
@uvc_parse_standard_control._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.58, ptr @.str.2, i32 1311, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"device %d videocontrol interface %d OUTPUT_TERMINAL %d has invalid type 0x%04x, skipping\0A\00", [38 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.78 = internal global ptr @uvc_parse_standard_control._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Output %u\00", [22 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.58, ptr @.str.2, i32 1337, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"device %d videocontrol interface %d SELECTOR_UNIT error\0A\00", [39 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.82 = internal global ptr @uvc_parse_standard_control._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Selector %u\00", [20 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.58, ptr @.str.2, i32 1363, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"device %d videocontrol interface %d PROCESSING_UNIT error\0A\00", [37 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.86 = internal global ptr @uvc_parse_standard_control._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Processing %u\00", [18 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.58, ptr @.str.2, i32 1396, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.89 = internal global ptr @uvc_parse_standard_control._entry.88, section ".printk_index", align 4
@uvc_parse_standard_control._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.58, ptr @.str.2, i32 1423, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Found an unknown CS_INTERFACE descriptor (%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@uvc_parse_standard_control._entry_ptr.92 = internal global ptr @uvc_parse_standard_control._entry.90, section ".printk_index", align 4
@uvc_parse_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 799, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"device %d interface %d isn't a video streaming interface\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvc_parse_streaming\00", [44 x i8] zeroinitializer }, align 32
@uvc_parse_streaming._entry_ptr = internal global ptr @uvc_parse_streaming._entry, section ".printk_index", align 4
@uvc_parse_streaming._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 807, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"device %d interface %d is already claimed\0A\00", [53 x i8] zeroinitializer }, align 32
@uvc_parse_streaming._entry_ptr.97 = internal global ptr @uvc_parse_streaming._entry.95, section ".printk_index", align 4
@uvc_parse_streaming._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 831, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"trying extra data from endpoint %u\0A\00", [60 x i8] zeroinitializer }, align 32
@uvc_parse_streaming._entry_ptr.100 = internal global ptr @uvc_parse_streaming._entry.98, section ".printk_index", align 4
@uvc_parse_streaming._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.2, i32 847, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"no class-specific streaming interface descriptors found\0A\00", [39 x i8] zeroinitializer }, align 32
@uvc_parse_streaming._entry_ptr.103 = internal global ptr @uvc_parse_streaming._entry.101, section ".printk_index", align 4
@uvc_parse_streaming._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.94, ptr @.str.2, i32 866, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"device %d videostreaming interface %d HEADER descriptor not found\0A\00", [61 x i8] zeroinitializer }, align 32
@uvc_parse_streaming._entry_ptr.106 = internal global ptr @uvc_parse_streaming._entry.104, section ".printk_index", align 4
@uvc_parse_streaming._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.94, ptr @.str.2, i32 876, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"device %d videostreaming interface %d HEADER descriptor is invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@uvc_parse_streaming._entry_ptr.109 = internal global ptr @uvc_parse_streaming._entry.107, section ".printk_index", align 4
@uvc_parse_streaming._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.94, ptr @.str.2, i32 929, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"device %d videostreaming interface %d FORMAT %u is not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@uvc_parse_streaming._entry_ptr.112 = internal global ptr @uvc_parse_streaming._entry.110, section ".printk_index", align 4
@uvc_parse_streaming._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.94, ptr @.str.2, i32 953, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"device %d videostreaming interface %d has no supported formats defined\0A\00", [56 x i8] zeroinitializer }, align 32
@uvc_parse_streaming._entry_ptr.115 = internal global ptr @uvc_parse_streaming._entry.113, section ".printk_index", align 4
@uvc_parse_streaming._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.94, ptr @.str.2, i32 1002, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"device %d videostreaming interface %d has %u bytes of trailing descriptor garbage\0A\00", [45 x i8] zeroinitializer }, align 32
@uvc_parse_streaming._entry_ptr.118 = internal global ptr @uvc_parse_streaming._entry.116, section ".printk_index", align 4
@uvc_stream_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&stream->mutex\00", [17 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 525, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"device %d videostreaming interface %d FORMAT error\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvc_parse_format\00", [47 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr = internal global ptr @uvc_parse_format._entry, section ".printk_index", align 4
@uvc_parse_format._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 538, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown video format %pUl\0A\00", [37 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr.124 = internal global ptr @uvc_parse_format._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pUl\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Greyscale 8-bit (Y8  )\00", [41 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 589, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr.128 = internal global ptr @uvc_parse_format._entry.127, section ".printk_index", align 4
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MJPEG\00", [26 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 605, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr.131 = internal global ptr @uvc_parse_format._entry.130, section ".printk_index", align 4
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SD-DV\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDL-DV\00", [25 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HD-DV\00", [26 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.121, ptr @.str.2, i32 623, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"device %d videostreaming interface %d: unknown DV format %u\0A\00", [35 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr.137 = internal global ptr @uvc_parse_format._entry.135, section ".printk_index", align 4
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" 60Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" 50Hz\00", [26 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.121, ptr @.str.2, i32 652, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"device %d videostreaming interface %d unsupported format %u\0A\00", [35 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr.142 = internal global ptr @uvc_parse_format._entry.140, section ".printk_index", align 4
@uvc_parse_format._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.121, ptr @.str.2, i32 656, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Found format %s\0A\00", [47 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr.145 = internal global ptr @uvc_parse_format._entry.143, section ".printk_index", align 4
@uvc_parse_format._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.121, ptr @.str.2, i32 678, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"device %d videostreaming interface %d FRAME error\0A\00", [45 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr.148 = internal global ptr @uvc_parse_format._entry.146, section ".printk_index", align 4
@uvc_parse_format._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.121, ptr @.str.2, i32 743, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"- %ux%u (%u.%u fps)\0A\00", [43 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr.151 = internal global ptr @uvc_parse_format._entry.149, section ".printk_index", align 4
@uvc_parse_format._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.121, ptr @.str.2, i32 762, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"device %d videostreaming interface %d COLORFORMAT error\0A\00", [39 x i8] zeroinitializer }, align 32
@uvc_parse_format._entry_ptr.154 = internal global ptr @uvc_parse_format._entry.152, section ".printk_index", align 4
@uvc_fmts = internal global { [36 x %struct.uvc_format_desc], [192 x i8] } { [36 x %struct.uvc_format_desc] [%struct.uvc_format_desc { ptr @.str.155, [16 x i8] c"YUY2\00\00\10\00\80\00\00\AA\008\9Bq", i32 1448695129 }, %struct.uvc_format_desc { ptr @.str.155, [16 x i8] c"YUY2\00\00\10\00\80\00\00\00\008\9Bq", i32 1448695129 }, %struct.uvc_format_desc { ptr @.str.156, [16 x i8] c"NV12\00\00\10\00\80\00\00\AA\008\9Bq", i32 842094158 }, %struct.uvc_format_desc { ptr @.str.129, [16 x i8] c"MJPG\00\00\10\00\80\00\00\AA\008\9Bq", i32 1196444237 }, %struct.uvc_format_desc { ptr @.str.157, [16 x i8] c"YV12\00\00\10\00\80\00\00\AA\008\9Bq", i32 842094169 }, %struct.uvc_format_desc { ptr @.str.158, [16 x i8] c"I420\00\00\10\00\80\00\00\AA\008\9Bq", i32 842093913 }, %struct.uvc_format_desc { ptr @.str.159, [16 x i8] c"M420\00\00\10\00\80\00\00\AA\008\9Bq", i32 808596557 }, %struct.uvc_format_desc { ptr @.str.160, [16 x i8] c"UYVY\00\00\10\00\80\00\00\AA\008\9Bq", i32 1498831189 }, %struct.uvc_format_desc { ptr @.str.161, [16 x i8] c"Y800\00\00\10\00\80\00\00\AA\008\9Bq", i32 1497715271 }, %struct.uvc_format_desc { ptr @.str.126, [16 x i8] c"Y8  \00\00\10\00\80\00\00\AA\008\9Bq", i32 1497715271 }, %struct.uvc_format_desc { ptr @.str.162, [16 x i8] c"2\00\00\00\00\00\10\00\80\00\00\AA\008\9Bq", i32 1497715271 }, %struct.uvc_format_desc { ptr @.str.163, [16 x i8] c"2\00\00\00\02\00\10\00\80\00\00\AA\008\9Bq", i32 1497715271 }, %struct.uvc_format_desc { ptr @.str.164, [16 x i8] c"Y10 \00\00\10\00\80\00\00\AA\008\9Bq", i32 540029273 }, %struct.uvc_format_desc { ptr @.str.165, [16 x i8] c"Y12 \00\00\10\00\80\00\00\AA\008\9Bq", i32 540160345 }, %struct.uvc_format_desc { ptr @.str.166, [16 x i8] c"Y16 \00\00\10\00\80\00\00\AA\008\9Bq", i32 540422489 }, %struct.uvc_format_desc { ptr @.str.167, [16 x i8] c"BY8 \00\00\10\00\80\00\00\AA\008\9Bq", i32 825770306 }, %struct.uvc_format_desc { ptr @.str.168, [16 x i8] c"BA81\00\00\10\00\80\00\00\AA\008\9Bq", i32 825770306 }, %struct.uvc_format_desc { ptr @.str.169, [16 x i8] c"GBRG\00\00\10\00\80\00\00\AA\008\9Bq", i32 1196573255 }, %struct.uvc_format_desc { ptr @.str.170, [16 x i8] c"GRBG\00\00\10\00\80\00\00\AA\008\9Bq", i32 1195528775 }, %struct.uvc_format_desc { ptr @.str.171, [16 x i8] c"RGGB\00\00\10\00\80\00\00\AA\008\9Bq", i32 1111967570 }, %struct.uvc_format_desc { ptr @.str.172, [16 x i8] c"RGBP\00\00\10\00\80\00\00\AA\008\9Bq", i32 1346520914 }, %struct.uvc_format_desc { ptr @.str.173, [16 x i8] c"}\EB6\E4OR\CE\11\9FS\00 \AF\0B\A7p", i32 861030210 }, %struct.uvc_format_desc { ptr @.str.174, [16 x i8] c"H264\00\00\10\00\80\00\00\AA\008\9Bq", i32 875967048 }, %struct.uvc_format_desc { ptr @.str.175, [16 x i8] c"Y8I \00\00\10\00\80\00\00\AA\008\9Bq", i32 541669465 }, %struct.uvc_format_desc { ptr @.str.176, [16 x i8] c"Y12I\00\00\10\00\80\00\00\AA\008\9Bq", i32 1228026201 }, %struct.uvc_format_desc { ptr @.str.177, [16 x i8] c"Z16 \00\00\10\00\80\00\00\AA\008\9Bq", i32 540422490 }, %struct.uvc_format_desc { ptr @.str.178, [16 x i8] c"RW10\00\00\10\00\80\00\00\AA\008\9Bq", i32 1094799984 }, %struct.uvc_format_desc { ptr @.str.179, [16 x i8] c"BG16\00\00\10\00\80\00\00\AA\008\9Bq", i32 844257602 }, %struct.uvc_format_desc { ptr @.str.180, [16 x i8] c"GB16\00\00\10\00\80\00\00\AA\008\9Bq", i32 909197895 }, %struct.uvc_format_desc { ptr @.str.181, [16 x i8] c"RG16\00\00\10\00\80\00\00\AA\008\9Bq", i32 909199186 }, %struct.uvc_format_desc { ptr @.str.182, [16 x i8] c"GR16\00\00\10\00\80\00\00\AA\008\9Bq", i32 909201991 }, %struct.uvc_format_desc { ptr @.str.177, [16 x i8] c"INVZ\90-XJ\92\0Bw?\1F,Uk", i32 540422490 }, %struct.uvc_format_desc { ptr @.str.164, [16 x i8] c"INVI\DBWI^\8E?\F4yS+\94o", i32 540029273 }, %struct.uvc_format_desc { ptr @.str.183, [16 x i8] c"INZIf\1AB\A2\90e\D0\18\14\A8\EF\8A", i32 1230655049 }, %struct.uvc_format_desc { ptr @.str.184, [16 x i8] c"C   \00\00\10\00\80\00\00\AA\008\9Bq", i32 877022787 }, %struct.uvc_format_desc { ptr @.str.185, [16 x i8] c"HEVC\00\00\10\00\80\00\00\AA\008\9Bq", i32 1129727304 }], [192 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"YUV 4:2:2 (YUYV)\00", [47 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"YUV 4:2:0 (NV12)\00", [47 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"YVU 4:2:0 (YV12)\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"YUV 4:2:0 (I420)\00", [47 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"YUV 4:2:0 (M420)\00", [47 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"YUV 4:2:2 (UYVY)\00", [47 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Greyscale 8-bit (Y800)\00", [41 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Greyscale 8-bit (D3DFMT_L8)\00", [36 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IR 8-bit (L8_IR)\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Greyscale 10-bit (Y10 )\00", [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Greyscale 12-bit (Y12 )\00", [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Greyscale 16-bit (Y16 )\00", [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BGGR Bayer (BY8 )\00", [46 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BGGR Bayer (BA81)\00", [46 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GBRG Bayer (GBRG)\00", [46 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GRBG Bayer (GRBG)\00", [46 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RGGB Bayer (RGGB)\00", [46 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RGB565\00", [25 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BGR 8:8:8 (BGR3)\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"H.264\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Greyscale 8 L/R (Y8I)\00", [42 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Greyscale 12 L/R (Y12I)\00", [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Depth data 16-bit (Z16)\00", [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bayer 10-bit (SRGGB10P)\00", [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bayer 16-bit (SBGGR16)\00", [41 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bayer 16-bit (SGBRG16)\00", [41 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bayer 16-bit (SRGGB16)\00", [41 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bayer 16-bit (SGRBG16)\00", [41 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IR:Depth 26-bit (INZI)\00", [41 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"4-bit Depth Confidence (Packed)\00", [32 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HEVC\00", [27 x i8] zeroinitializer }, align 32
@uvc_colorspace.colorprimaries = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 8, i32 5, i32 6, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@uvc_xfer_func.xfer_funcs = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 4, i32 5, i32 2], [32 x i8] zeroinitializer }, align 32
@uvc_ycbcr_enc.ycbcr_encs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 2, i32 1, i32 1, i32 1, i32 8], [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"privacy\00", [24 x i8] zeroinitializer }, align 32
@uvc_gpio_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.2, i32 1546, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No IRQ for privacy GPIO (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uvc_gpio_parse\00", [17 x i8] zeroinitializer }, align 32
@uvc_gpio_parse._entry_ptr = internal global ptr @uvc_gpio_parse._entry, section ".printk_index", align 4
@.str.189 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@uvc_scan_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.2, i32 2077, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Found a valid video chain (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uvc_scan_device\00", [16 x i8] zeroinitializer }, align 32
@uvc_scan_device._entry_ptr = internal global ptr @uvc_scan_device._entry, section ".printk_index", align 4
@uvc_scan_device._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.2, i32 2086, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No valid video chain found.\0A\00", [35 x i8] zeroinitializer }, align 32
@uvc_scan_device._entry_ptr.194 = internal global ptr @uvc_scan_device._entry.192, section ".printk_index", align 4
@uvc_alloc_chain.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.195 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&chain->ctrl_mutex\00", [45 x i8] zeroinitializer }, align 32
@uvc_scan_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.2, i32 1869, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Scanning UVC chain:\00", [44 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uvc_scan_chain\00", [17 x i8] zeroinitializer }, align 32
@uvc_scan_chain._entry_ptr = internal global ptr @uvc_scan_chain._entry, section ".printk_index", align 4
@uvc_scan_chain._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.197, ptr @.str.2, i32 1879, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Found reference to entity %d already in chain\0A\00", [49 x i8] zeroinitializer }, align 32
@uvc_scan_chain._entry_ptr.200 = internal global ptr @uvc_scan_chain._entry.198, section ".printk_index", align 4
@uvc_scan_chain_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.2, i32 1615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c <- XU %d\00", [20 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uvc_scan_chain_entity\00", [42 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr = internal global ptr @uvc_scan_chain_entity._entry, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.2, i32 1620, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Extension unit %d has more than 1 input pin\0A\00", [51 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.205 = internal global ptr @uvc_scan_chain_entity._entry.203, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.202, ptr @.str.2, i32 1627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c <- PU %d\00", [20 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.208 = internal global ptr @uvc_scan_chain_entity._entry.206, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.202, ptr @.str.2, i32 1631, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Found multiple Processing Units in chain\0A\00", [54 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.211 = internal global ptr @uvc_scan_chain_entity._entry.209, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.202, ptr @.str.2, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c <- SU %d\00", [20 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.214 = internal global ptr @uvc_scan_chain_entity._entry.212, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.202, ptr @.str.2, i32 1647, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Found multiple Selector Units in chain\0A\00", [56 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.217 = internal global ptr @uvc_scan_chain_entity._entry.215, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.202, ptr @.str.2, i32 1657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c <- IT %d\0A\00", [19 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.220 = internal global ptr @uvc_scan_chain_entity._entry.218, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.202, ptr @.str.2, i32 1664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c OT %d\00", [23 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.223 = internal global ptr @uvc_scan_chain_entity._entry.221, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.202, ptr @.str.2, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.225 = internal global ptr @uvc_scan_chain_entity._entry.224, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.202, ptr @.str.2, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.227 = internal global ptr @uvc_scan_chain_entity._entry.226, section ".printk_index", align 4
@uvc_scan_chain_entity._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.202, ptr @.str.2, i32 1679, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported entity type 0x%04x found in chain\0A\00", [49 x i8] zeroinitializer }, align 32
@uvc_scan_chain_entity._entry_ptr.230 = internal global ptr @uvc_scan_chain_entity._entry.228, section ".printk_index", align 4
@uvc_scan_chain_forward._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.231, ptr @.str.2, i32 1707, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uvc_scan_chain_forward\00", [41 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr = internal global ptr @uvc_scan_chain_forward._entry, section ".printk_index", align 4
@uvc_scan_chain_forward._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.231, ptr @.str.2, i32 1716, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr.233 = internal global ptr @uvc_scan_chain_forward._entry.232, section ".printk_index", align 4
@uvc_scan_chain_forward._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.231, ptr @.str.2, i32 1738, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't connect extension unit %u in chain\0A\00", [54 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr.236 = internal global ptr @uvc_scan_chain_forward._entry.234, section ".printk_index", align 4
@uvc_scan_chain_forward._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.231, ptr @.str.2, i32 1747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c (->\00", [25 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr.239 = internal global ptr @uvc_scan_chain_forward._entry.237, section ".printk_index", align 4
@uvc_scan_chain_forward._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.231, ptr @.str.2, i32 1749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c XU %d\00", [23 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr.242 = internal global ptr @uvc_scan_chain_forward._entry.240, section ".printk_index", align 4
@uvc_scan_chain_forward._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.231, ptr @.str.2, i32 1760, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported input terminal %u\0A\00", [33 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr.245 = internal global ptr @uvc_scan_chain_forward._entry.243, section ".printk_index", align 4
@uvc_scan_chain_forward._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.231, ptr @.str.2, i32 1767, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Unsupported connection between output terminals %u and %u\0A\00", [37 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr.248 = internal global ptr @uvc_scan_chain_forward._entry.246, section ".printk_index", align 4
@uvc_scan_chain_forward._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.231, ptr @.str.2, i32 1773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr.250 = internal global ptr @uvc_scan_chain_forward._entry.249, section ".printk_index", align 4
@uvc_scan_chain_forward._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.231, ptr @.str.2, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr.252 = internal global ptr @uvc_scan_chain_forward._entry.251, section ".printk_index", align 4
@uvc_scan_chain_forward._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.231, ptr @.str.2, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c)\00", [28 x i8] zeroinitializer }, align 32
@uvc_scan_chain_forward._entry_ptr.255 = internal global ptr @uvc_scan_chain_forward._entry.253, section ".printk_index", align 4
@uvc_scan_chain_backward._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.257, ptr @.str.2, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c <- IT\00", [23 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uvc_scan_chain_backward\00", [40 x i8] zeroinitializer }, align 32
@uvc_scan_chain_backward._entry_ptr = internal global ptr @uvc_scan_chain_backward._entry, section ".printk_index", align 4
@uvc_scan_chain_backward._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.257, ptr @.str.2, i32 1815, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Selector unit %d input %d isn't connected to an input terminal\0A\00", [32 x i8] zeroinitializer }, align 32
@uvc_scan_chain_backward._entry_ptr.260 = internal global ptr @uvc_scan_chain_backward._entry.258, section ".printk_index", align 4
@uvc_scan_chain_backward._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.257, ptr @.str.2, i32 1822, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uvc_scan_chain_backward._entry_ptr.262 = internal global ptr @uvc_scan_chain_backward._entry.261, section ".printk_index", align 4
@uvc_scan_chain_backward._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.257, ptr @.str.2, i32 1826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %d\00", [26 x i8] zeroinitializer }, align 32
@uvc_scan_chain_backward._entry_ptr.265 = internal global ptr @uvc_scan_chain_backward._entry.263, section ".printk_index", align 4
@uvc_scan_chain_backward._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.257, ptr @.str.2, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@uvc_scan_chain_backward._entry_ptr.268 = internal global ptr @uvc_scan_chain_backward._entry.266, section ".printk_index", align 4
@uvc_scan_chain_backward._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.257, ptr @.str.2, i32 1856, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Found reference to unknown entity %d\0A\00", [58 x i8] zeroinitializer }, align 32
@uvc_scan_chain_backward._entry_ptr.271 = internal global ptr @uvc_scan_chain_backward._entry.269, section ".printk_index", align 4
@uvc_print_chain.buffer = internal global { [43 x i8], [53 x i8] } zeroinitializer, align 32
@.str.272 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" -> \00", [27 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@uvc_scan_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.2, i32 2034, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Found a video chain by fallback heuristic (%s)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uvc_scan_fallback\00", [46 x i8] zeroinitializer }, align 32
@uvc_scan_fallback._entry_ptr = internal global ptr @uvc_scan_fallback._entry, section ".printk_index", align 4
@uvc_register_chains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.279, ptr @.str.2, i32 2334, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register entities (%d).\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvc_register_chains\00", [44 x i8] zeroinitializer }, align 32
@uvc_register_chains._entry_ptr = internal global ptr @uvc_register_chains._entry, section ".printk_index", align 4
@uvc_register_terms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.281, ptr @.str.2, i32 2300, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"No streaming interface found for terminal %u.\00", [50 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_register_terms\00", [45 x i8] zeroinitializer }, align 32
@uvc_register_terms._entry_ptr = internal global ptr @uvc_register_terms._entry, section ".printk_index", align 4
@uvc_register_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.283, ptr @.str.2, i32 2264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to initialize the device (%d).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_register_video\00", [45 x i8] zeroinitializer }, align 32
@uvc_register_video._entry_ptr = internal global ptr @uvc_register_video._entry, section ".printk_index", align 4
@uvc_fops = external dso_local constant %struct.v4l2_file_operations, align 4
@uvc_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 4
@.str.284 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvc_privacy_gpio\00", [47 x i8] zeroinitializer }, align 32
@uvc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.286, ptr @.str.2, i32 2526, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Suspending interface %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uvc_suspend\00", [20 x i8] zeroinitializer }, align 32
@uvc_suspend._entry_ptr = internal global ptr @uvc_suspend._entry, section ".printk_index", align 4
@uvc_suspend._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.286, ptr @.str.2, i32 2544, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Suspend: video streaming USB interface mismatch\0A\00", [47 x i8] zeroinitializer }, align 32
@uvc_suspend._entry_ptr.289 = internal global ptr @uvc_suspend._entry.287, section ".printk_index", align 4
@__uvc_resume._entry = internal constant %struct.pi_entry { ptr @.str.290, ptr @.str.291, ptr @.str.2, i32 2555, ptr @.str.16, ptr @.str.4 }, align 1
@.str.290 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Resuming interface %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__uvc_resume\00", [19 x i8] zeroinitializer }, align 32
@__uvc_resume._entry_ptr = internal global ptr @__uvc_resume._entry, section ".printk_index", align 4
@__uvc_resume._entry.292 = internal constant %struct.pi_entry { ptr @.str.293, ptr @.str.291, ptr @.str.2, i32 2584, ptr @.str.16, ptr @.str.4 }, align 1
@.str.293 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Resume: video streaming USB interface mismatch\0A\00", [48 x i8] zeroinitializer }, align 32
@__uvc_resume._entry_ptr.294 = internal global ptr @__uvc_resume._entry.292, section ".printk_index", align 4
@uvc_quirk_probe_minmax = internal constant { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 2, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@uvc_quirk_probe_def = internal constant { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 256, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 1024, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 512, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 10, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@uvc_quirk_fix_bandwidth = internal constant { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 128, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@uvc_quirk_stream_no_fid = internal constant { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 16, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 258, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.298 = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 6, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 4, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.300 = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 1, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal constant { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 0, i32 0, i16 266 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.302 = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 34, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@uvc_quirk_force_y8 = internal constant { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 2048, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.303 = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 4096, i32 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.304 = internal global { %struct.uvc_device_info, [20 x i8] } { %struct.uvc_device_info { i32 0, i32 1482175556, i16 0 }, [20 x i8] zeroinitializer }, align 32
@switch.table.uvc_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.132, ptr @.str.133, ptr @.str.134], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.305 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.306 = internal global [11 x i64] [i64 9, i64 8, i64 4, i64 5, i64 6, i64 7, i64 10, i64 12, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.307 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.308 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.309 = internal global [4 x i64] [i64 2, i64 16, i64 513, i64 514]
@__sancov_gen_cov_switch_values.310 = internal global [6 x i64] [i64 4, i64 16, i64 5, i64 513, i64 514, i64 32766]
@__sancov_gen_cov_switch_values.311 = internal global [4 x i64] [i64 2, i64 15, i64 513, i64 514]
@__sancov_gen_cov_switch_values.312 = internal global [4 x i64] [i64 2, i64 15, i64 513, i64 514]
@__sancov_gen_cov_switch_values.313 = internal global [12 x i64] [i64 10, i64 32, i64 4, i64 5, i64 6, i64 257, i64 512, i64 513, i64 514, i64 768, i64 769, i64 770]
@__sancov_gen_cov_switch_values.314 = internal global [12 x i64] [i64 10, i64 32, i64 4, i64 5, i64 6, i64 257, i64 512, i64 513, i64 514, i64 768, i64 769, i64 770]
@__sancov_gen_cov_switch_values.315 = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 257, i64 768, i64 769, i64 770]
@___asan_gen_.316 = private unnamed_addr constant [16 x i8] c"uvc_clock_param\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 30, i32 14 }
@___asan_gen_.319 = private unnamed_addr constant [18 x i8] c"uvc_timeout_param\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 35, i32 14 }
@___asan_gen_.322 = private unnamed_addr constant [18 x i8] c"uvc_no_drop_param\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 32, i32 14 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2245, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [24 x i8] c"uvc_hw_timestamps_param\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 31, i32 14 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"uvc_quirks_param\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 33, i32 21 }
@___asan_gen_.349 = private unnamed_addr constant [14 x i8] c"uvc_dbg_param\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 34, i32 14 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3178, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant [8 x i8] c"uvc_ids\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2672, i32 35 }
@___asan_gen_.358 = private unnamed_addr constant [11 x i8] c"uvc_driver\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3176, i32 19 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 3216, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2612, i32 23 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2615, i32 22 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2617, i32 27 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2605, i32 26 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2607, i32 26 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2367, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [15 x i8] c"uvc_quirk_none\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2345, i32 37 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2377, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2380, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2387, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2403, i32 22 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2425, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2431, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2435, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2442, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2445, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2451, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2481, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2488, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2493, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 912, i32 31 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1468, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1135, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1159, i32 24 }
@___asan_gen_.499 = private unnamed_addr constant [14 x i8] c"uvc_gpio_guid\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1029, i32 17 }
@___asan_gen_.502 = private unnamed_addr constant [16 x i8] c"uvc_camera_guid\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1028, i32 17 }
@___asan_gen_.505 = private unnamed_addr constant [31 x i8] c"uvc_media_transport_input_guid\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1030, i32 17 }
@___asan_gen_.508 = private unnamed_addr constant [20 x i8] c"uvc_processing_guid\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1032, i32 17 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1184, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1197, i32 5 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1209, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1228, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1250, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1286, i32 24 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1288, i32 24 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1290, i32 24 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1297, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1308, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1326, i32 24 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1335, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1351, i32 24 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1361, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1384, i32 24 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1394, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1421, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 796, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 804, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 829, i32 5 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 846, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 864, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 874, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 926, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 951, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1000, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 479, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 522, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 537, i32 4 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 539, i32 49 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 551, i32 27 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 586, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 593, i32 25 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 602, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 611, i32 26 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 614, i32 26 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 617, i32 26 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 620, i32 4 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 627, i32 48 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 627, i32 58 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 649, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 656, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 675, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 740, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 759, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant [9 x i8] c"uvc_fmts\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 41, i32 31 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 43, i32 12 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 53, i32 12 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 63, i32 12 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 68, i32 12 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 73, i32 12 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 78, i32 12 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 83, i32 12 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 93, i32 12 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 98, i32 12 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 103, i32 12 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 108, i32 12 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 113, i32 12 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 118, i32 12 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 123, i32 12 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 128, i32 12 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 133, i32 12 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 138, i32 12 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 143, i32 12 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 148, i32 12 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 153, i32 12 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 158, i32 12 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 163, i32 12 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 168, i32 12 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 173, i32 12 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 178, i32 12 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 183, i32 12 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 188, i32 12 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 193, i32 12 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 208, i32 12 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 213, i32 12 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 218, i32 12 }
@___asan_gen_.832 = private unnamed_addr constant [15 x i8] c"colorprimaries\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 258, i32 36 }
@___asan_gen_.835 = private unnamed_addr constant [11 x i8] c"xfer_funcs\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 283, i32 35 }
@___asan_gen_.838 = private unnamed_addr constant [11 x i8] c"ycbcr_encs\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 312, i32 40 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1533, i32 58 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1545, i32 4 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1557, i32 22 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2076, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2086, i32 3 }
@___asan_gen_.871 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1945, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1869, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1877, i32 4 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1615, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1618, i32 4 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1627, i32 3 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1630, i32 4 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1639, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1646, i32 4 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1657, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1664, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1670, i32 4 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1672, i32 4 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1677, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1705, i32 4 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1714, i32 5 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1736, i32 6 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1747, i32 5 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1749, i32 4 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1758, i32 5 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1765, i32 5 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1773, i32 5 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1775, i32 4 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1781, i32 3 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1806, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1813, i32 5 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1820, i32 5 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1826, i32 4 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1832, i32 3 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1855, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1926, i32 14 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1930, i32 18 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1918, i32 19 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2033, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2333, i32 4 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2298, i32 4 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2263, i32 3 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 1577, i32 7 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2525, i32 2 }
@___asan_gen_.1099 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2543, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2554, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2583, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant [23 x i8] c"uvc_quirk_probe_minmax\00", align 1
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2643, i32 37 }
@___asan_gen_.1117 = private unnamed_addr constant [20 x i8] c"uvc_quirk_probe_def\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2651, i32 37 }
@___asan_gen_.1120 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1122 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1123 = private unnamed_addr constant [24 x i8] c"uvc_quirk_fix_bandwidth\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2647, i32 37 }
@___asan_gen_.1126 = private unnamed_addr constant [24 x i8] c"uvc_quirk_stream_no_fid\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2655, i32 37 }
@___asan_gen_.1129 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant [21 x i8] c".compoundliteral.298\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1132 = private unnamed_addr constant [21 x i8] c".compoundliteral.300\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant [21 x i8] c".compoundliteral.302\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant [19 x i8] c"uvc_quirk_force_y8\00", align 1
@___asan_gen_.1136 = private constant [38 x i8] c"../drivers/media/usb/uvc/uvc_driver.c\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1136, i32 2659, i32 37 }
@___asan_gen_.1138 = private unnamed_addr constant [21 x i8] c".compoundliteral.303\00", align 1
@___asan_gen_.1139 = private unnamed_addr constant [21 x i8] c".compoundliteral.304\00", align 1
@___asan_gen_.1140 = private unnamed_addr constant [23 x i8] c"switch.table.uvc_probe\00", align 1
@llvm.compiler.used = appending global [395 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_clock307, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_hwtimestamps309, ptr @__UNIQUE_ID_hwtimestampstype308, ptr @__UNIQUE_ID_license322, ptr @__UNIQUE_ID_nodrop311, ptr @__UNIQUE_ID_nodroptype310, ptr @__UNIQUE_ID_quirks313, ptr @__UNIQUE_ID_quirkstype312, ptr @__UNIQUE_ID_timeout317, ptr @__UNIQUE_ID_timeouttype316, ptr @__UNIQUE_ID_trace315, ptr @__UNIQUE_ID_tracetype314, ptr @__UNIQUE_ID_version323, ptr @__exitcall_uvc_cleanup, ptr @__initcall__kmod_uvcvideo__318_3210_uvc_init6, ptr @__modver_attr, ptr @__param_clock, ptr @__param_hwtimestamps, ptr @__param_nodrop, ptr @__param_quirks, ptr @__param_timeout, ptr @__param_trace, ptr @__uvc_resume._entry, ptr @__uvc_resume._entry.292, ptr @__uvc_resume._entry_ptr, ptr @__uvc_resume._entry_ptr.294, ptr @uvc_cleanup, ptr @uvc_gpio_parse._entry, ptr @uvc_gpio_parse._entry_ptr, ptr @uvc_parse_control._entry, ptr @uvc_parse_control._entry_ptr, ptr @uvc_parse_format._entry, ptr @uvc_parse_format._entry.122, ptr @uvc_parse_format._entry.127, ptr @uvc_parse_format._entry.130, ptr @uvc_parse_format._entry.135, ptr @uvc_parse_format._entry.140, ptr @uvc_parse_format._entry.143, ptr @uvc_parse_format._entry.146, ptr @uvc_parse_format._entry.149, ptr @uvc_parse_format._entry.152, ptr @uvc_parse_format._entry_ptr, ptr @uvc_parse_format._entry_ptr.124, ptr @uvc_parse_format._entry_ptr.128, ptr @uvc_parse_format._entry_ptr.131, ptr @uvc_parse_format._entry_ptr.137, ptr @uvc_parse_format._entry_ptr.142, ptr @uvc_parse_format._entry_ptr.145, ptr @uvc_parse_format._entry_ptr.148, ptr @uvc_parse_format._entry_ptr.151, ptr @uvc_parse_format._entry_ptr.154, ptr @uvc_parse_standard_control._entry, ptr @uvc_parse_standard_control._entry.59, ptr @uvc_parse_standard_control._entry.62, ptr @uvc_parse_standard_control._entry.65, ptr @uvc_parse_standard_control._entry.68, ptr @uvc_parse_standard_control._entry.73, ptr @uvc_parse_standard_control._entry.76, ptr @uvc_parse_standard_control._entry.80, ptr @uvc_parse_standard_control._entry.84, ptr @uvc_parse_standard_control._entry.88, ptr @uvc_parse_standard_control._entry.90, ptr @uvc_parse_standard_control._entry_ptr, ptr @uvc_parse_standard_control._entry_ptr.61, ptr @uvc_parse_standard_control._entry_ptr.64, ptr @uvc_parse_standard_control._entry_ptr.67, ptr @uvc_parse_standard_control._entry_ptr.69, ptr @uvc_parse_standard_control._entry_ptr.75, ptr @uvc_parse_standard_control._entry_ptr.78, ptr @uvc_parse_standard_control._entry_ptr.82, ptr @uvc_parse_standard_control._entry_ptr.86, ptr @uvc_parse_standard_control._entry_ptr.89, ptr @uvc_parse_standard_control._entry_ptr.92, ptr @uvc_parse_streaming._entry, ptr @uvc_parse_streaming._entry.101, ptr @uvc_parse_streaming._entry.104, ptr @uvc_parse_streaming._entry.107, ptr @uvc_parse_streaming._entry.110, ptr @uvc_parse_streaming._entry.113, ptr @uvc_parse_streaming._entry.116, ptr @uvc_parse_streaming._entry.95, ptr @uvc_parse_streaming._entry.98, ptr @uvc_parse_streaming._entry_ptr, ptr @uvc_parse_streaming._entry_ptr.100, ptr @uvc_parse_streaming._entry_ptr.103, ptr @uvc_parse_streaming._entry_ptr.106, ptr @uvc_parse_streaming._entry_ptr.109, ptr @uvc_parse_streaming._entry_ptr.112, ptr @uvc_parse_streaming._entry_ptr.115, ptr @uvc_parse_streaming._entry_ptr.118, ptr @uvc_parse_streaming._entry_ptr.97, ptr @uvc_parse_vendor_control._entry, ptr @uvc_parse_vendor_control._entry_ptr, ptr @uvc_probe._entry, ptr @uvc_probe._entry.17, ptr @uvc_probe._entry.22, ptr @uvc_probe._entry.25, ptr @uvc_probe._entry.28, ptr @uvc_probe._entry.33, ptr @uvc_probe._entry.36, ptr @uvc_probe._entry.39, ptr @uvc_probe._entry.42, ptr @uvc_probe._entry.45, ptr @uvc_probe._entry.48, ptr @uvc_probe._entry_ptr, ptr @uvc_probe._entry_ptr.19, ptr @uvc_probe._entry_ptr.24, ptr @uvc_probe._entry_ptr.27, ptr @uvc_probe._entry_ptr.31, ptr @uvc_probe._entry_ptr.35, ptr @uvc_probe._entry_ptr.38, ptr @uvc_probe._entry_ptr.41, ptr @uvc_probe._entry_ptr.44, ptr @uvc_probe._entry_ptr.47, ptr @uvc_probe._entry_ptr.50, ptr @uvc_register_chains._entry, ptr @uvc_register_chains._entry_ptr, ptr @uvc_register_terms._entry, ptr @uvc_register_terms._entry_ptr, ptr @uvc_register_video._entry, ptr @uvc_register_video._entry_ptr, ptr @uvc_register_video_device._entry, ptr @uvc_register_video_device._entry_ptr, ptr @uvc_scan_chain._entry, ptr @uvc_scan_chain._entry.198, ptr @uvc_scan_chain._entry_ptr, ptr @uvc_scan_chain._entry_ptr.200, ptr @uvc_scan_chain_backward._entry, ptr @uvc_scan_chain_backward._entry.258, ptr @uvc_scan_chain_backward._entry.261, ptr @uvc_scan_chain_backward._entry.263, ptr @uvc_scan_chain_backward._entry.266, ptr @uvc_scan_chain_backward._entry.269, ptr @uvc_scan_chain_backward._entry_ptr, ptr @uvc_scan_chain_backward._entry_ptr.260, ptr @uvc_scan_chain_backward._entry_ptr.262, ptr @uvc_scan_chain_backward._entry_ptr.265, ptr @uvc_scan_chain_backward._entry_ptr.268, ptr @uvc_scan_chain_backward._entry_ptr.271, ptr @uvc_scan_chain_entity._entry, ptr @uvc_scan_chain_entity._entry.203, ptr @uvc_scan_chain_entity._entry.206, ptr @uvc_scan_chain_entity._entry.209, ptr @uvc_scan_chain_entity._entry.212, ptr @uvc_scan_chain_entity._entry.215, ptr @uvc_scan_chain_entity._entry.218, ptr @uvc_scan_chain_entity._entry.221, ptr @uvc_scan_chain_entity._entry.224, ptr @uvc_scan_chain_entity._entry.226, ptr @uvc_scan_chain_entity._entry.228, ptr @uvc_scan_chain_entity._entry_ptr, ptr @uvc_scan_chain_entity._entry_ptr.205, ptr @uvc_scan_chain_entity._entry_ptr.208, ptr @uvc_scan_chain_entity._entry_ptr.211, ptr @uvc_scan_chain_entity._entry_ptr.214, ptr @uvc_scan_chain_entity._entry_ptr.217, ptr @uvc_scan_chain_entity._entry_ptr.220, ptr @uvc_scan_chain_entity._entry_ptr.223, ptr @uvc_scan_chain_entity._entry_ptr.225, ptr @uvc_scan_chain_entity._entry_ptr.227, ptr @uvc_scan_chain_entity._entry_ptr.230, ptr @uvc_scan_chain_forward._entry, ptr @uvc_scan_chain_forward._entry.232, ptr @uvc_scan_chain_forward._entry.234, ptr @uvc_scan_chain_forward._entry.237, ptr @uvc_scan_chain_forward._entry.240, ptr @uvc_scan_chain_forward._entry.243, ptr @uvc_scan_chain_forward._entry.246, ptr @uvc_scan_chain_forward._entry.249, ptr @uvc_scan_chain_forward._entry.251, ptr @uvc_scan_chain_forward._entry.253, ptr @uvc_scan_chain_forward._entry_ptr, ptr @uvc_scan_chain_forward._entry_ptr.233, ptr @uvc_scan_chain_forward._entry_ptr.236, ptr @uvc_scan_chain_forward._entry_ptr.239, ptr @uvc_scan_chain_forward._entry_ptr.242, ptr @uvc_scan_chain_forward._entry_ptr.245, ptr @uvc_scan_chain_forward._entry_ptr.248, ptr @uvc_scan_chain_forward._entry_ptr.250, ptr @uvc_scan_chain_forward._entry_ptr.252, ptr @uvc_scan_chain_forward._entry_ptr.255, ptr @uvc_scan_device._entry, ptr @uvc_scan_device._entry.192, ptr @uvc_scan_device._entry_ptr, ptr @uvc_scan_device._entry_ptr.194, ptr @uvc_scan_fallback._entry, ptr @uvc_scan_fallback._entry_ptr, ptr @uvc_suspend._entry, ptr @uvc_suspend._entry.287, ptr @uvc_suspend._entry_ptr, ptr @uvc_suspend._entry_ptr.289, ptr @uvc_clock_param, ptr @uvc_timeout_param, ptr @uvc_no_drop_param, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @uvc_hw_timestamps_param, ptr @uvc_quirks_param, ptr @uvc_dbg_param, ptr @.str.5, ptr @uvc_ids, ptr @uvc_driver, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @uvc_probe.__key, ptr @.str.13, ptr @uvc_quirk_none, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @uvc_gpio_guid, ptr @uvc_camera_guid, ptr @uvc_media_transport_input_guid, ptr @uvc_processing_guid, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @uvc_stream_new.__key, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @uvc_fmts, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @uvc_colorspace.colorprimaries, ptr @uvc_xfer_func.xfer_funcs, ptr @uvc_ycbcr_enc.ycbcr_encs, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @uvc_alloc_chain.__key, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.229, ptr @.str.231, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.254, ptr @.str.256, ptr @.str.257, ptr @.str.259, ptr @.str.264, ptr @.str.267, ptr @.str.270, ptr @uvc_print_chain.buffer, ptr @.str.272, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.288, ptr @.str.290, ptr @.str.291, ptr @.str.293, ptr @uvc_quirk_probe_minmax, ptr @uvc_quirk_probe_def, ptr @.compoundliteral, ptr @.compoundliteral.295, ptr @.compoundliteral.296, ptr @uvc_quirk_fix_bandwidth, ptr @uvc_quirk_stream_no_fid, ptr @.compoundliteral.297, ptr @.compoundliteral.298, ptr @.compoundliteral.299, ptr @.compoundliteral.300, ptr @.compoundliteral.301, ptr @.compoundliteral.302, ptr @uvc_quirk_force_y8, ptr @.compoundliteral.303, ptr @.compoundliteral.304, ptr @switch.table.uvc_probe], section "llvm.metadata"
@0 = internal global [283 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_clock_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_timeout_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_no_drop_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_register_video_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_hw_timestamps_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_quirks_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_dbg_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ids to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_quirk_none to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_vendor_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_gpio_guid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_camera_guid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_media_transport_input_guid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_processing_guid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_standard_control._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_streaming._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_streaming._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_streaming._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_streaming._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_streaming._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_streaming._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_streaming._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_streaming._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_stream_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_parse_format._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_fmts to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_colorspace.colorprimaries to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_xfer_func.xfer_funcs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ycbcr_enc.ycbcr_encs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_gpio_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_device._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_alloc_chain.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_entity._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_forward._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_backward._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_backward._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_backward._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_backward._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_backward._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_chain_backward._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_print_chain.buffer to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_scan_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_register_chains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_register_terms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_register_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_suspend._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_quirk_probe_def to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.298 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.300 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.302 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_quirk_force_y8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.303 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.304 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uvc_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uvc_find_endpoint(ptr nocapture noundef readonly %alts, i8 noundef zeroext %epaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 4
  %0 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp12.not = icmp eq i8 %1, 0
  br i1 %cmp12.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %alts, i32 0, i32 3
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endpoint, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %3, i32 %i.013
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bEndpointAddress, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %epaddr)
  %cmp5 = icmp eq i8 %5, %epaddr
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %arrayidx, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_simplify_fraction(ptr nocapture noundef %numerator, ptr nocapture noundef %denominator, i32 noundef %n_terms, i32 noundef %threshold) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_terms, i32 4) #21
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i, !prof !590

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #24
  %cmp = icmp eq ptr %call8.i, null
  br i1 %cmp, label %if.end7.i.cleanup_crit_edge, label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_terms)
  %cmp159 = icmp eq i32 %n_terms, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.not60 = icmp eq i32 %4, 0
  %or.cond61 = select i1 %cmp159, i1 true, i1 %cmp2.not60
  br i1 %or.cond61, label %if.end.for.end19_crit_edge, label %for.body.preheader

if.end.for.end19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end19

for.body.preheader:                               ; preds = %if.end
  %5 = ptrtoint ptr %numerator to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %numerator, align 4
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.preheader
  %n.064 = phi i32 [ %inc11, %if.end9.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %y.063 = phi i32 [ %sub, %if.end9.for.body_crit_edge ], [ %4, %for.body.preheader ]
  %x.062 = phi i32 [ %y.063, %if.end9.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %div = udiv i32 %x.062, %y.063
  %arrayidx = getelementptr i32, ptr %call8.i, i32 %n.064
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %threshold)
  %cmp4.not = icmp ult i32 %div, %threshold
  br i1 %cmp4.not, label %if.end9, label %for.end

if.end9:                                          ; preds = %for.body
  %mul = mul nuw i32 %div, %y.063
  %sub = sub nuw i32 %x.062, %mul
  %inc11 = add nuw i32 %n.064, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc11, i32 %n_terms)
  %cmp1 = icmp uge i32 %inc11, %n_terms
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %if.end9.for.body14.preheader_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

if.end9.for.body14.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body14.preheader

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n.064)
  %cmp6 = icmp ult i32 %n.064, 2
  %inc = zext i1 %cmp6 to i32
  %spec.select = add nuw i32 %n.064, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp13.not65 = icmp eq i32 %spec.select, 0
  br i1 %cmp13.not65, label %for.end.for.end19_crit_edge, label %for.end.for.body14.preheader_crit_edge

for.end.for.body14.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body14.preheader

for.end.for.end19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end19

for.body14.preheader:                             ; preds = %for.end.for.body14.preheader_crit_edge, %if.end9.for.body14.preheader_crit_edge
  %i.068.ph = phi i32 [ %spec.select, %for.end.for.body14.preheader_crit_edge ], [ %inc11, %if.end9.for.body14.preheader_crit_edge ]
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.preheader
  %i.068 = phi i32 [ %sub15, %for.body14.for.body14_crit_edge ], [ %i.068.ph, %for.body14.preheader ]
  %y.167 = phi i32 [ %add, %for.body14.for.body14_crit_edge ], [ 1, %for.body14.preheader ]
  %x.166 = phi i32 [ %y.167, %for.body14.for.body14_crit_edge ], [ 0, %for.body14.preheader ]
  %sub15 = add i32 %i.068, -1
  %arrayidx16 = getelementptr i32, ptr %call8.i, i32 %sub15
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx16, align 4
  %mul17 = mul i32 %9, %y.167
  %add = add i32 %mul17, %x.166
  %cmp13.not = icmp eq i32 %sub15, 0
  br i1 %cmp13.not, label %for.body14.for.end19_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body14

for.body14.for.end19_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end19

for.end19:                                        ; preds = %for.body14.for.end19_crit_edge, %for.end.for.end19_crit_edge, %if.end.for.end19_crit_edge
  %x.1.lcssa = phi i32 [ 0, %for.end.for.end19_crit_edge ], [ 0, %if.end.for.end19_crit_edge ], [ %y.167, %for.body14.for.end19_crit_edge ]
  %y.1.lcssa = phi i32 [ 1, %for.end.for.end19_crit_edge ], [ 1, %if.end.for.end19_crit_edge ], [ %add, %for.body14.for.end19_crit_edge ]
  %10 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %y.1.lcssa, ptr %numerator, align 4
  %11 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %x.1.lcssa, ptr %denominator, align 4
  tail call void @kfree(ptr noundef nonnull %call8.i) #21
  br label %cleanup

cleanup:                                          ; preds = %for.end19, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_fraction_to_interval(i32 noundef %numerator, i32 noundef %denominator) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %denominator)
  %cmp = icmp eq i32 %denominator, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %div = udiv i32 %numerator, %denominator
  call void @__sanitizer_cov_trace_const_cmp4(i32 428, i32 %div)
  %cmp1 = icmp ugt i32 %div, 428
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 429, i32 %numerator)
  %mul.ov19 = icmp ugt i32 %numerator, 429
  br i1 %mul.ov19, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cond.true_crit_edge

while.cond.preheader.cond.true_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.true

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %multiplier.021 = phi i32 [ %div416, %while.body.while.body_crit_edge ], [ 10000000, %while.cond.preheader.while.body_crit_edge ]
  %denominator.addr.020 = phi i32 [ %div517, %while.body.while.body_crit_edge ], [ %denominator, %while.cond.preheader.while.body_crit_edge ]
  %div416 = lshr i32 %multiplier.021, 1
  %div517 = lshr i32 %denominator.addr.020, 1
  %mul15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div416, i32 %numerator)
  %mul.ov = extractvalue { i32, i1 } %mul15, 1
  br i1 %mul.ov, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %denominator.addr.020)
  %tobool.not = icmp ult i32 %denominator.addr.020, 2
  br i1 %tobool.not, label %while.end.cleanup_crit_edge, label %while.end.cond.true_crit_edge

while.end.cond.true_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.true

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cond.true:                                        ; preds = %while.end.cond.true_crit_edge, %while.cond.preheader.cond.true_crit_edge
  %multiplier.0.lcssa27 = phi i32 [ %div416, %while.end.cond.true_crit_edge ], [ 10000000, %while.cond.preheader.cond.true_crit_edge ]
  %denominator.addr.0.lcssa26 = phi i32 [ %div517, %while.end.cond.true_crit_edge ], [ %denominator, %while.cond.preheader.cond.true_crit_edge ]
  %mul = mul i32 %multiplier.0.lcssa27, %numerator
  %div6 = udiv i32 %mul, %denominator.addr.0.lcssa26
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %while.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %div6, %cond.true ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uvc_entity_by_id(ptr noundef readonly %dev, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %entities = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %entity.0.in = phi ptr [ %entities, %entry ], [ %entity.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %entity.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entity.0 = load ptr, ptr %entity.0.in, align 4
  %cmp.not = icmp eq ptr %entity.0, %entities
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %id2 = getelementptr inbounds %struct.uvc_entity, ptr %entity.0, i32 0, i32 3
  %1 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id2, align 4
  %conv = zext i16 %2 to i32
  %cmp3 = icmp eq i32 %conv, %id
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %entity.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_register_video_device(ptr noundef %dev, ptr noundef %stream, ptr noundef %vdev, ptr noundef %queue, i32 noundef %type, ptr noundef %fops, ptr noundef %ioctl_ops) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @uvc_no_drop_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call = tail call i32 @uvc_queue_init(ptr noundef %queue, i32 noundef %type, i32 noundef %lnot.ext) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdev2 = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 11
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 7
  %1 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vdev2, ptr %v4l2_dev, align 4
  %fops3 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 3
  %2 = ptrtoint ptr %fops3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fops, ptr %fops3, align 4
  %ioctl_ops4 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 24
  %3 = ptrtoint ptr %ioctl_ops4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ioctl_ops, ptr %ioctl_ops4, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 23
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @uvc_release, ptr %release, align 8
  %chain = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 3
  %5 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chain, align 8
  %prio = getelementptr inbounds %struct.uvc_video_chain, ptr %6, i32 0, i32 6
  %prio5 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 11
  %7 = ptrtoint ptr %prio5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %prio, ptr %prio5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 14
  br i1 %cmp, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %8 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %vfl_dir, align 4
  %device_caps10 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 4
  %9 = ptrtoint ptr %device_caps10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 67108866, ptr %device_caps10, align 8
  br label %sw.epilog

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %cond = icmp eq i32 %type, 13
  %device_caps12 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 4
  br i1 %cond, label %sw.bb11, label %sw.default

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  %11 = ptrtoint ptr %device_caps12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 67108865, ptr %device_caps12, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  %12 = ptrtoint ptr %device_caps12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 75497472, ptr %device_caps12, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.default, %if.end8.thread
  %name = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 12
  %name13 = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 5
  %call15 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name13, i32 noundef 32) #21
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %stream, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %fops3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fops3, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %17) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 0
  br i1 %cmp17, label %do.end, label %if.end20

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %intf = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %18 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf, align 8
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_type_names, i32 0, i32 %type
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str, ptr noundef %21, i32 noundef %call.i) #25
  br label %cleanup

if.end20:                                         ; preds = %sw.epilog
  %ref = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 17
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #21
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #21, !srcloc !591
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end20.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !590

if.end20.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end20
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !592

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end20.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end20.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.else.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_release(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %ref = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 17
  tail call fastcc void @kref_put(ptr noundef %ref)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1080) #26
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = inttoptr i32 %3 to ptr
  %entities = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 14
  %6 = ptrtoint ptr %entities to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entities, ptr %entities, align 8
  %prev.i = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entities, ptr %prev.i, align 4
  %chains = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 15
  %8 = ptrtoint ptr %chains to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %chains, ptr %chains, align 8
  %prev.i378 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %prev.i378 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %chains, ptr %prev.i378, align 4
  %streams = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %streams to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %streams, ptr %streams, align 8
  %prev.i379 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 16, i32 1
  %11 = ptrtoint ptr %prev.i379 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %streams, ptr %prev.i379, align 4
  %ref = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #21
  %12 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %ref, align 8
  %nmappings = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nmappings, i32 noundef 4) #21
  %13 = ptrtoint ptr %nmappings to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %nmappings, align 8
  %lock = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @uvc_probe.__key) #21
  %call2 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #21
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %call7.i.i, align 8
  %call4 = tail call ptr @usb_get_intf(ptr noundef %intf) #21
  %intf5 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %intf5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %intf5, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %16 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %19 to i32
  %intfnum = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %intfnum to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %intfnum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, ptr @uvc_quirk_none, ptr %5
  %info6 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %info6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select, ptr %info6, align 4
  %22 = load i32, ptr @uvc_quirks_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp7 = icmp eq i32 %22, -1
  br i1 %cmp7, label %cond.true9, label %if.end.cond.end12_crit_edge

if.end.cond.end12_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end12

cond.true9:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %23 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %spec.select, align 4
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true9, %if.end.cond.end12_crit_edge
  %cond13 = phi i32 [ %24, %cond.true9 ], [ %22, %if.end.cond.end12_crit_edge ]
  %quirks14 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %quirks14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond13, ptr %quirks14, align 4
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %26 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %idVendor, align 2
  %conv15 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool16.not = icmp eq i16 %27, 0
  br i1 %tobool16.not, label %cond.end12.do.body35_crit_edge, label %land.lhs.true

cond.end12.do.body35_crit_edge:                   ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body35

land.lhs.true:                                    ; preds = %cond.end12
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %28 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %idProduct, align 4
  %conv17 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool18.not = icmp eq i16 %29, 0
  br i1 %tobool18.not, label %land.lhs.true.do.body35_crit_edge, label %do.body20

land.lhs.true.do.body35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body35

do.body20:                                        ; preds = %land.lhs.true
  %30 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.body20.if.end49_crit_edge, label %do.end25

do.body20.if.end49_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end49

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #23
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  %devpath = getelementptr i8, ptr %1, i32 -124
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev27, ptr noundef nonnull @.str.14, ptr noundef %devpath, i32 noundef %conv15, i32 noundef %conv17) #25
  br label %if.end49

do.body35:                                        ; preds = %land.lhs.true.do.body35_crit_edge, %cond.end12.do.body35_crit_edge
  %33 = load i32, ptr @uvc_dbg_param, align 4
  %and36 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.if.end49_crit_edge, label %do.end41

do.body35.if.end49_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end49

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #23
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %dev43 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  %devpath44 = getelementptr i8, ptr %1, i32 -124
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev43, ptr noundef nonnull @.str.18, ptr noundef %devpath44) #25
  br label %if.end49

if.end49:                                         ; preds = %do.end41, %do.body35.if.end49_crit_edge, %do.end25, %do.body20.if.end49_crit_edge
  %product = getelementptr i8, ptr %1, i32 1104
  %36 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %product, align 8
  %cmp50.not = icmp eq ptr %37, null
  %name57 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 5
  br i1 %cmp50.not, label %if.else56, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #23
  %call55 = tail call i32 @strscpy(ptr noundef %name57, ptr noundef nonnull %37, i32 noundef 32) #21
  br label %if.end65

if.else56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #23
  %idVendor59 = getelementptr i8, ptr %1, i32 936
  %38 = ptrtoint ptr %idVendor59 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idVendor59, align 8
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv60 = zext i16 %40 to i32
  %idProduct62 = getelementptr i8, ptr %1, i32 938
  %41 = ptrtoint ptr %idProduct62 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %idProduct62, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %conv63 = zext i16 %43 to i32
  %call64 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name57, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %conv60, i32 noundef %conv63)
  br label %if.end65

if.end65:                                         ; preds = %if.else56, %if.then52
  %intf_assoc = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 3
  %44 = ptrtoint ptr %intf_assoc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %intf_assoc, align 4
  %tobool66.not = icmp eq ptr %45, null
  br i1 %tobool66.not, label %if.end65.if.end80_crit_edge, label %land.lhs.true67

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end80

land.lhs.true67:                                  ; preds = %if.end65
  %iFunction = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %iFunction to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %iFunction, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp70.not = icmp eq i8 %47, 0
  br i1 %cmp70.not, label %land.lhs.true67.if.end80_crit_edge, label %land.lhs.true67.if.then83_crit_edge

land.lhs.true67.if.then83_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then83

land.lhs.true67.if.end80_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end80

if.end80:                                         ; preds = %land.lhs.true67.if.end80_crit_edge, %if.end65.if.end80_crit_edge
  %48 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cur_altsetting, align 4
  %iInterface = getelementptr inbounds %struct.usb_interface_descriptor, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %iInterface to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %iInterface, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp81.not = icmp eq i8 %51, 0
  br i1 %cmp81.not, label %if.end80.if.end93_crit_edge, label %if.end80.if.then83_crit_edge

if.end80.if.then83_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then83

if.end80.if.end93_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end93

if.then83:                                        ; preds = %if.end80.if.then83_crit_edge, %land.lhs.true67.if.then83_crit_edge
  %function.0.in404 = phi i8 [ %51, %if.end80.if.then83_crit_edge ], [ %47, %land.lhs.true67.if.then83_crit_edge ]
  %function.0 = zext i8 %function.0.in404 to i32
  %name84 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 5
  %call86 = tail call i32 @strlcat(ptr noundef %name84, ptr noundef nonnull @.str.21, i32 noundef 32) #21
  %call89 = tail call i32 @strlen(ptr noundef %name84) #27
  %add.ptr = getelementptr i8, ptr %name84, i32 %call89
  %sub = sub i32 32, %call89
  %call92 = tail call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %function.0, ptr noundef %add.ptr, i32 noundef %sub) #21
  br label %if.end93

if.end93:                                         ; preds = %if.then83, %if.end80.if.end93_crit_edge
  %dev94 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %mdev = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev94, ptr %mdev, align 8
  %model = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 10, i32 2
  %name98 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 5
  %call100 = tail call i32 @strscpy(ptr noundef %model, ptr noundef %name98, i32 noundef 32) #21
  %serial = getelementptr i8, ptr %1, i32 1112
  %53 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %serial, align 8
  %tobool101.not = icmp eq ptr %54, null
  br i1 %tobool101.not, label %if.end93.if.end108_crit_edge, label %if.then102

if.end93.if.end108_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end108

if.then102:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #23
  %serial104 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 10, i32 4
  %call107 = tail call i32 @strscpy(ptr noundef %serial104, ptr noundef nonnull %54, i32 noundef 40) #21
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %if.end93.if.end108_crit_edge
  %bus_info = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 10, i32 5
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %55 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.51, ptr noundef %58, ptr noundef %devpath.i) #21
  %bcdDevice = getelementptr i8, ptr %1, i32 940
  %59 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %bcdDevice, align 4
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %conv113 = zext i16 %61 to i32
  %hw_revision = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 10, i32 6
  %62 = ptrtoint ptr %hw_revision to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv113, ptr %hw_revision, align 8
  tail call void @media_device_init(ptr noundef %mdev) #21
  %vdev = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 11
  %mdev117 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 11, i32 1
  %63 = ptrtoint ptr %mdev117 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %mdev, ptr %mdev117, align 4
  %64 = ptrtoint ptr %intf5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %intf5, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur_altsetting.i, align 4
  %extralen.i = getelementptr inbounds %struct.usb_host_interface, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %extralen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp341.i = icmp sgt i32 %69, 2
  br i1 %cmp341.i, label %while.body.lr.ph.i, label %if.end108.while.end.i_crit_edge

if.end108.while.end.i_crit_edge:                  ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end108
  %extra.i = getelementptr inbounds %struct.usb_host_interface, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %extra.i, align 4
  %uvc_version393.i.i = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 12
  %clock_frequency.i.i = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 13
  br label %while.body.i

while.body.i:                                     ; preds = %next_descriptor.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buflen.0351.i = phi i32 [ %69, %while.body.lr.ph.i ], [ %sub.i, %next_descriptor.i.while.body.i_crit_edge ]
  %buffer.0342.i = phi ptr [ %71, %while.body.lr.ph.i ], [ %add.ptr.i381, %next_descriptor.i.while.body.i_crit_edge ]
  %72 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call7.i.i, align 8
  %74 = ptrtoint ptr %intf5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %intf5, align 4
  %cur_altsetting.i.i = getelementptr inbounds %struct.usb_interface, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %cur_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur_altsetting.i.i, align 4
  %idVendor.i.i = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 16, i32 7
  %78 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %idVendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 27908, i16 %79)
  %cond81.i.i = icmp eq i16 %79, 27908
  br i1 %cond81.i.i, label %sw.bb.i.i, label %while.body.i.lor.lhs.false.i_crit_edge

while.body.i.lor.lhs.false.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false.i

sw.bb.i.i:                                        ; preds = %while.body.i
  %arrayidx.i.i = getelementptr i8, ptr %buffer.0342.i, i32 1
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %81)
  %cmp.not.i.i = icmp eq i8 %81, 65
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %sw.bb.i.i.lor.lhs.false.i_crit_edge

sw.bb.i.i.lor.lhs.false.i_crit_edge:              ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false.i

lor.lhs.false.i.i:                                ; preds = %sw.bb.i.i
  %arrayidx5.i.i = getelementptr i8, ptr %buffer.0342.i, i32 2
  %82 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %cmp7.not.i.i = icmp eq i8 %83, 1
  br i1 %cmp7.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.lor.lhs.false.i_crit_edge

lor.lhs.false.i.i.lor.lhs.false.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %buflen.0351.i)
  %cmp9.i.i = icmp ugt i32 %buflen.0351.i, 21
  br i1 %cmp9.i.i, label %cond.true.i.i, label %if.end.i.i.cond.end.i.i_crit_edge

if.end.i.i.cond.end.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx11.i.i = getelementptr i8, ptr %buffer.0342.i, i32 21
  %84 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %85 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv12.i.i, %cond.true.i.i ], [ 0, %if.end.i.i.cond.end.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %cond.i.i, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %buflen.0351.i)
  %cmp13.not.i.i = icmp ugt i32 %add.i.i, %buflen.0351.i
  br i1 %cmp13.not.i.i, label %cond.end.i.i.cond.end20.i.i_crit_edge, label %cond.true15.i.i

cond.end.i.i.cond.end20.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end20.i.i

cond.true15.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %add16.i.i = add nuw nsw i32 %cond.i.i, 22
  %arrayidx17.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add16.i.i
  %86 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx17.i.i, align 1
  %conv18.i.i = zext i8 %87 to i32
  br label %cond.end20.i.i

cond.end20.i.i:                                   ; preds = %cond.true15.i.i, %cond.end.i.i.cond.end20.i.i_crit_edge
  %cond21.i.i = phi i32 [ %conv18.i.i, %cond.true15.i.i ], [ 0, %cond.end.i.i.cond.end20.i.i_crit_edge ]
  %mul.i.i = shl nuw nsw i32 %cond21.i.i, 1
  %add23.i.i = add nuw nsw i32 %mul.i.i, %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i.i, i32 %buflen.0351.i)
  %cmp24.i.i = icmp ugt i32 %add23.i.i, %buflen.0351.i
  br i1 %cmp24.i.i, label %do.body.i.i, label %if.end35.i.i

do.body.i.i:                                      ; preds = %cond.end20.i.i
  %88 = load i32, ptr @uvc_dbg_param, align 4
  %and.i.i = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.lor.lhs.false.i_crit_edge, label %do.end.i.i

do.body.i.i.lor.lhs.false.i_crit_edge:            ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %dev30.i.i = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 15
  %89 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %73, align 8
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %77, i32 0, i32 2
  %91 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv31.i.i = zext i8 %92 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev30.i.i, ptr noundef nonnull @.str.54, i32 noundef %90, i32 noundef %conv31.i.i) #25
  br label %lor.lhs.false.i

if.end35.i.i:                                     ; preds = %cond.end20.i.i
  %arrayidx36.i.i = getelementptr i8, ptr %buffer.0342.i, i32 3
  %93 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx36.i.i, align 1
  %add38.i.i = add nuw nsw i32 %cond.i.i, 1
  %add.i.i.i = add nuw nsw i32 %mul.i.i, 31
  %div86.i.i.i = and i32 %add.i.i.i, 992
  %add3.i.i.i = add nuw nsw i32 %cond.i.i, 356
  %mul4.i.i.i = shl nuw nsw i32 %add38.i.i, 5
  %add5.i.i.i = add nuw nsw i32 %add3.i.i.i, %mul4.i.i.i
  %add6.i.i.i = add nuw nsw i32 %add5.i.i.i, %div86.i.i.i
  %call9.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6.i.i.i, i32 noundef 3520) #24
  %cmp.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %cmp.i.i.i, label %if.end35.i.i.next_descriptor.i_crit_edge, label %if.end9.i.i.i

if.end35.i.i.next_descriptor.i_crit_edge:         ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

if.end9.i.i.i:                                    ; preds = %if.end35.i.i
  %conv37.i.i = zext i8 %94 to i16
  %id10.i.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %id10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv37.i.i, ptr %id10.i.i.i, align 4
  %type11.i.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 4
  %96 = ptrtoint ptr %type11.i.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 6, ptr %type11.i.i.i, align 2
  %num_links.i.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 10
  %97 = ptrtoint ptr %num_links.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %num_links.i.i.i, align 4
  %num_pads22.i.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 9
  %98 = ptrtoint ptr %num_pads22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add38.i.i, ptr %num_pads22.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 1
  %add.ptr23.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %div86.i.i.i
  %pads.i.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 11
  %99 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr23.i.i.i, ptr %pads.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp2491.not.i.i.i = icmp eq i32 %cond.i.i, 0
  br i1 %cmp2491.not.i.i.i, label %if.end9.i.i.i.for.end.i.i.i_crit_edge, label %if.end9.i.i.i.for.body.i.i.i_crit_edge

if.end9.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end9.i.i.i
  br label %for.body.i.i.i

if.end9.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end9.i.i.i.for.body.i.i.i_crit_edge
  %i.092.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end9.i.i.i.for.body.i.i.i_crit_edge ]
  %100 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pads.i.i.i, align 8
  %flags.i.i.i = getelementptr %struct.media_pad, ptr %101, i32 %i.092.i.i.i, i32 4
  %102 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %flags.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.092.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %cond.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %if.end9.i.i.i.for.end.i.i.i_crit_edge
  %103 = ptrtoint ptr %type11.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %type11.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp35.not.i.i.i = icmp slt i16 %104, 0
  br i1 %cmp35.not.i.i.i, label %for.end.i.i.i.if.end43.i.i_crit_edge, label %if.then39.i.i.i

for.end.i.i.i.if.end43.i.i_crit_edge:             ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end43.i.i

if.then39.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %105 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pads.i.i.i, align 8
  %flags43.i.i.i = getelementptr %struct.media_pad, ptr %106, i32 %cond.i.i, i32 4
  %107 = ptrtoint ptr %flags43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2, ptr %flags43.i.i.i, align 4
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then39.i.i.i, %for.end.i.i.i.if.end43.i.i_crit_edge
  %conv45.i.i.i = trunc i32 %cond.i.i to i8
  %bNrInPins.i.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 13
  %108 = ptrtoint ptr %bNrInPins.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv45.i.i.i, ptr %bNrInPins.i.i.i, align 4
  %109 = ptrtoint ptr %pads.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pads.i.i.i, align 8
  %arrayidx47.i.i.i = getelementptr %struct.media_pad, ptr %110, i32 %add38.i.i
  %baSourceID.i.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 14
  %111 = ptrtoint ptr %baSourceID.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %arrayidx47.i.i.i, ptr %baSourceID.i.i.i, align 16
  %guid.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 6
  %arrayidx44.i.i = getelementptr i8, ptr %buffer.0342.i, i32 4
  %112 = call ptr @memcpy(ptr %guid.i.i, ptr %arrayidx44.i.i, i32 16)
  %arrayidx45.i.i = getelementptr i8, ptr %buffer.0342.i, i32 20
  %113 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx45.i.i, align 1
  %115 = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 12
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %114, ptr %115, align 4
  %arrayidx46.i.i = getelementptr i8, ptr %buffer.0342.i, i32 22
  %117 = call ptr @memcpy(ptr %arrayidx47.i.i.i, ptr %arrayidx46.i.i, i32 %cond.i.i)
  %add47.i.i = add nuw nsw i32 %cond.i.i, 22
  %arrayidx48.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add47.i.i
  %118 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx48.i.i, align 1
  %bControlSize.i.i = getelementptr inbounds %struct.anon.117, ptr %115, i32 0, i32 1
  %120 = ptrtoint ptr %bControlSize.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %bControlSize.i.i, align 1
  %bmControls.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 12, i32 0, i32 1
  %121 = ptrtoint ptr %bmControls.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr.i.i.i, ptr %bmControls.i.i, align 64
  %add.ptr50.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %cond21.i.i
  %bmControlsType.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 12, i32 0, i32 2
  %122 = ptrtoint ptr %bmControlsType.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %add.ptr50.i.i, ptr %bmControlsType.i.i, align 4
  %add52.i.i = add nuw nsw i32 %cond.i.i, 23
  %arrayidx53.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add52.i.i
  %123 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %arrayidx53.i.i, i32 %mul.i.i)
  %add55.i.i = add nuw nsw i32 %cond.i.i, 24
  %add57.i.i = add nuw nsw i32 %add55.i.i, %mul.i.i
  %arrayidx58.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add57.i.i
  %124 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx58.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp60.not.i.i = icmp eq i8 %125, 0
  br i1 %cmp60.not.i.i, label %if.else.i.i, label %if.then62.i.i

if.then62.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv59.i.i = zext i8 %125 to i32
  %name.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 5
  %call69.i.i = tail call i32 @usb_string(ptr noundef %73, i32 noundef %conv59.i.i, ptr noundef %name.i.i, i32 noundef 64) #21
  br label %if.end75.i.i

if.else.i.i:                                      ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name70.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i.i, i32 0, i32 5
  %126 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx36.i.i, align 1
  %conv73.i.i = zext i8 %127 to i32
  %call74.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name70.i.i, ptr noundef nonnull @.str.56, i32 noundef %conv73.i.i) #21
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.else.i.i, %if.then62.i.i
  %128 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i380 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i, ptr noundef %129, ptr noundef %entities) #21
  br i1 %call.i.i.i.i380, label %if.end.i.i.i.i, label %if.end75.i.i.next_descriptor.i_crit_edge

if.end75.i.i.next_descriptor.i_crit_edge:         ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

if.end.i.i.i.i:                                   ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %130 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call9.i.i.i.i.i, ptr %prev.i, align 4
  %131 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %entities, ptr %call9.i.i.i.i.i, align 128
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev3.i.i.i.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %call9.i.i.i.i.i, ptr %129, align 4
  br label %next_descriptor.i

lor.lhs.false.i:                                  ; preds = %do.end.i.i, %do.body.i.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.i.i.lor.lhs.false.i_crit_edge, %sw.bb.i.i.lor.lhs.false.i_crit_edge, %while.body.i.lor.lhs.false.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %buffer.0342.i, i32 1
  %134 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %135)
  %cmp1.not.i = icmp eq i8 %135, 36
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.next_descriptor.i_crit_edge

lor.lhs.false.i.next_descriptor.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %136 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call7.i.i, align 8
  %138 = ptrtoint ptr %intf5 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %intf5, align 4
  %cur_altsetting.i65.i = getelementptr inbounds %struct.usb_interface, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %cur_altsetting.i65.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cur_altsetting.i65.i, align 4
  %arrayidx.i66.i = getelementptr i8, ptr %buffer.0342.i, i32 2
  %142 = ptrtoint ptr %arrayidx.i66.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i66.i, align 1
  %conv.i.i = zext i8 %143 to i32
  %144 = zext i8 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values)
  switch i8 %143, label %do.body554.i.i [
    i8 1, label %sw.bb.i67.i
    i8 2, label %sw.bb43.i.i
    i8 3, label %sw.bb240.i.i
    i8 4, label %sw.bb318.i.i
    i8 5, label %sw.bb384.i.i
    i8 6, label %sw.bb467.i.i
  ]

sw.bb.i67.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %buflen.0351.i)
  %cmp.i.i = icmp ugt i32 %buflen.0351.i, 11
  br i1 %cmp.i.i, label %cond.true.i68.i, label %sw.bb.i67.i.cond.end.i71.i_crit_edge

sw.bb.i67.i.cond.end.i71.i_crit_edge:             ; preds = %sw.bb.i67.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end.i71.i

cond.true.i68.i:                                  ; preds = %sw.bb.i67.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx4.i.i = getelementptr i8, ptr %buffer.0342.i, i32 11
  %145 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %146 to i32
  br label %cond.end.i71.i

cond.end.i71.i:                                   ; preds = %cond.true.i68.i, %sw.bb.i67.i.cond.end.i71.i_crit_edge
  %cond.i69.i = phi i32 [ %conv5.i.i, %cond.true.i68.i ], [ 0, %sw.bb.i67.i.cond.end.i71.i_crit_edge ]
  %add.i70.i = add nuw nsw i32 %cond.i69.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i70.i, i32 %buflen.0351.i)
  %cmp6.i.i = icmp ugt i32 %add.i70.i, %buflen.0351.i
  br i1 %cmp6.i.i, label %do.body.i74.i, label %if.end15.i.i

do.body.i74.i:                                    ; preds = %cond.end.i71.i
  %147 = load i32, ptr @uvc_dbg_param, align 4
  %and.i72.i = and i32 %147, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72.i)
  %tobool.not.i73.i = icmp eq i32 %and.i72.i, 0
  br i1 %tobool.not.i73.i, label %do.body.i74.i.do.body122_crit_edge, label %do.body.i74.i.do.body122.sink.split_crit_edge

do.body.i74.i.do.body122.sink.split_crit_edge:    ; preds = %do.body.i74.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122.sink.split

do.body.i74.i.do.body122_crit_edge:               ; preds = %do.body.i74.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end15.i.i:                                     ; preds = %cond.end.i71.i
  %arrayidx16.i.i = getelementptr i8, ptr %buffer.0342.i, i32 3
  %148 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %arrayidx16.i.i, align 1
  %150 = tail call i16 @llvm.bswap.i16(i16 %149) #21
  %151 = ptrtoint ptr %uvc_version393.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %uvc_version393.i.i, align 8
  %arrayidx17.i78.i = getelementptr i8, ptr %buffer.0342.i, i32 7
  %152 = ptrtoint ptr %arrayidx17.i78.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %arrayidx17.i78.i, align 1
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #21
  %155 = ptrtoint ptr %clock_frequency.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %clock_frequency.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i69.i)
  %cmp19962.not.i.i = icmp eq i32 %cond.i69.i, 0
  br i1 %cmp19962.not.i.i, label %if.end15.i.i.next_descriptor.i_crit_edge, label %if.end15.i.i.for.body.i.i_crit_edge

if.end15.i.i.for.body.i.i_crit_edge:              ; preds = %if.end15.i.i
  br label %for.body.i.i

if.end15.i.i.next_descriptor.i_crit_edge:         ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end15.i.i.for.body.i.i_crit_edge
  %i.0963.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end15.i.i.for.body.i.i_crit_edge ]
  %add21.i.i = add nuw nsw i32 %i.0963.i.i, 12
  %arrayidx22.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add21.i.i
  %156 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %157 to i32
  %call24.i.i = tail call ptr @usb_ifnum_to_if(ptr noundef %137, i32 noundef %conv23.i.i) #21
  %cmp25.i.i = icmp eq ptr %call24.i.i, null
  br i1 %cmp25.i.i, label %do.body28.i.i, label %if.end41.i.i

do.body28.i.i:                                    ; preds = %for.body.i.i
  %158 = load i32, ptr @uvc_dbg_param, align 4
  %and29.i.i = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %do.body28.i.i.for.inc.i.i_crit_edge, label %do.end34.i.i

do.body28.i.i.for.inc.i.i_crit_edge:              ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

do.end34.i.i:                                     ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %159 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %call7.i.i, align 8
  %dev36.i.i = getelementptr inbounds %struct.usb_device, ptr %160, i32 0, i32 15
  %161 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %137, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev36.i.i, ptr noundef nonnull @.str.60, i32 noundef %162, i32 noundef %i.0963.i.i) #25
  br label %for.inc.i.i

if.end41.i.i:                                     ; preds = %for.body.i.i
  %163 = ptrtoint ptr %call24.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %call24.i.i, align 8
  %extra.i.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %extra.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %extra.i.i.i, align 4
  %extralen.i.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %164, i32 0, i32 1
  %167 = ptrtoint ptr %extralen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %extralen.i.i.i, align 4
  %cur_altsetting.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %call24.i.i, i32 0, i32 1
  %169 = ptrtoint ptr %cur_altsetting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cur_altsetting.i.i.i, align 4
  %bInterfaceSubClass.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %170, i32 0, i32 6
  %171 = ptrtoint ptr %bInterfaceSubClass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %bInterfaceSubClass.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %172)
  %cmp.not.i.i.i = icmp eq i8 %172, 2
  br i1 %cmp.not.i.i.i, label %if.end12.i.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end41.i.i
  %173 = load i32, ptr @uvc_dbg_param, align 4
  %and.i.i.i = and i32 %173, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.for.inc.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.for.inc.i.i_crit_edge:              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %174 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %call7.i.i, align 8
  %dev4.i.i.i = getelementptr inbounds %struct.usb_device, ptr %175, i32 0, i32 15
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 8
  %bInterfaceNumber.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %164, i32 0, i32 2
  %178 = ptrtoint ptr %bInterfaceNumber.i.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %bInterfaceNumber.i.i.i, align 2
  %conv9.i.i.i = zext i8 %179 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev4.i.i.i, ptr noundef nonnull @.str.93, i32 noundef %177, i32 noundef %conv9.i.i.i) #25
  br label %for.inc.i.i

if.end12.i.i.i:                                   ; preds = %if.end41.i.i
  %call.i.i.i = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @uvc_driver, ptr noundef nonnull %call24.i.i, ptr noundef %call7.i.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end34.i.i.i, label %do.body15.i.i.i

do.body15.i.i.i:                                  ; preds = %if.end12.i.i.i
  %180 = load i32, ptr @uvc_dbg_param, align 4
  %and16.i.i.i = and i32 %180, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %and16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %do.body15.i.i.i.for.inc.i.i_crit_edge, label %do.end21.i.i.i

do.body15.i.i.i.for.inc.i.i_crit_edge:            ; preds = %do.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

do.end21.i.i.i:                                   ; preds = %do.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %181 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %call7.i.i, align 8
  %dev23.i.i.i = getelementptr inbounds %struct.usb_device, ptr %182, i32 0, i32 15
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %182, align 8
  %185 = ptrtoint ptr %call24.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %call24.i.i, align 8
  %bInterfaceNumber29.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %bInterfaceNumber29.i.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %bInterfaceNumber29.i.i.i, align 2
  %conv30.i.i.i = zext i8 %188 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev23.i.i.i, ptr noundef nonnull @.str.96, i32 noundef %184, i32 noundef %conv30.i.i.i) #25
  br label %for.inc.i.i

if.end34.i.i.i:                                   ; preds = %if.end12.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %189 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %189, i32 noundef 3520, i32 noundef 7656) #26
  %cmp.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %cmp.i.i.i.i, label %if.end34.i.i.i.if.then38.i.i.i_crit_edge, label %do.body.i.i.i.i

if.end34.i.i.i.if.then38.i.i.i_crit_edge:         ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then38.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.end34.i.i.i
  %mutex.i.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %mutex.i.i.i.i, ptr noundef nonnull @.str.119, ptr noundef nonnull @uvc_stream_new.__key) #21
  %dev1.i.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %190 = ptrtoint ptr %dev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call7.i.i, ptr %dev1.i.i.i.i, align 8
  %call2.i.i.i.i = tail call ptr @usb_get_intf(ptr noundef nonnull %call24.i.i) #21
  %intf3.i.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 5
  %191 = ptrtoint ptr %intf3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call2.i.i.i.i, ptr %intf3.i.i.i.i, align 8
  %192 = ptrtoint ptr %cur_altsetting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cur_altsetting.i.i.i, align 4
  %bInterfaceNumber.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %bInterfaceNumber.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %bInterfaceNumber.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %195 to i32
  %intfnum.i.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 6
  %196 = ptrtoint ptr %intfnum.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %conv.i.i.i.i, ptr %intfnum.i.i.i.i, align 4
  %call4.i.i.i.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 18, i32 noundef 0) #21
  %async_wq.i.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 19
  %197 = ptrtoint ptr %async_wq.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call4.i.i.i.i, ptr %async_wq.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %call4.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %uvc_stream_delete.exit.i.i.i.i, label %if.end39.i.i.i

uvc_stream_delete.exit.i.i.i.i:                   ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @mutex_destroy(ptr noundef %mutex.i.i.i.i) #21
  %198 = ptrtoint ptr %intf3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %intf3.i.i.i.i, align 8
  tail call void @usb_put_intf(ptr noundef %199) #21
  %format.i.i.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 11
  %200 = ptrtoint ptr %format.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %format.i.i.i.i.i, align 8
  tail call void @kfree(ptr noundef %201) #21
  %bmaControls.i.i.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 4
  %202 = ptrtoint ptr %bmaControls.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %bmaControls.i.i.i.i.i, align 8
  tail call void @kfree(ptr noundef %203) #21
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i.i) #21
  br label %if.then38.i.i.i

if.then38.i.i.i:                                  ; preds = %uvc_stream_delete.exit.i.i.i.i, %if.end34.i.i.i.if.then38.i.i.i_crit_edge
  tail call void @usb_driver_release_interface(ptr noundef nonnull @uvc_driver, ptr noundef nonnull %call24.i.i) #21
  br label %for.inc.i.i

if.end39.i.i.i:                                   ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp40.i.i.i = icmp eq i32 %168, 0
  br i1 %cmp40.i.i.i, label %for.cond.preheader.i.i.i, label %if.end39.i.i.i.if.end81.i.i.i_crit_edge

if.end39.i.i.i.if.end81.i.i.i_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end81.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end39.i.i.i
  %bNumEndpoints.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %164, i32 0, i32 4
  %204 = ptrtoint ptr %bNumEndpoints.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %bNumEndpoints.i.i.i, align 4
  %conv44.i.i.i = zext i8 %205 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %cmp4585.not.i.i.i = icmp eq i8 %205, 0
  br i1 %cmp4585.not.i.i.i, label %for.cond.preheader.i.i.i.do.body95.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.do.body95.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body95.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %endpoint.i.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %164, i32 0, i32 3
  %206 = ptrtoint ptr %endpoint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %endpoint.i.i.i, align 4
  br label %for.body.i.i79.i

for.body.i.i79.i:                                 ; preds = %for.inc.i.i.i.for.body.i.i79.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.086.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i80.i, %for.inc.i.i.i.for.body.i.i79.i_crit_edge ]
  %extralen48.i.i.i = getelementptr %struct.usb_host_endpoint, ptr %207, i32 %i.086.i.i.i, i32 8
  %208 = ptrtoint ptr %extralen48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %extralen48.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %209)
  %cmp54.i.i.i = icmp sgt i32 %209, 2
  br i1 %cmp54.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i79.i.for.inc.i.i.i_crit_edge

for.body.i.i79.i.for.inc.i.i.i_crit_edge:         ; preds = %for.body.i.i79.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i79.i
  %extra56.i.i.i = getelementptr %struct.usb_host_endpoint, ptr %207, i32 %i.086.i.i.i, i32 7
  %210 = ptrtoint ptr %extra56.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %extra56.i.i.i, align 4
  %arrayidx57.i.i.i = getelementptr i8, ptr %211, i32 1
  %212 = ptrtoint ptr %arrayidx57.i.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx57.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %213)
  %cmp59.i.i.i = icmp eq i8 %213, 36
  br i1 %cmp59.i.i.i, label %do.body62.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i.i

do.body62.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %214 = load i32, ptr @uvc_dbg_param, align 4
  %and63.i.i.i = and i32 %214, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i.i)
  %tobool64.not.i.i.i = icmp eq i32 %and63.i.i.i, 0
  br i1 %tobool64.not.i.i.i, label %do.body62.i.i.i.cleanup.i.i.i_crit_edge, label %do.end68.i.i.i

do.body62.i.i.i.cleanup.i.i.i_crit_edge:          ; preds = %do.body62.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i.i.i

do.end68.i.i.i:                                   ; preds = %do.body62.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %215 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %call7.i.i, align 8
  %dev70.i.i.i = getelementptr inbounds %struct.usb_device, ptr %216, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev70.i.i.i, ptr noundef nonnull @.str.99, i32 noundef %i.086.i.i.i) #25
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %do.end68.i.i.i, %do.body62.i.i.i.cleanup.i.i.i_crit_edge
  %217 = ptrtoint ptr %endpoint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %endpoint.i.i.i, align 4
  %extra76.i.i.i = getelementptr %struct.usb_host_endpoint, ptr %218, i32 %i.086.i.i.i, i32 7
  %219 = ptrtoint ptr %extra76.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %extra76.i.i.i, align 4
  %extralen79.i.i.i = getelementptr %struct.usb_host_endpoint, ptr %218, i32 %i.086.i.i.i, i32 8
  %221 = ptrtoint ptr %extralen79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %extralen79.i.i.i, align 4
  br label %if.end81.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i79.i.for.inc.i.i.i_crit_edge
  %inc.i.i80.i = add nuw nsw i32 %i.086.i.i.i, 1
  %exitcond.not.i.i81.i = icmp eq i32 %inc.i.i80.i, %conv44.i.i.i
  br i1 %exitcond.not.i.i81.i, label %for.inc.i.i.i.do.body95.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i79.i_crit_edge

for.inc.i.i.i.for.body.i.i79.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i79.i

for.inc.i.i.i.do.body95.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body95.i.i.i

if.end81.i.i.i:                                   ; preds = %cleanup.i.i.i, %if.end39.i.i.i.if.end81.i.i.i_crit_edge
  %buffer.2.i.i.i = phi ptr [ %220, %cleanup.i.i.i ], [ %166, %if.end39.i.i.i.if.end81.i.i.i_crit_edge ]
  %buflen.2.i.i.i = phi i32 [ %222, %cleanup.i.i.i ], [ %168, %if.end39.i.i.i.if.end81.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buflen.2.i.i.i)
  %cmp8288.i.i.i = icmp sgt i32 %buflen.2.i.i.i, 2
  br i1 %cmp8288.i.i.i, label %if.end81.i.i.i.land.rhs.i.i.i_crit_edge, label %if.end81.i.i.i.do.body95.i.i.i_crit_edge

if.end81.i.i.i.do.body95.i.i.i_crit_edge:         ; preds = %if.end81.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body95.i.i.i

if.end81.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %if.end81.i.i.i
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %if.end81.i.i.i.land.rhs.i.i.i_crit_edge
  %buflen.390.i.i.i = phi i32 [ %sub.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %buflen.2.i.i.i, %if.end81.i.i.i.land.rhs.i.i.i_crit_edge ]
  %buffer.389.i.i.i = phi ptr [ %add.ptr.i.i82.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %buffer.2.i.i.i, %if.end81.i.i.i.land.rhs.i.i.i_crit_edge ]
  %arrayidx84.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 1
  %223 = ptrtoint ptr %arrayidx84.i.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx84.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %224)
  %cmp86.not.i.i.i = icmp eq i8 %224, 36
  br i1 %cmp86.not.i.i.i, label %if.end107.i.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %225 = ptrtoint ptr %buffer.389.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %buffer.389.i.i.i, align 1
  %conv89.i.i.i = zext i8 %226 to i32
  %sub.i.i.i = sub nsw i32 %buflen.390.i.i.i, %conv89.i.i.i
  %add.ptr.i.i82.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 %conv89.i.i.i
  %cmp82.i.i.i = icmp sgt i32 %sub.i.i.i, 2
  br i1 %cmp82.i.i.i, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge, label %while.body.i.i.i.do.body95.i.i.i_crit_edge

while.body.i.i.i.do.body95.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body95.i.i.i

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.rhs.i.i.i

do.body95.i.i.i:                                  ; preds = %while.body.i.i.i.do.body95.i.i.i_crit_edge, %if.end81.i.i.i.do.body95.i.i.i_crit_edge, %for.inc.i.i.i.do.body95.i.i.i_crit_edge, %for.cond.preheader.i.i.i.do.body95.i.i.i_crit_edge
  %227 = load i32, ptr @uvc_dbg_param, align 4
  %and96.i.i.i = and i32 %227, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i.i.i)
  %tobool97.not.i.i.i = icmp eq i32 %and96.i.i.i, 0
  br i1 %tobool97.not.i.i.i, label %do.body95.i.i.i.error.i.i.i_crit_edge, label %do.end101.i.i.i

do.body95.i.i.i.error.i.i.i_crit_edge:            ; preds = %do.body95.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end101.i.i.i:                                  ; preds = %do.body95.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %228 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %call7.i.i, align 8
  %dev103.i.i.i = getelementptr inbounds %struct.usb_device, ptr %229, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev103.i.i.i, ptr noundef nonnull @.str.102) #25
  br label %error.i.i.i

if.end107.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %arrayidx108.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 2
  %230 = ptrtoint ptr %arrayidx108.i.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx108.i.i.i, align 1
  %232 = zext i8 %231 to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.305)
  switch i8 %231, label %do.body112.i.i.i [
    i8 2, label %if.end107.i.i.i.sw.epilog.i.i.i_crit_edge
    i8 1, label %sw.bb110.i.i.i
  ]

if.end107.i.i.i.sw.epilog.i.i.i_crit_edge:        ; preds = %if.end107.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i.i.i

sw.bb110.i.i.i:                                   ; preds = %if.end107.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i.i.i

do.body112.i.i.i:                                 ; preds = %if.end107.i.i.i
  %233 = load i32, ptr @uvc_dbg_param, align 4
  %and113.i.i.i = and i32 %233, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i.i.i)
  %tobool114.not.i.i.i = icmp eq i32 %and113.i.i.i, 0
  br i1 %tobool114.not.i.i.i, label %do.body112.i.i.i.error.i.i.i_crit_edge, label %do.end118.i.i.i

do.body112.i.i.i.error.i.i.i_crit_edge:           ; preds = %do.body112.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end118.i.i.i:                                  ; preds = %do.body112.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %234 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %call7.i.i, align 8
  %dev120.i.i.i = getelementptr inbounds %struct.usb_device, ptr %235, i32 0, i32 15
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %235, align 8
  %bInterfaceNumber124.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %164, i32 0, i32 2
  %238 = ptrtoint ptr %bInterfaceNumber124.i.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %bInterfaceNumber124.i.i.i, align 2
  %conv125.i.i.i = zext i8 %239 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev120.i.i.i, ptr noundef nonnull @.str.105, i32 noundef %237, i32 noundef %conv125.i.i.i) #25
  br label %error.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb110.i.i.i, %if.end107.i.i.i.sw.epilog.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 1, %sw.bb110.i.i.i ], [ 2, %if.end107.i.i.i.sw.epilog.i.i.i_crit_edge ]
  %size.0.i.i.i = phi i32 [ 13, %sw.bb110.i.i.i ], [ 9, %if.end107.i.i.i.sw.epilog.i.i.i_crit_edge ]
  %type111.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 9
  %240 = ptrtoint ptr %type111.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %.sink.i.i.i, ptr %type111.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %buflen.390.i.i.i)
  %cmp129.i.i.i = icmp ugt i32 %buflen.390.i.i.i, 3
  br i1 %cmp129.i.i.i, label %cond.true.i.i.i, label %sw.epilog.i.i.i.cond.end.i.i.i_crit_edge

sw.epilog.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx131.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 3
  %241 = ptrtoint ptr %arrayidx131.i.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx131.i.i.i, align 1
  %conv132.i.i.i = zext i8 %242 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i, %sw.epilog.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv132.i.i.i, %cond.true.i.i.i ], [ 0, %sw.epilog.i.i.i.cond.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %buflen.390.i.i.i, i32 %size.0.i.i.i)
  %cmp133.not.i.i.i = icmp ult i32 %buflen.390.i.i.i, %size.0.i.i.i
  br i1 %cmp133.not.i.i.i, label %cond.end.i.i.i.cond.end140.i.i.i_crit_edge, label %cond.true135.i.i.i

cond.end.i.i.i.cond.end140.i.i.i_crit_edge:       ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end140.i.i.i

cond.true135.i.i.i:                               ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %sub136.i.i.i = add nsw i32 %size.0.i.i.i, -1
  %arrayidx137.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 %sub136.i.i.i
  %243 = ptrtoint ptr %arrayidx137.i.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx137.i.i.i, align 1
  %conv138.i.i.i = zext i8 %244 to i32
  br label %cond.end140.i.i.i

cond.end140.i.i.i:                                ; preds = %cond.true135.i.i.i, %cond.end.i.i.i.cond.end140.i.i.i_crit_edge
  %cond141.i.i.i = phi i32 [ %conv138.i.i.i, %cond.true135.i.i.i ], [ 0, %cond.end.i.i.i.cond.end140.i.i.i_crit_edge ]
  %mul.i.i.i = mul nuw nsw i32 %cond141.i.i.i, %cond.i.i.i
  %add.i.i83.i = add nuw nsw i32 %mul.i.i.i, %size.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %buflen.390.i.i.i, i32 %add.i.i83.i)
  %cmp142.i.i.i = icmp ult i32 %buflen.390.i.i.i, %add.i.i83.i
  br i1 %cmp142.i.i.i, label %do.body145.i.i.i, label %if.end162.i.i.i

do.body145.i.i.i:                                 ; preds = %cond.end140.i.i.i
  %245 = load i32, ptr @uvc_dbg_param, align 4
  %and146.i.i.i = and i32 %245, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %and146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %do.body145.i.i.i.error.i.i.i_crit_edge, label %do.end151.i.i.i

do.body145.i.i.i.error.i.i.i_crit_edge:           ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end151.i.i.i:                                  ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %246 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %call7.i.i, align 8
  %dev153.i.i.i = getelementptr inbounds %struct.usb_device, ptr %247, i32 0, i32 15
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 8
  %bInterfaceNumber157.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %164, i32 0, i32 2
  %250 = ptrtoint ptr %bInterfaceNumber157.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %bInterfaceNumber157.i.i.i, align 2
  %conv158.i.i.i = zext i8 %251 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev153.i.i.i, ptr noundef nonnull @.str.108, i32 noundef %249, i32 noundef %conv158.i.i.i) #25
  br label %error.i.i.i

if.end162.i.i.i:                                  ; preds = %cond.end140.i.i.i
  %conv163.i.i.i = trunc i32 %cond.i.i.i to i8
  %header.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8
  %252 = ptrtoint ptr %header.i.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv163.i.i.i, ptr %header.i.i.i, align 4
  %arrayidx164.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 6
  %253 = ptrtoint ptr %arrayidx164.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx164.i.i.i, align 1
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 1
  %255 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %bEndpointAddress.i.i.i, align 1
  %256 = ptrtoint ptr %arrayidx108.i.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx108.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %257)
  %cmp168.i.i.i = icmp eq i8 %257, 1
  %arrayidx171.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 7
  %258 = ptrtoint ptr %arrayidx171.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx171.i.i.i, align 1
  br i1 %cmp168.i.i.i, label %if.then170.i.i.i, label %if.else.i.i.i

if.then170.i.i.i:                                 ; preds = %if.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %bmInfo.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 5
  %260 = ptrtoint ptr %bmInfo.i.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %bmInfo.i.i.i, align 4
  %arrayidx173.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 8
  %261 = ptrtoint ptr %arrayidx173.i.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx173.i.i.i, align 1
  %bTerminalLink.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 2
  %263 = ptrtoint ptr %bTerminalLink.i.i.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %bTerminalLink.i.i.i, align 2
  %arrayidx175.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 9
  %264 = ptrtoint ptr %arrayidx175.i.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx175.i.i.i, align 1
  %bStillCaptureMethod.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 6
  %266 = ptrtoint ptr %bStillCaptureMethod.i.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %265, ptr %bStillCaptureMethod.i.i.i, align 1
  %arrayidx177.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 10
  %267 = ptrtoint ptr %arrayidx177.i.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx177.i.i.i, align 1
  %bTriggerSupport.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 7
  %269 = ptrtoint ptr %bTriggerSupport.i.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %bTriggerSupport.i.i.i, align 2
  %arrayidx179.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 11
  %270 = ptrtoint ptr %arrayidx179.i.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx179.i.i.i, align 1
  %bTriggerUsage.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 8
  %272 = ptrtoint ptr %bTriggerUsage.i.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %271, ptr %bTriggerUsage.i.i.i, align 1
  br label %if.end184.i.i.i

if.else.i.i.i:                                    ; preds = %if.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %bTerminalLink183.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 2
  %273 = ptrtoint ptr %bTerminalLink183.i.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %259, ptr %bTerminalLink183.i.i.i, align 2
  br label %if.end184.i.i.i

if.end184.i.i.i:                                  ; preds = %if.else.i.i.i, %if.then170.i.i.i
  %conv185.i.i.i = trunc i32 %cond141.i.i.i to i8
  %bControlSize.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 3
  %274 = ptrtoint ptr %bControlSize.i.i.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %conv185.i.i.i, ptr %bControlSize.i.i.i, align 1
  %arrayidx187.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 %size.0.i.i.i
  %call189.i.i.i = tail call ptr @kmemdup(ptr noundef %arrayidx187.i.i.i, i32 noundef %mul.i.i.i, i32 noundef 3264) #21
  %bmaControls.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 4
  %275 = ptrtoint ptr %bmaControls.i.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %call189.i.i.i, ptr %bmaControls.i.i.i, align 8
  %cmp193.i.i.i = icmp eq ptr %call189.i.i.i, null
  br i1 %cmp193.i.i.i, label %if.end184.i.i.i.error.i.i.i_crit_edge, label %if.end196.i.i.i

if.end184.i.i.i.error.i.i.i_crit_edge:            ; preds = %if.end184.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

if.end196.i.i.i:                                  ; preds = %if.end184.i.i.i
  %276 = ptrtoint ptr %buffer.389.i.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %buffer.389.i.i.i, align 1
  %conv198.i.i.i = zext i8 %277 to i32
  %sub199.i.i.i = sub nsw i32 %buflen.390.i.i.i, %conv198.i.i.i
  %add.ptr202.i.i.i = getelementptr i8, ptr %buffer.389.i.i.i, i32 %conv198.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub199.i.i.i)
  %cmp20491.i.i.i = icmp sgt i32 %sub199.i.i.i, 2
  br i1 %cmp20491.i.i.i, label %land.rhs206.lr.ph.i.i.i, label %if.end196.i.i.i.do.body284.i.i.i_crit_edge

if.end196.i.i.i.do.body284.i.i.i_crit_edge:       ; preds = %if.end196.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body284.i.i.i

land.rhs206.lr.ph.i.i.i:                          ; preds = %if.end196.i.i.i
  %bInterfaceNumber234.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %164, i32 0, i32 2
  br label %land.rhs206.i.i.i

land.rhs206.i.i.i:                                ; preds = %sw.epilog273.i.i.i.land.rhs206.i.i.i_crit_edge, %land.rhs206.lr.ph.i.i.i
  %nintervals.096.i.i.i = phi i32 [ 0, %land.rhs206.lr.ph.i.i.i ], [ %nintervals.1.i.i.i, %sw.epilog273.i.i.i.land.rhs206.i.i.i_crit_edge ]
  %nframes.095.i.i.i = phi i32 [ 0, %land.rhs206.lr.ph.i.i.i ], [ %nframes.1.i.i.i, %sw.epilog273.i.i.i.land.rhs206.i.i.i_crit_edge ]
  %nformats.094.i.i.i = phi i32 [ 0, %land.rhs206.lr.ph.i.i.i ], [ %nformats.1.i.i.i, %sw.epilog273.i.i.i.land.rhs206.i.i.i_crit_edge ]
  %_buflen.093.i.i.i = phi i32 [ %sub199.i.i.i, %land.rhs206.lr.ph.i.i.i ], [ %sub276.i.i.i, %sw.epilog273.i.i.i.land.rhs206.i.i.i_crit_edge ]
  %_buffer.092.i.i.i = phi ptr [ %add.ptr202.i.i.i, %land.rhs206.lr.ph.i.i.i ], [ %add.ptr279.i.i.i, %sw.epilog273.i.i.i.land.rhs206.i.i.i_crit_edge ]
  %arrayidx207.i.i.i = getelementptr i8, ptr %_buffer.092.i.i.i, i32 1
  %278 = ptrtoint ptr %arrayidx207.i.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx207.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %279)
  %cmp209.i.i.i = icmp eq i8 %279, 36
  br i1 %cmp209.i.i.i, label %while.body212.i.i.i, label %land.rhs206.i.i.i.while.end280.i.i.i_crit_edge

land.rhs206.i.i.i.while.end280.i.i.i_crit_edge:   ; preds = %land.rhs206.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end280.i.i.i

while.body212.i.i.i:                              ; preds = %land.rhs206.i.i.i
  %arrayidx213.i.i.i = getelementptr i8, ptr %_buffer.092.i.i.i, i32 2
  %280 = ptrtoint ptr %arrayidx213.i.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx213.i.i.i, align 1
  %282 = zext i8 %281 to i64
  call void @__sanitizer_cov_trace_switch(i64 %282, ptr @__sancov_gen_cov_switch_values.306)
  switch i8 %281, label %while.body212.i.i.i.sw.epilog273.i.i.i_crit_edge [
    i8 4, label %while.body212.i.i.i.sw.bb215.i.i.i_crit_edge
    i8 6, label %while.body212.i.i.i.sw.bb215.i.i.i_crit_edge771
    i8 16, label %while.body212.i.i.i.sw.bb215.i.i.i_crit_edge772
    i8 12, label %sw.bb217.i.i.i
    i8 10, label %while.body212.i.i.i.do.body222.i.i.i_crit_edge
    i8 18, label %while.body212.i.i.i.do.body222.i.i.i_crit_edge773
    i8 5, label %while.body212.i.i.i.sw.bb241.i.i.i_crit_edge
    i8 7, label %while.body212.i.i.i.sw.bb241.i.i.i_crit_edge774
    i8 17, label %sw.bb257.i.i.i
  ]

while.body212.i.i.i.sw.bb241.i.i.i_crit_edge774:  ; preds = %while.body212.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb241.i.i.i

while.body212.i.i.i.sw.bb241.i.i.i_crit_edge:     ; preds = %while.body212.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb241.i.i.i

while.body212.i.i.i.do.body222.i.i.i_crit_edge773: ; preds = %while.body212.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body222.i.i.i

while.body212.i.i.i.do.body222.i.i.i_crit_edge:   ; preds = %while.body212.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body222.i.i.i

while.body212.i.i.i.sw.bb215.i.i.i_crit_edge772:  ; preds = %while.body212.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb215.i.i.i

while.body212.i.i.i.sw.bb215.i.i.i_crit_edge771:  ; preds = %while.body212.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb215.i.i.i

while.body212.i.i.i.sw.bb215.i.i.i_crit_edge:     ; preds = %while.body212.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb215.i.i.i

while.body212.i.i.i.sw.epilog273.i.i.i_crit_edge: ; preds = %while.body212.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog273.i.i.i

sw.bb215.i.i.i:                                   ; preds = %while.body212.i.i.i.sw.bb215.i.i.i_crit_edge, %while.body212.i.i.i.sw.bb215.i.i.i_crit_edge771, %while.body212.i.i.i.sw.bb215.i.i.i_crit_edge772
  %inc216.i.i.i = add i32 %nformats.094.i.i.i, 1
  br label %sw.epilog273.i.i.i

sw.bb217.i.i.i:                                   ; preds = %while.body212.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %inc218.i.i.i = add i32 %nformats.094.i.i.i, 1
  %inc219.i.i.i = add i32 %nframes.095.i.i.i, 1
  %inc220.i.i.i = add i32 %nintervals.096.i.i.i, 1
  br label %sw.epilog273.i.i.i

do.body222.i.i.i:                                 ; preds = %while.body212.i.i.i.do.body222.i.i.i_crit_edge, %while.body212.i.i.i.do.body222.i.i.i_crit_edge773
  %283 = load i32, ptr @uvc_dbg_param, align 4
  %and223.i.i.i = and i32 %283, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223.i.i.i)
  %tobool224.not.i.i.i = icmp eq i32 %and223.i.i.i, 0
  br i1 %tobool224.not.i.i.i, label %do.body222.i.i.i.sw.epilog273.i.i.i_crit_edge, label %do.end228.i.i.i

do.body222.i.i.i.sw.epilog273.i.i.i_crit_edge:    ; preds = %do.body222.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog273.i.i.i

do.end228.i.i.i:                                  ; preds = %do.body222.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %284 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %call7.i.i, align 8
  %dev230.i.i.i = getelementptr inbounds %struct.usb_device, ptr %285, i32 0, i32 15
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %285, align 8
  %288 = ptrtoint ptr %bInterfaceNumber234.i.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %bInterfaceNumber234.i.i.i, align 2
  %conv235.i.i.i = zext i8 %289 to i32
  %conv237.i.i.i = zext i8 %281 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev230.i.i.i, ptr noundef nonnull @.str.111, i32 noundef %287, i32 noundef %conv235.i.i.i, i32 noundef %conv237.i.i.i) #25
  br label %sw.epilog273.i.i.i

sw.bb241.i.i.i:                                   ; preds = %while.body212.i.i.i.sw.bb241.i.i.i_crit_edge, %while.body212.i.i.i.sw.bb241.i.i.i_crit_edge774
  %inc242.i.i.i = add i32 %nframes.095.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %_buflen.093.i.i.i)
  %cmp243.i.i.i = icmp ugt i32 %_buflen.093.i.i.i, 25
  br i1 %cmp243.i.i.i, label %if.then245.i.i.i, label %sw.bb241.i.i.i.sw.epilog273.i.i.i_crit_edge

sw.bb241.i.i.i.sw.epilog273.i.i.i_crit_edge:      ; preds = %sw.bb241.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog273.i.i.i

if.then245.i.i.i:                                 ; preds = %sw.bb241.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx246.i.i.i = getelementptr i8, ptr %_buffer.092.i.i.i, i32 25
  %290 = ptrtoint ptr %arrayidx246.i.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx246.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool248.not.i.i.i = icmp eq i8 %291, 0
  %narrow45.i.i.i = select i1 %tobool248.not.i.i.i, i8 3, i8 %291
  %spec.select.i.i.i = zext i8 %narrow45.i.i.i to i32
  %add255.i.i.i = add i32 %nintervals.096.i.i.i, %spec.select.i.i.i
  br label %sw.epilog273.i.i.i

sw.bb257.i.i.i:                                   ; preds = %while.body212.i.i.i
  %inc258.i.i.i = add i32 %nframes.095.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %_buflen.093.i.i.i)
  %cmp259.i.i.i = icmp sgt i32 %_buflen.093.i.i.i, 21
  br i1 %cmp259.i.i.i, label %if.then261.i.i.i, label %sw.bb257.i.i.i.sw.epilog273.i.i.i_crit_edge

sw.bb257.i.i.i.sw.epilog273.i.i.i_crit_edge:      ; preds = %sw.bb257.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog273.i.i.i

if.then261.i.i.i:                                 ; preds = %sw.bb257.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx262.i.i.i = getelementptr i8, ptr %_buffer.092.i.i.i, i32 21
  %292 = ptrtoint ptr %arrayidx262.i.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx262.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool264.not.i.i.i = icmp eq i8 %293, 0
  %narrow.i.i.i = select i1 %tobool264.not.i.i.i, i8 3, i8 %293
  %spec.select1.i.i.i = zext i8 %narrow.i.i.i to i32
  %add271.i.i.i = add i32 %nintervals.096.i.i.i, %spec.select1.i.i.i
  br label %sw.epilog273.i.i.i

sw.epilog273.i.i.i:                               ; preds = %if.then261.i.i.i, %sw.bb257.i.i.i.sw.epilog273.i.i.i_crit_edge, %if.then245.i.i.i, %sw.bb241.i.i.i.sw.epilog273.i.i.i_crit_edge, %do.end228.i.i.i, %do.body222.i.i.i.sw.epilog273.i.i.i_crit_edge, %sw.bb217.i.i.i, %sw.bb215.i.i.i, %while.body212.i.i.i.sw.epilog273.i.i.i_crit_edge
  %nformats.1.i.i.i = phi i32 [ %nformats.094.i.i.i, %while.body212.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %nformats.094.i.i.i, %if.then261.i.i.i ], [ %nformats.094.i.i.i, %sw.bb257.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %nformats.094.i.i.i, %if.then245.i.i.i ], [ %nformats.094.i.i.i, %sw.bb241.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %nformats.094.i.i.i, %do.end228.i.i.i ], [ %nformats.094.i.i.i, %do.body222.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %inc218.i.i.i, %sw.bb217.i.i.i ], [ %inc216.i.i.i, %sw.bb215.i.i.i ]
  %nframes.1.i.i.i = phi i32 [ %nframes.095.i.i.i, %while.body212.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %inc258.i.i.i, %if.then261.i.i.i ], [ %inc258.i.i.i, %sw.bb257.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %inc242.i.i.i, %if.then245.i.i.i ], [ %inc242.i.i.i, %sw.bb241.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %nframes.095.i.i.i, %do.end228.i.i.i ], [ %nframes.095.i.i.i, %do.body222.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %inc219.i.i.i, %sw.bb217.i.i.i ], [ %nframes.095.i.i.i, %sw.bb215.i.i.i ]
  %nintervals.1.i.i.i = phi i32 [ %nintervals.096.i.i.i, %while.body212.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %add271.i.i.i, %if.then261.i.i.i ], [ %nintervals.096.i.i.i, %sw.bb257.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %add255.i.i.i, %if.then245.i.i.i ], [ %nintervals.096.i.i.i, %sw.bb241.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %nintervals.096.i.i.i, %do.end228.i.i.i ], [ %nintervals.096.i.i.i, %do.body222.i.i.i.sw.epilog273.i.i.i_crit_edge ], [ %inc220.i.i.i, %sw.bb217.i.i.i ], [ %nintervals.096.i.i.i, %sw.bb215.i.i.i ]
  %294 = ptrtoint ptr %_buffer.092.i.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %_buffer.092.i.i.i, align 1
  %conv275.i.i.i = zext i8 %295 to i32
  %sub276.i.i.i = sub i32 %_buflen.093.i.i.i, %conv275.i.i.i
  %add.ptr279.i.i.i = getelementptr i8, ptr %_buffer.092.i.i.i, i32 %conv275.i.i.i
  %cmp204.i.i.i = icmp sgt i32 %sub276.i.i.i, 2
  br i1 %cmp204.i.i.i, label %sw.epilog273.i.i.i.land.rhs206.i.i.i_crit_edge, label %sw.epilog273.i.i.i.while.end280.i.i.i_crit_edge

sw.epilog273.i.i.i.while.end280.i.i.i_crit_edge:  ; preds = %sw.epilog273.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end280.i.i.i

sw.epilog273.i.i.i.land.rhs206.i.i.i_crit_edge:   ; preds = %sw.epilog273.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.rhs206.i.i.i

while.end280.i.i.i:                               ; preds = %sw.epilog273.i.i.i.while.end280.i.i.i_crit_edge, %land.rhs206.i.i.i.while.end280.i.i.i_crit_edge
  %nformats.0.lcssa.i.i.i = phi i32 [ %nformats.094.i.i.i, %land.rhs206.i.i.i.while.end280.i.i.i_crit_edge ], [ %nformats.1.i.i.i, %sw.epilog273.i.i.i.while.end280.i.i.i_crit_edge ]
  %nframes.0.lcssa.i.i.i = phi i32 [ %nframes.095.i.i.i, %land.rhs206.i.i.i.while.end280.i.i.i_crit_edge ], [ %nframes.1.i.i.i, %sw.epilog273.i.i.i.while.end280.i.i.i_crit_edge ]
  %nintervals.0.lcssa.i.i.i = phi i32 [ %nintervals.096.i.i.i, %land.rhs206.i.i.i.while.end280.i.i.i_crit_edge ], [ %nintervals.1.i.i.i, %sw.epilog273.i.i.i.while.end280.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nformats.0.lcssa.i.i.i)
  %cmp281.i.i.i = icmp eq i32 %nformats.0.lcssa.i.i.i, 0
  br i1 %cmp281.i.i.i, label %while.end280.i.i.i.do.body284.i.i.i_crit_edge, label %if.end8.i.i.i.i104.i

while.end280.i.i.i.do.body284.i.i.i_crit_edge:    ; preds = %while.end280.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body284.i.i.i

do.body284.i.i.i:                                 ; preds = %while.end280.i.i.i.do.body284.i.i.i_crit_edge, %if.end196.i.i.i.do.body284.i.i.i_crit_edge
  %296 = load i32, ptr @uvc_dbg_param, align 4
  %and285.i.i.i = and i32 %296, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285.i.i.i)
  %tobool286.not.i.i.i = icmp eq i32 %and285.i.i.i, 0
  br i1 %tobool286.not.i.i.i, label %do.body284.i.i.i.error.i.i.i_crit_edge, label %do.end290.i.i.i

do.body284.i.i.i.error.i.i.i_crit_edge:           ; preds = %do.body284.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end290.i.i.i:                                  ; preds = %do.body284.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %297 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %call7.i.i, align 8
  %dev292.i.i.i = getelementptr inbounds %struct.usb_device, ptr %298, i32 0, i32 15
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %298, align 8
  %bInterfaceNumber296.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %164, i32 0, i32 2
  %301 = ptrtoint ptr %bInterfaceNumber296.i.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %bInterfaceNumber296.i.i.i, align 2
  %conv297.i.i.i = zext i8 %302 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev292.i.i.i, ptr noundef nonnull @.str.114, i32 noundef %300, i32 noundef %conv297.i.i.i) #25
  br label %error.i.i.i

if.end8.i.i.i.i104.i:                             ; preds = %while.end280.i.i.i
  %mul303.i.i.i = shl i32 %nframes.0.lcssa.i.i.i, 5
  %mul302.i.i.i = shl i32 %nformats.0.lcssa.i.i.i, 6
  %add304.i.i.i = add i32 %mul303.i.i.i, %mul302.i.i.i
  %mul305.i.i.i = shl i32 %nintervals.0.lcssa.i.i.i, 2
  %add306.i.i.i = add i32 %add304.i.i.i, %mul305.i.i.i
  %call9.i.i.i.i103.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add306.i.i.i, i32 noundef 3520) #24
  %cmp308.i.i.i = icmp eq ptr %call9.i.i.i.i103.i, null
  br i1 %cmp308.i.i.i, label %if.end8.i.i.i.i104.i.error.i.i.i_crit_edge, label %land.rhs319.lr.ph.lr.ph.i.i.i

if.end8.i.i.i.i104.i.error.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i.i104.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

land.rhs319.lr.ph.lr.ph.i.i.i:                    ; preds = %if.end8.i.i.i.i104.i
  %format314.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 11
  %303 = ptrtoint ptr %format314.i.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call9.i.i.i.i103.i, ptr %format314.i.i.i, align 8
  %nformats315.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 10
  %304 = ptrtoint ptr %nformats315.i.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %nformats.0.lcssa.i.i.i, ptr %nformats315.i.i.i, align 4
  %arrayidx312.i.i.i = getelementptr %struct.uvc_format, ptr %call9.i.i.i.i103.i, i32 %nformats.0.lcssa.i.i.i
  %arrayidx313.i.i.i = getelementptr %struct.uvc_frame, ptr %arrayidx312.i.i.i, i32 %nframes.0.lcssa.i.i.i
  br label %land.rhs319.lr.ph.i.i.i

land.rhs319.lr.ph.i.i.i:                          ; preds = %if.end334.i.i.i.land.rhs319.lr.ph.i.i.i_crit_edge, %land.rhs319.lr.ph.lr.ph.i.i.i
  %buflen.4.ph114.i.i.i = phi i32 [ %sub199.i.i.i, %land.rhs319.lr.ph.lr.ph.i.i.i ], [ %sub337.i.i.i, %if.end334.i.i.i.land.rhs319.lr.ph.i.i.i_crit_edge ]
  %buffer.4.ph113.i.i.i = phi ptr [ %add.ptr202.i.i.i, %land.rhs319.lr.ph.lr.ph.i.i.i ], [ %add.ptr338.i.i.i, %if.end334.i.i.i.land.rhs319.lr.ph.i.i.i_crit_edge ]
  %frame.0.ph112.i.i.i = phi ptr [ %arrayidx312.i.i.i, %land.rhs319.lr.ph.lr.ph.i.i.i ], [ %add.ptr336.i.i.i, %if.end334.i.i.i.land.rhs319.lr.ph.i.i.i_crit_edge ]
  %format.0.ph111.i.i.i = phi ptr [ %call9.i.i.i.i103.i, %land.rhs319.lr.ph.lr.ph.i.i.i ], [ %incdec.ptr.i.i.i, %if.end334.i.i.i.land.rhs319.lr.ph.i.i.i_crit_edge ]
  %interval.0.ph110.i.i.i = phi ptr [ %arrayidx313.i.i.i, %land.rhs319.lr.ph.lr.ph.i.i.i ], [ %interval.6.i.i.i, %if.end334.i.i.i.land.rhs319.lr.ph.i.i.i_crit_edge ]
  br label %land.rhs319.i.i.i

land.rhs319.i.i.i:                                ; preds = %sw.epilog340.i.i.i.land.rhs319.i.i.i_crit_edge, %land.rhs319.lr.ph.i.i.i
  %buflen.4104.i.i.i = phi i32 [ %buflen.4.ph114.i.i.i, %land.rhs319.lr.ph.i.i.i ], [ %sub343.i.i.i, %sw.epilog340.i.i.i.land.rhs319.i.i.i_crit_edge ]
  %buffer.4103.i.i.i = phi ptr [ %buffer.4.ph113.i.i.i, %land.rhs319.lr.ph.i.i.i ], [ %add.ptr346.i.i.i, %sw.epilog340.i.i.i.land.rhs319.i.i.i_crit_edge ]
  %arrayidx320.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 1
  %305 = ptrtoint ptr %arrayidx320.i.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx320.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %306)
  %cmp322.i.i.i = icmp eq i8 %306, 36
  br i1 %cmp322.i.i.i, label %while.body325.i.i.i, label %land.rhs319.i.i.i.do.body350.i.i.i_crit_edge

land.rhs319.i.i.i.do.body350.i.i.i_crit_edge:     ; preds = %land.rhs319.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body350.i.i.i

while.body325.i.i.i:                              ; preds = %land.rhs319.i.i.i
  %arrayidx326.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 2
  %307 = ptrtoint ptr %arrayidx326.i.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx326.i.i.i, align 1
  %conv327.i.i.i = zext i8 %308 to i32
  %309 = add nsw i32 %conv327.i.i.i, -4
  %310 = tail call i32 @llvm.fshl.i32(i32 %309, i32 %309, i32 31) #21
  %311 = zext i32 %310 to i64
  call void @__sanitizer_cov_trace_switch(i64 %311, ptr @__sancov_gen_cov_switch_values.307)
  switch i32 %310, label %sw.epilog340.i.i.i [
    i32 0, label %while.body325.i.i.i.sw.bb328.i.i.i_crit_edge
    i32 1, label %while.body325.i.i.i.sw.bb328.i.i.i_crit_edge775
    i32 4, label %while.body325.i.i.i.sw.bb328.i.i.i_crit_edge776
    i32 6, label %while.body325.i.i.i.sw.bb328.i.i.i_crit_edge777
  ]

while.body325.i.i.i.sw.bb328.i.i.i_crit_edge777:  ; preds = %while.body325.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb328.i.i.i

while.body325.i.i.i.sw.bb328.i.i.i_crit_edge776:  ; preds = %while.body325.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb328.i.i.i

while.body325.i.i.i.sw.bb328.i.i.i_crit_edge775:  ; preds = %while.body325.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb328.i.i.i

while.body325.i.i.i.sw.bb328.i.i.i_crit_edge:     ; preds = %while.body325.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb328.i.i.i

sw.bb328.i.i.i:                                   ; preds = %while.body325.i.i.i.sw.bb328.i.i.i_crit_edge, %while.body325.i.i.i.sw.bb328.i.i.i_crit_edge775, %while.body325.i.i.i.sw.bb328.i.i.i_crit_edge776, %while.body325.i.i.i.sw.bb328.i.i.i_crit_edge777
  %arrayidx326.i.i.i.le = getelementptr i8, ptr %buffer.4103.i.i.i, i32 2
  %frame329.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 10
  %312 = ptrtoint ptr %frame329.i.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %frame.0.ph112.i.i.i, ptr %frame329.i.i.i, align 4
  %313 = ptrtoint ptr %intf3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %intf3.i.i.i.i, align 8
  %cur_altsetting.i2.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %314, i32 0, i32 1
  %315 = ptrtoint ptr %cur_altsetting.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cur_altsetting.i2.i.i.i, align 4
  %317 = ptrtoint ptr %arrayidx326.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx326.i.i.i.le, align 1
  %319 = ptrtoint ptr %format.0.ph111.i.i.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %318, ptr %format.0.ph111.i.i.i, align 4
  %arrayidx2.i.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 3
  %320 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx2.i.i.i.i, align 1
  %index.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 1
  %322 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %321, ptr %index.i.i.i.i, align 1
  %323 = load i8, ptr %arrayidx326.i.i.i.le, align 1
  %conv.i3.i.i.i = zext i8 %323 to i32
  %324 = add nsw i32 %conv.i3.i.i.i, -4
  %325 = tail call i32 @llvm.fshl.i32(i32 %324, i32 %324, i32 31) #21
  %326 = zext i32 %325 to i64
  call void @__sanitizer_cov_trace_switch(i64 %326, ptr @__sancov_gen_cov_switch_values.308)
  switch i32 %325, label %do.body190.i.i.i.i [
    i32 0, label %sw.bb328.i.i.i.sw.bb.i.i.i.i_crit_edge
    i32 6, label %sw.bb328.i.i.i.sw.bb.i.i.i.i_crit_edge778
    i32 1, label %sw.bb89.i.i.i.i
    i32 4, label %sw.bb117.i.i.i.i
  ]

sw.bb328.i.i.i.sw.bb.i.i.i.i_crit_edge778:        ; preds = %sw.bb328.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb.i.i.i.i

sw.bb328.i.i.i.sw.bb.i.i.i.i_crit_edge:           ; preds = %sw.bb328.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %sw.bb328.i.i.i.sw.bb.i.i.i.i_crit_edge, %sw.bb328.i.i.i.sw.bb.i.i.i.i_crit_edge778
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %323)
  %cmp.i4.i.i.i = icmp eq i8 %323, 4
  %cond.i.i.i.i = select i1 %cmp.i4.i.i.i, i32 27, i32 28
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i.i, i32 %buflen.4104.i.i.i)
  %cmp7.i.i.i.i = icmp ugt i32 %cond.i.i.i.i, %buflen.4104.i.i.i
  br i1 %cmp7.i.i.i.i, label %do.body.i6.i.i.i, label %if.end16.i.i.i.i

do.body.i6.i.i.i:                                 ; preds = %sw.bb.i.i.i.i
  %327 = load i32, ptr @uvc_dbg_param, align 4
  %and.i.i.i.i = and i32 %327, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %do.body.i6.i.i.i.error.i.i.i_crit_edge, label %do.end.i.i.i.i

do.body.i6.i.i.i.error.i.i.i_crit_edge:           ; preds = %do.body.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.body.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %328 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %call7.i.i, align 8
  %dev11.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %329, i32 0, i32 15
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %329, align 8
  %bInterfaceNumber.i7.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %316, i32 0, i32 2
  %332 = ptrtoint ptr %bInterfaceNumber.i7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %bInterfaceNumber.i7.i.i.i, align 2
  %conv13.i.i.i.i = zext i8 %333 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev11.i.i.i.i, ptr noundef nonnull @.str.120, i32 noundef %331, i32 noundef %conv13.i.i.i.i) #25
  br label %error.i.i.i

if.end16.i.i.i.i:                                 ; preds = %sw.bb.i.i.i.i
  %arrayidx17.i.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 5
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.end16.i.i.i.i
  %i.09.i.i.i.i.i = phi i32 [ 0, %if.end16.i.i.i.i ], [ %inc.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %guid1.i.i.i.i.i = getelementptr [36 x %struct.uvc_format_desc], ptr @uvc_fmts, i32 0, i32 %i.09.i.i.i.i.i, i32 1
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx17.i.i.i.i, ptr noundef dereferenceable(16) %guid1.i.i.i.i.i, i32 16) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i.i)
  %cmp2.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %cmp2.i.i.i.i.i, label %uvc_format_by_guid.exit.i.i.i.i, label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i.i
  %inc.i.i.i.i.i = add nuw nsw i32 %i.09.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, 36
  br i1 %exitcond.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.do.end26.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.do.end26.i.i.i.i_crit_edge:     ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end26.i.i.i.i

uvc_format_by_guid.exit.i.i.i.i:                  ; preds = %for.body.i.i.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr [36 x %struct.uvc_format_desc], ptr @uvc_fmts, i32 0, i32 %i.09.i.i.i.i.i
  %cmp18.not.i.i.i.i = icmp eq ptr %arrayidx.i.i.i.i.i, null
  br i1 %cmp18.not.i.i.i.i, label %uvc_format_by_guid.exit.i.i.i.i.do.end26.i.i.i.i_crit_edge, label %if.then20.i.i.i.i

uvc_format_by_guid.exit.i.i.i.i.do.end26.i.i.i.i_crit_edge: ; preds = %uvc_format_by_guid.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end26.i.i.i.i

if.then20.i.i.i.i:                                ; preds = %uvc_format_by_guid.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 8
  %334 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %call22.i.i.i.i = tail call i32 @strscpy(ptr noundef %name.i.i.i.i, ptr noundef %335, i32 noundef 32) #21
  %fcc.i.i.i.i = getelementptr [36 x %struct.uvc_format_desc], ptr @uvc_fmts, i32 0, i32 %i.09.i.i.i.i.i, i32 2
  %336 = ptrtoint ptr %fcc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %fcc.i.i.i.i, align 4
  br label %if.end35.i.i.i.i

do.end26.i.i.i.i:                                 ; preds = %uvc_format_by_guid.exit.i.i.i.i.do.end26.i.i.i.i_crit_edge, %for.inc.i.i.i.i.i.do.end26.i.i.i.i_crit_edge
  %338 = ptrtoint ptr %intf3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %intf3.i.i.i.i, align 8
  %dev28.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %339, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28.i.i.i.i, ptr noundef nonnull @.str.123, ptr noundef %arrayidx17.i.i.i.i) #25
  %name30.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 8
  %call33.i.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name30.i.i.i.i, i32 noundef 32, ptr noundef nonnull @.str.125, ptr noundef %arrayidx17.i.i.i.i) #21
  br label %if.end35.i.i.i.i

if.end35.i.i.i.i:                                 ; preds = %do.end26.i.i.i.i, %if.then20.i.i.i.i
  %.sink747.i.i.i.i = phi i32 [ 0, %do.end26.i.i.i.i ], [ %337, %if.then20.i.i.i.i ]
  %fcc34.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 6
  %340 = ptrtoint ptr %fcc34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %.sink747.i.i.i.i, ptr %fcc34.i.i.i.i, align 4
  %arrayidx36.i.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 21
  %341 = ptrtoint ptr %arrayidx36.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx36.i.i.i.i, align 1
  %bpp.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 2
  %343 = ptrtoint ptr %bpp.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %342, ptr %bpp.i.i.i.i, align 2
  %344 = ptrtoint ptr %quirks14 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %quirks14, align 4
  %and37.i.i.i.i = and i32 %345, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i.i.i)
  %tobool38.not.i.i.i.i = icmp ne i32 %and37.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %.sink747.i.i.i.i)
  %cmp41.i.i.i.i = icmp eq i32 %.sink747.i.i.i.i, 1448695129
  %or.cond44.i.i.i = select i1 %tobool38.not.i.i.i.i, i1 %cmp41.i.i.i.i, i1 false
  br i1 %or.cond44.i.i.i, label %if.then43.i.i.i.i, label %if.end35.i.i.i.i.if.end50.i.i.i.i_crit_edge

if.end35.i.i.i.i.if.end50.i.i.i.i_crit_edge:      ; preds = %if.end35.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end50.i.i.i.i

if.then43.i.i.i.i:                                ; preds = %if.end35.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name44.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 8
  %call46.i.i.i.i = tail call i32 @strscpy(ptr noundef %name44.i.i.i.i, ptr noundef nonnull @.str.126, i32 noundef 32) #21
  %346 = ptrtoint ptr %fcc34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 1497715271, ptr %fcc34.i.i.i.i, align 4
  %347 = ptrtoint ptr %bpp.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 8, ptr %bpp.i.i.i.i, align 2
  br label %if.end50.i.i.i.i

if.end50.i.i.i.i:                                 ; preds = %if.then43.i.i.i.i, %if.end35.i.i.i.i.if.end50.i.i.i.i_crit_edge
  %width_multiplier.0.i.i.i.i = phi i32 [ 2, %if.then43.i.i.i.i ], [ 1, %if.end35.i.i.i.i.if.end50.i.i.i.i_crit_edge ]
  %348 = ptrtoint ptr %quirks14 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %quirks14, align 4
  %and52.i.i.i.i = and i32 %349, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i.i.i)
  %tobool53.not.i.i.i.i = icmp eq i32 %and52.i.i.i.i, 0
  br i1 %tobool53.not.i.i.i.i, label %if.end50.i.i.i.i.if.end77.i.i.i.i_crit_edge, label %if.then54.i.i.i.i

if.end50.i.i.i.i.if.end77.i.i.i.i_crit_edge:      ; preds = %if.end50.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end77.i.i.i.i

if.then54.i.i.i.i:                                ; preds = %if.end50.i.i.i.i
  %350 = ptrtoint ptr %fcc34.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %fcc34.i.i.i.i, align 4
  %call56.i.i.i.i = tail call ptr @v4l2_format_info(i32 noundef %351) #21
  %tobool57.not.i.i.i.i = icmp eq ptr %call56.i.i.i.i, null
  br i1 %tobool57.not.i.i.i.i, label %if.then54.i.i.i.i.if.end77.i.i.i.i_crit_edge, label %if.then58.i.i.i.i

if.then54.i.i.i.i.if.end77.i.i.i.i_crit_edge:     ; preds = %if.then54.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end77.i.i.i.i

if.then58.i.i.i.i:                                ; preds = %if.then54.i.i.i.i
  %hdiv.i.i.i.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call56.i.i.i.i, i32 0, i32 5
  %352 = ptrtoint ptr %hdiv.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %hdiv.i.i.i.i, align 1
  %conv59.i.i.i.i = zext i8 %353 to i32
  %vdiv.i.i.i.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call56.i.i.i.i, i32 0, i32 6
  %354 = ptrtoint ptr %vdiv.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %vdiv.i.i.i.i, align 4
  %conv60.i.i.i.i = zext i8 %355 to i32
  %mul.i.i.i.i = mul nuw nsw i32 %conv60.i.i.i.i, %conv59.i.i.i.i
  %bpp61.i.i.i.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call56.i.i.i.i, i32 0, i32 4
  %356 = ptrtoint ptr %bpp61.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %bpp61.i.i.i.i, align 1
  %conv63.i.i.i.i = zext i8 %357 to i32
  %mul64.i.i.i.i = mul nuw nsw i32 %mul.i.i.i.i, %conv63.i.i.i.i
  %comp_planes.i.i.i.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call56.i.i.i.i, i32 0, i32 3
  %358 = ptrtoint ptr %comp_planes.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %comp_planes.i.i.i.i, align 2
  %conv65.i.i.i.i = zext i8 %359 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %359)
  %cmp66720.i.i.i.i = icmp ugt i8 %359, 1
  br i1 %cmp66720.i.i.i.i, label %if.then58.i.i.i.i.for.body.i.i.i.i_crit_edge, label %if.then58.i.i.i.i.for.end.i.i.i.i_crit_edge

if.then58.i.i.i.i.for.end.i.i.i.i_crit_edge:      ; preds = %if.then58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i.i.i.i

if.then58.i.i.i.i.for.body.i.i.i.i_crit_edge:     ; preds = %if.then58.i.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then58.i.i.i.i.for.body.i.i.i.i_crit_edge
  %n.0722.i.i.i.i = phi i32 [ %add.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %mul64.i.i.i.i, %if.then58.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %i.0721.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 1, %if.then58.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx69.i.i.i.i = getelementptr %struct.v4l2_format_info, ptr %call56.i.i.i.i, i32 0, i32 4, i32 %i.0721.i.i.i.i
  %360 = ptrtoint ptr %arrayidx69.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx69.i.i.i.i, align 1
  %conv70.i.i.i.i = zext i8 %361 to i32
  %add.i.i.i.i = add i32 %n.0722.i.i.i.i, %conv70.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.0721.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %conv65.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i.i.i

for.body.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.then58.i.i.i.i.for.end.i.i.i.i_crit_edge
  %n.0.lcssa.i.i.i.i = phi i32 [ %mul64.i.i.i.i, %if.then58.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %add.i.i.i.i, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  %mul71.i.i.i.i = shl i32 %n.0.lcssa.i.i.i.i, 3
  %add72.i.i.i.i = add nsw i32 %mul.i.i.i.i, -1
  %sub.i.i.i.i = add i32 %add72.i.i.i.i, %mul71.i.i.i.i
  %div73.i.i.i.i = udiv i32 %sub.i.i.i.i, %mul.i.i.i.i
  %conv74.i.i.i.i = trunc i32 %div73.i.i.i.i to i8
  %362 = ptrtoint ptr %bpp.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %conv74.i.i.i.i, ptr %bpp.i.i.i.i, align 2
  br label %if.end77.i.i.i.i

if.end77.i.i.i.i:                                 ; preds = %for.end.i.i.i.i, %if.then54.i.i.i.i.if.end77.i.i.i.i_crit_edge, %if.end50.i.i.i.i.if.end77.i.i.i.i_crit_edge
  %363 = ptrtoint ptr %arrayidx326.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx326.i.i.i.le, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %364)
  %cmp80.i.i.i.i = icmp eq i8 %364, 4
  br i1 %cmp80.i.i.i.i, label %if.end77.i.i.i.i.do.body210.i.i.i.i_crit_edge, label %if.else83.i.i.i.i

if.end77.i.i.i.i.do.body210.i.i.i.i_crit_edge:    ; preds = %if.end77.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body210.i.i.i.i

if.else83.i.i.i.i:                                ; preds = %if.end77.i.i.i.i
  %arrayidx84.i.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 27
  %365 = ptrtoint ptr %arrayidx84.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %arrayidx84.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %tobool85.not.i.i.i.i = icmp eq i8 %366, 0
  br i1 %tobool85.not.i.i.i.i, label %if.else83.i.i.i.i.do.body210.i.i.i.i_crit_edge, label %if.then86.i.i.i.i

if.else83.i.i.i.i.do.body210.i.i.i.i_crit_edge:   ; preds = %if.else83.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body210.i.i.i.i

if.then86.i.i.i.i:                                ; preds = %if.else83.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %flags.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 7
  %367 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 1, ptr %flags.i.i.i.i, align 4
  br label %do.body210.i.i.i.i

sw.bb89.i.i.i.i:                                  ; preds = %sw.bb328.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %buflen.4104.i.i.i)
  %cmp90.i.i.i.i = icmp ult i32 %buflen.4104.i.i.i, 11
  br i1 %cmp90.i.i.i.i, label %do.body93.i.i.i.i, label %if.end110.i.i.i.i

do.body93.i.i.i.i:                                ; preds = %sw.bb89.i.i.i.i
  %368 = load i32, ptr @uvc_dbg_param, align 4
  %and94.i.i.i.i = and i32 %368, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i.i.i.i)
  %tobool95.not.i.i.i.i = icmp eq i32 %and94.i.i.i.i, 0
  br i1 %tobool95.not.i.i.i.i, label %do.body93.i.i.i.i.error.i.i.i_crit_edge, label %do.end99.i.i.i.i

do.body93.i.i.i.i.error.i.i.i_crit_edge:          ; preds = %do.body93.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end99.i.i.i.i:                                 ; preds = %do.body93.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %369 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %call7.i.i, align 8
  %dev101.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %370, i32 0, i32 15
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %370, align 8
  %bInterfaceNumber105.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %316, i32 0, i32 2
  %373 = ptrtoint ptr %bInterfaceNumber105.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %bInterfaceNumber105.i.i.i.i, align 2
  %conv106.i.i.i.i = zext i8 %374 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev101.i.i.i.i, ptr noundef nonnull @.str.120, i32 noundef %372, i32 noundef %conv106.i.i.i.i) #25
  br label %error.i.i.i

if.end110.i.i.i.i:                                ; preds = %sw.bb89.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name111.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 8
  %call113.i.i.i.i = tail call i32 @strscpy(ptr noundef %name111.i.i.i.i, ptr noundef nonnull @.str.129, i32 noundef 32) #21
  %fcc114.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 6
  %375 = ptrtoint ptr %fcc114.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 1196444237, ptr %fcc114.i.i.i.i, align 4
  %flags115.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 7
  %376 = ptrtoint ptr %flags115.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 1, ptr %flags115.i.i.i.i, align 4
  %bpp116.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 2
  %377 = ptrtoint ptr %bpp116.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 0, ptr %bpp116.i.i.i.i, align 2
  br label %do.body210.i.i.i.i

sw.bb117.i.i.i.i:                                 ; preds = %sw.bb328.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %buflen.4104.i.i.i)
  %cmp118.i.i.i.i = icmp ult i32 %buflen.4104.i.i.i, 9
  br i1 %cmp118.i.i.i.i, label %do.body121.i.i.i.i, label %if.end138.i.i.i.i

do.body121.i.i.i.i:                               ; preds = %sw.bb117.i.i.i.i
  %378 = load i32, ptr @uvc_dbg_param, align 4
  %and122.i.i.i.i = and i32 %378, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i.i.i.i)
  %tobool123.not.i.i.i.i = icmp eq i32 %and122.i.i.i.i, 0
  br i1 %tobool123.not.i.i.i.i, label %do.body121.i.i.i.i.error.i.i.i_crit_edge, label %do.end127.i.i.i.i

do.body121.i.i.i.i.error.i.i.i_crit_edge:         ; preds = %do.body121.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end127.i.i.i.i:                                ; preds = %do.body121.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %379 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %call7.i.i, align 8
  %dev129.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %380, i32 0, i32 15
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %380, align 8
  %bInterfaceNumber133.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %316, i32 0, i32 2
  %383 = ptrtoint ptr %bInterfaceNumber133.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %bInterfaceNumber133.i.i.i.i, align 2
  %conv134.i.i.i.i = zext i8 %384 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev129.i.i.i.i, ptr noundef nonnull @.str.120, i32 noundef %382, i32 noundef %conv134.i.i.i.i) #25
  br label %error.i.i.i

if.end138.i.i.i.i:                                ; preds = %sw.bb117.i.i.i.i
  %arrayidx139.i.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 8
  %385 = ptrtoint ptr %arrayidx139.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx139.i.i.i.i, align 1
  %387 = and i8 %386, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %387)
  %388 = icmp ult i8 %387, 3
  br i1 %388, label %switch.lookup, label %do.body154.i.i.i.i

do.body154.i.i.i.i:                               ; preds = %if.end138.i.i.i.i
  %389 = load i32, ptr @uvc_dbg_param, align 4
  %and155.i.i.i.i = and i32 %389, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i.i.i.i)
  %tobool156.not.i.i.i.i = icmp eq i32 %and155.i.i.i.i, 0
  br i1 %tobool156.not.i.i.i.i, label %do.body154.i.i.i.i.error.i.i.i_crit_edge, label %do.end160.i.i.i.i

do.body154.i.i.i.i.error.i.i.i_crit_edge:         ; preds = %do.body154.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end160.i.i.i.i:                                ; preds = %do.body154.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv140.i.le.i.i.i = zext i8 %386 to i32
  %390 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %call7.i.i, align 8
  %dev162.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %391, i32 0, i32 15
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %391, align 8
  %bInterfaceNumber166.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %316, i32 0, i32 2
  %394 = ptrtoint ptr %bInterfaceNumber166.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %bInterfaceNumber166.i.i.i.i, align 2
  %conv167.i.i.i.i = zext i8 %395 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev162.i.i.i.i, ptr noundef nonnull @.str.136, i32 noundef %393, i32 noundef %conv167.i.i.i.i, i32 noundef %conv140.i.le.i.i.i) #25
  br label %error.i.i.i

switch.lookup:                                    ; preds = %if.end138.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %and141.i.i.i.i = zext i8 %387 to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.uvc_probe, i32 0, i32 %and141.i.i.i.i
  %396 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %396)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %name151.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 8
  %call153.i.i.i.i = tail call i32 @strscpy(ptr noundef %name151.i.i.i.i, ptr noundef nonnull %switch.load, i32 noundef 32) #21
  %397 = ptrtoint ptr %arrayidx139.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx139.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %398)
  %tobool178.not.i.i.i.i = icmp sgt i8 %398, -1
  %cond179.i.i.i.i = select i1 %tobool178.not.i.i.i.i, ptr @.str.139, ptr @.str.138
  %call180.i.i.i.i = tail call i32 @strlcat(ptr noundef %name151.i.i.i.i, ptr noundef nonnull %cond179.i.i.i.i, i32 noundef 32) #21
  %fcc181.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 6
  %399 = ptrtoint ptr %fcc181.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 1685288548, ptr %fcc181.i.i.i.i, align 4
  %flags182.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 7
  %400 = ptrtoint ptr %flags182.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 3, ptr %flags182.i.i.i.i, align 4
  %bpp183.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 2
  %401 = ptrtoint ptr %bpp183.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 0, ptr %bpp183.i.i.i.i, align 2
  %402 = ptrtoint ptr %frame329.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %frame329.i.i.i, align 4
  %404 = call ptr @memset(ptr %403, i32 0, i32 24)
  %bFrameIntervalType.i.i.i.i = getelementptr inbounds %struct.uvc_frame, ptr %403, i32 0, i32 7
  %405 = ptrtoint ptr %bFrameIntervalType.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 1, ptr %bFrameIntervalType.i.i.i.i, align 4
  %dwDefaultFrameInterval.i.i.i.i = getelementptr inbounds %struct.uvc_frame, ptr %403, i32 0, i32 8
  %406 = ptrtoint ptr %dwDefaultFrameInterval.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 1, ptr %dwDefaultFrameInterval.i.i.i.i, align 4
  %dwFrameInterval.i.i.i.i = getelementptr inbounds %struct.uvc_frame, ptr %403, i32 0, i32 9
  %407 = ptrtoint ptr %dwFrameInterval.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr %interval.0.ph110.i.i.i, ptr %dwFrameInterval.i.i.i.i, align 4
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %interval.0.ph110.i.i.i, i32 1
  %408 = ptrtoint ptr %interval.0.ph110.i.i.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 1, ptr %interval.0.ph110.i.i.i, align 4
  %nframes.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 9
  %409 = ptrtoint ptr %nframes.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 1, ptr %nframes.i.i.i.i, align 4
  br label %do.body210.i.i.i.i

do.body190.i.i.i.i:                               ; preds = %sw.bb328.i.i.i
  %410 = load i32, ptr @uvc_dbg_param, align 4
  %and191.i.i.i.i = and i32 %410, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i.i.i.i)
  %tobool192.not.i.i.i.i = icmp eq i32 %and191.i.i.i.i, 0
  br i1 %tobool192.not.i.i.i.i, label %do.body190.i.i.i.i.error.i.i.i_crit_edge, label %do.end196.i.i.i.i

do.body190.i.i.i.i.error.i.i.i_crit_edge:         ; preds = %do.body190.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end196.i.i.i.i:                                ; preds = %do.body190.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv.i3.i.i.i.le = zext i8 %323 to i32
  %411 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %call7.i.i, align 8
  %dev198.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %412, i32 0, i32 15
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %412, align 8
  %bInterfaceNumber202.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %316, i32 0, i32 2
  %415 = ptrtoint ptr %bInterfaceNumber202.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %bInterfaceNumber202.i.i.i.i, align 2
  %conv203.i.i.i.i = zext i8 %416 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev198.i.i.i.i, ptr noundef nonnull @.str.141, i32 noundef %414, i32 noundef %conv203.i.i.i.i, i32 noundef %conv.i3.i.i.i.le) #25
  br label %error.i.i.i

do.body210.i.i.i.i:                               ; preds = %switch.lookup, %if.end110.i.i.i.i, %if.then86.i.i.i.i, %if.else83.i.i.i.i.do.body210.i.i.i.i_crit_edge, %if.end77.i.i.i.i.do.body210.i.i.i.i_crit_edge
  %interval.1.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %switch.lookup ], [ %interval.0.ph110.i.i.i, %if.end110.i.i.i.i ], [ %interval.0.ph110.i.i.i, %if.end77.i.i.i.i.do.body210.i.i.i.i_crit_edge ], [ %interval.0.ph110.i.i.i, %if.else83.i.i.i.i.do.body210.i.i.i.i_crit_edge ], [ %interval.0.ph110.i.i.i, %if.then86.i.i.i.i ]
  %width_multiplier.1.i.i.i.i = phi i32 [ 1, %switch.lookup ], [ 1, %if.end110.i.i.i.i ], [ %width_multiplier.0.i.i.i.i, %if.end77.i.i.i.i.do.body210.i.i.i.i_crit_edge ], [ %width_multiplier.0.i.i.i.i, %if.else83.i.i.i.i.do.body210.i.i.i.i_crit_edge ], [ %width_multiplier.0.i.i.i.i, %if.then86.i.i.i.i ]
  %cmp244.not.i.i.i.i = phi i1 [ false, %switch.lookup ], [ false, %if.end110.i.i.i.i ], [ false, %if.end77.i.i.i.i.do.body210.i.i.i.i_crit_edge ], [ true, %if.else83.i.i.i.i.do.body210.i.i.i.i_crit_edge ], [ true, %if.then86.i.i.i.i ]
  %ftype.0.i.i.i.i = phi i32 [ 0, %switch.lookup ], [ 7, %if.end110.i.i.i.i ], [ 5, %if.end77.i.i.i.i.do.body210.i.i.i.i_crit_edge ], [ 17, %if.else83.i.i.i.i.do.body210.i.i.i.i_crit_edge ], [ 17, %if.then86.i.i.i.i ]
  %417 = load i32, ptr @uvc_dbg_param, align 4
  %and211.i.i.i.i = and i32 %417, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i.i.i.i)
  %tobool212.not.i.i.i.i = icmp eq i32 %and211.i.i.i.i, 0
  br i1 %tobool212.not.i.i.i.i, label %do.body210.i.i.i.i.do.end223.i.i.i.i_crit_edge, label %do.end216.i.i.i.i

do.body210.i.i.i.i.do.end223.i.i.i.i_crit_edge:   ; preds = %do.body210.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end223.i.i.i.i

do.end216.i.i.i.i:                                ; preds = %do.body210.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %418 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %call7.i.i, align 8
  %dev218.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %419, i32 0, i32 15
  %name219.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev218.i.i.i.i, ptr noundef nonnull @.str.144, ptr noundef %name219.i.i.i.i) #25
  br label %do.end223.i.i.i.i

do.end223.i.i.i.i:                                ; preds = %do.end216.i.i.i.i, %do.body210.i.i.i.i.do.end223.i.i.i.i_crit_edge
  %420 = ptrtoint ptr %buffer.4103.i.i.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %buffer.4103.i.i.i, align 1
  %conv225.i.i.i.i = zext i8 %421 to i32
  %sub226.i.i.i.i = sub i32 %buflen.4104.i.i.i, %conv225.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 %conv225.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub226.i.i.i.i)
  %cmp229725.i.i.i.i = icmp sgt i32 %sub226.i.i.i.i, 2
  br i1 %cmp229725.i.i.i.i, label %land.lhs.true.lr.ph.i.i.i.i, label %do.end223.i.i.i.i.if.else482.i.i.i.i_crit_edge

do.end223.i.i.i.i.if.else482.i.i.i.i_crit_edge:   ; preds = %do.end223.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else482.i.i.i.i

land.lhs.true.lr.ph.i.i.i.i:                      ; preds = %do.end223.i.i.i.i
  %nframes241.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 9
  %422 = trunc i32 %width_multiplier.1.i.i.i.i to i16
  %flags323.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 7
  %bpp327.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 2
  br label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.end407.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, %land.lhs.true.lr.ph.i.i.i.i
  %interval.2.i.i.i = phi ptr [ %interval.1.i.i.i, %land.lhs.true.lr.ph.i.i.i.i ], [ %interval.4.i.i.i, %do.end407.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge ]
  %buffer.addr.0727.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %land.lhs.true.lr.ph.i.i.i.i ], [ %add.ptr415.i.i.i.i, %do.end407.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge ]
  %buflen.addr.0726.i.i.i.i = phi i32 [ %sub226.i.i.i.i, %land.lhs.true.lr.ph.i.i.i.i ], [ %sub412.i.i.i.i, %do.end407.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge ]
  %arrayidx231.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 1
  %423 = ptrtoint ptr %arrayidx231.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %arrayidx231.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %424)
  %cmp233.i.i.i.i = icmp eq i8 %424, 36
  br i1 %cmp233.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.lhs.true438.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %arrayidx235.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 2
  %425 = ptrtoint ptr %arrayidx235.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %arrayidx235.i.i.i.i, align 1
  %conv236.i.i.i.i = zext i8 %426 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ftype.0.i.i.i.i, i32 %conv236.i.i.i.i)
  %cmp238.i.i.i.i = icmp eq i32 %ftype.0.i.i.i.i, %conv236.i.i.i.i
  br i1 %cmp238.i.i.i.i, label %while.body.i.i.i.i, label %land.lhs.true423.i.i.i.i

while.body.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %427 = ptrtoint ptr %frame329.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %frame329.i.i.i, align 4
  %429 = ptrtoint ptr %nframes241.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %nframes241.i.i.i.i, align 4
  %arrayidx242.i.i.i.i = getelementptr %struct.uvc_frame, ptr %428, i32 %430
  br i1 %cmp244.not.i.i.i.i, label %if.else252.i.i.i.i, label %if.then246.i.i.i.i

if.then246.i.i.i.i:                               ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %buflen.addr.0726.i.i.i.i)
  %cmp247.i.i.i.i = icmp ugt i32 %buflen.addr.0726.i.i.i.i, 25
  br i1 %cmp247.i.i.i.i, label %if.then246.i.i.i.i.if.end261.i.i.i.i_crit_edge, label %if.then246.i.i.i.i.if.end261.thread.i.i.i.i_crit_edge

if.then246.i.i.i.i.if.end261.thread.i.i.i.i_crit_edge: ; preds = %if.then246.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end261.thread.i.i.i.i

if.then246.i.i.i.i.if.end261.i.i.i.i_crit_edge:   ; preds = %if.then246.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end261.i.i.i.i

if.else252.i.i.i.i:                               ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %buflen.addr.0726.i.i.i.i)
  %cmp253.i.i.i.i = icmp ugt i32 %buflen.addr.0726.i.i.i.i, 21
  br i1 %cmp253.i.i.i.i, label %if.else252.i.i.i.i.if.end261.i.i.i.i_crit_edge, label %if.else252.i.i.i.i.if.end261.thread.i.i.i.i_crit_edge

if.else252.i.i.i.i.if.end261.thread.i.i.i.i_crit_edge: ; preds = %if.else252.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end261.thread.i.i.i.i

if.else252.i.i.i.i.if.end261.i.i.i.i_crit_edge:   ; preds = %if.else252.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end261.i.i.i.i

if.end261.i.i.i.i:                                ; preds = %if.else252.i.i.i.i.if.end261.i.i.i.i_crit_edge, %if.then246.i.i.i.i.if.end261.i.i.i.i_crit_edge
  %.sink748.i.i.i.i = phi i32 [ 25, %if.then246.i.i.i.i.if.end261.i.i.i.i_crit_edge ], [ 21, %if.else252.i.i.i.i.if.end261.i.i.i.i_crit_edge ]
  %arrayidx256.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 %.sink748.i.i.i.i
  %431 = ptrtoint ptr %arrayidx256.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %n.1.in.i.i.i.i = load i8, ptr %arrayidx256.i.i.i.i, align 1
  %n.1.i.i.i.i = zext i8 %n.1.in.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %n.1.in.i.i.i.i)
  %tobool262.not.i.i.i.i = icmp eq i8 %n.1.in.i.i.i.i, 0
  br i1 %tobool262.not.i.i.i.i, label %if.end261.i.i.i.i.if.end261.thread.i.i.i.i_crit_edge, label %if.end261.i.i.i.i._crit_edge

if.end261.i.i.i.i._crit_edge:                     ; preds = %if.end261.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %432

if.end261.i.i.i.i.if.end261.thread.i.i.i.i_crit_edge: ; preds = %if.end261.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end261.thread.i.i.i.i

if.end261.thread.i.i.i.i:                         ; preds = %if.end261.i.i.i.i.if.end261.thread.i.i.i.i_crit_edge, %if.else252.i.i.i.i.if.end261.thread.i.i.i.i_crit_edge, %if.then246.i.i.i.i.if.end261.thread.i.i.i.i_crit_edge
  br label %432

432:                                              ; preds = %if.end261.thread.i.i.i.i, %if.end261.i.i.i.i._crit_edge
  %433 = phi i32 [ 3, %if.end261.thread.i.i.i.i ], [ %n.1.i.i.i.i, %if.end261.i.i.i.i._crit_edge ]
  %mul267.i.i.i.i = shl nuw nsw i32 %433, 2
  %add268.i.i.i.i = add nuw nsw i32 %mul267.i.i.i.i, 26
  call void @__sanitizer_cov_trace_cmp4(i32 %buflen.addr.0726.i.i.i.i, i32 %add268.i.i.i.i)
  %cmp269.i.i.i.i = icmp ult i32 %buflen.addr.0726.i.i.i.i, %add268.i.i.i.i
  br i1 %cmp269.i.i.i.i, label %do.body272.i.i.i.i, label %if.end289.i.i.i.i

do.body272.i.i.i.i:                               ; preds = %432
  %434 = load i32, ptr @uvc_dbg_param, align 4
  %and273.i.i.i.i = and i32 %434, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273.i.i.i.i)
  %tobool274.not.i.i.i.i = icmp eq i32 %and273.i.i.i.i, 0
  br i1 %tobool274.not.i.i.i.i, label %do.body272.i.i.i.i.error.i.i.i_crit_edge, label %do.end278.i.i.i.i

do.body272.i.i.i.i.error.i.i.i_crit_edge:         ; preds = %do.body272.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end278.i.i.i.i:                                ; preds = %do.body272.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %435 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %call7.i.i, align 8
  %dev280.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %436, i32 0, i32 15
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %436, align 8
  %bInterfaceNumber284.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %316, i32 0, i32 2
  %439 = ptrtoint ptr %bInterfaceNumber284.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %bInterfaceNumber284.i.i.i.i, align 2
  %conv285.i.i.i.i = zext i8 %440 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev280.i.i.i.i, ptr noundef nonnull @.str.147, i32 noundef %438, i32 noundef %conv285.i.i.i.i) #25
  br label %error.i.i.i

if.end289.i.i.i.i:                                ; preds = %432
  %arrayidx290.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 3
  %441 = ptrtoint ptr %arrayidx290.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %arrayidx290.i.i.i.i, align 1
  %443 = ptrtoint ptr %arrayidx242.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %442, ptr %arrayidx242.i.i.i.i, align 4
  %arrayidx291.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 4
  %444 = ptrtoint ptr %arrayidx291.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %arrayidx291.i.i.i.i, align 1
  %bmCapabilities.i.i.i.i = getelementptr %struct.uvc_frame, ptr %428, i32 %430, i32 1
  %446 = ptrtoint ptr %bmCapabilities.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %445, ptr %bmCapabilities.i.i.i.i, align 1
  %arrayidx292.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 5
  %447 = ptrtoint ptr %arrayidx292.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %447, i32 2)
  %448 = load i16, ptr %arrayidx292.i.i.i.i, align 1
  %449 = tail call i16 @llvm.bswap.i16(i16 %448) #21
  %conv296.i.i.i.i = mul i16 %449, %422
  %wWidth.i.i.i.i = getelementptr %struct.uvc_frame, ptr %428, i32 %430, i32 2
  %450 = ptrtoint ptr %wWidth.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %450)
  store i16 %conv296.i.i.i.i, ptr %wWidth.i.i.i.i, align 2
  %arrayidx297.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 7
  %451 = ptrtoint ptr %arrayidx297.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %451, i32 2)
  %452 = load i16, ptr %arrayidx297.i.i.i.i, align 1
  %453 = tail call i16 @llvm.bswap.i16(i16 %452) #21
  %wHeight.i.i.i.i = getelementptr %struct.uvc_frame, ptr %428, i32 %430, i32 3
  %454 = ptrtoint ptr %wHeight.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %454)
  store i16 %453, ptr %wHeight.i.i.i.i, align 4
  %arrayidx299.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 9
  %455 = ptrtoint ptr %arrayidx299.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %455, i32 4)
  %456 = load i32, ptr %arrayidx299.i.i.i.i, align 1
  %457 = tail call i32 @llvm.bswap.i32(i32 %456) #21
  %dwMinBitRate.i.i.i.i = getelementptr %struct.uvc_frame, ptr %428, i32 %430, i32 4
  %458 = ptrtoint ptr %dwMinBitRate.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %457, ptr %dwMinBitRate.i.i.i.i, align 4
  %arrayidx301.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 13
  %459 = ptrtoint ptr %arrayidx301.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %459, i32 4)
  %460 = load i32, ptr %arrayidx301.i.i.i.i, align 1
  %461 = tail call i32 @llvm.bswap.i32(i32 %460) #21
  %dwMaxBitRate.i.i.i.i = getelementptr %struct.uvc_frame, ptr %428, i32 %430, i32 5
  %462 = ptrtoint ptr %dwMaxBitRate.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %461, ptr %dwMaxBitRate.i.i.i.i, align 4
  br i1 %cmp244.not.i.i.i.i, label %if.end289.i.i.i.i.if.end321.i.i.i.i_crit_edge, label %if.then306.i.i.i.i

if.end289.i.i.i.i.if.end321.i.i.i.i_crit_edge:    ; preds = %if.end289.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end321.i.i.i.i

if.then306.i.i.i.i:                               ; preds = %if.end289.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx307.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 17
  %463 = ptrtoint ptr %arrayidx307.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %463, i32 4)
  %464 = load i32, ptr %arrayidx307.i.i.i.i, align 1
  %465 = tail call i32 @llvm.bswap.i32(i32 %464) #21
  br label %if.end321.i.i.i.i

if.end321.i.i.i.i:                                ; preds = %if.then306.i.i.i.i, %if.end289.i.i.i.i.if.end321.i.i.i.i_crit_edge
  %.sink753.i.i.i.i = phi i32 [ %465, %if.then306.i.i.i.i ], [ 0, %if.end289.i.i.i.i.if.end321.i.i.i.i_crit_edge ]
  %.sink752.i.i.i.i = phi i32 [ 21, %if.then306.i.i.i.i ], [ 17, %if.end289.i.i.i.i.if.end321.i.i.i.i_crit_edge ]
  %.sink749.i.i.i.i = phi i32 [ 25, %if.then306.i.i.i.i ], [ 21, %if.end289.i.i.i.i.if.end321.i.i.i.i_crit_edge ]
  %dwMaxVideoFrameBufferSize315.i.i.i.i = getelementptr %struct.uvc_frame, ptr %428, i32 %430, i32 6
  %466 = ptrtoint ptr %dwMaxVideoFrameBufferSize315.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %.sink753.i.i.i.i, ptr %dwMaxVideoFrameBufferSize315.i.i.i.i, align 4
  %arrayidx316.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 %.sink752.i.i.i.i
  %467 = ptrtoint ptr %arrayidx316.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %467, i32 4)
  %468 = load i32, ptr %arrayidx316.i.i.i.i, align 1
  %469 = tail call i32 @llvm.bswap.i32(i32 %468) #21
  %dwDefaultFrameInterval318.i.i.i.i = getelementptr %struct.uvc_frame, ptr %428, i32 %430, i32 8
  %470 = ptrtoint ptr %dwDefaultFrameInterval318.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %469, ptr %dwDefaultFrameInterval318.i.i.i.i, align 4
  %arrayidx319.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 %.sink749.i.i.i.i
  %471 = ptrtoint ptr %arrayidx319.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %471)
  %.sink.i.i.i.i = load i8, ptr %arrayidx319.i.i.i.i, align 1
  %472 = getelementptr %struct.uvc_frame, ptr %428, i32 %430, i32 7
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %.sink.i.i.i.i, ptr %472, align 4
  %dwFrameInterval322.i.i.i.i = getelementptr %struct.uvc_frame, ptr %428, i32 %430, i32 9
  %474 = ptrtoint ptr %dwFrameInterval322.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store ptr %interval.2.i.i.i, ptr %dwFrameInterval322.i.i.i.i, align 4
  %475 = ptrtoint ptr %flags323.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %flags323.i.i.i.i, align 4
  %and324.i.i.i.i = and i32 %476, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324.i.i.i.i)
  %tobool325.not.i.i.i.i = icmp eq i32 %and324.i.i.i.i, 0
  br i1 %tobool325.not.i.i.i.i, label %if.then326.i.i.i.i, label %if.end321.i.i.i.i.if.end337.i.i.i.i_crit_edge

if.end321.i.i.i.i.if.end337.i.i.i.i_crit_edge:    ; preds = %if.end321.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end337.i.i.i.i

if.then326.i.i.i.i:                               ; preds = %if.end321.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %477 = ptrtoint ptr %bpp327.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %bpp327.i.i.i.i, align 2
  %conv328.i.i.i.i = zext i8 %478 to i32
  %conv330.i.i.i.i = zext i16 %conv296.i.i.i.i to i32
  %conv333.i.i.i.i = zext i16 %453 to i32
  %mul331.i.i.i.i = mul nuw i32 %conv333.i.i.i.i, %conv330.i.i.i.i
  %mul334.i.i.i.i = mul i32 %mul331.i.i.i.i, %conv328.i.i.i.i
  %div335.i.i.i.i = sdiv i32 %mul334.i.i.i.i, 8
  %479 = ptrtoint ptr %dwMaxVideoFrameBufferSize315.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %div335.i.i.i.i, ptr %dwMaxVideoFrameBufferSize315.i.i.i.i, align 4
  br label %if.end337.i.i.i.i

if.end337.i.i.i.i:                                ; preds = %if.then326.i.i.i.i, %if.end321.i.i.i.i.if.end337.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %433)
  %cmp339723.not.i.i.i.i = icmp eq i32 %433, 0
  br i1 %cmp339723.not.i.i.i.i, label %if.end337.i.i.i.i.for.end354.i.i.i.i_crit_edge, label %if.end337.i.i.i.i.for.body341.i.i.i.i_crit_edge

if.end337.i.i.i.i.for.body341.i.i.i.i_crit_edge:  ; preds = %if.end337.i.i.i.i
  br label %for.body341.i.i.i.i

if.end337.i.i.i.i.for.end354.i.i.i.i_crit_edge:   ; preds = %if.end337.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end354.i.i.i.i

for.body341.i.i.i.i:                              ; preds = %for.body341.i.i.i.i.for.body341.i.i.i.i_crit_edge, %if.end337.i.i.i.i.for.body341.i.i.i.i_crit_edge
  %interval.3.i.i.i = phi ptr [ %incdec.ptr351.i.i.i.i, %for.body341.i.i.i.i.for.body341.i.i.i.i_crit_edge ], [ %interval.2.i.i.i, %if.end337.i.i.i.i.for.body341.i.i.i.i_crit_edge ]
  %i.1724.i.i.i.i = phi i32 [ %inc353.i.i.i.i, %for.body341.i.i.i.i.for.body341.i.i.i.i_crit_edge ], [ 0, %if.end337.i.i.i.i.for.body341.i.i.i.i_crit_edge ]
  %mul342.i.i.i.i = shl i32 %i.1724.i.i.i.i, 2
  %add343.i.i.i.i = add nuw nsw i32 %mul342.i.i.i.i, 26
  %arrayidx344.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 %add343.i.i.i.i
  %480 = ptrtoint ptr %arrayidx344.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %480, i32 4)
  %481 = load i32, ptr %arrayidx344.i.i.i.i, align 1
  %482 = tail call i32 @llvm.bswap.i32(i32 %481) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %481)
  %tobool346.not.i.i.i.i = icmp eq i32 %481, 0
  %spec.select684.i.i.i.i = select i1 %tobool346.not.i.i.i.i, i32 1, i32 %482
  %incdec.ptr351.i.i.i.i = getelementptr i32, ptr %interval.3.i.i.i, i32 1
  %483 = ptrtoint ptr %interval.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 %spec.select684.i.i.i.i, ptr %interval.3.i.i.i, align 4
  %inc353.i.i.i.i = add nuw nsw i32 %i.1724.i.i.i.i, 1
  %exitcond736.not.i.i.i.i = icmp eq i32 %inc353.i.i.i.i, %433
  br i1 %exitcond736.not.i.i.i.i, label %for.body341.i.i.i.i.for.end354.i.i.i.i_crit_edge, label %for.body341.i.i.i.i.for.body341.i.i.i.i_crit_edge

for.body341.i.i.i.i.for.body341.i.i.i.i_crit_edge: ; preds = %for.body341.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body341.i.i.i.i

for.body341.i.i.i.i.for.end354.i.i.i.i_crit_edge: ; preds = %for.body341.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end354.i.i.i.i

for.end354.i.i.i.i:                               ; preds = %for.body341.i.i.i.i.for.end354.i.i.i.i_crit_edge, %if.end337.i.i.i.i.for.end354.i.i.i.i_crit_edge
  %interval.4.i.i.i = phi ptr [ %interval.2.i.i.i, %if.end337.i.i.i.i.for.end354.i.i.i.i_crit_edge ], [ %incdec.ptr351.i.i.i.i, %for.body341.i.i.i.i.for.end354.i.i.i.i_crit_edge ]
  %484 = ptrtoint ptr %472 to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %472, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %485)
  %tobool357.not.i.i.i.i = icmp eq i8 %485, 0
  %cond358.neg.i.i.i.i = select i1 %tobool357.not.i.i.i.i, i32 -2, i32 -1
  %sub359.i.i.i.i = add nsw i32 %cond358.neg.i.i.i.i, %433
  %486 = ptrtoint ptr %dwFrameInterval322.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %dwFrameInterval322.i.i.i.i, align 4
  %arrayidx361.i.i.i.i = getelementptr i32, ptr %487, i32 %sub359.i.i.i.i
  %488 = ptrtoint ptr %arrayidx361.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %arrayidx361.i.i.i.i, align 4
  %490 = ptrtoint ptr %487 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %487, align 4
  %492 = ptrtoint ptr %dwDefaultFrameInterval318.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %dwDefaultFrameInterval318.i.i.i.i, align 4
  %494 = tail call i32 @llvm.umax.i32(i32 %491, i32 %493) #21
  %495 = tail call i32 @llvm.umin.i32(i32 %489, i32 %494) #21
  %496 = ptrtoint ptr %dwDefaultFrameInterval318.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %495, ptr %dwDefaultFrameInterval318.i.i.i.i, align 4
  %497 = ptrtoint ptr %quirks14 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %quirks14, align 4
  %and380.i.i.i.i = and i32 %498, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380.i.i.i.i)
  %tobool381.not.i.i.i.i = icmp eq i32 %and380.i.i.i.i, 0
  br i1 %tobool381.not.i.i.i.i, label %for.end354.i.i.i.i.do.body388.i.i.i.i_crit_edge, label %if.then382.i.i.i.i

for.end354.i.i.i.i.do.body388.i.i.i.i_crit_edge:  ; preds = %for.end354.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body388.i.i.i.i

if.then382.i.i.i.i:                               ; preds = %for.end354.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %499 = ptrtoint ptr %472 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 1, ptr %472, align 4
  %500 = ptrtoint ptr %487 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 %495, ptr %487, align 4
  br label %do.body388.i.i.i.i

do.body388.i.i.i.i:                               ; preds = %if.then382.i.i.i.i, %for.end354.i.i.i.i.do.body388.i.i.i.i_crit_edge
  %501 = load i32, ptr @uvc_dbg_param, align 4
  %and389.i.i.i.i = and i32 %501, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and389.i.i.i.i)
  %tobool390.not.i.i.i.i = icmp eq i32 %and389.i.i.i.i, 0
  br i1 %tobool390.not.i.i.i.i, label %do.body388.i.i.i.i.do.end407.i.i.i.i_crit_edge, label %do.end394.i.i.i.i

do.body388.i.i.i.i.do.end407.i.i.i.i_crit_edge:   ; preds = %do.body388.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end407.i.i.i.i

do.end394.i.i.i.i:                                ; preds = %do.body388.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %502 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %call7.i.i, align 8
  %dev396.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %503, i32 0, i32 15
  %504 = ptrtoint ptr %wWidth.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %wWidth.i.i.i.i, align 2
  %conv398.i.i.i.i = zext i16 %505 to i32
  %506 = ptrtoint ptr %wHeight.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %506)
  %507 = load i16, ptr %wHeight.i.i.i.i, align 4
  %conv400.i.i.i.i = zext i16 %507 to i32
  %508 = ptrtoint ptr %dwDefaultFrameInterval318.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %dwDefaultFrameInterval318.i.i.i.i, align 4
  %div402.i.i.i.i = udiv i32 10000000, %509
  %div404.i.i.i.i = udiv i32 100000000, %509
  %rem.i.i.i.i = urem i32 %div404.i.i.i.i, 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev396.i.i.i.i, ptr noundef nonnull @.str.150, i32 noundef %conv398.i.i.i.i, i32 noundef %conv400.i.i.i.i, i32 noundef %div402.i.i.i.i, i32 noundef %rem.i.i.i.i) #25
  br label %do.end407.i.i.i.i

do.end407.i.i.i.i:                                ; preds = %do.end394.i.i.i.i, %do.body388.i.i.i.i.do.end407.i.i.i.i_crit_edge
  %510 = ptrtoint ptr %nframes241.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %nframes241.i.i.i.i, align 4
  %inc409.i.i.i.i = add i32 %511, 1
  store i32 %inc409.i.i.i.i, ptr %nframes241.i.i.i.i, align 4
  %512 = ptrtoint ptr %buffer.addr.0727.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %buffer.addr.0727.i.i.i.i, align 1
  %conv411.i.i.i.i = zext i8 %513 to i32
  %sub412.i.i.i.i = sub i32 %buflen.addr.0726.i.i.i.i, %conv411.i.i.i.i
  %add.ptr415.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 %conv411.i.i.i.i
  %cmp229.i.i.i.i = icmp sgt i32 %sub412.i.i.i.i, 2
  br i1 %cmp229.i.i.i.i, label %do.end407.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, label %do.end407.i.i.i.i.if.else482.i.i.i.i_crit_edge

do.end407.i.i.i.i.if.else482.i.i.i.i_crit_edge:   ; preds = %do.end407.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else482.i.i.i.i

do.end407.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge: ; preds = %do.end407.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.lhs.true.i.i.i.i

land.lhs.true423.i.i.i.i:                         ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %426)
  %cmp426.i.i.i.i = icmp eq i8 %426, 3
  br i1 %cmp426.i.i.i.i, label %if.end435.i.i.i.i, label %land.lhs.true423.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge

land.lhs.true423.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge: ; preds = %land.lhs.true423.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.lhs.true438.i.i.i.i

if.end435.i.i.i.i:                                ; preds = %land.lhs.true423.i.i.i.i
  %514 = ptrtoint ptr %buffer.addr.0727.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %buffer.addr.0727.i.i.i.i, align 1
  %conv430.i.i.i.i = zext i8 %515 to i32
  %sub431.i.i.i.i = sub nsw i32 %buflen.addr.0726.i.i.i.i, %conv430.i.i.i.i
  %add.ptr434.i.i.i.i = getelementptr i8, ptr %buffer.addr.0727.i.i.i.i, i32 %conv430.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub431.i.i.i.i)
  %cmp436.i.i.i.i = icmp sgt i32 %sub431.i.i.i.i, 2
  br i1 %cmp436.i.i.i.i, label %if.end435.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge, label %if.end435.i.i.i.i.if.else482.i.i.i.i_crit_edge

if.end435.i.i.i.i.if.else482.i.i.i.i_crit_edge:   ; preds = %if.end435.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else482.i.i.i.i

if.end435.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge: ; preds = %if.end435.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.lhs.true438.i.i.i.i

land.lhs.true438.i.i.i.i:                         ; preds = %if.end435.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge, %land.lhs.true423.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge
  %buffer.addr.1707.i.i.i.i = phi ptr [ %add.ptr434.i.i.i.i, %if.end435.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge ], [ %buffer.addr.0727.i.i.i.i, %land.lhs.true423.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge ], [ %buffer.addr.0727.i.i.i.i, %land.lhs.true.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge ]
  %buflen.addr.1706.i.i.i.i = phi i32 [ %sub431.i.i.i.i, %if.end435.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge ], [ %buflen.addr.0726.i.i.i.i, %land.lhs.true423.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge ], [ %buflen.addr.0726.i.i.i.i, %land.lhs.true.i.i.i.i.land.lhs.true438.i.i.i.i_crit_edge ]
  %arrayidx439.i.i.i.i = getelementptr i8, ptr %buffer.addr.1707.i.i.i.i, i32 1
  %516 = ptrtoint ptr %arrayidx439.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %arrayidx439.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %517)
  %cmp441.i.i.i.i = icmp eq i8 %517, 36
  br i1 %cmp441.i.i.i.i, label %land.lhs.true443.i.i.i.i, label %land.lhs.true438.i.i.i.i.if.else482.i.i.i.i_crit_edge

land.lhs.true438.i.i.i.i.if.else482.i.i.i.i_crit_edge: ; preds = %land.lhs.true438.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else482.i.i.i.i

land.lhs.true443.i.i.i.i:                         ; preds = %land.lhs.true438.i.i.i.i
  %arrayidx444.i.i.i.i = getelementptr i8, ptr %buffer.addr.1707.i.i.i.i, i32 2
  %518 = ptrtoint ptr %arrayidx444.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %arrayidx444.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %519)
  %cmp446.i.i.i.i = icmp eq i8 %519, 13
  br i1 %cmp446.i.i.i.i, label %if.then448.i.i.i.i, label %land.lhs.true443.i.i.i.i.if.else482.i.i.i.i_crit_edge

land.lhs.true443.i.i.i.i.if.else482.i.i.i.i_crit_edge: ; preds = %land.lhs.true443.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else482.i.i.i.i

if.then448.i.i.i.i:                               ; preds = %land.lhs.true443.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %buflen.addr.1706.i.i.i.i)
  %cmp449.i.i.i.i = icmp ult i32 %buflen.addr.1706.i.i.i.i, 6
  br i1 %cmp449.i.i.i.i, label %do.body452.i.i.i.i, label %if.end469.i.i.i.i

do.body452.i.i.i.i:                               ; preds = %if.then448.i.i.i.i
  %520 = load i32, ptr @uvc_dbg_param, align 4
  %and453.i.i.i.i = and i32 %520, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and453.i.i.i.i)
  %tobool454.not.i.i.i.i = icmp eq i32 %and453.i.i.i.i, 0
  br i1 %tobool454.not.i.i.i.i, label %do.body452.i.i.i.i.error.i.i.i_crit_edge, label %do.end458.i.i.i.i

do.body452.i.i.i.i.error.i.i.i_crit_edge:         ; preds = %do.body452.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

do.end458.i.i.i.i:                                ; preds = %do.body452.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %521 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %call7.i.i, align 8
  %dev460.i.i.i.i = getelementptr inbounds %struct.usb_device, ptr %522, i32 0, i32 15
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %522, align 8
  %bInterfaceNumber464.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %316, i32 0, i32 2
  %525 = ptrtoint ptr %bInterfaceNumber464.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %bInterfaceNumber464.i.i.i.i, align 2
  %conv465.i.i.i.i = zext i8 %526 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev460.i.i.i.i, ptr noundef nonnull @.str.153, i32 noundef %524, i32 noundef %conv465.i.i.i.i) #25
  br label %error.i.i.i

if.end469.i.i.i.i:                                ; preds = %if.then448.i.i.i.i
  %arrayidx470.i.i.i.i = getelementptr i8, ptr %buffer.addr.1707.i.i.i.i, i32 3
  %527 = ptrtoint ptr %arrayidx470.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx470.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %528)
  %cmp.i.i8.i.i.i = icmp ult i8 %528, 6
  br i1 %cmp.i.i8.i.i.i, label %if.then.i687.i.i.i.i, label %if.end469.i.i.i.i.uvc_colorspace.exit.i.i.i.i_crit_edge

if.end469.i.i.i.i.uvc_colorspace.exit.i.i.i.i_crit_edge: ; preds = %if.end469.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_colorspace.exit.i.i.i.i

if.then.i687.i.i.i.i:                             ; preds = %if.end469.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv.i.i.i.i.i = zext i8 %528 to i32
  %arrayidx.i686.i.i.i.i = getelementptr [6 x i32], ptr @uvc_colorspace.colorprimaries, i32 0, i32 %conv.i.i.i.i.i
  %529 = ptrtoint ptr %arrayidx.i686.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %arrayidx.i686.i.i.i.i, align 4
  br label %uvc_colorspace.exit.i.i.i.i

uvc_colorspace.exit.i.i.i.i:                      ; preds = %if.then.i687.i.i.i.i, %if.end469.i.i.i.i.uvc_colorspace.exit.i.i.i.i_crit_edge
  %retval.0.i688.i.i.i.i = phi i32 [ %530, %if.then.i687.i.i.i.i ], [ 8, %if.end469.i.i.i.i.uvc_colorspace.exit.i.i.i.i_crit_edge ]
  %colorspace.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 3
  %531 = ptrtoint ptr %colorspace.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 %retval.0.i688.i.i.i.i, ptr %colorspace.i.i.i.i, align 4
  %arrayidx472.i.i.i.i = getelementptr i8, ptr %buffer.addr.1707.i.i.i.i, i32 4
  %532 = ptrtoint ptr %arrayidx472.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx472.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %533)
  %cmp.i689.i.i.i.i = icmp ult i8 %533, 8
  br i1 %cmp.i689.i.i.i.i, label %if.then.i692.i.i.i.i, label %uvc_colorspace.exit.i.i.i.i.uvc_xfer_func.exit.i.i.i.i_crit_edge

uvc_colorspace.exit.i.i.i.i.uvc_xfer_func.exit.i.i.i.i_crit_edge: ; preds = %uvc_colorspace.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_xfer_func.exit.i.i.i.i

if.then.i692.i.i.i.i:                             ; preds = %uvc_colorspace.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv.i690.i.i.i.i = zext i8 %533 to i32
  %arrayidx.i691.i.i.i.i = getelementptr [8 x i32], ptr @uvc_xfer_func.xfer_funcs, i32 0, i32 %conv.i690.i.i.i.i
  %534 = ptrtoint ptr %arrayidx.i691.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %arrayidx.i691.i.i.i.i, align 4
  br label %uvc_xfer_func.exit.i.i.i.i

uvc_xfer_func.exit.i.i.i.i:                       ; preds = %if.then.i692.i.i.i.i, %uvc_colorspace.exit.i.i.i.i.uvc_xfer_func.exit.i.i.i.i_crit_edge
  %retval.0.i693.i.i.i.i = phi i32 [ %535, %if.then.i692.i.i.i.i ], [ 0, %uvc_colorspace.exit.i.i.i.i.uvc_xfer_func.exit.i.i.i.i_crit_edge ]
  %xfer_func.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 4
  %536 = ptrtoint ptr %xfer_func.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 %retval.0.i693.i.i.i.i, ptr %xfer_func.i.i.i.i, align 4
  %arrayidx474.i.i.i.i = getelementptr i8, ptr %buffer.addr.1707.i.i.i.i, i32 5
  %537 = ptrtoint ptr %arrayidx474.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %arrayidx474.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %538)
  %cmp.i694.i.i.i.i = icmp ult i8 %538, 6
  br i1 %cmp.i694.i.i.i.i, label %if.then.i697.i.i.i.i, label %uvc_xfer_func.exit.i.i.i.i.uvc_ycbcr_enc.exit.i.i.i.i_crit_edge

uvc_xfer_func.exit.i.i.i.i.uvc_ycbcr_enc.exit.i.i.i.i_crit_edge: ; preds = %uvc_xfer_func.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_ycbcr_enc.exit.i.i.i.i

if.then.i697.i.i.i.i:                             ; preds = %uvc_xfer_func.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv.i695.i.i.i.i = zext i8 %538 to i32
  %arrayidx.i696.i.i.i.i = getelementptr [6 x i32], ptr @uvc_ycbcr_enc.ycbcr_encs, i32 0, i32 %conv.i695.i.i.i.i
  %539 = ptrtoint ptr %arrayidx.i696.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %arrayidx.i696.i.i.i.i, align 4
  br label %uvc_ycbcr_enc.exit.i.i.i.i

uvc_ycbcr_enc.exit.i.i.i.i:                       ; preds = %if.then.i697.i.i.i.i, %uvc_xfer_func.exit.i.i.i.i.uvc_ycbcr_enc.exit.i.i.i.i_crit_edge
  %retval.0.i698.i.i.i.i = phi i32 [ %540, %if.then.i697.i.i.i.i ], [ 0, %uvc_xfer_func.exit.i.i.i.i.uvc_ycbcr_enc.exit.i.i.i.i_crit_edge ]
  %ycbcr_enc.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 5
  %541 = ptrtoint ptr %ycbcr_enc.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %retval.0.i698.i.i.i.i, ptr %ycbcr_enc.i.i.i.i, align 4
  %542 = ptrtoint ptr %buffer.addr.1707.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %buffer.addr.1707.i.i.i.i, align 1
  %conv477.i.i.i.i = zext i8 %543 to i32
  %add.ptr481.i.i.i.i = getelementptr i8, ptr %buffer.addr.1707.i.i.i.i, i32 %conv477.i.i.i.i
  br label %uvc_parse_format.exit.i.i.i

if.else482.i.i.i.i:                               ; preds = %land.lhs.true443.i.i.i.i.if.else482.i.i.i.i_crit_edge, %land.lhs.true438.i.i.i.i.if.else482.i.i.i.i_crit_edge, %if.end435.i.i.i.i.if.else482.i.i.i.i_crit_edge, %do.end407.i.i.i.i.if.else482.i.i.i.i_crit_edge, %do.end223.i.i.i.i.if.else482.i.i.i.i_crit_edge
  %interval.5.i.i.i = phi ptr [ %interval.2.i.i.i, %land.lhs.true443.i.i.i.i.if.else482.i.i.i.i_crit_edge ], [ %interval.2.i.i.i, %land.lhs.true438.i.i.i.i.if.else482.i.i.i.i_crit_edge ], [ %interval.2.i.i.i, %if.end435.i.i.i.i.if.else482.i.i.i.i_crit_edge ], [ %interval.1.i.i.i, %do.end223.i.i.i.i.if.else482.i.i.i.i_crit_edge ], [ %interval.4.i.i.i, %do.end407.i.i.i.i.if.else482.i.i.i.i_crit_edge ]
  %buffer.addr.1708.i.i.i.i = phi ptr [ %buffer.addr.1707.i.i.i.i, %land.lhs.true443.i.i.i.i.if.else482.i.i.i.i_crit_edge ], [ %buffer.addr.1707.i.i.i.i, %land.lhs.true438.i.i.i.i.if.else482.i.i.i.i_crit_edge ], [ %add.ptr434.i.i.i.i, %if.end435.i.i.i.i.if.else482.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %do.end223.i.i.i.i.if.else482.i.i.i.i_crit_edge ], [ %add.ptr415.i.i.i.i, %do.end407.i.i.i.i.if.else482.i.i.i.i_crit_edge ]
  %colorspace483.i.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 3
  %544 = ptrtoint ptr %colorspace483.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 8, ptr %colorspace483.i.i.i.i, align 4
  br label %uvc_parse_format.exit.i.i.i

uvc_parse_format.exit.i.i.i:                      ; preds = %if.else482.i.i.i.i, %uvc_ycbcr_enc.exit.i.i.i.i
  %interval.6.i.i.i = phi ptr [ %interval.5.i.i.i, %if.else482.i.i.i.i ], [ %interval.2.i.i.i, %uvc_ycbcr_enc.exit.i.i.i.i ]
  %buffer.addr.2.i.i.i.i = phi ptr [ %buffer.addr.1708.i.i.i.i, %if.else482.i.i.i.i ], [ %add.ptr481.i.i.i.i, %uvc_ycbcr_enc.exit.i.i.i.i ]
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %buffer.addr.2.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %buffer.4103.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i.i.i.i)
  %cmp331.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 0
  br i1 %cmp331.i.i.i, label %uvc_parse_format.exit.i.i.i.error.i.i.i_crit_edge, label %if.end334.i.i.i

uvc_parse_format.exit.i.i.i.error.i.i.i_crit_edge: ; preds = %uvc_parse_format.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i.i.i

if.end334.i.i.i:                                  ; preds = %uvc_parse_format.exit.i.i.i
  %nframes335.i.i.i = getelementptr inbounds %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 0, i32 9
  %545 = ptrtoint ptr %nframes335.i.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %nframes335.i.i.i, align 4
  %add.ptr336.i.i.i = getelementptr %struct.uvc_frame, ptr %frame.0.ph112.i.i.i, i32 %546
  %incdec.ptr.i.i.i = getelementptr %struct.uvc_format, ptr %format.0.ph111.i.i.i, i32 1
  %sub337.i.i.i = sub i32 %buflen.4104.i.i.i, %sub.ptr.sub.i.i.i.i
  %add.ptr338.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 %sub.ptr.sub.i.i.i.i
  %cmp317102.i.i.i = icmp sgt i32 %sub337.i.i.i, 2
  br i1 %cmp317102.i.i.i, label %if.end334.i.i.i.land.rhs319.lr.ph.i.i.i_crit_edge, label %if.end334.i.i.i.while.end347.i.i.i_crit_edge

if.end334.i.i.i.while.end347.i.i.i_crit_edge:     ; preds = %if.end334.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end347.i.i.i

if.end334.i.i.i.land.rhs319.lr.ph.i.i.i_crit_edge: ; preds = %if.end334.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.rhs319.lr.ph.i.i.i

sw.epilog340.i.i.i:                               ; preds = %while.body325.i.i.i
  %547 = ptrtoint ptr %buffer.4103.i.i.i to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %buffer.4103.i.i.i, align 1
  %conv342.i.i.i = zext i8 %548 to i32
  %sub343.i.i.i = sub nsw i32 %buflen.4104.i.i.i, %conv342.i.i.i
  %add.ptr346.i.i.i = getelementptr i8, ptr %buffer.4103.i.i.i, i32 %conv342.i.i.i
  %cmp317.i.i.i = icmp sgt i32 %sub343.i.i.i, 2
  br i1 %cmp317.i.i.i, label %sw.epilog340.i.i.i.land.rhs319.i.i.i_crit_edge, label %sw.epilog340.i.i.i.while.end347.i.i.i_crit_edge

sw.epilog340.i.i.i.while.end347.i.i.i_crit_edge:  ; preds = %sw.epilog340.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end347.i.i.i

sw.epilog340.i.i.i.land.rhs319.i.i.i_crit_edge:   ; preds = %sw.epilog340.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.rhs319.i.i.i

while.end347.i.i.i:                               ; preds = %sw.epilog340.i.i.i.while.end347.i.i.i_crit_edge, %if.end334.i.i.i.while.end347.i.i.i_crit_edge
  %buflen.4.lcssa.i.i.i = phi i32 [ %sub343.i.i.i, %sw.epilog340.i.i.i.while.end347.i.i.i_crit_edge ], [ %sub337.i.i.i, %if.end334.i.i.i.while.end347.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen.4.lcssa.i.i.i)
  %tobool348.not.i.i.i = icmp eq i32 %buflen.4.lcssa.i.i.i, 0
  br i1 %tobool348.not.i.i.i, label %while.end347.i.i.i.if.end367.i.i.i_crit_edge, label %while.end347.i.i.i.do.body350.i.i.i_crit_edge

while.end347.i.i.i.do.body350.i.i.i_crit_edge:    ; preds = %while.end347.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body350.i.i.i

while.end347.i.i.i.if.end367.i.i.i_crit_edge:     ; preds = %while.end347.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end367.i.i.i

do.body350.i.i.i:                                 ; preds = %while.end347.i.i.i.do.body350.i.i.i_crit_edge, %land.rhs319.i.i.i.do.body350.i.i.i_crit_edge
  %buflen.450.i.i.i = phi i32 [ %buflen.4.lcssa.i.i.i, %while.end347.i.i.i.do.body350.i.i.i_crit_edge ], [ %buflen.4104.i.i.i, %land.rhs319.i.i.i.do.body350.i.i.i_crit_edge ]
  %549 = load i32, ptr @uvc_dbg_param, align 4
  %and351.i.i.i = and i32 %549, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and351.i.i.i)
  %tobool352.not.i.i.i = icmp eq i32 %and351.i.i.i, 0
  br i1 %tobool352.not.i.i.i, label %do.body350.i.i.i.if.end367.i.i.i_crit_edge, label %do.end356.i.i.i

do.body350.i.i.i.if.end367.i.i.i_crit_edge:       ; preds = %do.body350.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end367.i.i.i

do.end356.i.i.i:                                  ; preds = %do.body350.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %550 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %call7.i.i, align 8
  %dev358.i.i.i = getelementptr inbounds %struct.usb_device, ptr %551, i32 0, i32 15
  %552 = ptrtoint ptr %551 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %551, align 8
  %554 = ptrtoint ptr %bInterfaceNumber234.i.i.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %bInterfaceNumber234.i.i.i, align 2
  %conv363.i.i.i = zext i8 %555 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev358.i.i.i, ptr noundef nonnull @.str.117, i32 noundef %553, i32 noundef %conv363.i.i.i, i32 noundef %buflen.450.i.i.i) #25
  br label %if.end367.i.i.i

if.end367.i.i.i:                                  ; preds = %do.end356.i.i.i, %do.body350.i.i.i.if.end367.i.i.i_crit_edge, %while.end347.i.i.i.if.end367.i.i.i_crit_edge
  %num_altsetting.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %call24.i.i, i32 0, i32 2
  %556 = ptrtoint ptr %num_altsetting.i.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %num_altsetting.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %557)
  %cmp369116.not.i.i.i = icmp eq i32 %557, 0
  br i1 %cmp369116.not.i.i.i, label %if.end367.i.i.i.for.end402.i.i.i_crit_edge, label %for.body371.lr.ph.i.i.i

if.end367.i.i.i.for.end402.i.i.i_crit_edge:       ; preds = %if.end367.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end402.i.i.i

for.body371.lr.ph.i.i.i:                          ; preds = %if.end367.i.i.i
  %558 = ptrtoint ptr %call24.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %call24.i.i, align 8
  %maxpsize.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 7
  br label %for.body371.i.i.i

for.body371.i.i.i:                                ; preds = %cleanup397.i.i.i.for.body371.i.i.i_crit_edge, %for.body371.lr.ph.i.i.i
  %i.1117.i.i.i = phi i32 [ 0, %for.body371.lr.ph.i.i.i ], [ %inc401.i.i.i, %cleanup397.i.i.i.for.body371.i.i.i_crit_edge ]
  %560 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  %bNumEndpoints.i.i.i.i = getelementptr %struct.usb_host_interface, ptr %559, i32 %i.1117.i.i.i, i32 0, i32 4
  %562 = ptrtoint ptr %bNumEndpoints.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %bNumEndpoints.i.i.i.i, align 4
  %conv.i10.i.i.i = zext i8 %563 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %563)
  %cmp12.not.i.i.i.i = icmp eq i8 %563, 0
  br i1 %cmp12.not.i.i.i.i, label %for.body371.i.i.i.cleanup397.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

for.body371.i.i.i.cleanup397.i.i.i_crit_edge:     ; preds = %for.body371.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup397.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %for.body371.i.i.i
  %endpoint.i.i.i.i = getelementptr %struct.usb_host_interface, ptr %559, i32 %i.1117.i.i.i, i32 3
  %564 = ptrtoint ptr %endpoint.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %endpoint.i.i.i.i, align 4
  br label %for.body.i14.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i14.i.i.i
  %inc.i11.i.i.i = add nuw nsw i32 %i.013.i.i.i.i, 1
  %exitcond.not.i12.i.i.i = icmp eq i32 %inc.i11.i.i.i, %conv.i10.i.i.i
  br i1 %exitcond.not.i12.i.i.i, label %for.cond.i.i.i.i.cleanup397.i.i.i_crit_edge, label %for.cond.i.i.i.i.for.body.i14.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i14.i.i.i_crit_edge:    ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i14.i.i.i

for.cond.i.i.i.i.cleanup397.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup397.i.i.i

for.body.i14.i.i.i:                               ; preds = %for.cond.i.i.i.i.for.body.i14.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.013.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i11.i.i.i, %for.cond.i.i.i.i.for.body.i14.i.i.i_crit_edge ]
  %arrayidx.i13.i.i.i = getelementptr %struct.usb_host_endpoint, ptr %565, i32 %i.013.i.i.i.i
  %bEndpointAddress.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i13.i.i.i, i32 0, i32 2
  %566 = ptrtoint ptr %bEndpointAddress.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %bEndpointAddress.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %567, i8 %561)
  %cmp5.i.i.i.i = icmp eq i8 %567, %561
  br i1 %cmp5.i.i.i.i, label %uvc_find_endpoint.exit.i.i.i, label %for.cond.i.i.i.i

uvc_find_endpoint.exit.i.i.i:                     ; preds = %for.body.i14.i.i.i
  %cmp378.i.i.i = icmp eq ptr %arrayidx.i13.i.i.i, null
  br i1 %cmp378.i.i.i, label %uvc_find_endpoint.exit.i.i.i.cleanup397.i.i.i_crit_edge, label %if.end381.i.i.i

uvc_find_endpoint.exit.i.i.i.cleanup397.i.i.i_crit_edge: ; preds = %uvc_find_endpoint.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup397.i.i.i

if.end381.i.i.i:                                  ; preds = %uvc_find_endpoint.exit.i.i.i
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i13.i.i.i, i32 0, i32 4
  %568 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_load2_noabort(i32 %568)
  %569 = load i16, ptr %wMaxPacketSize.i.i.i, align 4
  %570 = tail call i16 @llvm.bswap.i16(i16 %569) #21
  %and384.i.i.i = and i16 %570, 2047
  %571 = lshr i16 %570, 11
  %and386.i.i.i = and i16 %571, 3
  %add387.i.i.i = add nuw nsw i16 %and386.i.i.i, 1
  %mul388.i.i.i = mul nuw nsw i16 %add387.i.i.i, %and384.i.i.i
  %572 = ptrtoint ptr %maxpsize.i.i.i to i32
  call void @__asan_load2_noabort(i32 %572)
  %573 = load i16, ptr %maxpsize.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %mul388.i.i.i, i16 %573)
  %cmp392.i.i.i = icmp ugt i16 %mul388.i.i.i, %573
  br i1 %cmp392.i.i.i, label %if.then394.i.i.i, label %if.end381.i.i.i.cleanup397.i.i.i_crit_edge

if.end381.i.i.i.cleanup397.i.i.i_crit_edge:       ; preds = %if.end381.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup397.i.i.i

if.then394.i.i.i:                                 ; preds = %if.end381.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %574 = ptrtoint ptr %maxpsize.i.i.i to i32
  call void @__asan_store2_noabort(i32 %574)
  store i16 %mul388.i.i.i, ptr %maxpsize.i.i.i, align 8
  br label %cleanup397.i.i.i

cleanup397.i.i.i:                                 ; preds = %if.then394.i.i.i, %if.end381.i.i.i.cleanup397.i.i.i_crit_edge, %uvc_find_endpoint.exit.i.i.i.cleanup397.i.i.i_crit_edge, %for.cond.i.i.i.i.cleanup397.i.i.i_crit_edge, %for.body371.i.i.i.cleanup397.i.i.i_crit_edge
  %inc401.i.i.i = add nuw i32 %i.1117.i.i.i, 1
  %exitcond161.not.i.i.i = icmp eq i32 %inc401.i.i.i, %557
  br i1 %exitcond161.not.i.i.i, label %cleanup397.i.i.i.for.end402.i.i.i_crit_edge, label %cleanup397.i.i.i.for.body371.i.i.i_crit_edge

cleanup397.i.i.i.for.body371.i.i.i_crit_edge:     ; preds = %cleanup397.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body371.i.i.i

cleanup397.i.i.i.for.end402.i.i.i_crit_edge:      ; preds = %cleanup397.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end402.i.i.i

for.end402.i.i.i:                                 ; preds = %cleanup397.i.i.i.for.end402.i.i.i_crit_edge, %if.end367.i.i.i.for.end402.i.i.i_crit_edge
  %575 = ptrtoint ptr %prev.i379 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %prev.i379, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i.i.i.i.i, ptr noundef %576, ptr noundef %streams) #21
  br i1 %call.i.i.i.i.i, label %if.end.i.i16.i.i.i, label %for.end402.i.i.i.for.inc.i.i_crit_edge

for.end402.i.i.i.for.inc.i.i_crit_edge:           ; preds = %for.end402.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

if.end.i.i16.i.i.i:                               ; preds = %for.end402.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %577 = ptrtoint ptr %prev.i379 to i32
  call void @__asan_store4_noabort(i32 %577)
  store ptr %call7.i.i.i.i.i.i, ptr %prev.i379, align 4
  %578 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %578)
  store ptr %streams, ptr %call7.i.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %579 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %579)
  store ptr %576, ptr %prev3.i.i.i.i.i, align 4
  %580 = ptrtoint ptr %576 to i32
  call void @__asan_store4_noabort(i32 %580)
  store volatile ptr %call7.i.i.i.i.i.i, ptr %576, align 4
  br label %for.inc.i.i

error.i.i.i:                                      ; preds = %uvc_parse_format.exit.i.i.i.error.i.i.i_crit_edge, %do.end458.i.i.i.i, %do.body452.i.i.i.i.error.i.i.i_crit_edge, %do.end278.i.i.i.i, %do.body272.i.i.i.i.error.i.i.i_crit_edge, %do.end196.i.i.i.i, %do.body190.i.i.i.i.error.i.i.i_crit_edge, %do.end160.i.i.i.i, %do.body154.i.i.i.i.error.i.i.i_crit_edge, %do.end127.i.i.i.i, %do.body121.i.i.i.i.error.i.i.i_crit_edge, %do.end99.i.i.i.i, %do.body93.i.i.i.i.error.i.i.i_crit_edge, %do.end.i.i.i.i, %do.body.i6.i.i.i.error.i.i.i_crit_edge, %if.end8.i.i.i.i104.i.error.i.i.i_crit_edge, %do.end290.i.i.i, %do.body284.i.i.i.error.i.i.i_crit_edge, %if.end184.i.i.i.error.i.i.i_crit_edge, %do.end151.i.i.i, %do.body145.i.i.i.error.i.i.i_crit_edge, %do.end118.i.i.i, %do.body112.i.i.i.error.i.i.i_crit_edge, %do.end101.i.i.i, %do.body95.i.i.i.error.i.i.i_crit_edge
  tail call void @usb_driver_release_interface(ptr noundef nonnull @uvc_driver, ptr noundef nonnull %call24.i.i) #21
  %581 = ptrtoint ptr %async_wq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %async_wq.i.i.i.i, align 4
  %tobool.not.i18.i.i.i = icmp eq ptr %582, null
  br i1 %tobool.not.i18.i.i.i, label %error.i.i.i.uvc_stream_delete.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

error.i.i.i.uvc_stream_delete.exit.i.i.i_crit_edge: ; preds = %error.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_stream_delete.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %error.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @destroy_workqueue(ptr noundef nonnull %582) #21
  br label %uvc_stream_delete.exit.i.i.i

uvc_stream_delete.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %error.i.i.i.uvc_stream_delete.exit.i.i.i_crit_edge
  tail call void @mutex_destroy(ptr noundef %mutex.i.i.i.i) #21
  %583 = ptrtoint ptr %intf3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %intf3.i.i.i.i, align 8
  tail call void @usb_put_intf(ptr noundef %584) #21
  %format.i.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 11
  %585 = ptrtoint ptr %format.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %format.i.i.i.i, align 8
  tail call void @kfree(ptr noundef %586) #21
  %bmaControls.i.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %call7.i.i.i.i.i.i, i32 0, i32 8, i32 4
  %587 = ptrtoint ptr %bmaControls.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %bmaControls.i.i.i.i, align 8
  tail call void @kfree(ptr noundef %588) #21
  tail call void @kfree(ptr noundef %call7.i.i.i.i.i.i) #21
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %uvc_stream_delete.exit.i.i.i, %if.end.i.i16.i.i.i, %for.end402.i.i.i.for.inc.i.i_crit_edge, %if.then38.i.i.i, %do.end21.i.i.i, %do.body15.i.i.i.for.inc.i.i_crit_edge, %do.end.i.i.i, %do.body.i.i.i.for.inc.i.i_crit_edge, %do.end34.i.i, %do.body28.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0963.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %cond.i69.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.next_descriptor.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i

for.inc.i.i.next_descriptor.i_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

sw.bb43.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %buflen.0351.i)
  %cmp44.i.i = icmp ult i32 %buflen.0351.i, 8
  br i1 %cmp44.i.i, label %do.body47.i.i, label %if.end63.i.i

do.body47.i.i:                                    ; preds = %sw.bb43.i.i
  %589 = load i32, ptr @uvc_dbg_param, align 4
  %and48.i.i = and i32 %589, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  br i1 %tobool49.not.i.i, label %do.body47.i.i.do.body122_crit_edge, label %do.body47.i.i.do.body122.sink.split_crit_edge

do.body47.i.i.do.body122.sink.split_crit_edge:    ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122.sink.split

do.body47.i.i.do.body122_crit_edge:               ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end63.i.i:                                     ; preds = %sw.bb43.i.i
  %arrayidx64.i.i = getelementptr i8, ptr %buffer.0342.i, i32 4
  %590 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_loadN_noabort(i32 %590, i32 2)
  %591 = load i16, ptr %arrayidx64.i.i, align 1
  %592 = tail call i16 @llvm.bswap.i16(i16 %591) #21
  %conv66.i.i = zext i16 %592 to i32
  %and67.i.i = and i32 %conv66.i.i, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i.i)
  %cmp68.i.i = icmp ne i32 %and67.i.i, 0
  %and71.i.i = and i32 %conv66.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i)
  %cmp72.not.i.i = icmp eq i32 %and71.i.i, 0
  %or.cond.i.i = and i1 %cmp68.i.i, %cmp72.not.i.i
  br i1 %or.cond.i.i, label %if.end94.i.i, label %do.body75.i.i

do.body75.i.i:                                    ; preds = %if.end63.i.i
  %593 = load i32, ptr @uvc_dbg_param, align 4
  %and76.i.i = and i32 %593, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i.i)
  %tobool77.not.i.i = icmp eq i32 %and76.i.i, 0
  br i1 %tobool77.not.i.i, label %do.body75.i.i.next_descriptor.i_crit_edge, label %do.end81.i.i

do.body75.i.i.next_descriptor.i_crit_edge:        ; preds = %do.body75.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

do.end81.i.i:                                     ; preds = %do.body75.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %dev83.i.i = getelementptr inbounds %struct.usb_device, ptr %137, i32 0, i32 15
  %594 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %137, align 8
  %bInterfaceNumber86.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %141, i32 0, i32 2
  %596 = ptrtoint ptr %bInterfaceNumber86.i.i to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %bInterfaceNumber86.i.i, align 2
  %conv87.i.i = zext i8 %597 to i32
  %arrayidx88.i.i = getelementptr i8, ptr %buffer.0342.i, i32 3
  %598 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_load1_noabort(i32 %598)
  %599 = load i8, ptr %arrayidx88.i.i, align 1
  %conv89.i.i = zext i8 %599 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev83.i.i, ptr noundef nonnull @.str.66, i32 noundef %595, i32 noundef %conv87.i.i, i32 noundef %conv89.i.i, i32 noundef %conv66.i.i) #25
  br label %next_descriptor.i

if.end94.i.i:                                     ; preds = %if.end63.i.i
  %600 = zext i16 %592 to i64
  call void @__sanitizer_cov_trace_switch(i64 %600, ptr @__sancov_gen_cov_switch_values.309)
  switch i16 %592, label %if.end94.i.i.if.end130.i.i_crit_edge [
    i16 513, label %if.then98.i.i
    i16 514, label %if.then110.i.i
  ]

if.end94.i.i.if.end130.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end130.i.i

if.then98.i.i:                                    ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %buflen.0351.i)
  %cmp99.i.i = icmp ugt i32 %buflen.0351.i, 14
  br i1 %cmp99.i.i, label %cond.true101.i.i, label %if.then98.i.i.if.end130.i.i_crit_edge

if.then98.i.i.if.end130.i.i_crit_edge:            ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end130.i.i

cond.true101.i.i:                                 ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx102.i.i = getelementptr i8, ptr %buffer.0342.i, i32 14
  %601 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_load1_noabort(i32 %601)
  %602 = load i8, ptr %arrayidx102.i.i, align 1
  %conv103.i.i = zext i8 %602 to i32
  br label %if.end130.i.i

if.then110.i.i:                                   ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %buflen.0351.i)
  %cmp111.i.i = icmp ugt i32 %buflen.0351.i, 8
  br i1 %cmp111.i.i, label %cond.true113.i.i, label %if.then110.i.i.cond.end117.i.i_crit_edge

if.then110.i.i.cond.end117.i.i_crit_edge:         ; preds = %if.then110.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end117.i.i

cond.true113.i.i:                                 ; preds = %if.then110.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx114.i.i = getelementptr i8, ptr %buffer.0342.i, i32 8
  %603 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %arrayidx114.i.i, align 1
  %conv115.i.i = zext i8 %604 to i32
  br label %cond.end117.i.i

cond.end117.i.i:                                  ; preds = %cond.true113.i.i, %if.then110.i.i.cond.end117.i.i_crit_edge
  %cond118.i.i = phi i32 [ %conv115.i.i, %cond.true113.i.i ], [ 0, %if.then110.i.i.cond.end117.i.i_crit_edge ]
  %add119.i.i = add nuw nsw i32 %cond118.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %add119.i.i, i32 %buflen.0351.i)
  %cmp120.not.i.i = icmp ugt i32 %add119.i.i, %buflen.0351.i
  br i1 %cmp120.not.i.i, label %cond.end117.i.i.if.end130.i.i_crit_edge, label %cond.true122.i.i

cond.end117.i.i.if.end130.i.i_crit_edge:          ; preds = %cond.end117.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end130.i.i

cond.true122.i.i:                                 ; preds = %cond.end117.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %add123.i.i = add nuw nsw i32 %cond118.i.i, 9
  %arrayidx124.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add123.i.i
  %605 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %arrayidx124.i.i, align 1
  %conv125.i.i = zext i8 %606 to i32
  br label %if.end130.i.i

if.end130.i.i:                                    ; preds = %cond.true122.i.i, %cond.end117.i.i.if.end130.i.i_crit_edge, %cond.true101.i.i, %if.then98.i.i.if.end130.i.i_crit_edge, %if.end94.i.i.if.end130.i.i_crit_edge
  %n.0.i.i = phi i32 [ %conv103.i.i, %cond.true101.i.i ], [ 0, %if.then98.i.i.if.end130.i.i_crit_edge ], [ 0, %if.end94.i.i.if.end130.i.i_crit_edge ], [ %cond118.i.i, %cond.end117.i.i.if.end130.i.i_crit_edge ], [ %cond118.i.i, %cond.true122.i.i ]
  %p.0.i.i = phi i32 [ 0, %cond.true101.i.i ], [ 0, %if.then98.i.i.if.end130.i.i_crit_edge ], [ 0, %if.end94.i.i.if.end130.i.i_crit_edge ], [ 0, %cond.end117.i.i.if.end130.i.i_crit_edge ], [ %conv125.i.i, %cond.true122.i.i ]
  %len.0.i.i = phi i32 [ 15, %cond.true101.i.i ], [ 15, %if.then98.i.i.if.end130.i.i_crit_edge ], [ 8, %if.end94.i.i.if.end130.i.i_crit_edge ], [ 10, %cond.end117.i.i.if.end130.i.i_crit_edge ], [ 10, %cond.true122.i.i ]
  %add131.i.i = add nuw nsw i32 %p.0.i.i, %n.0.i.i
  %add132.i.i = add nuw nsw i32 %add131.i.i, %len.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add132.i.i, i32 %buflen.0351.i)
  %cmp133.i.i = icmp ugt i32 %add132.i.i, %buflen.0351.i
  br i1 %cmp133.i.i, label %do.body136.i.i, label %if.end152.i.i

do.body136.i.i:                                   ; preds = %if.end130.i.i
  %607 = load i32, ptr @uvc_dbg_param, align 4
  %and137.i.i = and i32 %607, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i.i)
  %tobool138.not.i.i = icmp eq i32 %and137.i.i, 0
  br i1 %tobool138.not.i.i, label %do.body136.i.i.do.body122_crit_edge, label %do.body136.i.i.do.body122.sink.split_crit_edge

do.body136.i.i.do.body122.sink.split_crit_edge:   ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122.sink.split

do.body136.i.i.do.body122_crit_edge:              ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end152.i.i:                                    ; preds = %if.end130.i.i
  %arrayidx155.i.i = getelementptr i8, ptr %buffer.0342.i, i32 3
  %608 = ptrtoint ptr %arrayidx155.i.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %arrayidx155.i.i, align 1
  %add.i201.i = add nuw nsw i32 %add131.i.i, 31
  %div86.i202.i = and i32 %add.i201.i, -32
  %.lobit.i = lshr i16 %592, 15
  %add5.i204.i = add nuw nsw i32 %div86.i202.i, 388
  %610 = zext i16 %.lobit.i to i32
  %add6.i205.i = or i32 %add5.i204.i, %610
  %call9.i.i.i230.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6.i205.i, i32 noundef 3520) #24
  %cmp.i233.i = icmp eq ptr %call9.i.i.i230.i, null
  br i1 %cmp.i233.i, label %if.end152.i.i.do.body122_crit_edge, label %if.end9.i238.i

if.end152.i.i.do.body122_crit_edge:               ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end9.i238.i:                                   ; preds = %if.end152.i.i
  %conv156.i.i = zext i8 %609 to i16
  %id10.i236.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 3
  %611 = ptrtoint ptr %id10.i236.i to i32
  call void @__asan_store2_noabort(i32 %611)
  store i16 %conv156.i.i, ptr %id10.i236.i, align 4
  %type11.i237.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 4
  %612 = ptrtoint ptr %type11.i237.i to i32
  call void @__asan_store2_noabort(i32 %612)
  store i16 %592, ptr %type11.i237.i, align 2
  %613 = zext i16 %592 to i64
  call void @__sanitizer_cov_trace_switch(i64 %613, ptr @__sancov_gen_cov_switch_values.310)
  switch i16 %592, label %sw.epilog.i.i [
    i16 32766, label %sw.bb.i240.i
    i16 513, label %sw.bb13.i.i
    i16 514, label %sw.bb16.i.i
    i16 5, label %sw.bb19.i.i
  ]

sw.bb.i240.i:                                     ; preds = %if.end9.i238.i
  call void @__sanitizer_cov_trace_pc() #23
  %guid.i239.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 6
  %614 = call ptr @memcpy(ptr %guid.i239.i, ptr @uvc_gpio_guid, i32 16)
  br label %sw.epilog.i.thread.i

sw.bb13.i.i:                                      ; preds = %if.end9.i238.i
  call void @__sanitizer_cov_trace_pc() #23
  %guid14.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 6
  %615 = call ptr @memcpy(ptr %guid14.i.i, ptr @uvc_camera_guid, i32 16)
  br label %sw.epilog.i.thread.i

sw.bb16.i.i:                                      ; preds = %if.end9.i238.i
  call void @__sanitizer_cov_trace_pc() #23
  %guid17.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 6
  %616 = call ptr @memcpy(ptr %guid17.i.i, ptr @uvc_media_transport_input_guid, i32 16)
  br label %sw.epilog.i.thread.i

sw.bb19.i.i:                                      ; preds = %if.end9.i238.i
  call void @__sanitizer_cov_trace_pc() #23
  %guid20.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 6
  %617 = call ptr @memcpy(ptr %guid20.i.i, ptr @uvc_processing_guid, i32 16)
  br label %sw.epilog.i.thread.i

sw.epilog.i.thread.i:                             ; preds = %sw.bb19.i.i, %sw.bb16.i.i, %sw.bb13.i.i, %sw.bb.i240.i
  %num_links.i241415.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 10
  %618 = ptrtoint ptr %num_links.i241415.i to i32
  call void @__asan_store4_noabort(i32 %618)
  store i32 0, ptr %num_links.i241415.i, align 4
  %num_pads22.i242416.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 9
  %619 = ptrtoint ptr %num_pads22.i242416.i to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 1, ptr %num_pads22.i242416.i, align 16
  %add.ptr.i243417.i = getelementptr %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 1
  %add.ptr23.i244418.i = getelementptr i8, ptr %add.ptr.i243417.i, i32 %div86.i202.i
  %pads.i245419.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 11
  %620 = ptrtoint ptr %pads.i245419.i to i32
  call void @__asan_store4_noabort(i32 %620)
  store ptr %add.ptr23.i244418.i, ptr %pads.i245419.i, align 8
  br label %for.end.i253.i

sw.epilog.i.i:                                    ; preds = %if.end9.i238.i
  %num_links.i241.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 10
  %621 = ptrtoint ptr %num_links.i241.i to i32
  call void @__asan_store4_noabort(i32 %621)
  store i32 0, ptr %num_links.i241.i, align 4
  %num_pads22.i242.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 9
  %622 = ptrtoint ptr %num_pads22.i242.i to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 1, ptr %num_pads22.i242.i, align 16
  %add.ptr.i243.i = getelementptr %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 1
  %add.ptr23.i244.i = getelementptr i8, ptr %add.ptr.i243.i, i32 %div86.i202.i
  %pads.i245.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 11
  %623 = ptrtoint ptr %pads.i245.i to i32
  call void @__asan_store4_noabort(i32 %623)
  store ptr %add.ptr23.i244.i, ptr %pads.i245.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %592)
  %cmp2491.not.i246.i = icmp sgt i16 %592, -1
  br i1 %cmp2491.not.i246.i, label %sw.epilog.i.i.for.end.i253.i_crit_edge, label %for.body.i251.preheader.i

sw.epilog.i.i.for.end.i253.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i253.i

for.body.i251.preheader.i:                        ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %flags.i248.i = getelementptr %struct.media_pad, ptr %add.ptr23.i244.i, i32 0, i32 4
  %624 = ptrtoint ptr %flags.i248.i to i32
  call void @__asan_store4_noabort(i32 %624)
  store i32 1, ptr %flags.i248.i, align 32
  br label %for.end.i253.i

for.end.i253.i:                                   ; preds = %for.body.i251.preheader.i, %sw.epilog.i.i.for.end.i253.i_crit_edge, %sw.epilog.i.thread.i
  %pads.i245422.i = phi ptr [ %pads.i245419.i, %sw.epilog.i.thread.i ], [ %pads.i245.i, %for.body.i251.preheader.i ], [ %pads.i245.i, %sw.epilog.i.i.for.end.i253.i_crit_edge ]
  %add.ptr.i243421.i = phi ptr [ %add.ptr.i243417.i, %sw.epilog.i.thread.i ], [ %add.ptr.i243.i, %for.body.i251.preheader.i ], [ %add.ptr.i243.i, %sw.epilog.i.i.for.end.i253.i_crit_edge ]
  %625 = ptrtoint ptr %type11.i237.i to i32
  call void @__asan_load2_noabort(i32 %625)
  %626 = load i16, ptr %type11.i237.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %626)
  %cmp35.not.i252.i = icmp slt i16 %626, 0
  br i1 %cmp35.not.i252.i, label %for.end.i253.i.if.end162.i.i_crit_edge, label %if.then39.i255.i

for.end.i253.i.if.end162.i.i_crit_edge:           ; preds = %for.end.i253.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end162.i.i

if.then39.i255.i:                                 ; preds = %for.end.i253.i
  call void @__sanitizer_cov_trace_pc() #23
  %627 = ptrtoint ptr %pads.i245422.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %pads.i245422.i, align 8
  %flags43.i254.i = getelementptr %struct.media_pad, ptr %628, i32 0, i32 4
  %629 = ptrtoint ptr %flags43.i254.i to i32
  call void @__asan_store4_noabort(i32 %629)
  store i32 2, ptr %flags43.i254.i, align 4
  br label %if.end162.i.i

if.end162.i.i:                                    ; preds = %if.then39.i255.i, %for.end.i253.i.if.end162.i.i_crit_edge
  %conv45.i256.i = trunc i16 %.lobit.i to i8
  %bNrInPins.i257.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 13
  %630 = ptrtoint ptr %bNrInPins.i257.i to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 %conv45.i256.i, ptr %bNrInPins.i257.i, align 4
  %631 = ptrtoint ptr %pads.i245422.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %pads.i245422.i, align 8
  %arrayidx47.i258.i = getelementptr %struct.media_pad, ptr %632, i32 1
  %baSourceID.i259.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 14
  %633 = ptrtoint ptr %baSourceID.i259.i to i32
  call void @__asan_store4_noabort(i32 %633)
  store ptr %arrayidx47.i258.i, ptr %baSourceID.i259.i, align 16
  %634 = ptrtoint ptr %type11.i237.i to i32
  call void @__asan_load2_noabort(i32 %634)
  %635 = load i16, ptr %type11.i237.i, align 2
  %trunc.i.i = trunc i16 %635 to i15
  %636 = zext i15 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %636, ptr @__sancov_gen_cov_switch_values.311)
  switch i15 %trunc.i.i, label %if.end162.i.i.if.end198.i.i_crit_edge [
    i15 513, label %if.then168.i.i
    i15 514, label %if.then184.i.i
  ]

if.end162.i.i.if.end198.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end198.i.i

if.then168.i.i:                                   ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv169.i.i = trunc i32 %n.0.i.i to i8
  %637 = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 12
  %bControlSize.i108.i = getelementptr inbounds %struct.anon.112, ptr %637, i32 0, i32 3
  %638 = ptrtoint ptr %bControlSize.i108.i to i32
  call void @__asan_store1_noabort(i32 %638)
  store i8 %conv169.i.i, ptr %bControlSize.i108.i, align 2
  %bmControls.i109.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 12, i32 0, i32 2
  %639 = ptrtoint ptr %bmControls.i109.i to i32
  call void @__asan_store4_noabort(i32 %639)
  store ptr %add.ptr.i243421.i, ptr %bmControls.i109.i, align 4
  %arrayidx170.i.i = getelementptr i8, ptr %buffer.0342.i, i32 8
  %640 = ptrtoint ptr %arrayidx170.i.i to i32
  call void @__asan_loadN_noabort(i32 %640, i32 2)
  %641 = load i16, ptr %arrayidx170.i.i, align 1
  %642 = tail call i16 @llvm.bswap.i16(i16 %641) #21
  %643 = ptrtoint ptr %637 to i32
  call void @__asan_store2_noabort(i32 %643)
  store i16 %642, ptr %637, align 4
  %arrayidx172.i.i = getelementptr i8, ptr %buffer.0342.i, i32 10
  %644 = ptrtoint ptr %arrayidx172.i.i to i32
  call void @__asan_loadN_noabort(i32 %644, i32 2)
  %645 = load i16, ptr %arrayidx172.i.i, align 1
  %646 = tail call i16 @llvm.bswap.i16(i16 %645) #21
  %wObjectiveFocalLengthMax.i.i = getelementptr inbounds %struct.anon.112, ptr %637, i32 0, i32 1
  %647 = ptrtoint ptr %wObjectiveFocalLengthMax.i.i to i32
  call void @__asan_store2_noabort(i32 %647)
  store i16 %646, ptr %wObjectiveFocalLengthMax.i.i, align 2
  %arrayidx174.i.i = getelementptr i8, ptr %buffer.0342.i, i32 12
  %648 = ptrtoint ptr %arrayidx174.i.i to i32
  call void @__asan_loadN_noabort(i32 %648, i32 2)
  %649 = load i16, ptr %arrayidx174.i.i, align 1
  %650 = tail call i16 @llvm.bswap.i16(i16 %649) #21
  %wOcularFocalLength.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 12, i32 0, i32 1
  %651 = ptrtoint ptr %wOcularFocalLength.i.i to i32
  call void @__asan_store2_noabort(i32 %651)
  store i16 %650, ptr %wOcularFocalLength.i.i, align 64
  %arrayidx177.i.i = getelementptr i8, ptr %buffer.0342.i, i32 15
  %652 = call ptr @memcpy(ptr %add.ptr.i243421.i, ptr %arrayidx177.i.i, i32 %n.0.i.i)
  br label %if.end198.i.i

if.then184.i.i:                                   ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %653 = getelementptr %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 1
  %conv185.i.i = trunc i32 %n.0.i.i to i8
  %654 = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 12
  %655 = ptrtoint ptr %654 to i32
  call void @__asan_store1_noabort(i32 %655)
  store i8 %conv185.i.i, ptr %654, align 4
  %bmControls188.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 12, i32 0, i32 1
  %656 = ptrtoint ptr %bmControls188.i.i to i32
  call void @__asan_store4_noabort(i32 %656)
  store ptr %add.ptr.i243421.i, ptr %bmControls188.i.i, align 64
  %conv189.i.i = trunc i32 %p.0.i.i to i8
  %bTransportModeSize.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 12, i32 0, i32 2
  %657 = ptrtoint ptr %bTransportModeSize.i.i to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 %conv189.i.i, ptr %bTransportModeSize.i.i, align 4
  %add.ptr191.i.i = getelementptr i8, ptr %653, i32 %n.0.i.i
  %bmTransportModes.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 12, i32 0, i32 3
  %658 = ptrtoint ptr %bmTransportModes.i.i to i32
  call void @__asan_store4_noabort(i32 %658)
  store ptr %add.ptr191.i.i, ptr %bmTransportModes.i.i, align 8
  %arrayidx193.i.i = getelementptr i8, ptr %buffer.0342.i, i32 9
  %659 = call ptr @memcpy(ptr %add.ptr.i243421.i, ptr %arrayidx193.i.i, i32 %n.0.i.i)
  %add195.i.i = add nuw nsw i32 %n.0.i.i, 10
  %arrayidx196.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add195.i.i
  %660 = call ptr @memcpy(ptr %add.ptr191.i.i, ptr %arrayidx196.i.i, i32 %p.0.i.i)
  br label %if.end198.i.i

if.end198.i.i:                                    ; preds = %if.then184.i.i, %if.then168.i.i, %if.end162.i.i.if.end198.i.i_crit_edge
  %arrayidx199.i.i = getelementptr i8, ptr %buffer.0342.i, i32 7
  %661 = ptrtoint ptr %arrayidx199.i.i to i32
  call void @__asan_load1_noabort(i32 %661)
  %662 = load i8, ptr %arrayidx199.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %662)
  %cmp201.not.i.i = icmp eq i8 %662, 0
  br i1 %cmp201.not.i.i, label %if.else207.i.i, label %if.then203.i.i

if.then203.i.i:                                   ; preds = %if.end198.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv200.i.i = zext i8 %662 to i32
  %name.i110.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 5
  %call206.i.i = tail call i32 @usb_string(ptr noundef %137, i32 noundef %conv200.i.i, ptr noundef %name.i110.i, i32 noundef 64) #21
  br label %if.end239.i.i

if.else207.i.i:                                   ; preds = %if.end198.i.i
  %663 = ptrtoint ptr %type11.i237.i to i32
  call void @__asan_load2_noabort(i32 %663)
  %664 = load i16, ptr %type11.i237.i, align 2
  %trunc914.i.i = trunc i16 %664 to i15
  %665 = zext i15 %trunc914.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %665, ptr @__sancov_gen_cov_switch_values.312)
  switch i15 %trunc914.i.i, label %if.else231.i.i [
    i15 513, label %if.then213.i.i
    i15 514, label %if.then225.i.i
  ]

if.then213.i.i:                                   ; preds = %if.else207.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name214.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 5
  %666 = ptrtoint ptr %arrayidx155.i.i to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %arrayidx155.i.i, align 1
  %conv217.i.i = zext i8 %667 to i32
  %call218.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name214.i.i, ptr noundef nonnull @.str.70, i32 noundef %conv217.i.i) #21
  br label %if.end239.i.i

if.then225.i.i:                                   ; preds = %if.else207.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name226.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 5
  %668 = ptrtoint ptr %arrayidx155.i.i to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %arrayidx155.i.i, align 1
  %conv229.i.i = zext i8 %669 to i32
  %call230.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name226.i.i, ptr noundef nonnull @.str.71, i32 noundef %conv229.i.i) #21
  br label %if.end239.i.i

if.else231.i.i:                                   ; preds = %if.else207.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name232.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i230.i, i32 0, i32 5
  %670 = ptrtoint ptr %arrayidx155.i.i to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %arrayidx155.i.i, align 1
  %conv235.i.i = zext i8 %671 to i32
  %call236.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name232.i.i, ptr noundef nonnull @.str.72, i32 noundef %conv235.i.i) #21
  br label %if.end239.i.i

if.end239.i.i:                                    ; preds = %if.else231.i.i, %if.then225.i.i, %if.then213.i.i, %if.then203.i.i
  %672 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %prev.i, align 4
  %call.i.i.i113.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i230.i, ptr noundef %673, ptr noundef %entities) #21
  br i1 %call.i.i.i113.i, label %if.end.i.i.i115.i, label %if.end239.i.i.next_descriptor.i_crit_edge

if.end239.i.i.next_descriptor.i_crit_edge:        ; preds = %if.end239.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

if.end.i.i.i115.i:                                ; preds = %if.end239.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %674 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %674)
  store ptr %call9.i.i.i230.i, ptr %prev.i, align 4
  %675 = ptrtoint ptr %call9.i.i.i230.i to i32
  call void @__asan_store4_noabort(i32 %675)
  store ptr %entities, ptr %call9.i.i.i230.i, align 128
  %prev3.i.i.i114.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i230.i, i32 0, i32 1
  %676 = ptrtoint ptr %prev3.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %676)
  store ptr %673, ptr %prev3.i.i.i114.i, align 4
  %677 = ptrtoint ptr %673 to i32
  call void @__asan_store4_noabort(i32 %677)
  store volatile ptr %call9.i.i.i230.i, ptr %673, align 4
  br label %next_descriptor.i

sw.bb240.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %buflen.0351.i)
  %cmp241.i.i = icmp ult i32 %buflen.0351.i, 9
  br i1 %cmp241.i.i, label %do.body244.i.i, label %if.end260.i.i

do.body244.i.i:                                   ; preds = %sw.bb240.i.i
  %678 = load i32, ptr @uvc_dbg_param, align 4
  %and245.i.i = and i32 %678, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245.i.i)
  %tobool246.not.i.i = icmp eq i32 %and245.i.i, 0
  br i1 %tobool246.not.i.i, label %do.body244.i.i.do.body122_crit_edge, label %do.body244.i.i.do.body122.sink.split_crit_edge

do.body244.i.i.do.body122.sink.split_crit_edge:   ; preds = %do.body244.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122.sink.split

do.body244.i.i.do.body122_crit_edge:              ; preds = %do.body244.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end260.i.i:                                    ; preds = %sw.bb240.i.i
  %arrayidx261.i.i = getelementptr i8, ptr %buffer.0342.i, i32 4
  %679 = ptrtoint ptr %arrayidx261.i.i to i32
  call void @__asan_loadN_noabort(i32 %679, i32 2)
  %680 = load i16, ptr %arrayidx261.i.i, align 1
  %681 = tail call i16 @llvm.bswap.i16(i16 %680) #21
  %conv263.i.i = zext i16 %681 to i32
  %and264.i.i = and i32 %conv263.i.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264.i.i)
  %cmp265.i.i = icmp eq i32 %and264.i.i, 0
  br i1 %cmp265.i.i, label %do.body268.i.i, label %if.end287.i.i

do.body268.i.i:                                   ; preds = %if.end260.i.i
  %682 = load i32, ptr @uvc_dbg_param, align 4
  %and269.i.i = and i32 %682, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269.i.i)
  %tobool270.not.i.i = icmp eq i32 %and269.i.i, 0
  br i1 %tobool270.not.i.i, label %do.body268.i.i.next_descriptor.i_crit_edge, label %do.end274.i.i

do.body268.i.i.next_descriptor.i_crit_edge:       ; preds = %do.body268.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

do.end274.i.i:                                    ; preds = %do.body268.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %dev276.i.i = getelementptr inbounds %struct.usb_device, ptr %137, i32 0, i32 15
  %683 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %137, align 8
  %bInterfaceNumber279.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %141, i32 0, i32 2
  %685 = ptrtoint ptr %bInterfaceNumber279.i.i to i32
  call void @__asan_load1_noabort(i32 %685)
  %686 = load i8, ptr %bInterfaceNumber279.i.i, align 2
  %conv280.i.i = zext i8 %686 to i32
  %arrayidx281.i.i = getelementptr i8, ptr %buffer.0342.i, i32 3
  %687 = ptrtoint ptr %arrayidx281.i.i to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %arrayidx281.i.i, align 1
  %conv282.i.i = zext i8 %688 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev276.i.i, ptr noundef nonnull @.str.77, i32 noundef %684, i32 noundef %conv280.i.i, i32 noundef %conv282.i.i, i32 noundef %conv263.i.i) #25
  br label %next_descriptor.i

if.end287.i.i:                                    ; preds = %if.end260.i.i
  %arrayidx291.i.i = getelementptr i8, ptr %buffer.0342.i, i32 3
  %689 = ptrtoint ptr %arrayidx291.i.i to i32
  call void @__asan_load1_noabort(i32 %689)
  %690 = load i8, ptr %arrayidx291.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %691 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i811.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %691, i32 noundef 3520, i32 noundef 389) #26
  %cmp.i.i116.i = icmp eq ptr %call7.i.i.i811.i.i, null
  br i1 %cmp.i.i116.i, label %if.end287.i.i.do.body122_crit_edge, label %uvc_alloc_entity.exit.i.i

if.end287.i.i.do.body122_crit_edge:               ; preds = %if.end287.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

uvc_alloc_entity.exit.i.i:                        ; preds = %if.end287.i.i
  %conv292.i.i = zext i8 %690 to i16
  %or289.i.i = or i16 %681, -32768
  %id10.i.i117.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 0, i32 3
  %692 = ptrtoint ptr %id10.i.i117.i to i32
  call void @__asan_store2_noabort(i32 %692)
  store i16 %conv292.i.i, ptr %id10.i.i117.i, align 4
  %type11.i.i118.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 0, i32 4
  %693 = ptrtoint ptr %type11.i.i118.i to i32
  call void @__asan_store2_noabort(i32 %693)
  store i16 %or289.i.i, ptr %type11.i.i118.i, align 2
  %num_links.i.i119.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 0, i32 10
  %694 = ptrtoint ptr %num_links.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %694)
  store i32 0, ptr %num_links.i.i119.i, align 4
  %num_pads22.i.i120.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 0, i32 9
  %695 = ptrtoint ptr %num_pads22.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %695)
  store i32 1, ptr %num_pads22.i.i120.i, align 8
  %add.ptr.i815.i.i = getelementptr %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 1
  %pads.i.i121.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 0, i32 11
  %696 = ptrtoint ptr %pads.i.i121.i to i32
  call void @__asan_store4_noabort(i32 %696)
  store ptr %add.ptr.i815.i.i, ptr %pads.i.i121.i, align 8
  %flags.i.i122.i = getelementptr %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 1, i32 5, i32 4
  %697 = ptrtoint ptr %flags.i.i122.i to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 1, ptr %flags.i.i122.i, align 8
  %bNrInPins.i.i123.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 0, i32 13
  %698 = ptrtoint ptr %bNrInPins.i.i123.i to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 1, ptr %bNrInPins.i.i123.i, align 4
  %arrayidx47.i.i124.i = getelementptr %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 1, i32 5, i32 8
  %baSourceID.i.i125.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 0, i32 14
  %699 = ptrtoint ptr %baSourceID.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %699)
  store ptr %arrayidx47.i.i124.i, ptr %baSourceID.i.i125.i, align 8
  %arrayidx298.i.i = getelementptr i8, ptr %buffer.0342.i, i32 7
  %700 = ptrtoint ptr %arrayidx298.i.i to i32
  call void @__asan_load1_noabort(i32 %700)
  %701 = load i8, ptr %arrayidx298.i.i, align 1
  %702 = ptrtoint ptr %arrayidx47.i.i124.i to i32
  call void @__asan_store1_noabort(i32 %702)
  store i8 %701, ptr %arrayidx47.i.i124.i, align 4
  %arrayidx299.i.i = getelementptr i8, ptr %buffer.0342.i, i32 8
  %703 = ptrtoint ptr %arrayidx299.i.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %arrayidx299.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %704)
  %cmp301.not.i.i = icmp eq i8 %704, 0
  br i1 %cmp301.not.i.i, label %if.else309.i.i, label %if.then303.i.i

if.then303.i.i:                                   ; preds = %uvc_alloc_entity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv300.i.i = zext i8 %704 to i32
  %name306.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 0, i32 5
  %call308.i.i = tail call i32 @usb_string(ptr noundef %137, i32 noundef %conv300.i.i, ptr noundef %name306.i.i, i32 noundef 64) #21
  br label %if.end315.i.i

if.else309.i.i:                                   ; preds = %uvc_alloc_entity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name310.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i811.i.i, i32 0, i32 5
  %705 = ptrtoint ptr %arrayidx291.i.i to i32
  call void @__asan_load1_noabort(i32 %705)
  %706 = load i8, ptr %arrayidx291.i.i, align 1
  %conv313.i.i = zext i8 %706 to i32
  %call314.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name310.i.i, ptr noundef nonnull @.str.79, i32 noundef %conv313.i.i) #21
  br label %if.end315.i.i

if.end315.i.i:                                    ; preds = %if.else309.i.i, %if.then303.i.i
  %707 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %prev.i, align 4
  %call.i.i822.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i811.i.i, ptr noundef %708, ptr noundef %entities) #21
  br i1 %call.i.i822.i.i, label %if.end.i.i824.i.i, label %if.end315.i.i.next_descriptor.i_crit_edge

if.end315.i.i.next_descriptor.i_crit_edge:        ; preds = %if.end315.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

if.end.i.i824.i.i:                                ; preds = %if.end315.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %709 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %709)
  store ptr %call7.i.i.i811.i.i, ptr %prev.i, align 4
  %710 = ptrtoint ptr %call7.i.i.i811.i.i to i32
  call void @__asan_store4_noabort(i32 %710)
  store ptr %entities, ptr %call7.i.i.i811.i.i, align 8
  %prev3.i.i823.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i811.i.i, i32 0, i32 1
  %711 = ptrtoint ptr %prev3.i.i823.i.i to i32
  call void @__asan_store4_noabort(i32 %711)
  store ptr %708, ptr %prev3.i.i823.i.i, align 4
  %712 = ptrtoint ptr %708 to i32
  call void @__asan_store4_noabort(i32 %712)
  store volatile ptr %call7.i.i.i811.i.i, ptr %708, align 4
  br label %next_descriptor.i

sw.bb318.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %buflen.0351.i)
  %cmp319.i.i = icmp ugt i32 %buflen.0351.i, 4
  br i1 %cmp319.i.i, label %cond.end325.i.i, label %sw.bb318.i.i.do.body334.i.i_crit_edge

sw.bb318.i.i.do.body334.i.i_crit_edge:            ; preds = %sw.bb318.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body334.i.i

cond.end325.i.i:                                  ; preds = %sw.bb318.i.i
  %arrayidx322.i.i = getelementptr i8, ptr %buffer.0342.i, i32 4
  %713 = ptrtoint ptr %arrayidx322.i.i to i32
  call void @__asan_load1_noabort(i32 %713)
  %714 = load i8, ptr %arrayidx322.i.i, align 1
  %conv323.i.i = zext i8 %714 to i32
  %add330.i.i = add nuw nsw i32 %conv323.i.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add330.i.i, i32 %buflen.0351.i)
  %cmp331.i.i = icmp ugt i32 %add330.i.i, %buflen.0351.i
  br i1 %cmp331.i.i, label %cond.end325.i.i.do.body334.i.i_crit_edge, label %if.end350.i.i

cond.end325.i.i.do.body334.i.i_crit_edge:         ; preds = %cond.end325.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body334.i.i

do.body334.i.i:                                   ; preds = %cond.end325.i.i.do.body334.i.i_crit_edge, %sw.bb318.i.i.do.body334.i.i_crit_edge
  %715 = load i32, ptr @uvc_dbg_param, align 4
  %and335.i.i = and i32 %715, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335.i.i)
  %tobool336.not.i.i = icmp eq i32 %and335.i.i, 0
  br i1 %tobool336.not.i.i, label %do.body334.i.i.do.body122_crit_edge, label %do.body334.i.i.do.body122.sink.split_crit_edge

do.body334.i.i.do.body122.sink.split_crit_edge:   ; preds = %do.body334.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122.sink.split

do.body334.i.i.do.body122_crit_edge:              ; preds = %do.body334.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end350.i.i:                                    ; preds = %cond.end325.i.i
  %arrayidx353.i.i = getelementptr i8, ptr %buffer.0342.i, i32 3
  %716 = ptrtoint ptr %arrayidx353.i.i to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %arrayidx353.i.i, align 1
  %add355.i.i = add nuw nsw i32 %conv323.i.i, 1
  %add3.i146.i = add nuw nsw i32 %conv323.i.i, 356
  %mul4.i145.i = shl nuw nsw i32 %add355.i.i, 5
  %add6.i147.i = add nuw nsw i32 %add3.i146.i, %mul4.i145.i
  %call9.i.i.i172.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6.i147.i, i32 noundef 3520) #24
  %cmp.i175.i = icmp eq ptr %call9.i.i.i172.i, null
  br i1 %cmp.i175.i, label %if.end350.i.i.do.body122_crit_edge, label %if.end9.i180.i

if.end350.i.i.do.body122_crit_edge:               ; preds = %if.end350.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end9.i180.i:                                   ; preds = %if.end350.i.i
  %conv354.i.i = zext i8 %717 to i16
  %id10.i178.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 0, i32 3
  %718 = ptrtoint ptr %id10.i178.i to i32
  call void @__asan_store2_noabort(i32 %718)
  store i16 %conv354.i.i, ptr %id10.i178.i, align 4
  %type11.i179.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 0, i32 4
  %719 = ptrtoint ptr %type11.i179.i to i32
  call void @__asan_store2_noabort(i32 %719)
  store i16 4, ptr %type11.i179.i, align 2
  %num_links.i181.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 0, i32 10
  %720 = ptrtoint ptr %num_links.i181.i to i32
  call void @__asan_store4_noabort(i32 %720)
  store i32 0, ptr %num_links.i181.i, align 4
  %num_pads22.i182.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 0, i32 9
  %721 = ptrtoint ptr %num_pads22.i182.i to i32
  call void @__asan_store4_noabort(i32 %721)
  store i32 %add355.i.i, ptr %num_pads22.i182.i, align 16
  %add.ptr.i183.i = getelementptr %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 1
  %pads.i184.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 0, i32 11
  %722 = ptrtoint ptr %pads.i184.i to i32
  call void @__asan_store4_noabort(i32 %722)
  store ptr %add.ptr.i183.i, ptr %pads.i184.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %714)
  %cmp2491.not.i185.i = icmp eq i8 %714, 0
  br i1 %cmp2491.not.i185.i, label %if.end9.i180.i.for.end.i192.i_crit_edge, label %if.end9.i180.i.for.body.i190.i_crit_edge

if.end9.i180.i.for.body.i190.i_crit_edge:         ; preds = %if.end9.i180.i
  br label %for.body.i190.i

if.end9.i180.i.for.end.i192.i_crit_edge:          ; preds = %if.end9.i180.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i192.i

for.body.i190.i:                                  ; preds = %for.body.i190.i.for.body.i190.i_crit_edge, %if.end9.i180.i.for.body.i190.i_crit_edge
  %i.092.i186.i = phi i32 [ %inc.i188.i, %for.body.i190.i.for.body.i190.i_crit_edge ], [ 0, %if.end9.i180.i.for.body.i190.i_crit_edge ]
  %723 = ptrtoint ptr %pads.i184.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %pads.i184.i, align 8
  %flags.i187.i = getelementptr %struct.media_pad, ptr %724, i32 %i.092.i186.i, i32 4
  %725 = ptrtoint ptr %flags.i187.i to i32
  call void @__asan_store4_noabort(i32 %725)
  store i32 1, ptr %flags.i187.i, align 4
  %inc.i188.i = add nuw nsw i32 %i.092.i186.i, 1
  %exitcond.not.i189.i = icmp eq i32 %inc.i188.i, %conv323.i.i
  br i1 %exitcond.not.i189.i, label %for.body.i190.i.for.end.i192.i_crit_edge, label %for.body.i190.i.for.body.i190.i_crit_edge

for.body.i190.i.for.body.i190.i_crit_edge:        ; preds = %for.body.i190.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i190.i

for.body.i190.i.for.end.i192.i_crit_edge:         ; preds = %for.body.i190.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i192.i

for.end.i192.i:                                   ; preds = %for.body.i190.i.for.end.i192.i_crit_edge, %if.end9.i180.i.for.end.i192.i_crit_edge
  %726 = ptrtoint ptr %type11.i179.i to i32
  call void @__asan_load2_noabort(i32 %726)
  %727 = load i16, ptr %type11.i179.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %727)
  %cmp35.not.i191.i = icmp slt i16 %727, 0
  br i1 %cmp35.not.i191.i, label %for.end.i192.i.uvc_alloc_entity.exit200.i_crit_edge, label %if.then39.i194.i

for.end.i192.i.uvc_alloc_entity.exit200.i_crit_edge: ; preds = %for.end.i192.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_alloc_entity.exit200.i

if.then39.i194.i:                                 ; preds = %for.end.i192.i
  call void @__sanitizer_cov_trace_pc() #23
  %728 = ptrtoint ptr %pads.i184.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %pads.i184.i, align 8
  %flags43.i193.i = getelementptr %struct.media_pad, ptr %729, i32 %conv323.i.i, i32 4
  %730 = ptrtoint ptr %flags43.i193.i to i32
  call void @__asan_store4_noabort(i32 %730)
  store i32 2, ptr %flags43.i193.i, align 4
  br label %uvc_alloc_entity.exit200.i

uvc_alloc_entity.exit200.i:                       ; preds = %if.then39.i194.i, %for.end.i192.i.uvc_alloc_entity.exit200.i_crit_edge
  %bNrInPins.i195.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 0, i32 13
  %731 = ptrtoint ptr %bNrInPins.i195.i to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 %714, ptr %bNrInPins.i195.i, align 4
  %732 = ptrtoint ptr %pads.i184.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %pads.i184.i, align 8
  %arrayidx47.i196.i = getelementptr %struct.media_pad, ptr %733, i32 %add355.i.i
  %baSourceID.i197.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 0, i32 14
  %734 = ptrtoint ptr %baSourceID.i197.i to i32
  call void @__asan_store4_noabort(i32 %734)
  store ptr %arrayidx47.i196.i, ptr %baSourceID.i197.i, align 16
  %arrayidx362.i.i = getelementptr i8, ptr %buffer.0342.i, i32 5
  %735 = call ptr @memcpy(ptr %arrayidx47.i196.i, ptr %arrayidx362.i.i, i32 %conv323.i.i)
  %add363.i.i = add nuw nsw i32 %conv323.i.i, 5
  %arrayidx364.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add363.i.i
  %736 = ptrtoint ptr %arrayidx364.i.i to i32
  call void @__asan_load1_noabort(i32 %736)
  %737 = load i8, ptr %arrayidx364.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %737)
  %cmp366.not.i.i = icmp eq i8 %737, 0
  br i1 %cmp366.not.i.i, label %if.else375.i.i, label %if.then368.i.i

if.then368.i.i:                                   ; preds = %uvc_alloc_entity.exit200.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv365.i.i = zext i8 %737 to i32
  %name372.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 0, i32 5
  %call374.i.i = tail call i32 @usb_string(ptr noundef %137, i32 noundef %conv365.i.i, ptr noundef %name372.i.i, i32 noundef 64) #21
  br label %if.end381.i.i

if.else375.i.i:                                   ; preds = %uvc_alloc_entity.exit200.i
  call void @__sanitizer_cov_trace_pc() #23
  %name376.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i172.i, i32 0, i32 5
  %738 = ptrtoint ptr %arrayidx353.i.i to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %arrayidx353.i.i, align 1
  %conv379.i.i = zext i8 %739 to i32
  %call380.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name376.i.i, ptr noundef nonnull @.str.83, i32 noundef %conv379.i.i) #21
  br label %if.end381.i.i

if.end381.i.i:                                    ; preds = %if.else375.i.i, %if.then368.i.i
  %740 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %prev.i, align 4
  %call.i.i827.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i172.i, ptr noundef %741, ptr noundef %entities) #21
  br i1 %call.i.i827.i.i, label %if.end.i.i829.i.i, label %if.end381.i.i.next_descriptor.i_crit_edge

if.end381.i.i.next_descriptor.i_crit_edge:        ; preds = %if.end381.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

if.end.i.i829.i.i:                                ; preds = %if.end381.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %742 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %742)
  store ptr %call9.i.i.i172.i, ptr %prev.i, align 4
  %743 = ptrtoint ptr %call9.i.i.i172.i to i32
  call void @__asan_store4_noabort(i32 %743)
  store ptr %entities, ptr %call9.i.i.i172.i, align 128
  %prev3.i.i828.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i172.i, i32 0, i32 1
  %744 = ptrtoint ptr %prev3.i.i828.i.i to i32
  call void @__asan_store4_noabort(i32 %744)
  store ptr %741, ptr %prev3.i.i828.i.i, align 4
  %745 = ptrtoint ptr %741 to i32
  call void @__asan_store4_noabort(i32 %745)
  store volatile ptr %call9.i.i.i172.i, ptr %741, align 4
  br label %next_descriptor.i

sw.bb384.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %buflen.0351.i)
  %cmp385.i.i = icmp ugt i32 %buflen.0351.i, 7
  br i1 %cmp385.i.i, label %cond.true387.i.i, label %sw.bb384.i.i.cond.end391.i.i_crit_edge

sw.bb384.i.i.cond.end391.i.i_crit_edge:           ; preds = %sw.bb384.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end391.i.i

cond.true387.i.i:                                 ; preds = %sw.bb384.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx388.i.i = getelementptr i8, ptr %buffer.0342.i, i32 7
  %746 = ptrtoint ptr %arrayidx388.i.i to i32
  call void @__asan_load1_noabort(i32 %746)
  %747 = load i8, ptr %arrayidx388.i.i, align 1
  %conv389.i.i = zext i8 %747 to i32
  br label %cond.end391.i.i

cond.end391.i.i:                                  ; preds = %cond.true387.i.i, %sw.bb384.i.i.cond.end391.i.i_crit_edge
  %cond392.i.i = phi i32 [ %conv389.i.i, %cond.true387.i.i ], [ 0, %sw.bb384.i.i.cond.end391.i.i_crit_edge ]
  %748 = ptrtoint ptr %uvc_version393.i.i to i32
  call void @__asan_load2_noabort(i32 %748)
  %749 = load i16, ptr %uvc_version393.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 271, i16 %749)
  %cmp395.i.i = icmp ugt i16 %749, 271
  %cond397.i.i = select i1 %cmp395.i.i, i32 10, i32 9
  %add398.i.i = add nuw nsw i32 %cond397.i.i, %cond392.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add398.i.i, i32 %buflen.0351.i)
  %cmp399.i.i = icmp ugt i32 %add398.i.i, %buflen.0351.i
  br i1 %cmp399.i.i, label %do.body402.i.i, label %if.end418.i.i

do.body402.i.i:                                   ; preds = %cond.end391.i.i
  %750 = load i32, ptr @uvc_dbg_param, align 4
  %and403.i.i = and i32 %750, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and403.i.i)
  %tobool404.not.i.i = icmp eq i32 %and403.i.i, 0
  br i1 %tobool404.not.i.i, label %do.body402.i.i.do.body122_crit_edge, label %do.body402.i.i.do.body122.sink.split_crit_edge

do.body402.i.i.do.body122.sink.split_crit_edge:   ; preds = %do.body402.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122.sink.split

do.body402.i.i.do.body122_crit_edge:              ; preds = %do.body402.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end418.i.i:                                    ; preds = %cond.end391.i.i
  %arrayidx421.i.i = getelementptr i8, ptr %buffer.0342.i, i32 3
  %751 = ptrtoint ptr %arrayidx421.i.i to i32
  call void @__asan_load1_noabort(i32 %751)
  %752 = load i8, ptr %arrayidx421.i.i, align 1
  %add.i831.i.i = add nuw nsw i32 %cond392.i.i, 31
  %div86.i.i126.i = and i32 %add.i831.i.i, 480
  %add6.i.i127.i = add nuw nsw i32 %div86.i.i126.i, 421
  %call9.i.i.i855.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6.i.i127.i, i32 noundef 3520) #24
  %cmp.i858.i.i = icmp eq ptr %call9.i.i.i855.i.i, null
  br i1 %cmp.i858.i.i, label %if.end418.i.i.do.body122_crit_edge, label %if.end427.i.i

if.end418.i.i.do.body122_crit_edge:               ; preds = %if.end418.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end427.i.i:                                    ; preds = %if.end418.i.i
  %conv422.i.i = zext i8 %752 to i16
  %id10.i860.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 3
  %753 = ptrtoint ptr %id10.i860.i.i to i32
  call void @__asan_store2_noabort(i32 %753)
  store i16 %conv422.i.i, ptr %id10.i860.i.i, align 4
  %type11.i861.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 4
  %754 = ptrtoint ptr %type11.i861.i.i to i32
  call void @__asan_store2_noabort(i32 %754)
  store i16 5, ptr %type11.i861.i.i, align 2
  %guid20.i869.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 6
  %755 = call ptr @memcpy(ptr %guid20.i869.i.i, ptr @uvc_processing_guid, i32 16)
  %num_links.i871.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 10
  %756 = ptrtoint ptr %num_links.i871.i.i to i32
  call void @__asan_store4_noabort(i32 %756)
  store i32 0, ptr %num_links.i871.i.i, align 4
  %num_pads22.i872.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 9
  %757 = ptrtoint ptr %num_pads22.i872.i.i to i32
  call void @__asan_store4_noabort(i32 %757)
  store i32 2, ptr %num_pads22.i872.i.i, align 16
  %add.ptr.i873.i.i = getelementptr %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 1
  %add.ptr23.i.i128.i = getelementptr i8, ptr %add.ptr.i873.i.i, i32 %div86.i.i126.i
  %pads.i874.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 11
  %758 = ptrtoint ptr %pads.i874.i.i to i32
  call void @__asan_store4_noabort(i32 %758)
  store ptr %add.ptr23.i.i128.i, ptr %pads.i874.i.i, align 8
  %flags.i877.i.i = getelementptr %struct.media_pad, ptr %add.ptr23.i.i128.i, i32 0, i32 4
  %759 = ptrtoint ptr %flags.i877.i.i to i32
  call void @__asan_store4_noabort(i32 %759)
  store i32 1, ptr %flags.i877.i.i, align 32
  %flags43.i883.i.i = getelementptr %struct.media_pad, ptr %add.ptr23.i.i128.i, i32 1, i32 4
  %760 = ptrtoint ptr %flags43.i883.i.i to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 2, ptr %flags43.i883.i.i, align 32
  %bNrInPins.i885.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 13
  %761 = ptrtoint ptr %bNrInPins.i885.i.i to i32
  call void @__asan_store1_noabort(i32 %761)
  store i8 1, ptr %bNrInPins.i885.i.i, align 4
  %arrayidx47.i886.i.i = getelementptr %struct.media_pad, ptr %add.ptr23.i.i128.i, i32 2
  %baSourceID.i887.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 14
  %762 = ptrtoint ptr %baSourceID.i887.i.i to i32
  call void @__asan_store4_noabort(i32 %762)
  store ptr %arrayidx47.i886.i.i, ptr %baSourceID.i887.i.i, align 16
  %arrayidx429.i.i = getelementptr i8, ptr %buffer.0342.i, i32 4
  %763 = ptrtoint ptr %arrayidx429.i.i to i32
  call void @__asan_load1_noabort(i32 %763)
  %764 = load i8, ptr %arrayidx429.i.i, align 1
  %765 = ptrtoint ptr %arrayidx47.i886.i.i to i32
  call void @__asan_store1_noabort(i32 %765)
  store i8 %764, ptr %arrayidx47.i886.i.i, align 4
  %arrayidx430.i.i = getelementptr i8, ptr %buffer.0342.i, i32 5
  %766 = ptrtoint ptr %arrayidx430.i.i to i32
  call void @__asan_loadN_noabort(i32 %766, i32 2)
  %767 = load i16, ptr %arrayidx430.i.i, align 1
  %768 = tail call i16 @llvm.bswap.i16(i16 %767) #21
  %769 = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 12
  %770 = ptrtoint ptr %769 to i32
  call void @__asan_store2_noabort(i32 %770)
  store i16 %768, ptr %769, align 4
  %arrayidx432.i.i = getelementptr i8, ptr %buffer.0342.i, i32 7
  %771 = ptrtoint ptr %arrayidx432.i.i to i32
  call void @__asan_load1_noabort(i32 %771)
  %772 = load i8, ptr %arrayidx432.i.i, align 1
  %bControlSize433.i.i = getelementptr inbounds %struct.anon.115, ptr %769, i32 0, i32 1
  %773 = ptrtoint ptr %bControlSize433.i.i to i32
  call void @__asan_store1_noabort(i32 %773)
  store i8 %772, ptr %bControlSize433.i.i, align 2
  %bmControls435.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 12, i32 0, i32 1
  %774 = ptrtoint ptr %bmControls435.i.i to i32
  call void @__asan_store4_noabort(i32 %774)
  store ptr %add.ptr.i873.i.i, ptr %bmControls435.i.i, align 64
  %arrayidx437.i.i = getelementptr i8, ptr %buffer.0342.i, i32 8
  %775 = call ptr @memcpy(ptr %add.ptr.i873.i.i, ptr %arrayidx437.i.i, i32 %cond392.i.i)
  %776 = ptrtoint ptr %uvc_version393.i.i to i32
  call void @__asan_load2_noabort(i32 %776)
  %777 = load i16, ptr %uvc_version393.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 271, i16 %777)
  %cmp440.i.i = icmp ugt i16 %777, 271
  br i1 %cmp440.i.i, label %if.then442.i.i, label %if.end427.i.i.if.end445.i.i_crit_edge

if.end427.i.i.if.end445.i.i_crit_edge:            ; preds = %if.end427.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end445.i.i

if.then442.i.i:                                   ; preds = %if.end427.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %add443.i.i = add nuw nsw i32 %cond392.i.i, 9
  %arrayidx444.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add443.i.i
  %778 = ptrtoint ptr %arrayidx444.i.i to i32
  call void @__asan_load1_noabort(i32 %778)
  %779 = load i8, ptr %arrayidx444.i.i, align 1
  %bmVideoStandards.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 12, i32 0, i32 2
  %780 = ptrtoint ptr %bmVideoStandards.i.i to i32
  call void @__asan_store1_noabort(i32 %780)
  store i8 %779, ptr %bmVideoStandards.i.i, align 4
  br label %if.end445.i.i

if.end445.i.i:                                    ; preds = %if.then442.i.i, %if.end427.i.i.if.end445.i.i_crit_edge
  %add446.i.i = add nuw nsw i32 %cond392.i.i, 8
  %arrayidx447.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add446.i.i
  %781 = ptrtoint ptr %arrayidx447.i.i to i32
  call void @__asan_load1_noabort(i32 %781)
  %782 = load i8, ptr %arrayidx447.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %782)
  %cmp449.not.i.i = icmp eq i8 %782, 0
  br i1 %cmp449.not.i.i, label %if.else458.i.i, label %if.then451.i.i

if.then451.i.i:                                   ; preds = %if.end445.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv448.i.i = zext i8 %782 to i32
  %name455.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 5
  %call457.i.i = tail call i32 @usb_string(ptr noundef %137, i32 noundef %conv448.i.i, ptr noundef %name455.i.i, i32 noundef 64) #21
  br label %if.end464.i.i

if.else458.i.i:                                   ; preds = %if.end445.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name459.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i855.i.i, i32 0, i32 5
  %783 = ptrtoint ptr %arrayidx421.i.i to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %arrayidx421.i.i, align 1
  %conv462.i.i = zext i8 %784 to i32
  %call463.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name459.i.i, ptr noundef nonnull @.str.87, i32 noundef %conv462.i.i) #21
  br label %if.end464.i.i

if.end464.i.i:                                    ; preds = %if.else458.i.i, %if.then451.i.i
  %785 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %prev.i, align 4
  %call.i.i893.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i855.i.i, ptr noundef %786, ptr noundef %entities) #21
  br i1 %call.i.i893.i.i, label %if.end.i.i895.i.i, label %if.end464.i.i.next_descriptor.i_crit_edge

if.end464.i.i.next_descriptor.i_crit_edge:        ; preds = %if.end464.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

if.end.i.i895.i.i:                                ; preds = %if.end464.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %787 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %787)
  store ptr %call9.i.i.i855.i.i, ptr %prev.i, align 4
  %788 = ptrtoint ptr %call9.i.i.i855.i.i to i32
  call void @__asan_store4_noabort(i32 %788)
  store ptr %entities, ptr %call9.i.i.i855.i.i, align 128
  %prev3.i.i894.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i855.i.i, i32 0, i32 1
  %789 = ptrtoint ptr %prev3.i.i894.i.i to i32
  call void @__asan_store4_noabort(i32 %789)
  store ptr %786, ptr %prev3.i.i894.i.i, align 4
  %790 = ptrtoint ptr %786 to i32
  call void @__asan_store4_noabort(i32 %790)
  store volatile ptr %call9.i.i.i855.i.i, ptr %786, align 4
  br label %next_descriptor.i

sw.bb467.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %buflen.0351.i)
  %cmp468.i.i = icmp ugt i32 %buflen.0351.i, 21
  br i1 %cmp468.i.i, label %cond.true470.i.i, label %sw.bb467.i.i.cond.end474.i.i_crit_edge

sw.bb467.i.i.cond.end474.i.i_crit_edge:           ; preds = %sw.bb467.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end474.i.i

cond.true470.i.i:                                 ; preds = %sw.bb467.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx471.i.i = getelementptr i8, ptr %buffer.0342.i, i32 21
  %791 = ptrtoint ptr %arrayidx471.i.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %arrayidx471.i.i, align 1
  %conv472.i.i = zext i8 %792 to i32
  br label %cond.end474.i.i

cond.end474.i.i:                                  ; preds = %cond.true470.i.i, %sw.bb467.i.i.cond.end474.i.i_crit_edge
  %cond475.i.i = phi i32 [ %conv472.i.i, %cond.true470.i.i ], [ 0, %sw.bb467.i.i.cond.end474.i.i_crit_edge ]
  %add476.i.i = add nuw nsw i32 %cond475.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add476.i.i, i32 %buflen.0351.i)
  %cmp477.not.i.i = icmp ugt i32 %add476.i.i, %buflen.0351.i
  br i1 %cmp477.not.i.i, label %cond.end474.i.i.cond.end484.i.i_crit_edge, label %cond.true479.i.i

cond.end474.i.i.cond.end484.i.i_crit_edge:        ; preds = %cond.end474.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end484.i.i

cond.true479.i.i:                                 ; preds = %cond.end474.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %add480.i.i = add nuw nsw i32 %cond475.i.i, 22
  %arrayidx481.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add480.i.i
  %793 = ptrtoint ptr %arrayidx481.i.i to i32
  call void @__asan_load1_noabort(i32 %793)
  %794 = load i8, ptr %arrayidx481.i.i, align 1
  %conv482.i.i = zext i8 %794 to i32
  br label %cond.end484.i.i

cond.end484.i.i:                                  ; preds = %cond.true479.i.i, %cond.end474.i.i.cond.end484.i.i_crit_edge
  %cond485.i.i = phi i32 [ %conv482.i.i, %cond.true479.i.i ], [ 0, %cond.end474.i.i.cond.end484.i.i_crit_edge ]
  %add487.i.i = add nuw nsw i32 %cond485.i.i, %add476.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add487.i.i, i32 %buflen.0351.i)
  %cmp488.i.i = icmp ugt i32 %add487.i.i, %buflen.0351.i
  br i1 %cmp488.i.i, label %do.body491.i.i, label %if.end507.i.i

do.body491.i.i:                                   ; preds = %cond.end484.i.i
  %795 = load i32, ptr @uvc_dbg_param, align 4
  %and492.i.i = and i32 %795, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and492.i.i)
  %tobool493.not.i.i = icmp eq i32 %and492.i.i, 0
  br i1 %tobool493.not.i.i, label %do.body491.i.i.do.body122_crit_edge, label %do.body491.i.i.do.body122.sink.split_crit_edge

do.body491.i.i.do.body122.sink.split_crit_edge:   ; preds = %do.body491.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122.sink.split

do.body491.i.i.do.body122_crit_edge:              ; preds = %do.body491.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end507.i.i:                                    ; preds = %cond.end484.i.i
  %arrayidx510.i.i = getelementptr i8, ptr %buffer.0342.i, i32 3
  %796 = ptrtoint ptr %arrayidx510.i.i to i32
  call void @__asan_load1_noabort(i32 %796)
  %797 = load i8, ptr %arrayidx510.i.i, align 1
  %add512.i.i = add nuw nsw i32 %cond475.i.i, 1
  %add.i132.i = add nuw nsw i32 %cond485.i.i, 31
  %div86.i.i = and i32 %add.i132.i, 480
  %add3.i.i = add nuw nsw i32 %cond475.i.i, 356
  %mul4.i.i = shl nuw nsw i32 %add512.i.i, 5
  %add5.i.i = add nuw nsw i32 %add3.i.i, %mul4.i.i
  %add6.i.i = add nuw nsw i32 %add5.i.i, %div86.i.i
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6.i.i, i32 noundef 3520) #24
  %cmp.i139.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %cmp.i139.i, label %if.end507.i.i.do.body122_crit_edge, label %if.end9.i.i

if.end507.i.i.do.body122_crit_edge:               ; preds = %if.end507.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body122

if.end9.i.i:                                      ; preds = %if.end507.i.i
  %conv511.i.i = zext i8 %797 to i16
  %id10.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 3
  %798 = ptrtoint ptr %id10.i.i to i32
  call void @__asan_store2_noabort(i32 %798)
  store i16 %conv511.i.i, ptr %id10.i.i, align 4
  %type11.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 4
  %799 = ptrtoint ptr %type11.i.i to i32
  call void @__asan_store2_noabort(i32 %799)
  store i16 6, ptr %type11.i.i, align 2
  %num_links.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 10
  %800 = ptrtoint ptr %num_links.i.i to i32
  call void @__asan_store4_noabort(i32 %800)
  store i32 0, ptr %num_links.i.i, align 4
  %num_pads22.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 9
  %801 = ptrtoint ptr %num_pads22.i.i to i32
  call void @__asan_store4_noabort(i32 %801)
  store i32 %add512.i.i, ptr %num_pads22.i.i, align 16
  %add.ptr.i140.i = getelementptr %struct.uvc_entity, ptr %call9.i.i.i.i, i32 1
  %add.ptr23.i.i = getelementptr i8, ptr %add.ptr.i140.i, i32 %div86.i.i
  %pads.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 11
  %802 = ptrtoint ptr %pads.i.i to i32
  call void @__asan_store4_noabort(i32 %802)
  store ptr %add.ptr23.i.i, ptr %pads.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond475.i.i)
  %cmp2491.not.i.i = icmp eq i32 %cond475.i.i, 0
  br i1 %cmp2491.not.i.i, label %if.end9.i.i.for.end.i.i_crit_edge, label %if.end9.i.i.for.body.i143.i_crit_edge

if.end9.i.i.for.body.i143.i_crit_edge:            ; preds = %if.end9.i.i
  br label %for.body.i143.i

if.end9.i.i.for.end.i.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i.i

for.body.i143.i:                                  ; preds = %for.body.i143.i.for.body.i143.i_crit_edge, %if.end9.i.i.for.body.i143.i_crit_edge
  %i.092.i.i = phi i32 [ %inc.i141.i, %for.body.i143.i.for.body.i143.i_crit_edge ], [ 0, %if.end9.i.i.for.body.i143.i_crit_edge ]
  %803 = ptrtoint ptr %pads.i.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %pads.i.i, align 8
  %flags.i.i = getelementptr %struct.media_pad, ptr %804, i32 %i.092.i.i, i32 4
  %805 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %805)
  store i32 1, ptr %flags.i.i, align 4
  %inc.i141.i = add nuw nsw i32 %i.092.i.i, 1
  %exitcond.not.i142.i = icmp eq i32 %inc.i141.i, %cond475.i.i
  br i1 %exitcond.not.i142.i, label %for.body.i143.i.for.end.i.i_crit_edge, label %for.body.i143.i.for.body.i143.i_crit_edge

for.body.i143.i.for.body.i143.i_crit_edge:        ; preds = %for.body.i143.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i143.i

for.body.i143.i.for.end.i.i_crit_edge:            ; preds = %for.body.i143.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i143.i.for.end.i.i_crit_edge, %if.end9.i.i.for.end.i.i_crit_edge
  %806 = ptrtoint ptr %type11.i.i to i32
  call void @__asan_load2_noabort(i32 %806)
  %807 = load i16, ptr %type11.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %807)
  %cmp35.not.i.i = icmp slt i16 %807, 0
  br i1 %cmp35.not.i.i, label %for.end.i.i.if.end517.i.i_crit_edge, label %if.then39.i.i

for.end.i.i.if.end517.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end517.i.i

if.then39.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %808 = ptrtoint ptr %pads.i.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %pads.i.i, align 8
  %flags43.i.i = getelementptr %struct.media_pad, ptr %809, i32 %cond475.i.i, i32 4
  %810 = ptrtoint ptr %flags43.i.i to i32
  call void @__asan_store4_noabort(i32 %810)
  store i32 2, ptr %flags43.i.i, align 4
  br label %if.end517.i.i

if.end517.i.i:                                    ; preds = %if.then39.i.i, %for.end.i.i.if.end517.i.i_crit_edge
  %conv45.i.i = trunc i32 %cond475.i.i to i8
  %bNrInPins.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 13
  %811 = ptrtoint ptr %bNrInPins.i.i to i32
  call void @__asan_store1_noabort(i32 %811)
  store i8 %conv45.i.i, ptr %bNrInPins.i.i, align 4
  %812 = ptrtoint ptr %pads.i.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %pads.i.i, align 8
  %arrayidx47.i.i = getelementptr %struct.media_pad, ptr %813, i32 %add512.i.i
  %baSourceID.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 14
  %814 = ptrtoint ptr %baSourceID.i.i to i32
  call void @__asan_store4_noabort(i32 %814)
  store ptr %arrayidx47.i.i, ptr %baSourceID.i.i, align 16
  %guid.i129.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 6
  %arrayidx519.i.i = getelementptr i8, ptr %buffer.0342.i, i32 4
  %815 = call ptr @memcpy(ptr %guid.i129.i, ptr %arrayidx519.i.i, i32 16)
  %arrayidx520.i.i = getelementptr i8, ptr %buffer.0342.i, i32 20
  %816 = ptrtoint ptr %arrayidx520.i.i to i32
  call void @__asan_load1_noabort(i32 %816)
  %817 = load i8, ptr %arrayidx520.i.i, align 1
  %818 = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 12
  %819 = ptrtoint ptr %818 to i32
  call void @__asan_store1_noabort(i32 %819)
  store i8 %817, ptr %818, align 4
  %arrayidx522.i.i = getelementptr i8, ptr %buffer.0342.i, i32 22
  %820 = call ptr @memcpy(ptr %arrayidx47.i.i, ptr %arrayidx522.i.i, i32 %cond475.i.i)
  %add523.i.i = add nuw nsw i32 %cond475.i.i, 22
  %arrayidx524.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add523.i.i
  %821 = ptrtoint ptr %arrayidx524.i.i to i32
  call void @__asan_load1_noabort(i32 %821)
  %822 = load i8, ptr %arrayidx524.i.i, align 1
  %bControlSize525.i.i = getelementptr inbounds %struct.anon.117, ptr %818, i32 0, i32 1
  %823 = ptrtoint ptr %bControlSize525.i.i to i32
  call void @__asan_store1_noabort(i32 %823)
  store i8 %822, ptr %bControlSize525.i.i, align 1
  %bmControls527.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 12, i32 0, i32 1
  %824 = ptrtoint ptr %bmControls527.i.i to i32
  call void @__asan_store4_noabort(i32 %824)
  store ptr %add.ptr.i140.i, ptr %bmControls527.i.i, align 64
  %add529.i.i = add nuw nsw i32 %cond475.i.i, 23
  %arrayidx530.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add529.i.i
  %825 = call ptr @memcpy(ptr %add.ptr.i140.i, ptr %arrayidx530.i.i, i32 %cond485.i.i)
  %add532.i.i = add nuw nsw i32 %cond485.i.i, %add529.i.i
  %arrayidx533.i.i = getelementptr i8, ptr %buffer.0342.i, i32 %add532.i.i
  %826 = ptrtoint ptr %arrayidx533.i.i to i32
  call void @__asan_load1_noabort(i32 %826)
  %827 = load i8, ptr %arrayidx533.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %827)
  %cmp535.not.i.i = icmp eq i8 %827, 0
  br i1 %cmp535.not.i.i, label %if.else545.i.i, label %if.then537.i.i

if.then537.i.i:                                   ; preds = %if.end517.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv534.i.i = zext i8 %827 to i32
  %name542.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 5
  %call544.i.i = tail call i32 @usb_string(ptr noundef %137, i32 noundef %conv534.i.i, ptr noundef %name542.i.i, i32 noundef 64) #21
  br label %if.end551.i.i

if.else545.i.i:                                   ; preds = %if.end517.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %name546.i.i = getelementptr inbounds %struct.uvc_entity, ptr %call9.i.i.i.i, i32 0, i32 5
  %828 = ptrtoint ptr %arrayidx510.i.i to i32
  call void @__asan_load1_noabort(i32 %828)
  %829 = load i8, ptr %arrayidx510.i.i, align 1
  %conv549.i.i = zext i8 %829 to i32
  %call550.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name546.i.i, ptr noundef nonnull @.str.56, i32 noundef %conv549.i.i) #21
  br label %if.end551.i.i

if.end551.i.i:                                    ; preds = %if.else545.i.i, %if.then537.i.i
  %830 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %prev.i, align 4
  %call.i.i898.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i, ptr noundef %831, ptr noundef %entities) #21
  br i1 %call.i.i898.i.i, label %if.end.i.i900.i.i, label %if.end551.i.i.next_descriptor.i_crit_edge

if.end551.i.i.next_descriptor.i_crit_edge:        ; preds = %if.end551.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

if.end.i.i900.i.i:                                ; preds = %if.end551.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %832 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %832)
  store ptr %call9.i.i.i.i, ptr %prev.i, align 4
  %833 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %833)
  store ptr %entities, ptr %call9.i.i.i.i, align 128
  %prev3.i.i899.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i, i32 0, i32 1
  %834 = ptrtoint ptr %prev3.i.i899.i.i to i32
  call void @__asan_store4_noabort(i32 %834)
  store ptr %831, ptr %prev3.i.i899.i.i, align 4
  %835 = ptrtoint ptr %831 to i32
  call void @__asan_store4_noabort(i32 %835)
  store volatile ptr %call9.i.i.i.i, ptr %831, align 4
  br label %next_descriptor.i

do.body554.i.i:                                   ; preds = %if.end.i
  %836 = load i32, ptr @uvc_dbg_param, align 4
  %and555.i.i = and i32 %836, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and555.i.i)
  %tobool556.not.i.i = icmp eq i32 %and555.i.i, 0
  br i1 %tobool556.not.i.i, label %do.body554.i.i.next_descriptor.i_crit_edge, label %do.end560.i.i

do.body554.i.i.next_descriptor.i_crit_edge:       ; preds = %do.body554.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %next_descriptor.i

do.end560.i.i:                                    ; preds = %do.body554.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %dev562.i.i = getelementptr inbounds %struct.usb_device, ptr %137, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev562.i.i, ptr noundef nonnull @.str.91, i32 noundef %conv.i.i) #25
  br label %next_descriptor.i

next_descriptor.i:                                ; preds = %do.end560.i.i, %do.body554.i.i.next_descriptor.i_crit_edge, %if.end.i.i900.i.i, %if.end551.i.i.next_descriptor.i_crit_edge, %if.end.i.i895.i.i, %if.end464.i.i.next_descriptor.i_crit_edge, %if.end.i.i829.i.i, %if.end381.i.i.next_descriptor.i_crit_edge, %if.end.i.i824.i.i, %if.end315.i.i.next_descriptor.i_crit_edge, %do.end274.i.i, %do.body268.i.i.next_descriptor.i_crit_edge, %if.end.i.i.i115.i, %if.end239.i.i.next_descriptor.i_crit_edge, %do.end81.i.i, %do.body75.i.i.next_descriptor.i_crit_edge, %for.inc.i.i.next_descriptor.i_crit_edge, %if.end15.i.i.next_descriptor.i_crit_edge, %lor.lhs.false.i.next_descriptor.i_crit_edge, %if.end.i.i.i.i, %if.end75.i.i.next_descriptor.i_crit_edge, %if.end35.i.i.next_descriptor.i_crit_edge
  %837 = ptrtoint ptr %buffer.0342.i to i32
  call void @__asan_load1_noabort(i32 %837)
  %838 = load i8, ptr %buffer.0342.i, align 1
  %conv9.i = zext i8 %838 to i32
  %sub.i = sub i32 %buflen.0351.i, %conv9.i
  %add.ptr.i381 = getelementptr i8, ptr %buffer.0342.i, i32 %conv9.i
  %cmp.i = icmp sgt i32 %sub.i, 2
  br i1 %cmp.i, label %next_descriptor.i.while.body.i_crit_edge, label %next_descriptor.i.while.end.i_crit_edge

next_descriptor.i.while.end.i_crit_edge:          ; preds = %next_descriptor.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.i

next_descriptor.i.while.body.i_crit_edge:         ; preds = %next_descriptor.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body.i

while.end.i:                                      ; preds = %next_descriptor.i.while.end.i_crit_edge, %if.end108.while.end.i_crit_edge
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %67, i32 0, i32 4
  %839 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %840)
  %cmp13.i = icmp eq i8 %840, 1
  br i1 %cmp13.i, label %land.lhs.true.i, label %while.end.i.if.end134_crit_edge

while.end.i.if.end134_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end134

land.lhs.true.i:                                  ; preds = %while.end.i
  %841 = ptrtoint ptr %quirks14 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load i32, ptr %quirks14, align 4
  %and.i = and i32 %842, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %land.lhs.true.i.if.end134_crit_edge

land.lhs.true.i.if.end134_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end134

if.then16.i:                                      ; preds = %land.lhs.true.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %67, i32 0, i32 3
  %843 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %endpoint.i, align 4
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %844, i32 0, i32 3
  %845 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %845)
  %846 = load i8, ptr %bmAttributes.i.i.i, align 1
  %847 = and i8 %846, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %847)
  %cmp.i.not.i.i = icmp eq i8 %847, 3
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_int_in.exit.i, label %if.then16.i.if.end134_crit_edge

if.then16.i.if.end134_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end134

usb_endpoint_is_int_in.exit.i:                    ; preds = %if.then16.i
  %bEndpointAddress.i.i131.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %844, i32 0, i32 2
  %848 = ptrtoint ptr %bEndpointAddress.i.i131.i to i32
  call void @__asan_load1_noabort(i32 %848)
  %849 = load i8, ptr %bEndpointAddress.i.i131.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %849)
  %tobool21.not.i = icmp sgt i8 %849, -1
  br i1 %tobool21.not.i, label %usb_endpoint_is_int_in.exit.i.if.end134_crit_edge, label %land.lhs.true22.i

usb_endpoint_is_int_in.exit.i.if.end134_crit_edge: ; preds = %usb_endpoint_is_int_in.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end134

land.lhs.true22.i:                                ; preds = %usb_endpoint_is_int_in.exit.i
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %844, i32 0, i32 4
  %850 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %850, i32 2)
  %851 = load i16, ptr %wMaxPacketSize.i, align 1
  %852 = tail call i16 @llvm.bswap.i16(i16 %851) #21
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %852)
  %cmp24.i = icmp ugt i16 %852, 7
  br i1 %cmp24.i, label %land.lhs.true26.i, label %land.lhs.true22.i.if.end134_crit_edge

land.lhs.true22.i.if.end134_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end134

land.lhs.true26.i:                                ; preds = %land.lhs.true22.i
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %844, i32 0, i32 5
  %853 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %853)
  %854 = load i8, ptr %bInterval.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %854)
  %cmp28.not.i = icmp eq i8 %854, 0
  br i1 %cmp28.not.i, label %land.lhs.true26.i.if.end134_crit_edge, label %do.body.i

land.lhs.true26.i.if.end134_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end134

do.body.i:                                        ; preds = %land.lhs.true26.i
  %855 = load i32, ptr @uvc_dbg_param, align 4
  %and31.i = and i32 %855, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body.i.do.end39.i_crit_edge, label %do.end.i

do.body.i.do.end39.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end39.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  %856 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %call7.i.i, align 8
  %dev35.i = getelementptr inbounds %struct.usb_device, ptr %857, i32 0, i32 15
  %conv36.i = zext i8 %849 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev35.i, ptr noundef nonnull @.str.52, i32 noundef %conv36.i) #25
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end.i, %do.body.i.do.end39.i_crit_edge
  %int_ep.i = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 18
  %858 = ptrtoint ptr %int_ep.i to i32
  call void @__asan_store4_noabort(i32 %858)
  store ptr %844, ptr %int_ep.i, align 4
  br label %if.end134

do.body122.sink.split:                            ; preds = %do.body491.i.i.do.body122.sink.split_crit_edge, %do.body402.i.i.do.body122.sink.split_crit_edge, %do.body334.i.i.do.body122.sink.split_crit_edge, %do.body244.i.i.do.body122.sink.split_crit_edge, %do.body136.i.i.do.body122.sink.split_crit_edge, %do.body47.i.i.do.body122.sink.split_crit_edge, %do.body.i74.i.do.body122.sink.split_crit_edge
  %.str.54.sink = phi ptr [ @.str.57, %do.body.i74.i.do.body122.sink.split_crit_edge ], [ @.str.63, %do.body47.i.i.do.body122.sink.split_crit_edge ], [ @.str.63, %do.body136.i.i.do.body122.sink.split_crit_edge ], [ @.str.74, %do.body244.i.i.do.body122.sink.split_crit_edge ], [ @.str.81, %do.body334.i.i.do.body122.sink.split_crit_edge ], [ @.str.85, %do.body402.i.i.do.body122.sink.split_crit_edge ], [ @.str.54, %do.body491.i.i.do.body122.sink.split_crit_edge ]
  %dev499.i.i = getelementptr inbounds %struct.usb_device, ptr %137, i32 0, i32 15
  %859 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %137, align 8
  %bInterfaceNumber502.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %141, i32 0, i32 2
  %861 = ptrtoint ptr %bInterfaceNumber502.i.i to i32
  call void @__asan_load1_noabort(i32 %861)
  %862 = load i8, ptr %bInterfaceNumber502.i.i, align 2
  %conv503.i.i = zext i8 %862 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev499.i.i, ptr noundef nonnull %.str.54.sink, i32 noundef %860, i32 noundef %conv503.i.i) #25
  br label %do.body122

do.body122:                                       ; preds = %do.body122.sink.split, %if.end507.i.i.do.body122_crit_edge, %do.body491.i.i.do.body122_crit_edge, %if.end418.i.i.do.body122_crit_edge, %do.body402.i.i.do.body122_crit_edge, %if.end350.i.i.do.body122_crit_edge, %do.body334.i.i.do.body122_crit_edge, %if.end287.i.i.do.body122_crit_edge, %do.body244.i.i.do.body122_crit_edge, %if.end152.i.i.do.body122_crit_edge, %do.body136.i.i.do.body122_crit_edge, %do.body47.i.i.do.body122_crit_edge, %do.body.i74.i.do.body122_crit_edge
  %863 = load i32, ptr @uvc_dbg_param, align 4
  %and123 = and i32 %863, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %do.body122.error_crit_edge, label %do.end128

do.body122.error_crit_edge:                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

do.end128:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #23
  %864 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %call7.i.i, align 8
  %dev130 = getelementptr inbounds %struct.usb_device, ptr %865, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev130, ptr noundef nonnull @.str.23) #25
  br label %error

if.end134:                                        ; preds = %do.end39.i, %land.lhs.true26.i.if.end134_crit_edge, %land.lhs.true22.i.if.end134_crit_edge, %usb_endpoint_is_int_in.exit.i.if.end134_crit_edge, %if.then16.i.if.end134_crit_edge, %land.lhs.true.i.if.end134_crit_edge, %while.end.i.if.end134_crit_edge
  %866 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %call7.i.i, align 8
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %867, i32 0, i32 15
  %call.i382 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1.i, ptr noundef nonnull @.str.186, i32 noundef 1) #21
  %tobool.not.i.i383 = icmp eq ptr %call.i382, null
  %cmp.i.i384 = icmp ugt ptr %call.i382, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i385 = or i1 %tobool.not.i.i383, %cmp.i.i384
  br i1 %spec.select.i.i385, label %if.then.i, label %if.end.i387

if.then.i:                                        ; preds = %if.end134
  %cmp136 = icmp slt ptr %call.i382, null
  %or.cond = and i1 %cmp.i.i384, %cmp136
  br i1 %or.cond, label %if.then.i.do.body139_crit_edge, label %if.then.i.do.end154_crit_edge

if.then.i.do.end154_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end154

if.then.i.do.body139_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body139

if.end.i387:                                      ; preds = %if.end134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %868 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i386 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %868, i32 noundef 3520, i32 noundef 388) #26
  %cmp.i43.i = icmp eq ptr %call7.i.i.i.i386, null
  br i1 %cmp.i43.i, label %if.end.i387.do.body139_crit_edge, label %if.end6.i

if.end.i387.do.body139_crit_edge:                 ; preds = %if.end.i387
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body139

if.end6.i:                                        ; preds = %if.end.i387
  %id10.i.i388 = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 3
  %869 = ptrtoint ptr %id10.i.i388 to i32
  call void @__asan_store2_noabort(i32 %869)
  store i16 256, ptr %id10.i.i388, align 4
  %type11.i.i389 = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 4
  %870 = ptrtoint ptr %type11.i.i389 to i32
  call void @__asan_store2_noabort(i32 %870)
  store i16 32766, ptr %type11.i.i389, align 2
  %guid.i.i390 = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 6
  %871 = call ptr @memcpy(ptr %guid.i.i390, ptr @uvc_gpio_guid, i32 16)
  %num_links.i.i391 = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 10
  %872 = ptrtoint ptr %num_links.i.i391 to i32
  call void @__asan_store4_noabort(i32 %872)
  store i32 0, ptr %num_links.i.i391, align 4
  %num_pads22.i.i392 = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 9
  %873 = ptrtoint ptr %num_pads22.i.i392 to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 0, ptr %num_pads22.i.i392, align 8
  %add.ptr23.i.i393 = getelementptr %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 1, i32 5, i32 8
  %pads.i.i394 = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 11
  %874 = ptrtoint ptr %pads.i.i394 to i32
  call void @__asan_store4_noabort(i32 %874)
  store ptr %add.ptr23.i.i393, ptr %pads.i.i394, align 8
  %bNrInPins.i.i395 = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 13
  %875 = ptrtoint ptr %bNrInPins.i.i395 to i32
  call void @__asan_store1_noabort(i32 %875)
  store i8 0, ptr %bNrInPins.i.i395, align 4
  %baSourceID.i.i396 = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 14
  %876 = ptrtoint ptr %baSourceID.i.i396 to i32
  call void @__asan_store4_noabort(i32 %876)
  store ptr %add.ptr23.i.i393, ptr %baSourceID.i.i396, align 8
  %call7.i = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call.i382) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i397 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i397, label %do.end.i398, label %if.end14.i

do.end.i398:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #23
  %877 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %call7.i.i, align 8
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %878, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.187, i32 noundef %call7.i) #25
  br label %do.body139

if.end14.i:                                       ; preds = %if.end6.i
  %879 = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 12
  %gpio_privacy15.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 12, i32 0, i32 2
  %880 = ptrtoint ptr %gpio_privacy15.i to i32
  call void @__asan_store4_noabort(i32 %880)
  store ptr %call.i382, ptr %gpio_privacy15.i, align 4
  %irq16.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 12, i32 0, i32 3
  %881 = ptrtoint ptr %irq16.i to i32
  call void @__asan_store4_noabort(i32 %881)
  store i32 %call7.i, ptr %irq16.i, align 8
  %882 = ptrtoint ptr %879 to i32
  call void @__asan_store1_noabort(i32 %882)
  store i8 1, ptr %879, align 4
  %add.ptr.i399 = getelementptr i8, ptr %call7.i.i.i.i386, i32 356
  %bmControls.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 12, i32 0, i32 1
  %883 = ptrtoint ptr %bmControls.i to i32
  call void @__asan_store4_noabort(i32 %883)
  store ptr %add.ptr.i399, ptr %bmControls.i, align 8
  %884 = ptrtoint ptr %add.ptr.i399 to i32
  call void @__asan_store1_noabort(i32 %884)
  store i8 1, ptr %add.ptr.i399, align 4
  %get_cur.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 16
  %885 = ptrtoint ptr %get_cur.i to i32
  call void @__asan_store4_noabort(i32 %885)
  store ptr @uvc_gpio_get_cur, ptr %get_cur.i, align 8
  %get_info.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 15
  %886 = ptrtoint ptr %get_info.i to i32
  call void @__asan_store4_noabort(i32 %886)
  store ptr @uvc_gpio_get_info, ptr %get_info.i, align 4
  %name.i = getelementptr inbounds %struct.uvc_entity, ptr %call7.i.i.i.i386, i32 0, i32 5
  %call18.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.189, i32 noundef 64) #21
  %887 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %prev.i, align 4
  %call.i.i.i400 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i386, ptr noundef %888, ptr noundef %entities) #21
  br i1 %call.i.i.i400, label %if.end.i.i.i, label %if.end14.i.list_add_tail.exit.i_crit_edge

if.end14.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #23
  %889 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %889)
  store ptr %call7.i.i.i.i386, ptr %prev.i, align 4
  %890 = ptrtoint ptr %call7.i.i.i.i386 to i32
  call void @__asan_store4_noabort(i32 %890)
  store ptr %entities, ptr %call7.i.i.i.i386, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i386, i32 0, i32 1
  %891 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %891)
  store ptr %888, ptr %prev3.i.i.i, align 4
  %892 = ptrtoint ptr %888 to i32
  call void @__asan_store4_noabort(i32 %892)
  store volatile ptr %call7.i.i.i.i386, ptr %888, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end14.i.list_add_tail.exit.i_crit_edge
  %gpio_unit.i = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 24
  %893 = ptrtoint ptr %gpio_unit.i to i32
  call void @__asan_store4_noabort(i32 %893)
  store ptr %call7.i.i.i.i386, ptr %gpio_unit.i, align 8
  br label %do.end154

do.body139:                                       ; preds = %do.end.i398, %if.end.i387.do.body139_crit_edge, %if.then.i.do.body139_crit_edge
  %894 = load i32, ptr @uvc_dbg_param, align 4
  %and140 = and i32 %894, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.error_crit_edge, label %do.end145

do.body139.error_crit_edge:                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

do.end145:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #23
  %895 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %call7.i.i, align 8
  %dev147 = getelementptr inbounds %struct.usb_device, ptr %896, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev147, ptr noundef nonnull @.str.26) #25
  br label %error

do.end154:                                        ; preds = %list_add_tail.exit.i, %if.then.i.do.end154_crit_edge
  %897 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %call7.i.i, align 8
  %dev156 = getelementptr inbounds %struct.usb_device, ptr %898, i32 0, i32 15
  %uvc_version = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 12
  %899 = ptrtoint ptr %uvc_version to i32
  call void @__asan_load2_noabort(i32 %899)
  %900 = load i16, ptr %uvc_version, align 8
  %conv157 = zext i16 %900 to i32
  %901 = lshr i32 %conv157, 8
  %and160 = and i32 %conv157, 255
  %902 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %product, align 8
  %tobool162.not = icmp eq ptr %903, null
  %spec.select377 = select i1 %tobool162.not, ptr @.str.32, ptr %903
  %idVendor169 = getelementptr i8, ptr %1, i32 936
  %904 = ptrtoint ptr %idVendor169 to i32
  call void @__asan_load2_noabort(i32 %904)
  %905 = load i16, ptr %idVendor169, align 8
  %906 = tail call i16 @llvm.bswap.i16(i16 %905)
  %conv170 = zext i16 %906 to i32
  %idProduct172 = getelementptr i8, ptr %1, i32 938
  %907 = ptrtoint ptr %idProduct172 to i32
  call void @__asan_load2_noabort(i32 %907)
  %908 = load i16, ptr %idProduct172, align 2
  %909 = tail call i16 @llvm.bswap.i16(i16 %908)
  %conv173 = zext i16 %909 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev156, ptr noundef nonnull @.str.29, i32 noundef %901, i32 noundef %and160, ptr noundef nonnull %spec.select377, i32 noundef %conv170, i32 noundef %conv173) #25
  %910 = ptrtoint ptr %quirks14 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load i32, ptr %quirks14, align 4
  %912 = ptrtoint ptr %info6 to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %info6, align 4
  %914 = ptrtoint ptr %913 to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %913, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %911, i32 %915)
  %cmp177.not = icmp eq i32 %911, %915
  br i1 %cmp177.not, label %do.end154.if.end191_crit_edge, label %do.end182

do.end154.if.end191_crit_edge:                    ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end191

do.end182:                                        ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #23
  %916 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %call7.i.i, align 8
  %dev184 = getelementptr inbounds %struct.usb_device, ptr %917, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev184, ptr noundef nonnull @.str.34, i32 noundef %911) #25
  %918 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %call7.i.i, align 8
  %dev190 = getelementptr inbounds %struct.usb_device, ptr %919, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev190, ptr noundef nonnull @.str.37) #25
  br label %if.end191

if.end191:                                        ; preds = %do.end182, %do.end154.if.end191_crit_edge
  %920 = ptrtoint ptr %info6 to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %info6, align 4
  %uvc_version193 = getelementptr inbounds %struct.uvc_device_info, ptr %921, i32 0, i32 2
  %922 = ptrtoint ptr %uvc_version193 to i32
  call void @__asan_load2_noabort(i32 %922)
  %923 = load i16, ptr %uvc_version193, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %923)
  %tobool194.not = icmp eq i16 %923, 0
  br i1 %tobool194.not, label %if.end191.if.end210_crit_edge, label %if.then195

if.end191.if.end210_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end210

if.then195:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #23
  %924 = ptrtoint ptr %uvc_version to i32
  call void @__asan_store2_noabort(i32 %924)
  store i16 %923, ptr %uvc_version, align 8
  %925 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %call7.i.i, align 8
  %dev203 = getelementptr inbounds %struct.usb_device, ptr %926, i32 0, i32 15
  %conv205 = zext i16 %923 to i32
  %927 = lshr i32 %conv205, 8
  %and209 = and i32 %conv205, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev203, ptr noundef nonnull @.str.40, i32 noundef %927, i32 noundef %and209) #25
  br label %if.end210

if.end210:                                        ; preds = %if.then195, %if.end191.if.end210_crit_edge
  %call213 = tail call i32 @v4l2_device_register(ptr noundef %dev94, ptr noundef %vdev) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %cmp214 = icmp slt i32 %call213, 0
  br i1 %cmp214, label %if.end210.error_crit_edge, label %if.end217

if.end210.error_crit_edge:                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end217:                                        ; preds = %if.end210
  %call218 = tail call fastcc i32 @uvc_scan_device(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %cmp219 = icmp slt i32 %call218, 0
  br i1 %cmp219, label %if.end217.error_crit_edge, label %if.end222

if.end217.error_crit_edge:                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end222:                                        ; preds = %if.end217
  %call223 = tail call i32 @uvc_ctrl_init_device(ptr noundef nonnull %call7.i.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %cmp224 = icmp slt i32 %call223, 0
  br i1 %cmp224, label %if.end222.error_crit_edge, label %if.end227

if.end222.error_crit_edge:                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end227:                                        ; preds = %if.end222
  %call228 = tail call fastcc i32 @uvc_register_chains(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %cmp229 = icmp slt i32 %call228, 0
  br i1 %cmp229, label %if.end227.error_crit_edge, label %if.end232

if.end227.error_crit_edge:                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end232:                                        ; preds = %if.end227
  %call234 = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp235 = icmp slt i32 %call234, 0
  br i1 %cmp235, label %if.end232.error_crit_edge, label %if.end238

if.end232.error_crit_edge:                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end238:                                        ; preds = %if.end232
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %928 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %928)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call239 = tail call i32 @uvc_status_init(ptr noundef nonnull %call7.i.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %do.end245, label %if.end238.if.end248_crit_edge

if.end238.if.end248_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end248

do.end245:                                        ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #23
  %929 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %call7.i.i, align 8
  %dev247 = getelementptr inbounds %struct.usb_device, ptr %930, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev247, ptr noundef nonnull @.str.43, i32 noundef %call239) #25
  br label %if.end248

if.end248:                                        ; preds = %do.end245, %if.end238.if.end248_crit_edge
  %call249 = tail call fastcc i32 @uvc_gpio_init_irq(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %cmp250 = icmp slt i32 %call249, 0
  br i1 %cmp250, label %do.end255, label %do.body259

do.end255:                                        ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #23
  %931 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %call7.i.i, align 8
  %dev257 = getelementptr inbounds %struct.usb_device, ptr %932, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev257, ptr noundef nonnull @.str.46, i32 noundef %call249) #25
  br label %error

do.body259:                                       ; preds = %if.end248
  %933 = load i32, ptr @uvc_dbg_param, align 4
  %and260 = and i32 %933, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %do.body259.do.end270_crit_edge, label %do.end265

do.body259.do.end270_crit_edge:                   ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end270

do.end265:                                        ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #23
  %934 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %call7.i.i, align 8
  %dev267 = getelementptr inbounds %struct.usb_device, ptr %935, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev267, ptr noundef nonnull @.str.49) #25
  br label %do.end270

do.end270:                                        ; preds = %do.end265, %do.body259.do.end270_crit_edge
  tail call void @usb_enable_autosuspend(ptr noundef %add.ptr.i) #21
  br label %cleanup

error:                                            ; preds = %do.end255, %if.end232.error_crit_edge, %if.end227.error_crit_edge, %if.end222.error_crit_edge, %if.end217.error_crit_edge, %if.end210.error_crit_edge, %do.end145, %do.body139.error_crit_edge, %do.end128, %do.body122.error_crit_edge
  tail call fastcc void @uvc_unregister_video(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @kref_put(ptr noundef %ref)
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end270, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %error ], [ 0, %do.end270 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceSubClass, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @uvc_unregister_video(ptr noundef %1)
  %ref = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 17
  tail call fastcc void @kref_put(ptr noundef %ref)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_suspend(ptr noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev2, ptr noundef nonnull @.str.285, i32 noundef %conv) #25
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %cur_altsetting5 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %9 = ptrtoint ptr %cur_altsetting5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_altsetting5, align 4
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bInterfaceSubClass, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp = icmp eq i8 %12, 1
  br i1 %cmp, label %if.then9, label %if.end14

if.then9:                                         ; preds = %do.end4
  %lock = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #21
  %users = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %if.then9.if.end12_crit_edge, label %if.then11

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end12

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @uvc_status_stop(ptr noundef %1) #21
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #21
  br label %cleanup

if.end14:                                         ; preds = %do.end4
  %streams = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end14
  %stream.0.in = phi ptr [ %streams, %if.end14 ], [ %stream.0, %for.body.for.cond_crit_edge ]
  %15 = ptrtoint ptr %stream.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %stream.0 = load ptr, ptr %stream.0.in, align 8
  %cmp16.not = icmp eq ptr %stream.0, %streams
  br i1 %cmp16.not, label %do.body29, label %for.body

for.body:                                         ; preds = %for.cond
  %intf18 = getelementptr inbounds %struct.uvc_streaming, ptr %stream.0, i32 0, i32 5
  %16 = ptrtoint ptr %intf18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf18, align 8
  %cmp19 = icmp eq ptr %17, %intf
  br i1 %cmp19, label %if.then21, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %call22 = tail call i32 @uvc_video_suspend(ptr noundef %stream.0) #21
  br label %cleanup

do.body29:                                        ; preds = %for.cond
  %18 = load i32, ptr @uvc_dbg_param, align 4
  %and30 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.cleanup_crit_edge, label %do.end35

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #23
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev37, ptr noundef nonnull @.str.288) #25
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.body29.cleanup_crit_edge, %if.then21, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call22, %if.then21 ], [ -22, %do.end35 ], [ -22, %do.body29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__uvc_resume(ptr noundef %intf, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_reset_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__uvc_resume(ptr noundef %intf, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uvc_cleanup() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @usb_deregister(ptr noundef nonnull @uvc_driver) #21
  tail call void @uvc_debugfs_cleanup() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_debugfs_cleanup() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @uvc_debugfs_init() #21
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @uvc_driver, ptr noundef null, ptr noundef nonnull @.str.5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @uvc_debugfs_cleanup() #21
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !593
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #21
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #21, !srcloc !594
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !592

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #21
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !595
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -928
  tail call void @uvc_status_cleanup(ptr noundef %add.ptr.i) #21
  tail call void @uvc_ctrl_cleanup_device(ptr noundef %add.ptr.i) #21
  %intf.i = getelementptr i8, ptr %kref, i32 -924
  %1 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf.i, align 4
  tail call void @usb_put_intf(ptr noundef %2) #21
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  tail call void @usb_put_dev(ptr noundef %4) #21
  %mdev.i = getelementptr i8, ptr %kref, i32 -768
  tail call void @media_device_cleanup(ptr noundef %mdev.i) #21
  %chains.i = getelementptr i8, ptr %kref, i32 -16
  %5 = ptrtoint ptr %chains.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chains.i, align 8
  %cmp.i.not66.i = icmp eq ptr %6, %chains.i
  br i1 %cmp.i.not66.i, label %if.then.for.end.i_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %p.067.i = phi ptr [ %n.0.i, %for.body.i.for.body.i_crit_edge ], [ %6, %if.then.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %p.067.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.0.i = load ptr, ptr %p.067.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %p.067.i, i32 -4
  tail call void @kfree(ptr noundef %add.ptr5.i) #21
  %cmp.i.not.i = icmp eq ptr %n.0.i, %chains.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %entities.i = getelementptr i8, ptr %kref, i32 -24
  %8 = ptrtoint ptr %entities.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entities.i, align 8
  %cmp.i62.not68.i = icmp eq ptr %9, %entities.i
  br i1 %cmp.i62.not68.i, label %for.end.i.for.end20.i_crit_edge, label %for.end.i.for.body14.i_crit_edge

for.end.i.for.body14.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body14.i

for.end.i.for.end20.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end20.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.end.i.for.body14.i_crit_edge
  %p.169.i = phi ptr [ %n.1.i, %for.body14.i.for.body14.i_crit_edge ], [ %9, %for.end.i.for.body14.i_crit_edge ]
  %10 = ptrtoint ptr %p.169.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %n.1.i = load ptr, ptr %p.169.i, align 4
  tail call void @uvc_mc_cleanup_entity(ptr noundef %p.169.i) #21
  tail call void @kfree(ptr noundef %p.169.i) #21
  %cmp.i62.not.i = icmp eq ptr %n.1.i, %entities.i
  br i1 %cmp.i62.not.i, label %for.body14.i.for.end20.i_crit_edge, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body14.i

for.body14.i.for.end20.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end20.i

for.end20.i:                                      ; preds = %for.body14.i.for.end20.i_crit_edge, %for.end.i.for.end20.i_crit_edge
  %streams.i = getelementptr i8, ptr %kref, i32 -8
  %11 = ptrtoint ptr %streams.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %streams.i, align 8
  %cmp.i64.not71.i = icmp eq ptr %12, %streams.i
  br i1 %cmp.i64.not71.i, label %for.end20.i.uvc_delete.exit_crit_edge, label %for.end20.i.for.body28.i_crit_edge

for.end20.i.for.body28.i_crit_edge:               ; preds = %for.end20.i
  br label %for.body28.i

for.end20.i.uvc_delete.exit_crit_edge:            ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_delete.exit

for.body28.i:                                     ; preds = %uvc_stream_delete.exit.i.for.body28.i_crit_edge, %for.end20.i.for.body28.i_crit_edge
  %p.272.i = phi ptr [ %n.273.i, %uvc_stream_delete.exit.i.for.body28.i_crit_edge ], [ %12, %for.end20.i.for.body28.i_crit_edge ]
  %13 = ptrtoint ptr %p.272.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %n.273.i = load ptr, ptr %p.272.i, align 4
  %intf32.i = getelementptr inbounds %struct.uvc_streaming, ptr %p.272.i, i32 0, i32 5
  %14 = ptrtoint ptr %intf32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf32.i, align 8
  tail call void @usb_driver_release_interface(ptr noundef nonnull @uvc_driver, ptr noundef %15) #21
  %async_wq.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %p.272.i, i32 0, i32 19
  %16 = ptrtoint ptr %async_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %async_wq.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %for.body28.i.uvc_stream_delete.exit.i_crit_edge, label %if.then.i.i

for.body28.i.uvc_stream_delete.exit.i_crit_edge:  ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_stream_delete.exit.i

if.then.i.i:                                      ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @destroy_workqueue(ptr noundef nonnull %17) #21
  br label %uvc_stream_delete.exit.i

uvc_stream_delete.exit.i:                         ; preds = %if.then.i.i, %for.body28.i.uvc_stream_delete.exit.i_crit_edge
  %mutex.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %p.272.i, i32 0, i32 16
  tail call void @mutex_destroy(ptr noundef %mutex.i.i) #21
  %18 = ptrtoint ptr %intf32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf32.i, align 8
  tail call void @usb_put_intf(ptr noundef %19) #21
  %format.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %p.272.i, i32 0, i32 11
  %20 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %format.i.i, align 8
  tail call void @kfree(ptr noundef %21) #21
  %bmaControls.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %p.272.i, i32 0, i32 8, i32 4
  %22 = ptrtoint ptr %bmaControls.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmaControls.i.i, align 4
  tail call void @kfree(ptr noundef %23) #21
  tail call void @kfree(ptr noundef %p.272.i) #21
  %cmp.i64.not.i = icmp eq ptr %n.273.i, %streams.i
  br i1 %cmp.i64.not.i, label %uvc_stream_delete.exit.i.uvc_delete.exit_crit_edge, label %uvc_stream_delete.exit.i.for.body28.i_crit_edge

uvc_stream_delete.exit.i.for.body28.i_crit_edge:  ; preds = %uvc_stream_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body28.i

uvc_stream_delete.exit.i.uvc_delete.exit_crit_edge: ; preds = %uvc_stream_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_delete.exit

uvc_delete.exit:                                  ; preds = %uvc_stream_delete.exit.i.uvc_delete.exit_crit_edge, %for.end20.i.uvc_delete.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #21
  br label %return

return:                                           ; preds = %uvc_delete.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_status_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_ctrl_cleanup_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_mc_cleanup_entity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvc_clock_param_set(ptr nocapture noundef readonly %val, ptr nocapture noundef readnone %kp) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncasecmp(ptr noundef %val, ptr noundef nonnull @.str.8, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %spec.select.idx = select i1 %cmp, i32 6, i32 0
  %spec.select = getelementptr i8, ptr %val, i32 %spec.select.idx
  %call1 = tail call i32 @strcasecmp(ptr noundef %spec.select, ptr noundef nonnull @.str.9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end9

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @strcasecmp(ptr noundef %spec.select, ptr noundef nonnull @.str.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.else.if.end9_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end9

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %storemerge = phi i32 [ 1, %entry.if.end9_crit_edge ], [ 0, %if.else.if.end9_crit_edge ]
  store i32 %storemerge, ptr @uvc_clock_param, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.else.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvc_clock_param_get(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @uvc_clock_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %1 = call ptr @memcpy(ptr %buffer, ptr @.str.11, i32 16)
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %2 = call ptr @memcpy(ptr %buffer, ptr @.str.12, i32 15)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 15, %if.then ], [ 14, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_scan_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %entities = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %0)
  %term.0140 = load ptr, ptr %entities, align 4
  %cmp.not141 = icmp eq ptr %term.0140, %entities
  br i1 %cmp.not141, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chains = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 15, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %term.0142 = phi ptr [ %term.0140, %for.body.lr.ph ], [ %term.0, %for.inc.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.uvc_entity, ptr %term.0142, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %cmp7.not = icmp sgt i16 %2, -1
  br i1 %cmp7.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.end:                                           ; preds = %for.body
  %chain9 = getelementptr inbounds %struct.uvc_entity, ptr %term.0142, i32 0, i32 1
  %3 = ptrtoint ptr %chain9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chain9, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  %prev = getelementptr inbounds %struct.uvc_entity, ptr %term.0142, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.end14:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 144) #26
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %entities.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %entities.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entities.i, ptr %entities.i, align 4
  %prev.i.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entities.i, ptr %prev.i.i, align 8
  %ctrl_mutex.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %ctrl_mutex.i, ptr noundef nonnull @.str.195, ptr noundef nonnull @uvc_alloc_chain.__key) #21
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %call7.i.i.i, align 8
  %prio.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @v4l2_prio_init(ptr noundef %prio.i) #21
  %flags = getelementptr inbounds %struct.uvc_entity, ptr %term.0142, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %flags, align 4
  %13 = load i32, ptr @uvc_dbg_param, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end18.do.end4.i_crit_edge, label %do.end.i

if.end18.do.end4.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev2.i, ptr noundef nonnull @.str.196) #25
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end18.do.end4.i_crit_edge
  %cmp.not78.i = icmp eq ptr %term.0142, null
  br i1 %cmp.not78.i, label %do.end4.i.do.body_crit_edge, label %while.body.lr.ph.i

do.end4.i.do.body_crit_edge:                      ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

while.body.lr.ph.i:                               ; preds = %do.end4.i
  %selector.i.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %uvc_entity_by_id.exit189.i.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %prev.080.i = phi ptr [ null, %while.body.lr.ph.i ], [ %entity.079.i, %uvc_entity_by_id.exit189.i.i.while.body.i_crit_edge ]
  %entity.079.i = phi ptr [ %term.0142, %while.body.lr.ph.i ], [ %entity.0.i181.i.i, %uvc_entity_by_id.exit189.i.i.while.body.i_crit_edge ]
  %chain5.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.079.i, i32 0, i32 1
  %18 = ptrtoint ptr %chain5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chain5.i, align 4
  %tobool6.not.i = icmp eq ptr %19, null
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %while.body.i.do.body11.i_crit_edge

while.body.i.do.body11.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body11.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %prev8.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.079.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev8.i, align 4
  %tobool9.not.i = icmp eq ptr %21, null
  br i1 %tobool9.not.i, label %if.end24.i, label %lor.lhs.false.i.do.body11.i_crit_edge

lor.lhs.false.i.do.body11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body11.i

do.body11.i:                                      ; preds = %lor.lhs.false.i.do.body11.i_crit_edge, %while.body.i.do.body11.i_crit_edge
  %22 = load i32, ptr @uvc_dbg_param, align 4
  %and12.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.if.then22_crit_edge, label %do.end17.i

do.body11.i.if.then22_crit_edge:                  ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then22

do.end17.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #23
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev20.i = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %id.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.079.i, i32 0, i32 3
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev20.i, ptr noundef nonnull @.str.199, i32 noundef %conv.i) #25
  br label %if.then22

if.end24.i:                                       ; preds = %lor.lhs.false.i
  %call.i = tail call fastcc i32 @uvc_scan_chain_entity(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %entity.079.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25.i = icmp slt i32 %call.i, 0
  br i1 %cmp25.i, label %if.end24.i.if.then22_crit_edge, label %if.end28.i

if.end24.i.if.then22_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then22

if.end28.i:                                       ; preds = %if.end24.i
  %call29.i = tail call fastcc i32 @uvc_scan_chain_forward(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %entity.079.i, ptr noundef %prev.080.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end28.i.if.then22_crit_edge, label %if.end33.i

if.end28.i.if.then22_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then22

if.end33.i:                                       ; preds = %if.end28.i
  %type.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.079.i, i32 0, i32 4
  %29 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %type.i.i, align 2
  %31 = and i16 %30, 32767
  %and.i.i = zext i16 %31 to i32
  %32 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %and.i.i, label %if.end33.i.if.then22_crit_edge [
    i32 6, label %if.end33.i.sw.epilog.i.i_crit_edge
    i32 5, label %if.end33.i.sw.epilog.i.i_crit_edge264
    i32 4, label %sw.bb2.i.i
    i32 512, label %if.end33.i.sw.bb100.i.i_crit_edge
    i32 513, label %if.end33.i.sw.bb100.i.i_crit_edge265
    i32 514, label %if.end33.i.sw.bb100.i.i_crit_edge266
    i32 768, label %if.end33.i.sw.bb100.i.i_crit_edge267
    i32 769, label %if.end33.i.sw.bb100.i.i_crit_edge268
    i32 770, label %if.end33.i.sw.bb100.i.i_crit_edge269
    i32 257, label %if.end33.i.sw.bb100.i.i_crit_edge270
  ]

if.end33.i.sw.bb100.i.i_crit_edge270:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb100.i.i

if.end33.i.sw.bb100.i.i_crit_edge269:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb100.i.i

if.end33.i.sw.bb100.i.i_crit_edge268:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb100.i.i

if.end33.i.sw.bb100.i.i_crit_edge267:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb100.i.i

if.end33.i.sw.bb100.i.i_crit_edge266:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb100.i.i

if.end33.i.sw.bb100.i.i_crit_edge265:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb100.i.i

if.end33.i.sw.bb100.i.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb100.i.i

if.end33.i.sw.epilog.i.i_crit_edge264:            ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i.i

if.end33.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i.i

if.end33.i.if.then22_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then22

sw.bb2.i.i:                                       ; preds = %if.end33.i
  %bNrInPins.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.079.i, i32 0, i32 13
  %33 = ptrtoint ptr %bNrInPins.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bNrInPins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp.i.i = icmp eq i8 %34, 1
  br i1 %cmp.i.i, label %sw.bb2.i.i.sw.epilog.i.i_crit_edge, label %do.body.i.i

sw.bb2.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i.i

do.body.i.i:                                      ; preds = %sw.bb2.i.i
  %bNrInPins.i.i.le = getelementptr inbounds %struct.uvc_entity, ptr %entity.079.i, i32 0, i32 13
  %35 = load i32, ptr @uvc_dbg_param, align 4
  %and8.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end13.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end13.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end13.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256) #25
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end13.i.i_crit_edge
  %36 = ptrtoint ptr %selector.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entity.079.i, ptr %selector.i.i, align 8
  %37 = ptrtoint ptr %bNrInPins.i.i.le to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bNrInPins.i.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp16211.not.i.i = icmp eq i8 %38, 0
  br i1 %cmp16211.not.i.i, label %do.end13.i.i.do.body88.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end13.i.i.do.body88.i.i_crit_edge:             ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body88.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end13.i.i
  %baSourceID18.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.079.i, i32 0, i32 14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0212.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  %39 = ptrtoint ptr %baSourceID18.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %baSourceID18.i.i, align 4
  %arrayidx19.i.i = getelementptr i8, ptr %40, i32 %i.0212.i.i
  %41 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx19.i.i, align 1
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i.i, align 8
  %entities.i.i.i = getelementptr inbounds %struct.uvc_device, ptr %44, i32 0, i32 14
  %45 = zext i8 %42 to i16
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.i.i
  %entity.0.in.i.i.i = phi ptr [ %entities.i.i.i, %for.body.i.i ], [ %entity.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %entity.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %entity.0.i.i.i = load ptr, ptr %entity.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %entity.0.i.i.i, %entities.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.do.body35.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.do.body35.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body35.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %id2.i.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.0.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %id2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %id2.i.i.i, align 4
  %cmp3.i.i.i = icmp eq i16 %48, %45
  br i1 %cmp3.i.i.i, label %uvc_entity_by_id.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i.i

uvc_entity_by_id.exit.i.i:                        ; preds = %for.body.i.i.i
  %cmp22.i.i = icmp eq ptr %entity.0.i.i.i, null
  br i1 %cmp22.i.i, label %uvc_entity_by_id.exit.i.i.do.body35.i.i_crit_edge, label %lor.lhs.false.i.i

uvc_entity_by_id.exit.i.i.do.body35.i.i_crit_edge: ; preds = %uvc_entity_by_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body35.i.i

lor.lhs.false.i.i:                                ; preds = %uvc_entity_by_id.exit.i.i
  %type24.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.0.i.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %type24.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %type24.i.i, align 2
  %conv25.i.i = zext i16 %50 to i32
  %and26.i.i = and i32 %conv25.i.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %cmp27.not.i.i = icmp ne i32 %and26.i.i, 0
  %and31.i.i = and i32 %conv25.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %cmp32.i.i = icmp eq i32 %and31.i.i, 0
  %or.cond.i.i = and i1 %cmp27.not.i.i, %cmp32.i.i
  br i1 %or.cond.i.i, label %if.end49.i.i, label %lor.lhs.false.i.i.do.body35.i.i_crit_edge

lor.lhs.false.i.i.do.body35.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body35.i.i

do.body35.i.i:                                    ; preds = %lor.lhs.false.i.i.do.body35.i.i_crit_edge, %uvc_entity_by_id.exit.i.i.do.body35.i.i_crit_edge, %for.cond.i.i.i.do.body35.i.i_crit_edge
  %51 = load i32, ptr @uvc_dbg_param, align 4
  %and36.i.i = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %do.body35.i.i.if.then22_crit_edge, label %do.end41.i.i

do.body35.i.i.if.then22_crit_edge:                ; preds = %do.body35.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then22

do.end41.i.i:                                     ; preds = %do.body35.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %44, align 8
  %dev43.i.i = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 15
  %id44.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.079.i, i32 0, i32 3
  %54 = ptrtoint ptr %id44.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %id44.i.i, align 4
  %conv45.i.i = zext i16 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev43.i.i, ptr noundef nonnull @.str.259, i32 noundef %conv45.i.i, i32 noundef %i.0212.i.i) #25
  br label %if.then22

if.end49.i.i:                                     ; preds = %lor.lhs.false.i.i
  %chain50.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.0.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %chain50.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chain50.i.i, align 4
  %tobool51.not.i.i = icmp eq ptr %57, null
  br i1 %tobool51.not.i.i, label %lor.lhs.false52.i.i, label %if.end49.i.i.do.body56.i.i_crit_edge

if.end49.i.i.do.body56.i.i_crit_edge:             ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body56.i.i

lor.lhs.false52.i.i:                              ; preds = %if.end49.i.i
  %prev.i.i90 = getelementptr inbounds %struct.uvc_entity, ptr %entity.0.i.i.i, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i90, align 4
  %tobool54.not.i.i = icmp eq ptr %59, null
  br i1 %tobool54.not.i.i, label %do.body72.i.i, label %lor.lhs.false52.i.i.do.body56.i.i_crit_edge

lor.lhs.false52.i.i.do.body56.i.i_crit_edge:      ; preds = %lor.lhs.false52.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body56.i.i

do.body56.i.i:                                    ; preds = %lor.lhs.false52.i.i.do.body56.i.i_crit_edge, %if.end49.i.i.do.body56.i.i_crit_edge
  %60 = load i32, ptr @uvc_dbg_param, align 4
  %and57.i.i = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  br i1 %tobool58.not.i.i, label %do.body56.i.i.if.then22_crit_edge, label %do.end62.i.i

do.body56.i.i.if.then22_crit_edge:                ; preds = %do.body56.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then22

do.end62.i.i:                                     ; preds = %do.body56.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %61 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %44, align 8
  %dev65.i.i = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  %conv67.i.i = zext i8 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev65.i.i, ptr noundef nonnull @.str.199, i32 noundef %conv67.i.i) #25
  br label %if.then22

do.body72.i.i:                                    ; preds = %lor.lhs.false52.i.i
  %63 = load i32, ptr @uvc_dbg_param, align 4
  %and73.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i.i)
  %tobool74.not.i.i = icmp eq i32 %and73.i.i, 0
  br i1 %tobool74.not.i.i, label %do.body72.i.i.do.end85.i.i_crit_edge, label %do.end78.i.i

do.body72.i.i.do.end85.i.i_crit_edge:             ; preds = %do.body72.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end85.i.i

do.end78.i.i:                                     ; preds = %do.body72.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv81.i.i = zext i8 %42 to i32
  %call82.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, i32 noundef %conv81.i.i) #25
  br label %do.end85.i.i

do.end85.i.i:                                     ; preds = %do.end78.i.i, %do.body72.i.i.do.end85.i.i_crit_edge
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chain50.i.i, ptr noundef %65, ptr noundef %entities.i) #21
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end85.i.i.list_add_tail.exit.i.i_crit_edge

do.end85.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %do.end85.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end85.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %chain50.i.i, ptr %prev.i.i, align 8
  %67 = ptrtoint ptr %chain50.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %entities.i, ptr %chain50.i.i, align 4
  %68 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev.i.i90, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %chain50.i.i, ptr %65, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %do.end85.i.i.list_add_tail.exit.i.i_crit_edge
  %call87.i.i = tail call fastcc i32 @uvc_scan_chain_forward(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %entity.0.i.i.i, ptr noundef nonnull %entity.079.i) #21
  %inc.i.i = add nuw nsw i32 %i.0212.i.i, 1
  %70 = ptrtoint ptr %bNrInPins.i.i.le to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bNrInPins.i.i.le, align 4
  %conv15.i.i = zext i8 %71 to i32
  %cmp16.i.i = icmp ult i32 %inc.i.i, %conv15.i.i
  br i1 %cmp16.i.i, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge, label %list_add_tail.exit.i.i.do.body88.i.i_crit_edge

list_add_tail.exit.i.i.do.body88.i.i_crit_edge:   ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body88.i.i

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i

do.body88.i.i:                                    ; preds = %list_add_tail.exit.i.i.do.body88.i.i_crit_edge, %do.end13.i.i.do.body88.i.i_crit_edge
  %72 = load i32, ptr @uvc_dbg_param, align 4
  %and89.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i.i)
  %tobool90.not.i.i = icmp eq i32 %and89.i.i, 0
  br i1 %tobool90.not.i.i, label %do.body88.i.i.do.body_crit_edge, label %do.end94.i.i

do.body88.i.i.do.body_crit_edge:                  ; preds = %do.body88.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

do.end94.i.i:                                     ; preds = %do.body88.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %call96.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267) #25
  br label %do.body

sw.bb100.i.i:                                     ; preds = %if.end33.i.sw.bb100.i.i_crit_edge, %if.end33.i.sw.bb100.i.i_crit_edge265, %if.end33.i.sw.bb100.i.i_crit_edge266, %if.end33.i.sw.bb100.i.i_crit_edge267, %if.end33.i.sw.bb100.i.i_crit_edge268, %if.end33.i.sw.bb100.i.i_crit_edge269, %if.end33.i.sw.bb100.i.i_crit_edge270
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %cmp110.not.i.i = icmp sgt i16 %30, -1
  br i1 %cmp110.not.i.i, label %sw.bb100.i.i.do.body_crit_edge, label %sw.bb100.i.i.sw.epilog.i.i_crit_edge

sw.bb100.i.i.sw.epilog.i.i_crit_edge:             ; preds = %sw.bb100.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i.i

sw.bb100.i.i.do.body_crit_edge:                   ; preds = %sw.bb100.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

sw.epilog.i.i:                                    ; preds = %sw.bb100.i.i.sw.epilog.i.i_crit_edge, %sw.bb2.i.i.sw.epilog.i.i_crit_edge, %if.end33.i.sw.epilog.i.i_crit_edge, %if.end33.i.sw.epilog.i.i_crit_edge264
  %id.0.in.in.in.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.079.i, i32 0, i32 14
  %73 = ptrtoint ptr %id.0.in.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %id.0.in.in.i.i = load ptr, ptr %id.0.in.in.in.i.i, align 4
  %74 = ptrtoint ptr %id.0.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %id.0.in.i.i = load i8, ptr %id.0.in.in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %id.0.in.i.i)
  %cmp115.i.i = icmp eq i8 %id.0.in.i.i, 0
  br i1 %cmp115.i.i, label %sw.epilog.i.i.do.body_crit_edge, label %if.end118.i.i

sw.epilog.i.i.do.body_crit_edge:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

if.end118.i.i:                                    ; preds = %sw.epilog.i.i
  %75 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call7.i.i.i, align 8
  %entities.i179.i.i = getelementptr inbounds %struct.uvc_device, ptr %76, i32 0, i32 14
  %77 = zext i8 %id.0.in.i.i to i16
  br label %for.cond.i183.i.i

for.cond.i183.i.i:                                ; preds = %for.body.i187.i.i.for.cond.i183.i.i_crit_edge, %if.end118.i.i
  %entity.0.in.i180.i.i = phi ptr [ %entities.i179.i.i, %if.end118.i.i ], [ %entity.0.i181.i.i, %for.body.i187.i.i.for.cond.i183.i.i_crit_edge ]
  %78 = ptrtoint ptr %entity.0.in.i180.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %entity.0.i181.i.i = load ptr, ptr %entity.0.in.i180.i.i, align 4
  %cmp.not.i182.i.i = icmp eq ptr %entity.0.i181.i.i, %entities.i179.i.i
  br i1 %cmp.not.i182.i.i, label %for.cond.i183.i.i.do.body124.i.i_crit_edge, label %for.body.i187.i.i

for.cond.i183.i.i.do.body124.i.i_crit_edge:       ; preds = %for.cond.i183.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body124.i.i

for.body.i187.i.i:                                ; preds = %for.cond.i183.i.i
  %id2.i184.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.0.i181.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %id2.i184.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %id2.i184.i.i, align 4
  %cmp3.i186.i.i = icmp eq i16 %80, %77
  br i1 %cmp3.i186.i.i, label %uvc_entity_by_id.exit189.i.i, label %for.body.i187.i.i.for.cond.i183.i.i_crit_edge

for.body.i187.i.i.for.cond.i183.i.i_crit_edge:    ; preds = %for.body.i187.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i183.i.i

uvc_entity_by_id.exit189.i.i:                     ; preds = %for.body.i187.i.i
  %cmp121.i.i = icmp eq ptr %entity.0.i181.i.i, null
  br i1 %cmp121.i.i, label %uvc_entity_by_id.exit189.i.i.do.body124.i.i_crit_edge, label %uvc_entity_by_id.exit189.i.i.while.body.i_crit_edge

uvc_entity_by_id.exit189.i.i.while.body.i_crit_edge: ; preds = %uvc_entity_by_id.exit189.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body.i

uvc_entity_by_id.exit189.i.i.do.body124.i.i_crit_edge: ; preds = %uvc_entity_by_id.exit189.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body124.i.i

do.body124.i.i:                                   ; preds = %uvc_entity_by_id.exit189.i.i.do.body124.i.i_crit_edge, %for.cond.i183.i.i.do.body124.i.i_crit_edge
  %81 = load i32, ptr @uvc_dbg_param, align 4
  %and125.i.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i.i)
  %tobool126.not.i.i = icmp eq i32 %and125.i.i, 0
  br i1 %tobool126.not.i.i, label %do.body124.i.i.if.then22_crit_edge, label %do.end130.i.i

do.body124.i.i.if.then22_crit_edge:               ; preds = %do.body124.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then22

do.end130.i.i:                                    ; preds = %do.body124.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %id.0.i73.i = zext i8 %id.0.in.i.i to i32
  %82 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %76, align 8
  %dev133.i.i = getelementptr inbounds %struct.usb_device, ptr %83, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev133.i.i, ptr noundef nonnull @.str.270, i32 noundef %id.0.i73.i) #25
  br label %if.then22

if.then22:                                        ; preds = %do.end130.i.i, %do.body124.i.i.if.then22_crit_edge, %do.end62.i.i, %do.body56.i.i.if.then22_crit_edge, %do.end41.i.i, %do.body35.i.i.if.then22_crit_edge, %if.end33.i.if.then22_crit_edge, %if.end28.i.if.then22_crit_edge, %if.end24.i.if.then22_crit_edge, %do.end17.i, %do.body11.i.if.then22_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #21
  br label %for.inc

do.body:                                          ; preds = %sw.epilog.i.i.do.body_crit_edge, %sw.bb100.i.i.do.body_crit_edge, %do.end94.i.i, %do.body88.i.i.do.body_crit_edge, %do.end4.i.do.body_crit_edge
  %84 = load i32, ptr @uvc_dbg_param, align 4
  %and24 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body.do.end32_crit_edge, label %do.end

do.body.do.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end32

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 8
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %86, i32 0, i32 15
  tail call fastcc void @uvc_print_chain(ptr noundef nonnull %call7.i.i.i)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev28, ptr noundef nonnull @.str.190, ptr noundef nonnull @uvc_print_chain.buffer) #25
  br label %do.end32

do.end32:                                         ; preds = %do.end, %do.body.do.end32_crit_edge
  %list33 = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i, align 4
  %call.i.i91 = tail call zeroext i1 @__list_add_valid(ptr noundef %list33, ptr noundef %88, ptr noundef %chains) #21
  br i1 %call.i.i91, label %if.end.i.i, label %do.end32.for.inc_crit_edge

do.end32.for.inc_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.end.i.i:                                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #23
  %89 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %list33, ptr %prev.i, align 4
  %90 = ptrtoint ptr %list33 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %chains, ptr %list33, align 4
  %prev3.i.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev3.i.i, align 8
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %list33, ptr %88, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %do.end32.for.inc_crit_edge, %if.then22, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %93 = ptrtoint ptr %term.0142 to i32
  call void @__asan_load4_noabort(i32 %93)
  %term.0 = load ptr, ptr %term.0142, align 4
  %cmp.not = icmp eq ptr %term.0, %entities
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %chains39 = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 15
  %94 = ptrtoint ptr %chains39 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %chains39, align 4
  %cmp.i92.not = icmp eq ptr %95, %chains39
  br i1 %cmp.i92.not, label %if.then42, label %for.end.if.end44_crit_edge

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end44

if.then42:                                        ; preds = %for.end
  %96 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %96)
  %entity.06.i = load ptr, ptr %entities, align 4
  %cmp.not7.i = icmp eq ptr %entity.06.i, %entities
  br i1 %cmp.not7.i, label %if.then42.if.end44_crit_edge, label %if.then42.for.body.i_crit_edge

if.then42.for.body.i_crit_edge:                   ; preds = %if.then42
  br label %for.body.i

if.then42.if.end44_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end44

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then42.for.body.i_crit_edge
  %entity.010.i = phi ptr [ %entity.0.i, %for.inc.i.for.body.i_crit_edge ], [ %entity.06.i, %if.then42.for.body.i_crit_edge ]
  %iterm.09.i = phi ptr [ %iterm.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then42.for.body.i_crit_edge ]
  %oterm.08.i = phi ptr [ %oterm.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then42.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.010.i, i32 0, i32 4
  %97 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %type.i, align 2
  %conv.i95 = zext i16 %98 to i32
  %and.i96 = and i32 %conv.i95, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %cmp2.not.i = icmp ne i32 %and.i96, 0
  %and6.i = and i32 %conv.i95, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 0
  %or.cond.i = and i1 %cmp2.not.i, %cmp7.i
  br i1 %or.cond.i, label %if.then.i, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10.i

if.then.i:                                        ; preds = %for.body.i
  %tobool.not.i97 = icmp eq ptr %iterm.09.i, null
  br i1 %tobool.not.i97, label %if.then.i.if.end10.i_crit_edge, label %if.then.i.if.end44_crit_edge

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end44

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %for.body.i.if.end10.i_crit_edge
  %iterm.1.i = phi ptr [ %iterm.09.i, %for.body.i.if.end10.i_crit_edge ], [ %entity.010.i, %if.then.i.if.end10.i_crit_edge ]
  br i1 %cmp7.i, label %if.end10.i.for.inc.i_crit_edge, label %if.then22.i

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.end10.i
  %tobool23.not.i = icmp eq ptr %oterm.08.i, null
  br i1 %tobool23.not.i, label %if.then22.i.for.inc.i_crit_edge, label %if.then22.i.if.end44_crit_edge

if.then22.i.if.end44_crit_edge:                   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end44

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge
  %oterm.1.i = phi ptr [ %oterm.08.i, %if.end10.i.for.inc.i_crit_edge ], [ %entity.010.i, %if.then22.i.for.inc.i_crit_edge ]
  %99 = ptrtoint ptr %entity.010.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %entity.0.i = load ptr, ptr %entity.010.i, align 4
  %cmp.not.i = icmp eq ptr %entity.0.i, %entities
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %cmp32.i = icmp eq ptr %iterm.1.i, null
  %cmp34.i = icmp eq ptr %oterm.1.i, null
  %or.cond2.i = select i1 %cmp32.i, i1 true, i1 %cmp34.i
  br i1 %or.cond2.i, label %for.end.i.if.end44_crit_edge, label %if.end37.i

for.end.i.if.end44_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end44

if.end37.i:                                       ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 144) #26
  %cmp.i.i98 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i98, label %if.end37.i.if.end44_crit_edge, label %if.end41.i

if.end37.i.if.end44_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end44

if.end41.i:                                       ; preds = %if.end37.i
  %entities.i.i99 = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i.i, i32 0, i32 2
  %101 = ptrtoint ptr %entities.i.i99 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %entities.i.i99, ptr %entities.i.i99, align 4
  %prev.i.i.i100 = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %prev.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %entities.i.i99, ptr %prev.i.i.i100, align 8
  %ctrl_mutex.i.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %ctrl_mutex.i.i, ptr noundef nonnull @.str.195, ptr noundef nonnull @uvc_alloc_chain.__key) #21
  %103 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %dev, ptr %call7.i.i.i.i, align 8
  %prio.i.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i.i, i32 0, i32 6
  tail call void @v4l2_prio_init(ptr noundef %prio.i.i) #21
  %call42.i = tail call fastcc i32 @uvc_scan_chain_entity(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %oterm.1.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.i = icmp slt i32 %call42.i, 0
  br i1 %cmp43.i, label %if.end41.i.error.i_crit_edge, label %if.end46.i

if.end41.i.error.i_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i

if.end46.i:                                       ; preds = %if.end41.i
  %prev49.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 14, i32 1
  %104 = ptrtoint ptr %prev49.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %entity.112.i = load ptr, ptr %prev49.i, align 4
  %cmp55.not13.i = icmp eq ptr %entity.112.i, %entities
  br i1 %cmp55.not13.i, label %if.end46.i.for.end86.i_crit_edge, label %if.end46.i.for.body58.i_crit_edge

if.end46.i.for.body58.i_crit_edge:                ; preds = %if.end46.i
  br label %for.body58.i

if.end46.i.for.end86.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end86.i

for.body58.i:                                     ; preds = %for.inc80.i.for.body58.i_crit_edge, %if.end46.i.for.body58.i_crit_edge
  %entity.115.i = phi ptr [ %entity.1.i, %for.inc80.i.for.body58.i_crit_edge ], [ %entity.112.i, %if.end46.i.for.body58.i_crit_edge ]
  %prev.014.i = phi ptr [ %prev.1.i, %for.inc80.i.for.body58.i_crit_edge ], [ %oterm.1.i, %if.end46.i.for.body58.i_crit_edge ]
  %type59.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.115.i, i32 0, i32 4
  %105 = ptrtoint ptr %type59.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %type59.i, align 2
  %.off.i = add i16 %106, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.end69.i, label %for.body58.i.for.inc80.i_crit_edge

for.body58.i.for.inc80.i_crit_edge:               ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc80.i

if.end69.i:                                       ; preds = %for.body58.i
  %num_pads.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.115.i, i32 0, i32 9
  %107 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp70.not.i = icmp eq i32 %108, 2
  br i1 %cmp70.not.i, label %if.end73.i, label %if.end69.i.for.inc80.i_crit_edge

if.end69.i.for.inc80.i_crit_edge:                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc80.i

if.end73.i:                                       ; preds = %if.end69.i
  %call74.i = tail call fastcc i32 @uvc_scan_chain_entity(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %entity.115.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %cmp75.i = icmp slt i32 %call74.i, 0
  br i1 %cmp75.i, label %if.end73.i.error.i_crit_edge, label %if.end78.i

if.end73.i.error.i_crit_edge:                     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i

if.end78.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #23
  %id.i101 = getelementptr inbounds %struct.uvc_entity, ptr %entity.115.i, i32 0, i32 3
  %109 = ptrtoint ptr %id.i101 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %id.i101, align 4
  %conv79.i = trunc i16 %110 to i8
  %baSourceID.i = getelementptr inbounds %struct.uvc_entity, ptr %prev.014.i, i32 0, i32 14
  %111 = ptrtoint ptr %baSourceID.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %baSourceID.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv79.i, ptr %112, align 1
  br label %for.inc80.i

for.inc80.i:                                      ; preds = %if.end78.i, %if.end69.i.for.inc80.i_crit_edge, %for.body58.i.for.inc80.i_crit_edge
  %prev.1.i = phi ptr [ %prev.014.i, %if.end69.i.for.inc80.i_crit_edge ], [ %entity.115.i, %if.end78.i ], [ %prev.014.i, %for.body58.i.for.inc80.i_crit_edge ]
  %prev83.i = getelementptr inbounds %struct.list_head, ptr %entity.115.i, i32 0, i32 1
  %114 = ptrtoint ptr %prev83.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %entity.1.i = load ptr, ptr %prev83.i, align 4
  %cmp55.not.i = icmp eq ptr %entity.1.i, %entities
  br i1 %cmp55.not.i, label %for.inc80.i.for.end86.i_crit_edge, label %for.inc80.i.for.body58.i_crit_edge

for.inc80.i.for.body58.i_crit_edge:               ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body58.i

for.inc80.i.for.end86.i_crit_edge:                ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end86.i

for.end86.i:                                      ; preds = %for.inc80.i.for.end86.i_crit_edge, %if.end46.i.for.end86.i_crit_edge
  %prev.0.lcssa.i = phi ptr [ %oterm.1.i, %if.end46.i.for.end86.i_crit_edge ], [ %prev.1.i, %for.inc80.i.for.end86.i_crit_edge ]
  %call87.i = tail call fastcc i32 @uvc_scan_chain_entity(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %iterm.1.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %cmp88.i = icmp slt i32 %call87.i, 0
  br i1 %cmp88.i, label %for.end86.i.error.i_crit_edge, label %if.end91.i

for.end86.i.error.i_crit_edge:                    ; preds = %for.end86.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error.i

if.end91.i:                                       ; preds = %for.end86.i
  %id92.i = getelementptr inbounds %struct.uvc_entity, ptr %iterm.1.i, i32 0, i32 3
  %115 = ptrtoint ptr %id92.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %id92.i, align 4
  %conv93.i = trunc i16 %116 to i8
  %baSourceID94.i = getelementptr inbounds %struct.uvc_entity, ptr %prev.0.lcssa.i, i32 0, i32 14
  %117 = ptrtoint ptr %baSourceID94.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %baSourceID94.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv93.i, ptr %118, align 1
  %list96.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i.i, i32 0, i32 1
  %prev.i.i102 = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 15, i32 1
  %120 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i102, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list96.i, ptr noundef %121, ptr noundef %chains39) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end91.i.list_add_tail.exit.i_crit_edge

if.end91.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #23
  %122 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %list96.i, ptr %prev.i.i102, align 4
  %123 = ptrtoint ptr %list96.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %chains39, ptr %list96.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.uvc_video_chain, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i.i, align 8
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %list96.i, ptr %121, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end91.i.list_add_tail.exit.i_crit_edge
  %126 = load i32, ptr @uvc_dbg_param, align 4
  %and97.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %list_add_tail.exit.i.if.end44_crit_edge, label %do.end.i103

list_add_tail.exit.i.if.end44_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end44

do.end.i103:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 8
  %dev101.i = getelementptr inbounds %struct.usb_device, ptr %128, i32 0, i32 15
  tail call fastcc void @uvc_print_chain(ptr noundef nonnull %call7.i.i.i.i) #21
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev101.i, ptr noundef nonnull @.str.276, ptr noundef nonnull @uvc_print_chain.buffer) #25
  br label %if.end44

error.i:                                          ; preds = %for.end86.i.error.i_crit_edge, %if.end73.i.error.i_crit_edge, %if.end41.i.error.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #21
  br label %if.end44

if.end44:                                         ; preds = %error.i, %do.end.i103, %list_add_tail.exit.i.if.end44_crit_edge, %if.end37.i.if.end44_crit_edge, %for.end.i.if.end44_crit_edge, %if.then22.i.if.end44_crit_edge, %if.then.i.if.end44_crit_edge, %if.then42.if.end44_crit_edge, %for.end.if.end44_crit_edge
  %129 = ptrtoint ptr %chains39 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile ptr, ptr %chains39, align 4
  %cmp.i104.not = icmp eq ptr %130, %chains39
  br i1 %cmp.i104.not, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #23
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 8
  %dev53 = getelementptr inbounds %struct.usb_device, ptr %132, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev53, ptr noundef nonnull @.str.193) #25
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  %gpio_unit = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 24
  %133 = ptrtoint ptr %gpio_unit to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %gpio_unit, align 8
  %tobool55.not = icmp eq ptr %134, null
  br i1 %tobool55.not, label %if.end54.cleanup_crit_edge, label %if.then56

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then56:                                        ; preds = %if.end54
  %chain63 = getelementptr inbounds %struct.uvc_entity, ptr %134, i32 0, i32 1
  %entities64 = getelementptr i8, ptr %130, i32 8
  %prev.i106 = getelementptr i8, ptr %130, i32 12
  %135 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i106, align 4
  %call.i.i107 = tail call zeroext i1 @__list_add_valid(ptr noundef %chain63, ptr noundef %136, ptr noundef %entities64) #21
  br i1 %call.i.i107, label %if.end.i.i109, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end.i.i109:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  %137 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %chain63, ptr %prev.i106, align 4
  %138 = ptrtoint ptr %chain63 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %entities64, ptr %chain63, align 4
  %prev3.i.i108 = getelementptr inbounds %struct.uvc_entity, ptr %134, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %prev3.i.i108 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev3.i.i108, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %chain63, ptr %136, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i109, %if.then56.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %do.end51, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end51 ], [ 0, %if.end54.cleanup_crit_edge ], [ 0, %if.then56.cleanup_crit_edge ], [ 0, %if.end.i.i109 ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_init_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_register_chains(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %chains = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn29 = load ptr, ptr %chains, align 4
  %cmp.not31 = icmp eq ptr %.pn29, %chains
  br i1 %cmp.not31, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %streams.i.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn32 = phi ptr [ %.pn29, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %chain.033 = getelementptr i8, ptr %.pn32, i32 -4
  %entities.i = getelementptr i8, ptr %.pn32, i32 8
  %1 = ptrtoint ptr %entities.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn49.i = load ptr, ptr %entities.i, align 4
  %cmp.not50.i = icmp eq ptr %.pn49.i, %entities.i
  br i1 %cmp.not50.i, label %for.body.if.end_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn51.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn49.i, %for.body.for.body.i_crit_edge ]
  %type.i = getelementptr i8, ptr %.pn51.i, i32 14
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type.i, align 2
  %4 = and i16 %3, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %4)
  %cmp3.not.i = icmp eq i16 %4, 257
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %id.i = getelementptr i8, ptr %.pn51.i, i32 12
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %id.i, align 4
  %conv5.i = zext i16 %6 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %stream.0.in.i.i = phi ptr [ %streams.i.i, %if.end.i ], [ %stream.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %stream.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %stream.0.i.i = load ptr, ptr %stream.0.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %stream.0.i.i, %streams.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.do.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.do.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bTerminalLink.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream.0.i.i, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %bTerminalLink.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bTerminalLink.i.i, align 2
  %10 = zext i8 %9 to i16
  %cmp2.i.i = icmp eq i16 %6, %10
  br i1 %cmp2.i.i, label %uvc_stream_by_id.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i

uvc_stream_by_id.exit.i:                          ; preds = %for.body.i.i
  %cmp6.i = icmp eq ptr %stream.0.i.i, null
  br i1 %cmp6.i, label %uvc_stream_by_id.exit.i.do.end.i_crit_edge, label %if.end12.i

uvc_stream_by_id.exit.i.do.end.i_crit_edge:       ; preds = %uvc_stream_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i

do.end.i:                                         ; preds = %uvc_stream_by_id.exit.i.do.end.i_crit_edge, %for.cond.i.i.do.end.i_crit_edge
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %dev9.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i, ptr noundef nonnull @.str.280, i32 noundef %conv5.i) #25
  br label %for.inc.i

if.end12.i:                                       ; preds = %uvc_stream_by_id.exit.i
  %chain13.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream.0.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %chain13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %chain.033, ptr %chain13.i, align 8
  %call.i.i = tail call i32 @uvc_video_init(ptr noundef nonnull %stream.0.i.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %uvc_register_video.exit.thread.i, label %uvc_register_video.exit.i

uvc_register_video.exit.thread.i:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #23
  %intf.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream.0.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.282, i32 noundef %call.i.i) #25
  br label %cleanup

uvc_register_video.exit.i:                        ; preds = %if.end12.i
  %type.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream.0.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp2.i42.i = icmp eq i32 %17, 1
  %18 = ptrtoint ptr %chain13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chain13.i, align 8
  %caps.i.i = getelementptr inbounds %struct.uvc_video_chain, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %caps.i.i, align 4
  %..i.i = select i1 %cmp2.i42.i, i32 8388609, i32 2
  %or6.i.i = or i32 %21, %..i.i
  store i32 %or6.i.i, ptr %caps.i.i, align 4
  tail call void @uvc_debugfs_init_stream(ptr noundef nonnull %stream.0.i.i) #21
  %vdev.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream.0.i.i, i32 0, i32 2
  %queue.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream.0.i.i, i32 0, i32 18
  %22 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i.i, align 8
  %call9.i.i = tail call i32 @uvc_register_video_device(ptr noundef %dev, ptr noundef nonnull %stream.0.i.i, ptr noundef %vdev.i.i, ptr noundef %queue.i.i, i32 noundef %23, ptr noundef nonnull @uvc_fops, ptr noundef nonnull @uvc_ioctl_ops) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp15.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp15.i, label %uvc_register_video.exit.i.cleanup_crit_edge, label %if.end18.i

uvc_register_video.exit.i.cleanup_crit_edge:      ; preds = %uvc_register_video.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end18.i:                                       ; preds = %uvc_register_video.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %call19.i = tail call i32 @uvc_meta_register(ptr noundef nonnull %stream.0.i.i) #21
  %vdev20.i = getelementptr i8, ptr %.pn51.i, i32 96
  %24 = ptrtoint ptr %vdev20.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vdev.i.i, ptr %vdev20.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end18.i, %do.end.i, %for.body.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn51.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %entities.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %call3 = tail call i32 @uvc_mc_register_entities(ptr noundef %chain.033) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.278, i32 noundef %call3) #25
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end.for.inc_crit_edge
  %28 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, %chains
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %uvc_register_video.exit.i.cleanup_crit_edge, %uvc_register_video.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %uvc_register_video.exit.thread.i ], [ 0, %entry.cleanup_crit_edge ], [ %call9.i.i, %uvc_register_video.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_status_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_gpio_init_irq(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_unit = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %gpio_unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_unit, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %irq = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 12, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %call = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %3, ptr noundef null, ptr noundef nonnull @uvc_gpio_irq, i32 noundef 8195, ptr noundef nonnull @.str.284, ptr noundef %dev) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvc_unregister_video(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %streams = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %streams to i32
  call void @__asan_load4_noabort(i32 %0)
  %stream.035 = load ptr, ptr %streams, align 8
  %cmp.not36 = icmp eq ptr %stream.035, %streams
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %stream.037 = phi ptr [ %stream.0, %for.inc.for.body_crit_edge ], [ %stream.035, %entry.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream.037, i32 0, i32 2, i32 17
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %vdev = getelementptr inbounds %struct.uvc_streaming, ptr %stream.037, i32 0, i32 2
  tail call void @video_unregister_device(ptr noundef %vdev) #21
  %meta = getelementptr inbounds %struct.uvc_streaming, ptr %stream.037, i32 0, i32 21
  tail call void @video_unregister_device(ptr noundef %meta) #21
  tail call void @uvc_debugfs_cleanup_stream(ptr noundef %stream.037) #21
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %3 = ptrtoint ptr %stream.037 to i32
  call void @__asan_load4_noabort(i32 %3)
  %stream.0 = load ptr, ptr %stream.037, align 8
  %cmp.not = icmp eq ptr %stream.0, %streams
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @uvc_status_unregister(ptr noundef %dev) #21
  %vdev9 = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 11
  %4 = ptrtoint ptr %vdev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev9, align 8
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %for.end.if.end14_crit_edge, label %if.then12

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @v4l2_device_unregister(ptr noundef %vdev9) #21
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.end.if.end14_crit_edge
  %devnode = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %devnode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devnode, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end14.if.end19_crit_edge, label %media_devnode_is_registered.exit

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

media_devnode_is_registered.exit:                 ; preds = %if.end14
  %flags.i31 = getelementptr inbounds %struct.media_devnode, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i31, align 4
  %and1.i.i32 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i32)
  %tobool16.not = icmp eq i32 %and1.i.i32, 0
  br i1 %tobool16.not, label %media_devnode_is_registered.exit.if.end19_crit_edge, label %if.then17

media_devnode_is_registered.exit.if.end19_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

if.then17:                                        ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #23
  %mdev = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 10
  tail call void @media_device_unregister(ptr noundef %mdev) #21
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %media_devnode_is_registered.exit.if.end19_crit_edge, %if.end14.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_gpio_get_cur(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %entity, i8 noundef zeroext %cs, ptr nocapture noundef writeonly %data, i16 noundef zeroext %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %cs)
  %cmp.not = icmp ne i8 %cs, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp3 = icmp eq i16 %size, 0
  %or.cond = or i1 %cmp.not, %cmp3
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %gpio_privacy = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 12, i32 0, i32 2
  %0 = ptrtoint ptr %gpio_privacy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_privacy, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #21
  %conv5 = trunc i32 %call to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv5, ptr %data, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @uvc_gpio_get_info(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %entity, i8 noundef zeroext %cs, ptr nocapture noundef writeonly %caps) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %cs)
  %cmp.not = icmp eq i8 %cs, 17
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 9, ptr %caps, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvc_print_chain(ptr noundef readonly %chain) unnamed_addr #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %entities = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 2
  %0 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn45.i = load ptr, ptr %entities, align 4
  %cmp.not46.i = icmp eq ptr %.pn45.i, %entities
  br i1 %cmp.not46.i, label %entry.uvc_print_terms.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.uvc_print_terms.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_print_terms.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn49.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn45.i, %entry.for.body.i_crit_edge ]
  %nterms.048.i = phi i32 [ %nterms.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %p.047.i = phi ptr [ %p.2.i, %for.inc.i.for.body.i_crit_edge ], [ @uvc_print_chain.buffer, %entry.for.body.i_crit_edge ]
  %type.i = getelementptr i8, ptr %.pn49.i, i32 14
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type.i, align 2
  %conv.i = zext i16 %2 to i32
  %and.i = and i32 %conv.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.not.i = icmp ne i32 %and.i, 0
  %and5.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp7.not.i = icmp eq i32 %and5.i, 0
  %or.cond.i = and i1 %cmp1.not.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nterms.048.i)
  %tobool.not.i = icmp eq i32 %nterms.048.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.end11.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17.i

if.end11.i:                                       ; preds = %if.end.i
  %3 = ptrtoint ptr %p.047.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 11264, ptr %p.047.i, align 1
  %add.ptr10.i = getelementptr i8, ptr %p.047.i, i32 1
  %inc.i = add i32 %nterms.048.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp12.i = icmp ugt i32 %inc.i, 3
  br i1 %cmp12.i, label %if.then14.i, label %if.end11.i.if.end17.i_crit_edge

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #23
  %4 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 774778368, ptr %add.ptr10.i, align 1
  %add.ptr16.i = getelementptr i8, ptr %p.047.i, i32 4
  br label %uvc_print_terms.exit

if.end17.i:                                       ; preds = %if.end11.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  %inc43.i = phi i32 [ %inc.i, %if.end11.i.if.end17.i_crit_edge ], [ 1, %if.end.i.if.end17.i_crit_edge ]
  %p.142.i = phi ptr [ %add.ptr10.i, %if.end11.i.if.end17.i_crit_edge ], [ %p.047.i, %if.end.i.if.end17.i_crit_edge ]
  %id.i = getelementptr i8, ptr %.pn49.i, i32 12
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %id.i, align 4
  %conv18.i = zext i16 %6 to i32
  %call19.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.142.i, ptr noundef nonnull @.str.275, i32 noundef %conv18.i) #21
  %add.ptr20.i = getelementptr i8, ptr %p.142.i, i32 %call19.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i, %for.body.i.for.inc.i_crit_edge
  %p.2.i = phi ptr [ %add.ptr20.i, %if.end17.i ], [ %p.047.i, %for.body.i.for.inc.i_crit_edge ]
  %nterms.1.i = phi i32 [ %inc43.i, %if.end17.i ], [ %nterms.048.i, %for.body.i.for.inc.i_crit_edge ]
  %7 = ptrtoint ptr %.pn49.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn49.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %entities
  br i1 %cmp.not.i, label %for.inc.i.uvc_print_terms.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.inc.i.uvc_print_terms.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_print_terms.exit

uvc_print_terms.exit:                             ; preds = %for.inc.i.uvc_print_terms.exit_crit_edge, %if.then14.i, %entry.uvc_print_terms.exit_crit_edge
  %p.3.i = phi ptr [ %add.ptr16.i, %if.then14.i ], [ @uvc_print_chain.buffer, %entry.uvc_print_terms.exit_crit_edge ], [ %p.2.i, %for.inc.i.uvc_print_terms.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p.3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @uvc_print_chain.buffer to i32)
  %add.ptr = getelementptr i8, ptr @uvc_print_chain.buffer, i32 %sub.ptr.sub.i
  %8 = call ptr @memcpy(ptr %add.ptr, ptr @.str.272, i32 5)
  %9 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn45.i1 = load ptr, ptr %entities, align 4
  %cmp.not46.i2 = icmp eq ptr %.pn45.i1, %entities
  br i1 %cmp.not46.i2, label %uvc_print_terms.exit.uvc_print_terms.exit38_crit_edge, label %for.body.i14.preheader

uvc_print_terms.exit.uvc_print_terms.exit38_crit_edge: ; preds = %uvc_print_terms.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_print_terms.exit38

for.body.i14.preheader:                           ; preds = %uvc_print_terms.exit
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 4
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.inc.i34.for.body.i14_crit_edge, %for.body.i14.preheader
  %.pn49.i4 = phi ptr [ %.pn.i32, %for.inc.i34.for.body.i14_crit_edge ], [ %.pn45.i1, %for.body.i14.preheader ]
  %nterms.048.i5 = phi i32 [ %nterms.1.i31, %for.inc.i34.for.body.i14_crit_edge ], [ 0, %for.body.i14.preheader ]
  %p.047.i6 = phi ptr [ %p.2.i30, %for.inc.i34.for.body.i14_crit_edge ], [ %add.ptr2, %for.body.i14.preheader ]
  %type.i7 = getelementptr i8, ptr %.pn49.i4, i32 14
  %10 = ptrtoint ptr %type.i7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %type.i7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp7.not.i12.not = icmp sgt i16 %11, -1
  br i1 %cmp7.not.i12.not, label %for.body.i14.for.inc.i34_crit_edge, label %if.end.i16

for.body.i14.for.inc.i34_crit_edge:               ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i34

if.end.i16:                                       ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nterms.048.i5)
  %tobool.not.i15 = icmp eq i32 %nterms.048.i5, 0
  br i1 %tobool.not.i15, label %if.end.i16.if.end17.i29_crit_edge, label %if.end11.i20

if.end.i16.if.end17.i29_crit_edge:                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17.i29

if.end11.i20:                                     ; preds = %if.end.i16
  %12 = ptrtoint ptr %p.047.i6 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 11264, ptr %p.047.i6, align 1
  %add.ptr10.i17 = getelementptr i8, ptr %p.047.i6, i32 1
  %inc.i18 = add i32 %nterms.048.i5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i18)
  %cmp12.i19 = icmp ugt i32 %inc.i18, 3
  br i1 %cmp12.i19, label %if.then14.i22, label %if.end11.i20.if.end17.i29_crit_edge

if.end11.i20.if.end17.i29_crit_edge:              ; preds = %if.end11.i20
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17.i29

if.then14.i22:                                    ; preds = %if.end11.i20
  call void @__sanitizer_cov_trace_pc() #23
  %13 = ptrtoint ptr %add.ptr10.i17 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 774778368, ptr %add.ptr10.i17, align 1
  br label %uvc_print_terms.exit38

if.end17.i29:                                     ; preds = %if.end11.i20.if.end17.i29_crit_edge, %if.end.i16.if.end17.i29_crit_edge
  %inc43.i23 = phi i32 [ %inc.i18, %if.end11.i20.if.end17.i29_crit_edge ], [ 1, %if.end.i16.if.end17.i29_crit_edge ]
  %p.142.i24 = phi ptr [ %add.ptr10.i17, %if.end11.i20.if.end17.i29_crit_edge ], [ %p.047.i6, %if.end.i16.if.end17.i29_crit_edge ]
  %id.i25 = getelementptr i8, ptr %.pn49.i4, i32 12
  %14 = ptrtoint ptr %id.i25 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %id.i25, align 4
  %conv18.i26 = zext i16 %15 to i32
  %call19.i27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.142.i24, ptr noundef nonnull @.str.275, i32 noundef %conv18.i26) #21
  %add.ptr20.i28 = getelementptr i8, ptr %p.142.i24, i32 %call19.i27
  br label %for.inc.i34

for.inc.i34:                                      ; preds = %if.end17.i29, %for.body.i14.for.inc.i34_crit_edge
  %p.2.i30 = phi ptr [ %add.ptr20.i28, %if.end17.i29 ], [ %p.047.i6, %for.body.i14.for.inc.i34_crit_edge ]
  %nterms.1.i31 = phi i32 [ %inc43.i23, %if.end17.i29 ], [ %nterms.048.i5, %for.body.i14.for.inc.i34_crit_edge ]
  %16 = ptrtoint ptr %.pn49.i4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i32 = load ptr, ptr %.pn49.i4, align 4
  %cmp.not.i33 = icmp eq ptr %.pn.i32, %entities
  br i1 %cmp.not.i33, label %for.inc.i34.uvc_print_terms.exit38_crit_edge, label %for.inc.i34.for.body.i14_crit_edge

for.inc.i34.for.body.i14_crit_edge:               ; preds = %for.inc.i34
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i14

for.inc.i34.uvc_print_terms.exit38_crit_edge:     ; preds = %for.inc.i34
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_print_terms.exit38

uvc_print_terms.exit38:                           ; preds = %for.inc.i34.uvc_print_terms.exit38_crit_edge, %if.then14.i22, %uvc_print_terms.exit.uvc_print_terms.exit38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_prio_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_scan_chain_entity(ptr noundef %chain, ptr noundef %entity) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32767
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %and, label %do.body147 [
    i32 6, label %do.body
    i32 5, label %do.body21
    i32 4, label %do.body50
    i32 512, label %entry.do.body85_crit_edge
    i32 513, label %entry.do.body85_crit_edge186
    i32 514, label %entry.do.body85_crit_edge187
    i32 768, label %entry.do.body98_crit_edge
    i32 769, label %entry.do.body98_crit_edge188
    i32 770, label %entry.do.body98_crit_edge189
    i32 257, label %sw.bb110
  ]

entry.do.body98_crit_edge189:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body98

entry.do.body98_crit_edge188:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body98

entry.do.body98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body98

entry.do.body85_crit_edge187:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body85

entry.do.body85_crit_edge186:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body85

entry.do.body85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body85

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @uvc_dbg_param, align 4
  %and1 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %do.body.do.end4_crit_edge, label %do.end

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %id = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 4
  %conv3 = zext i16 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %conv3) #25
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %bNrInPins = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 13
  %6 = ptrtoint ptr %bNrInPins to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNrInPins, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %do.end4.sw.epilog_crit_edge, label %do.body8

do.end4.sw.epilog_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

do.body8:                                         ; preds = %do.end4
  %8 = load i32, ptr @uvc_dbg_param, align 4
  %and9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.return_crit_edge, label %do.end13

do.body8.return_crit_edge:                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #23
  %9 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chain, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %id15 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 3
  %13 = ptrtoint ptr %id15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id15, align 4
  %conv16 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev14, ptr noundef nonnull @.str.204, i32 noundef %conv16) #25
  br label %return

do.body21:                                        ; preds = %entry
  %15 = load i32, ptr @uvc_dbg_param, align 4
  %and22 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.end32_crit_edge, label %do.end26

do.body21.do.end32_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end32

do.end26:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #23
  %id28 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 3
  %16 = ptrtoint ptr %id28 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id28, align 4
  %conv29 = zext i16 %17 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %conv29) #25
  br label %do.end32

do.end32:                                         ; preds = %do.end26, %do.body21.do.end32_crit_edge
  %processing = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 3
  %18 = ptrtoint ptr %processing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %processing, align 4
  %cmp33.not = icmp eq ptr %19, null
  br i1 %cmp33.not, label %if.end47, label %do.body36

do.body36:                                        ; preds = %do.end32
  %20 = load i32, ptr @uvc_dbg_param, align 4
  %and37 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body36.return_crit_edge, label %do.end41

do.body36.return_crit_edge:                       ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #23
  %21 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chain, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev44 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev44, ptr noundef nonnull @.str.210) #25
  br label %return

if.end47:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #23
  %25 = ptrtoint ptr %processing to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entity, ptr %processing, align 4
  br label %sw.epilog

do.body50:                                        ; preds = %entry
  %26 = load i32, ptr @uvc_dbg_param, align 4
  %and51 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.do.end61_crit_edge, label %do.end55

do.body50.do.end61_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end61

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #23
  %id57 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 3
  %27 = ptrtoint ptr %id57 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %id57, align 4
  %conv58 = zext i16 %28 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %conv58) #25
  br label %do.end61

do.end61:                                         ; preds = %do.end55, %do.body50.do.end61_crit_edge
  %bNrInPins62 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 13
  %29 = ptrtoint ptr %bNrInPins62 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bNrInPins62, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp64 = icmp eq i8 %30, 1
  br i1 %cmp64, label %do.end61.sw.epilog_crit_edge, label %if.end67

do.end61.sw.epilog_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end67:                                         ; preds = %do.end61
  %selector = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 4
  %31 = ptrtoint ptr %selector to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %selector, align 4
  %cmp68.not = icmp eq ptr %32, null
  br i1 %cmp68.not, label %if.end82, label %do.body71

do.body71:                                        ; preds = %if.end67
  %33 = load i32, ptr @uvc_dbg_param, align 4
  %and72 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.body71.return_crit_edge, label %do.end76

do.body71.return_crit_edge:                       ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.end76:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #23
  %34 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chain, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %dev79 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev79, ptr noundef nonnull @.str.216) #25
  br label %return

if.end82:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #23
  %38 = ptrtoint ptr %selector to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entity, ptr %selector, align 4
  br label %sw.epilog

do.body85:                                        ; preds = %entry.do.body85_crit_edge, %entry.do.body85_crit_edge186, %entry.do.body85_crit_edge187
  %39 = load i32, ptr @uvc_dbg_param, align 4
  %and86 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body85.sw.epilog_crit_edge, label %do.end90

do.body85.sw.epilog_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

do.end90:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #23
  %id92 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 3
  %40 = ptrtoint ptr %id92 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %id92, align 4
  %conv93 = zext i16 %41 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %conv93) #25
  br label %sw.epilog

do.body98:                                        ; preds = %entry.do.body98_crit_edge, %entry.do.body98_crit_edge188, %entry.do.body98_crit_edge189
  %42 = load i32, ptr @uvc_dbg_param, align 4
  %and99 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body98.sw.epilog_crit_edge, label %do.end103

do.body98.sw.epilog_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

do.end103:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #23
  %id105 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 3
  %43 = ptrtoint ptr %id105 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %id105, align 4
  %conv106 = zext i16 %44 to i32
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, i32 noundef %conv106) #25
  br label %sw.epilog

sw.bb110:                                         ; preds = %entry
  %and113 = and i32 %conv, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp114.not = icmp ne i32 %and113, 0
  %and118 = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %cmp119 = icmp eq i32 %and118, 0
  %or.cond = and i1 %cmp114.not, %cmp119
  %45 = load i32, ptr @uvc_dbg_param, align 4
  %and123 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %or.cond, label %do.body122, label %do.body134

do.body122:                                       ; preds = %sw.bb110
  br i1 %tobool124.not, label %do.body122.sw.epilog_crit_edge, label %do.end127

do.body122.sw.epilog_crit_edge:                   ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

do.end127:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #23
  %id129 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 3
  %46 = ptrtoint ptr %id129 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %id129, align 4
  %conv130 = zext i16 %47 to i32
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %conv130) #25
  br label %sw.epilog

do.body134:                                       ; preds = %sw.bb110
  br i1 %tobool124.not, label %do.body134.sw.epilog_crit_edge, label %do.end139

do.body134.sw.epilog_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

do.end139:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #23
  %id141 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 3
  %48 = ptrtoint ptr %id141 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %id141, align 4
  %conv142 = zext i16 %49 to i32
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, i32 noundef %conv142) #25
  br label %sw.epilog

do.body147:                                       ; preds = %entry
  %50 = load i32, ptr @uvc_dbg_param, align 4
  %and148 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.return_crit_edge, label %do.end152

do.body147.return_crit_edge:                      ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.end152:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #23
  %51 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chain, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %dev155 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev155, ptr noundef nonnull @.str.229, i32 noundef %and) #25
  br label %return

sw.epilog:                                        ; preds = %do.end139, %do.body134.sw.epilog_crit_edge, %do.end127, %do.body122.sw.epilog_crit_edge, %do.end103, %do.body98.sw.epilog_crit_edge, %do.end90, %do.body85.sw.epilog_crit_edge, %if.end82, %do.end61.sw.epilog_crit_edge, %if.end47, %do.end4.sw.epilog_crit_edge
  %chain161 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 1
  %entities = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chain161, ptr noundef %56, ptr noundef %entities) #21
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.return_crit_edge

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %chain161, ptr %prev.i, align 4
  %58 = ptrtoint ptr %chain161 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %entities, ptr %chain161, align 4
  %prev3.i.i = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %chain161, ptr %56, align 4
  br label %return

return:                                           ; preds = %if.end.i.i, %sw.epilog.return_crit_edge, %do.end152, %do.body147.return_crit_edge, %do.end76, %do.body71.return_crit_edge, %do.end41, %do.body36.return_crit_edge, %do.end13, %do.body8.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.body8.return_crit_edge ], [ -1, %do.end13 ], [ -1, %do.body36.return_crit_edge ], [ -1, %do.end41 ], [ -1, %do.body71.return_crit_edge ], [ -1, %do.end76 ], [ -1, %do.body147.return_crit_edge ], [ -1, %do.end152 ], [ 0, %sw.epilog.return_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_scan_chain_forward(ptr noundef %chain, ptr nocapture noundef readonly %entity, ptr noundef readnone %prev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 3
  %type139 = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 4
  %entities170 = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 2
  %prev.i257 = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 2, i32 1
  %baSourceID = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 14
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %entry
  %found.0.ph = phi i32 [ 0, %entry ], [ %found.0.ph.be, %while.cond.outer.backedge ]
  %forward.0.ph = phi ptr [ null, %entry ], [ %entity.addr.138.i, %while.cond.outer.backedge ]
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 4
  %entities.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 14
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %while.cond.outer
  %forward.0 = phi ptr [ %prev, %if.end.while.cond_crit_edge ], [ %forward.0.ph, %while.cond.outer ]
  %cmp.i = icmp eq ptr %forward.0, null
  %spec.select.i = select i1 %cmp.i, ptr %entities.i, ptr %forward.0
  %4 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %entity.addr.136.i = load ptr, ptr %spec.select.i, align 4
  %cmp6.not37.i = icmp eq ptr %entity.addr.136.i, %entities.i
  br i1 %cmp6.not37.i, label %while.cond.while.end_crit_edge, label %while.cond.for.cond7.preheader.i_crit_edge

while.cond.for.cond7.preheader.i_crit_edge:       ; preds = %while.cond
  br label %for.cond7.preheader.i

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

for.cond.loopexit.i:                              ; preds = %for.cond7.i.for.cond.loopexit.i_crit_edge, %for.cond7.preheader.i.for.cond.loopexit.i_crit_edge
  %5 = ptrtoint ptr %entity.addr.138.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %entity.addr.1.i = load ptr, ptr %entity.addr.138.i, align 4
  %cmp6.not.i = icmp eq ptr %entity.addr.1.i, %entities.i
  br i1 %cmp6.not.i, label %for.cond.loopexit.i.while.end_crit_edge, label %for.cond.loopexit.i.for.cond7.preheader.i_crit_edge

for.cond.loopexit.i.for.cond7.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond7.preheader.i

for.cond.loopexit.i.while.end_crit_edge:          ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

for.cond7.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond7.preheader.i_crit_edge, %while.cond.for.cond7.preheader.i_crit_edge
  %entity.addr.138.i = phi ptr [ %entity.addr.1.i, %for.cond.loopexit.i.for.cond7.preheader.i_crit_edge ], [ %entity.addr.136.i, %while.cond.for.cond7.preheader.i_crit_edge ]
  %bNrInPins.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 13
  %6 = ptrtoint ptr %bNrInPins.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNrInPins.i, align 4
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp834.not.i = icmp eq i8 %7, 0
  br i1 %cmp834.not.i, label %for.cond7.preheader.i.for.cond.loopexit.i_crit_edge, label %for.body10.lr.ph.i

for.cond7.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.loopexit.i

for.body10.lr.ph.i:                               ; preds = %for.cond7.preheader.i
  %baSourceID.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 14
  %8 = ptrtoint ptr %baSourceID.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %baSourceID.i, align 4
  br label %for.body10.i

for.cond7.i:                                      ; preds = %for.body10.i
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond7.i.for.cond.loopexit.i_crit_edge, label %for.cond7.i.for.body10.i_crit_edge

for.cond7.i.for.body10.i_crit_edge:               ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body10.i

for.cond7.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.loopexit.i

for.body10.i:                                     ; preds = %for.cond7.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i, %for.cond7.i.for.body10.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %9, i32 %i.035.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %12)
  %cmp12.i = icmp eq i16 %3, %12
  br i1 %cmp12.i, label %uvc_entity_by_reference.exit, label %for.cond7.i

uvc_entity_by_reference.exit:                     ; preds = %for.body10.i
  %cmp = icmp eq ptr %entity.addr.138.i, null
  br i1 %cmp, label %uvc_entity_by_reference.exit.while.end_crit_edge, label %if.end

uvc_entity_by_reference.exit.while.end_crit_edge: ; preds = %uvc_entity_by_reference.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.end:                                           ; preds = %uvc_entity_by_reference.exit
  %cmp2 = icmp eq ptr %entity.addr.138.i, %prev
  br i1 %cmp2, label %if.end.while.cond_crit_edge, label %if.end5

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond

if.end5:                                          ; preds = %if.end
  %bNrInPins.i.le.le = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 13
  %baSourceID.i.le.le = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 14
  %conv.le = zext i16 %3 to i32
  %chain6 = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 1
  %13 = ptrtoint ptr %chain6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chain6, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end5
  %prev8 = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev8, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.end21, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end5.do.body_crit_edge
  %17 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.cleanup215_crit_edge, label %do.end

do.body.cleanup215_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup215

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %dev15 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %id16 = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 3
  %20 = ptrtoint ptr %id16 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %id16, align 4
  %conv17 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev15, ptr noundef nonnull @.str.199, i32 noundef %conv17) #25
  br label %cleanup215

if.end21:                                         ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 4
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %type, align 2
  %24 = and i16 %23, 32767
  %and23 = zext i16 %24 to i32
  %25 = zext i32 %and23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %and23, label %if.end21.while.cond.outer.backedge_crit_edge [
    i32 6, label %sw.bb
    i32 768, label %if.end21.sw.bb110_crit_edge
    i32 769, label %if.end21.sw.bb110_crit_edge370
    i32 770, label %if.end21.sw.bb110_crit_edge371
    i32 257, label %if.end21.sw.bb110_crit_edge372
  ]

if.end21.sw.bb110_crit_edge372:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb110

if.end21.sw.bb110_crit_edge371:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb110

if.end21.sw.bb110_crit_edge370:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb110

if.end21.sw.bb110_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb110

if.end21.while.cond.outer.backedge_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond.outer.backedge

sw.bb:                                            ; preds = %if.end21
  %26 = ptrtoint ptr %bNrInPins.i.le.le to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bNrInPins.i.le.le, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp25.not = icmp eq i8 %27, 1
  br i1 %cmp25.not, label %if.end43, label %do.body28

do.body28:                                        ; preds = %sw.bb
  %28 = load i32, ptr @uvc_dbg_param, align 4
  %and29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.cleanup215_crit_edge, label %do.end34

do.body28.cleanup215_crit_edge:                   ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup215

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #23
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  %id38 = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 3
  %31 = ptrtoint ptr %id38 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %id38, align 4
  %conv39 = zext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev37, ptr noundef nonnull @.str.204, i32 noundef %conv39) #25
  br label %cleanup215

if.end43:                                         ; preds = %sw.bb
  %33 = ptrtoint ptr %type139 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %type139, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp52.not = icmp sgt i16 %34, -1
  br i1 %cmp52.not, label %if.end43.if.end80_crit_edge, label %if.then54

if.end43.if.end80_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end80

if.then54:                                        ; preds = %if.end43
  %35 = ptrtoint ptr %baSourceID to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %baSourceID, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %39 = zext i8 %38 to i16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then54
  %entity.0.in.i = phi ptr [ %entities.i, %if.then54 ], [ %entity.0.i, %for.body.i.for.cond.i_crit_edge ]
  %40 = ptrtoint ptr %entity.0.in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %entity.0.i = load ptr, ptr %entity.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entity.0.i, %entities.i
  br i1 %cmp.not.i, label %for.cond.i.do.body60_crit_edge, label %for.body.i

for.cond.i.do.body60_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body60

for.body.i:                                       ; preds = %for.cond.i
  %id2.i = getelementptr inbounds %struct.uvc_entity, ptr %entity.0.i, i32 0, i32 3
  %41 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %id2.i, align 4
  %cmp3.i = icmp eq i16 %42, %39
  br i1 %cmp3.i, label %uvc_entity_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

uvc_entity_by_id.exit:                            ; preds = %for.body.i
  %tobool58.not = icmp eq ptr %entity.0.i, null
  br i1 %tobool58.not, label %uvc_entity_by_id.exit.do.body60_crit_edge, label %cleanup

uvc_entity_by_id.exit.do.body60_crit_edge:        ; preds = %uvc_entity_by_id.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body60

do.body60:                                        ; preds = %uvc_entity_by_id.exit.do.body60_crit_edge, %for.cond.i.do.body60_crit_edge
  %43 = load i32, ptr @uvc_dbg_param, align 4
  %and61 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.while.cond.outer.backedge_crit_edge, label %do.end66

do.body60.while.cond.outer.backedge_crit_edge:    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %do.end192, %do.body186.while.cond.outer.backedge_crit_edge, %do.end157, %do.body151.while.cond.outer.backedge_crit_edge, %do.end102, %do.body96.while.cond.outer.backedge_crit_edge, %do.end66, %do.body60.while.cond.outer.backedge_crit_edge, %if.end21.while.cond.outer.backedge_crit_edge
  %found.0.ph.be = phi i32 [ %found.0.ph, %if.end21.while.cond.outer.backedge_crit_edge ], [ %found.0.ph, %do.end157 ], [ %found.0.ph, %do.body151.while.cond.outer.backedge_crit_edge ], [ 1, %do.end102 ], [ 1, %do.body96.while.cond.outer.backedge_crit_edge ], [ 1, %do.end192 ], [ 1, %do.body186.while.cond.outer.backedge_crit_edge ], [ %found.0.ph, %do.end66 ], [ %found.0.ph, %do.body60.while.cond.outer.backedge_crit_edge ]
  br label %while.cond.outer

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #23
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %dev69 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  %id70 = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 3
  %46 = ptrtoint ptr %id70 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %id70, align 4
  %conv71 = zext i16 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev69, ptr noundef nonnull @.str.235, i32 noundef %conv71) #25
  br label %while.cond.outer.backedge

cleanup:                                          ; preds = %uvc_entity_by_id.exit
  call void @__sanitizer_cov_trace_pc() #23
  %id2.i.le = getelementptr inbounds %struct.uvc_entity, ptr %entity.0.i, i32 0, i32 3
  %48 = ptrtoint ptr %id2.i.le to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %id2.i.le, align 4
  %conv77 = trunc i16 %49 to i8
  %50 = ptrtoint ptr %baSourceID.i.le.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %baSourceID.i.le.le, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv77, ptr %51, align 1
  br label %if.end80

if.end80:                                         ; preds = %cleanup, %if.end43.if.end80_crit_edge
  %53 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i257, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chain6, ptr noundef %54, ptr noundef %entities170) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.end80.list_add_tail.exit_crit_edge

if.end80.list_add_tail.exit_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #23
  %55 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %chain6, ptr %prev.i257, align 4
  %56 = ptrtoint ptr %chain6 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entities170, ptr %chain6, align 4
  %57 = ptrtoint ptr %prev8 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev8, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %chain6, ptr %54, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end80.list_add_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0.ph)
  %tobool82.not = icmp eq i32 %found.0.ph, 0
  br i1 %tobool82.not, label %do.body84, label %list_add_tail.exit.do.body96_crit_edge

list_add_tail.exit.do.body96_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body96

do.body84:                                        ; preds = %list_add_tail.exit
  %59 = load i32, ptr @uvc_dbg_param, align 4
  %and85 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body84.do.body96_crit_edge, label %do.end90

do.body84.do.body96_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body96

do.end90:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #23
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #25
  br label %do.body96

do.body96:                                        ; preds = %do.end90, %do.body84.do.body96_crit_edge, %list_add_tail.exit.do.body96_crit_edge
  %60 = load i32, ptr @uvc_dbg_param, align 4
  %and97 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body96.while.cond.outer.backedge_crit_edge, label %do.end102

do.body96.while.cond.outer.backedge_crit_edge:    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond.outer.backedge

do.end102:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #23
  %id104 = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 3
  %61 = ptrtoint ptr %id104 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %id104, align 4
  %conv105 = zext i16 %62 to i32
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, i32 noundef %conv105) #25
  br label %while.cond.outer.backedge

sw.bb110:                                         ; preds = %if.end21.sw.bb110_crit_edge, %if.end21.sw.bb110_crit_edge370, %if.end21.sw.bb110_crit_edge371, %if.end21.sw.bb110_crit_edge372
  %conv112 = zext i16 %23 to i32
  %and113 = and i32 %conv112, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp114.not = icmp ne i32 %and113, 0
  %and119 = and i32 %conv112, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %cmp120 = icmp eq i32 %and119, 0
  %or.cond252 = and i1 %cmp114.not, %cmp120
  br i1 %or.cond252, label %do.body123, label %if.end138

do.body123:                                       ; preds = %sw.bb110
  %63 = load i32, ptr @uvc_dbg_param, align 4
  %and124 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body123.cleanup215_crit_edge, label %do.end129

do.body123.cleanup215_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup215

do.end129:                                        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #23
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  %dev132 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 15
  %id133 = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 3
  %66 = ptrtoint ptr %id133 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %id133, align 4
  %conv134 = zext i16 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev132, ptr noundef nonnull @.str.244, i32 noundef %conv134) #25
  br label %cleanup215

if.end138:                                        ; preds = %sw.bb110
  %68 = ptrtoint ptr %type139 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %type139, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %69)
  %cmp148.not = icmp sgt i16 %69, -1
  br i1 %cmp148.not, label %if.end168, label %do.body151

do.body151:                                       ; preds = %if.end138
  %70 = load i32, ptr @uvc_dbg_param, align 4
  %and152 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %do.body151.while.cond.outer.backedge_crit_edge, label %do.end157

do.body151.while.cond.outer.backedge_crit_edge:   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond.outer.backedge

do.end157:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #23
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %dev160 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15
  %id163 = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 3
  %73 = ptrtoint ptr %id163 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %id163, align 4
  %conv164 = zext i16 %74 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev160, ptr noundef nonnull @.str.247, i32 noundef %conv.le, i32 noundef %conv164) #25
  br label %while.cond.outer.backedge

if.end168:                                        ; preds = %if.end138
  %75 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i257, align 4
  %call.i.i258 = tail call zeroext i1 @__list_add_valid(ptr noundef %chain6, ptr noundef %76, ptr noundef %entities170) #21
  br i1 %call.i.i258, label %if.end.i.i260, label %if.end168.list_add_tail.exit261_crit_edge

if.end168.list_add_tail.exit261_crit_edge:        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit261

if.end.i.i260:                                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #23
  %77 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %chain6, ptr %prev.i257, align 4
  %78 = ptrtoint ptr %chain6 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %entities170, ptr %chain6, align 4
  %79 = ptrtoint ptr %prev8 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev8, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %chain6, ptr %76, align 4
  br label %list_add_tail.exit261

list_add_tail.exit261:                            ; preds = %if.end.i.i260, %if.end168.list_add_tail.exit261_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0.ph)
  %tobool171.not = icmp eq i32 %found.0.ph, 0
  br i1 %tobool171.not, label %do.body173, label %list_add_tail.exit261.do.body186_crit_edge

list_add_tail.exit261.do.body186_crit_edge:       ; preds = %list_add_tail.exit261
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body186

do.body173:                                       ; preds = %list_add_tail.exit261
  %81 = load i32, ptr @uvc_dbg_param, align 4
  %and174 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %do.body173.do.body186_crit_edge, label %do.end179

do.body173.do.body186_crit_edge:                  ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body186

do.end179:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #23
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #25
  br label %do.body186

do.body186:                                       ; preds = %do.end179, %do.body173.do.body186_crit_edge, %list_add_tail.exit261.do.body186_crit_edge
  %82 = load i32, ptr @uvc_dbg_param, align 4
  %and187 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body186.while.cond.outer.backedge_crit_edge, label %do.end192

do.body186.while.cond.outer.backedge_crit_edge:   ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond.outer.backedge

do.end192:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #23
  %id194 = getelementptr inbounds %struct.uvc_entity, ptr %entity.addr.138.i, i32 0, i32 3
  %83 = ptrtoint ptr %id194 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %id194, align 4
  %conv195 = zext i16 %84 to i32
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, i32 noundef %conv195) #25
  br label %while.cond.outer.backedge

while.end:                                        ; preds = %uvc_entity_by_reference.exit.while.end_crit_edge, %for.cond.loopexit.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0.ph)
  %tobool200.not = icmp eq i32 %found.0.ph, 0
  br i1 %tobool200.not, label %while.end.cleanup215_crit_edge, label %do.body202

while.end.cleanup215_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup215

do.body202:                                       ; preds = %while.end
  %85 = load i32, ptr @uvc_dbg_param, align 4
  %and203 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %do.body202.cleanup215_crit_edge, label %do.end208

do.body202.cleanup215_crit_edge:                  ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup215

do.end208:                                        ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #23
  %call210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254) #25
  br label %cleanup215

cleanup215:                                       ; preds = %do.end208, %do.body202.cleanup215_crit_edge, %while.end.cleanup215_crit_edge, %do.end129, %do.body123.cleanup215_crit_edge, %do.end34, %do.body28.cleanup215_crit_edge, %do.end, %do.body.cleanup215_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup215_crit_edge ], [ -22, %do.end34 ], [ -22, %do.body28.cleanup215_crit_edge ], [ -22, %do.end129 ], [ -22, %do.body123.cleanup215_crit_edge ], [ 0, %do.body202.cleanup215_crit_edge ], [ 0, %do.end208 ], [ 0, %while.end.cleanup215_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_mc_register_entities(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_meta_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_video_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_debugfs_init_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_gpio_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %new_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_unit.i = getelementptr inbounds %struct.uvc_device, ptr %data, i32 0, i32 24
  %0 = ptrtoint ptr %gpio_unit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_unit.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_val.i) #21
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.uvc_gpio_event.exit_crit_edge, label %if.end.i

entry.uvc_gpio_event.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %uvc_gpio_event.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %gpio_privacy.i = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 12, i32 0, i32 2
  %2 = ptrtoint ptr %gpio_privacy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_privacy.i, align 4
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #21
  %conv.i = trunc i32 %call.i to i8
  %4 = ptrtoint ptr %new_val.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %new_val.i, align 1
  %chains.i = getelementptr inbounds %struct.uvc_device, ptr %data, i32 0, i32 15
  %5 = ptrtoint ptr %chains.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chains.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 -4
  %controls.i = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %controls.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %controls.i, align 4
  call void @uvc_ctrl_status_event(ptr noundef %add.ptr.i, ptr noundef %8, ptr noundef nonnull %new_val.i) #21
  br label %uvc_gpio_event.exit

uvc_gpio_event.exit:                              ; preds = %if.end.i, %entry.uvc_gpio_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_val.i) #21
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_ctrl_status_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_debugfs_cleanup_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_status_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_status_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_video_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uvc_resume(ptr noundef readonly %intf, i32 noundef %reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev2, ptr noundef nonnull @.str.290, i32 noundef %conv) #25
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %cur_altsetting5 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %9 = ptrtoint ptr %cur_altsetting5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_altsetting5, align 4
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bInterfaceSubClass, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp = icmp eq i8 %12, 1
  br i1 %cmp, label %if.then9, label %if.end23

if.then9:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset)
  %tobool10.not = icmp eq i32 %reset, 0
  br i1 %tobool10.not, label %if.then9.if.end17_crit_edge, label %if.then11

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

if.then11:                                        ; preds = %if.then9
  %call12 = tail call i32 @uvc_ctrl_restore_values(ptr noundef %1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then11.cleanup_crit_edge, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.then9.if.end17_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11.if.end17_crit_edge ], [ 0, %if.then9.if.end17_crit_edge ]
  %lock = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #21
  %users = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  %call20 = tail call i32 @uvc_status_start(ptr noundef %1, i32 noundef 3072) #21
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %ret.1 = phi i32 [ %call20, %if.then19 ], [ %ret.0, %if.end17.if.end21_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #21
  br label %cleanup

if.end23:                                         ; preds = %do.end4
  %streams = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end23
  %stream.0.in = phi ptr [ %streams, %if.end23 ], [ %stream.0, %for.body.for.cond_crit_edge ]
  %15 = ptrtoint ptr %stream.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %stream.0 = load ptr, ptr %stream.0.in, align 8
  %cmp25.not = icmp eq ptr %stream.0, %streams
  br i1 %cmp25.not, label %do.body45, label %for.body

for.body:                                         ; preds = %for.cond
  %intf27 = getelementptr inbounds %struct.uvc_streaming, ptr %stream.0, i32 0, i32 5
  %16 = ptrtoint ptr %intf27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf27, align 8
  %cmp28 = icmp eq ptr %17, %intf
  br i1 %cmp28, label %if.then30, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond

if.then30:                                        ; preds = %for.body
  %call31 = tail call i32 @uvc_video_resume(ptr noundef %stream.0, i32 noundef %reset) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #23
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %stream.0, i32 0, i32 18
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue, align 4
  %call37 = tail call i32 @uvc_queue_streamoff(ptr noundef %queue, i32 noundef %19) #21
  br label %cleanup

do.body45:                                        ; preds = %for.cond
  %20 = load i32, ptr @uvc_dbg_param, align 4
  %and46 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.cleanup_crit_edge, label %do.end51

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #23
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %dev53 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev53, ptr noundef nonnull @.str.293) #25
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %do.body45.cleanup_crit_edge, %if.then34, %if.then30.cleanup_crit_edge, %if.end21, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end21 ], [ %call12, %if.then11.cleanup_crit_edge ], [ %call31, %if.then34 ], [ %call31, %if.then30.cleanup_crit_edge ], [ -22, %do.end51 ], [ -22, %do.body45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_restore_values(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_status_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_video_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_debugfs_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #21

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #22 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 283)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #22 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 283)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #23 = { nomerge }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind allocsize(2) }
attributes #27 = { nobuiltin }
attributes #28 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !101, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !187, !189, !191, !193, !194, !195, !197, !198, !199, !201, !203, !204, !205, !207, !209, !210, !211, !213, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !273, !275, !276, !278, !280, !281, !283, !285, !287, !289, !290, !291, !293, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !390, !391, !392, !394, !396, !397, !398, !399, !401, !402, !403, !405, !406, !408, !409, !410, !411, !413, !414, !415, !417, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !434, !435, !436, !438, !439, !440, !442, !443, !444, !446, !447, !448, !450, !451, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !485, !487, !488, !490, !491, !493, !494, !495, !497, !498, !499, !500, !502, !503, !504, !506, !507, !509, !510, !511, !513, !514, !515, !517, !518, !519, !521, !523, !525, !527, !529, !531, !532, !533, !534, !536, !537, !538, !539, !541, !542, !543, !544, !546, !547, !548, !549, !551, !553, !554, !555, !556, !558, !559, !560, !562, !563, !564, !565, !567, !568, !569, !571, !573, !575, !577, !579}
!llvm.module.flags = !{!581, !582, !583, !584, !585, !586, !587, !588}
!llvm.ident = !{!589}

!0 = !{ptr @uvc_clock_param, !1, !"uvc_clock_param", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 30, i32 14}
!2 = !{ptr @uvc_timeout_param, !3, !"uvc_timeout_param", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 35, i32 14}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2245, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @uvc_register_video_device._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @uvc_register_video_device._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__param_clock, !13, !"__param_clock", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2625, i32 1}
!14 = !{ptr @__UNIQUE_ID_clock307, !15, !"__UNIQUE_ID_clock307", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2627, i32 1}
!16 = !{ptr @__param_hwtimestamps, !17, !"__param_hwtimestamps", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2628, i32 1}
!18 = !{ptr @__UNIQUE_ID_hwtimestampstype308, !17, !"__UNIQUE_ID_hwtimestampstype308", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_hwtimestamps309, !20, !"__UNIQUE_ID_hwtimestamps309", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2629, i32 1}
!21 = !{ptr @__param_nodrop, !22, !"__param_nodrop", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2630, i32 1}
!23 = !{ptr @__UNIQUE_ID_nodroptype310, !22, !"__UNIQUE_ID_nodroptype310", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_nodrop311, !25, !"__UNIQUE_ID_nodrop311", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2631, i32 1}
!26 = !{ptr @__param_quirks, !27, !"__param_quirks", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2632, i32 1}
!28 = !{ptr @__UNIQUE_ID_quirkstype312, !27, !"__UNIQUE_ID_quirkstype312", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_quirks313, !30, !"__UNIQUE_ID_quirks313", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2633, i32 1}
!31 = !{ptr @__param_trace, !32, !"__param_trace", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2634, i32 1}
!33 = !{ptr @__UNIQUE_ID_tracetype314, !32, !"__UNIQUE_ID_tracetype314", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_trace315, !35, !"__UNIQUE_ID_trace315", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2635, i32 1}
!36 = !{ptr @__param_timeout, !37, !"__param_timeout", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2636, i32 1}
!38 = !{ptr @__UNIQUE_ID_timeouttype316, !37, !"__UNIQUE_ID_timeouttype316", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_timeout317, !40, !"__UNIQUE_ID_timeout317", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2637, i32 1}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 3178, i32 12}
!43 = !{ptr @uvc_driver, !44, !"uvc_driver", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 3176, i32 19}
!45 = !{ptr @__initcall__kmod_uvcvideo__318_3210_uvc_init6, !46, !"__initcall__kmod_uvcvideo__318_3210_uvc_init6", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 3210, i32 1}
!47 = !{ptr @__exitcall_uvc_cleanup, !48, !"__exitcall_uvc_cleanup", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 3211, i32 1}
!49 = !{ptr @__UNIQUE_ID_author319, !50, !"__UNIQUE_ID_author319", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 3213, i32 1}
!51 = !{ptr @__UNIQUE_ID_description320, !52, !"__UNIQUE_ID_description320", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 3214, i32 1}
!53 = !{ptr @__UNIQUE_ID_file321, !54, !"__UNIQUE_ID_file321", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 3215, i32 1}
!55 = !{ptr @__UNIQUE_ID_license322, !54, !"__UNIQUE_ID_license322", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_version323, !57, !"__UNIQUE_ID_version323", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 3216, i32 1}
!58 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__modver_attr, !57, !"__modver_attr", i1 false, i1 false}
!61 = !{ptr @uvc_hw_timestamps_param, !62, !"uvc_hw_timestamps_param", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 31, i32 14}
!63 = !{ptr @uvc_no_drop_param, !64, !"uvc_no_drop_param", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 32, i32 14}
!65 = !{ptr @uvc_dbg_param, !66, !"uvc_dbg_param", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 34, i32 14}
!67 = !{ptr @__param_str_clock, !13, !"__param_str_clock", i1 false, i1 false}
!68 = !{ptr @__param_ops_clock, !13, !"__param_ops_clock", i1 false, i1 false}
!69 = !{ptr @.str.8, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2612, i32 23}
!71 = !{ptr @.str.9, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2615, i32 22}
!73 = !{ptr @.str.10, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2617, i32 27}
!75 = !{ptr @.str.11, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2605, i32 26}
!77 = !{ptr @.str.12, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2607, i32 26}
!79 = !{ptr @__param_str_hwtimestamps, !17, !"__param_str_hwtimestamps", i1 false, i1 false}
!80 = !{ptr @__param_str_nodrop, !22, !"__param_str_nodrop", i1 false, i1 false}
!81 = !{ptr @__param_str_quirks, !27, !"__param_str_quirks", i1 false, i1 false}
!82 = !{ptr @uvc_quirks_param, !83, !"uvc_quirks_param", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 33, i32 21}
!84 = !{ptr @__param_str_trace, !32, !"__param_str_trace", i1 false, i1 false}
!85 = !{ptr @__param_str_timeout, !37, !"__param_str_timeout", i1 false, i1 false}
!86 = !{ptr @uvc_probe.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2367, i32 2}
!88 = !{ptr @.str.13, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.14, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2377, i32 3}
!91 = !{ptr @.str.15, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.16, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @uvc_probe._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @uvc_probe._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.18, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2380, i32 3}
!97 = !{ptr @uvc_probe._entry.17, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @uvc_probe._entry_ptr.19, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2387, i32 5}
!101 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2403, i32 22}
!103 = !{ptr @.str.23, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2425, i32 3}
!105 = !{ptr @uvc_probe._entry.22, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @uvc_probe._entry_ptr.24, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2431, i32 3}
!109 = !{ptr @uvc_probe._entry.25, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @uvc_probe._entry_ptr.27, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2435, i32 2}
!113 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @uvc_probe._entry.28, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @uvc_probe._entry_ptr.31, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2442, i32 3}
!119 = !{ptr @uvc_probe._entry.33, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @uvc_probe._entry_ptr.35, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2445, i32 3}
!123 = !{ptr @uvc_probe._entry.36, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @uvc_probe._entry_ptr.38, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2451, i32 3}
!127 = !{ptr @uvc_probe._entry.39, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @uvc_probe._entry_ptr.41, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2481, i32 3}
!131 = !{ptr @uvc_probe._entry.42, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @uvc_probe._entry_ptr.44, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2488, i32 3}
!135 = !{ptr @uvc_probe._entry.45, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @uvc_probe._entry_ptr.47, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2493, i32 2}
!139 = !{ptr @uvc_probe._entry.48, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @uvc_probe._entry_ptr.50, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @uvc_quirk_none, !142, !"uvc_quirk_none", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2345, i32 37}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/usb.h", i32 912, i32 31}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1468, i32 4}
!147 = !{ptr @.str.53, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @uvc_parse_control._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @uvc_parse_control._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1135, i32 4}
!152 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @uvc_parse_vendor_control._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @uvc_parse_vendor_control._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1159, i32 24}
!157 = !{ptr @uvc_gpio_guid, !158, !"uvc_gpio_guid", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1029, i32 17}
!159 = !{ptr @uvc_camera_guid, !160, !"uvc_camera_guid", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1028, i32 17}
!161 = !{ptr @uvc_media_transport_input_guid, !162, !"uvc_media_transport_input_guid", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1030, i32 17}
!163 = !{ptr @uvc_processing_guid, !164, !"uvc_processing_guid", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1032, i32 17}
!165 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1184, i32 4}
!167 = !{ptr @.str.58, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @uvc_parse_standard_control._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @uvc_parse_standard_control._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.60, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1197, i32 5}
!172 = !{ptr @uvc_parse_standard_control._entry.59, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @uvc_parse_standard_control._entry_ptr.61, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.63, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1209, i32 4}
!176 = !{ptr @uvc_parse_standard_control._entry.62, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @uvc_parse_standard_control._entry_ptr.64, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.66, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1228, i32 4}
!180 = !{ptr @uvc_parse_standard_control._entry.65, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @uvc_parse_standard_control._entry_ptr.67, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @uvc_parse_standard_control._entry.68, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1250, i32 4}
!184 = !{ptr @uvc_parse_standard_control._entry_ptr.69, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.70, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1286, i32 24}
!187 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1288, i32 24}
!189 = !{ptr @.str.72, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1290, i32 24}
!191 = !{ptr @.str.74, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1297, i32 4}
!193 = !{ptr @uvc_parse_standard_control._entry.73, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @uvc_parse_standard_control._entry_ptr.75, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.77, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1308, i32 4}
!197 = !{ptr @uvc_parse_standard_control._entry.76, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @uvc_parse_standard_control._entry_ptr.78, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.79, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1326, i32 24}
!201 = !{ptr @.str.81, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1335, i32 4}
!203 = !{ptr @uvc_parse_standard_control._entry.80, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @uvc_parse_standard_control._entry_ptr.82, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.83, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1351, i32 24}
!207 = !{ptr @.str.85, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1361, i32 4}
!209 = !{ptr @uvc_parse_standard_control._entry.84, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @uvc_parse_standard_control._entry_ptr.86, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1384, i32 24}
!213 = !{ptr @uvc_parse_standard_control._entry.88, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1394, i32 4}
!215 = !{ptr @uvc_parse_standard_control._entry_ptr.89, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.91, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1421, i32 3}
!218 = !{ptr @uvc_parse_standard_control._entry.90, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @uvc_parse_standard_control._entry_ptr.92, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 796, i32 3}
!222 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @uvc_parse_streaming._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @uvc_parse_streaming._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.96, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 804, i32 3}
!227 = !{ptr @uvc_parse_streaming._entry.95, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @uvc_parse_streaming._entry_ptr.97, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 829, i32 5}
!231 = !{ptr @uvc_parse_streaming._entry.98, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @uvc_parse_streaming._entry_ptr.100, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.102, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 846, i32 3}
!235 = !{ptr @uvc_parse_streaming._entry.101, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @uvc_parse_streaming._entry_ptr.103, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.105, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 864, i32 3}
!239 = !{ptr @uvc_parse_streaming._entry.104, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @uvc_parse_streaming._entry_ptr.106, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.108, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 874, i32 3}
!243 = !{ptr @uvc_parse_streaming._entry.107, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @uvc_parse_streaming._entry_ptr.109, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.111, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 926, i32 4}
!247 = !{ptr @uvc_parse_streaming._entry.110, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @uvc_parse_streaming._entry_ptr.112, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 951, i32 3}
!251 = !{ptr @uvc_parse_streaming._entry.113, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @uvc_parse_streaming._entry_ptr.115, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.117, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1000, i32 3}
!255 = !{ptr @uvc_parse_streaming._entry.116, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @uvc_parse_streaming._entry_ptr.118, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @uvc_stream_new.__key, !258, !"__key", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 479, i32 2}
!259 = !{ptr @.str.119, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.120, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 522, i32 4}
!262 = !{ptr @.str.121, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @uvc_parse_format._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @uvc_parse_format._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.123, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 537, i32 4}
!267 = !{ptr @uvc_parse_format._entry.122, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @uvc_parse_format._entry_ptr.124, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.125, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 539, i32 49}
!271 = !{ptr @.str.126, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 551, i32 27}
!273 = !{ptr @uvc_parse_format._entry.127, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 586, i32 4}
!275 = !{ptr @uvc_parse_format._entry_ptr.128, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.129, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 593, i32 25}
!278 = !{ptr @uvc_parse_format._entry.130, !279, !"_entry", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 602, i32 4}
!280 = !{ptr @uvc_parse_format._entry_ptr.131, !279, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 611, i32 26}
!283 = !{ptr @.str.133, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 614, i32 26}
!285 = !{ptr @.str.134, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 617, i32 26}
!287 = !{ptr @.str.136, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 620, i32 4}
!289 = !{ptr @uvc_parse_format._entry.135, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @uvc_parse_format._entry_ptr.137, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.138, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 627, i32 48}
!293 = !{ptr @.str.139, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 627, i32 58}
!295 = !{ptr @.str.141, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 649, i32 3}
!297 = !{ptr @uvc_parse_format._entry.140, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @uvc_parse_format._entry_ptr.142, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.144, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 656, i32 2}
!301 = !{ptr @uvc_parse_format._entry.143, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @uvc_parse_format._entry_ptr.145, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.147, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 675, i32 4}
!305 = !{ptr @uvc_parse_format._entry.146, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @uvc_parse_format._entry_ptr.148, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.150, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 740, i32 3}
!309 = !{ptr @uvc_parse_format._entry.149, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @uvc_parse_format._entry_ptr.151, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.153, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 759, i32 4}
!313 = !{ptr @uvc_parse_format._entry.152, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @uvc_parse_format._entry_ptr.154, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.155, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 43, i32 12}
!317 = !{ptr @.str.156, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 53, i32 12}
!319 = !{ptr @.str.157, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 63, i32 12}
!321 = !{ptr @.str.158, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 68, i32 12}
!323 = !{ptr @.str.159, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 73, i32 12}
!325 = !{ptr @.str.160, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 78, i32 12}
!327 = !{ptr @.str.161, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 83, i32 12}
!329 = !{ptr @.str.162, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 93, i32 12}
!331 = !{ptr @.str.163, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 98, i32 12}
!333 = !{ptr @.str.164, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 103, i32 12}
!335 = !{ptr @.str.165, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 108, i32 12}
!337 = !{ptr @.str.166, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 113, i32 12}
!339 = !{ptr @.str.167, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 118, i32 12}
!341 = !{ptr @.str.168, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 123, i32 12}
!343 = !{ptr @.str.169, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 128, i32 12}
!345 = !{ptr @.str.170, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 133, i32 12}
!347 = !{ptr @.str.171, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 138, i32 12}
!349 = !{ptr @.str.172, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 143, i32 12}
!351 = !{ptr @.str.173, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 148, i32 12}
!353 = !{ptr @.str.174, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 153, i32 12}
!355 = !{ptr @.str.175, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 158, i32 12}
!357 = !{ptr @.str.176, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 163, i32 12}
!359 = !{ptr @.str.177, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 168, i32 12}
!361 = !{ptr @.str.178, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 173, i32 12}
!363 = !{ptr @.str.179, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 178, i32 12}
!365 = !{ptr @.str.180, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 183, i32 12}
!367 = !{ptr @.str.181, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 188, i32 12}
!369 = !{ptr @.str.182, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 193, i32 12}
!371 = !{ptr @.str.183, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 208, i32 12}
!373 = !{ptr @.str.184, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 213, i32 12}
!375 = !{ptr @.str.185, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 218, i32 12}
!377 = !{ptr @uvc_fmts, !378, !"uvc_fmts", i1 false, i1 false}
!378 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 41, i32 31}
!379 = !{ptr @uvc_colorspace.colorprimaries, !380, !"colorprimaries", i1 false, i1 false}
!380 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 258, i32 36}
!381 = !{ptr @uvc_xfer_func.xfer_funcs, !382, !"xfer_funcs", i1 false, i1 false}
!382 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 283, i32 35}
!383 = !{ptr @uvc_ycbcr_enc.ycbcr_encs, !384, !"ycbcr_encs", i1 false, i1 false}
!384 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 312, i32 40}
!385 = !{ptr @.str.186, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1533, i32 58}
!387 = !{ptr @.str.187, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1545, i32 4}
!389 = !{ptr @.str.188, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @uvc_gpio_parse._entry, !388, !"_entry", i1 false, i1 false}
!391 = !{ptr @uvc_gpio_parse._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.189, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1557, i32 22}
!394 = !{ptr @.str.190, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2076, i32 3}
!396 = !{ptr @.str.191, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @uvc_scan_device._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @uvc_scan_device._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.193, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2086, i32 3}
!401 = !{ptr @uvc_scan_device._entry.192, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @uvc_scan_device._entry_ptr.194, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @uvc_alloc_chain.__key, !404, !"__key", i1 false, i1 false}
!404 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1945, i32 2}
!405 = !{ptr @.str.195, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @.str.196, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1869, i32 2}
!408 = !{ptr @.str.197, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @uvc_scan_chain._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @uvc_scan_chain._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.199, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1877, i32 4}
!413 = !{ptr @uvc_scan_chain._entry.198, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @uvc_scan_chain._entry_ptr.200, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.201, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1615, i32 3}
!417 = !{ptr @.str.202, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @uvc_scan_chain_entity._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @uvc_scan_chain_entity._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.204, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1618, i32 4}
!422 = !{ptr @uvc_scan_chain_entity._entry.203, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @uvc_scan_chain_entity._entry_ptr.205, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.207, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1627, i32 3}
!426 = !{ptr @uvc_scan_chain_entity._entry.206, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @uvc_scan_chain_entity._entry_ptr.208, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.210, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1630, i32 4}
!430 = !{ptr @uvc_scan_chain_entity._entry.209, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @uvc_scan_chain_entity._entry_ptr.211, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.213, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1639, i32 3}
!434 = !{ptr @uvc_scan_chain_entity._entry.212, !433, !"_entry", i1 false, i1 false}
!435 = !{ptr @uvc_scan_chain_entity._entry_ptr.214, !433, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.216, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1646, i32 4}
!438 = !{ptr @uvc_scan_chain_entity._entry.215, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @uvc_scan_chain_entity._entry_ptr.217, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.219, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1657, i32 3}
!442 = !{ptr @uvc_scan_chain_entity._entry.218, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @uvc_scan_chain_entity._entry_ptr.220, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.222, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1664, i32 3}
!446 = !{ptr @uvc_scan_chain_entity._entry.221, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @uvc_scan_chain_entity._entry_ptr.223, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @uvc_scan_chain_entity._entry.224, !449, !"_entry", i1 false, i1 false}
!449 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1670, i32 4}
!450 = !{ptr @uvc_scan_chain_entity._entry_ptr.225, !449, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @uvc_scan_chain_entity._entry.226, !452, !"_entry", i1 false, i1 false}
!452 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1672, i32 4}
!453 = !{ptr @uvc_scan_chain_entity._entry_ptr.227, !452, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.229, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1677, i32 3}
!456 = !{ptr @uvc_scan_chain_entity._entry.228, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @uvc_scan_chain_entity._entry_ptr.230, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.231, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1705, i32 4}
!460 = !{ptr @uvc_scan_chain_forward._entry, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @uvc_scan_chain_forward._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @uvc_scan_chain_forward._entry.232, !463, !"_entry", i1 false, i1 false}
!463 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1714, i32 5}
!464 = !{ptr @uvc_scan_chain_forward._entry_ptr.233, !463, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.235, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1736, i32 6}
!467 = !{ptr @uvc_scan_chain_forward._entry.234, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @uvc_scan_chain_forward._entry_ptr.236, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.238, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1747, i32 5}
!471 = !{ptr @uvc_scan_chain_forward._entry.237, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @uvc_scan_chain_forward._entry_ptr.239, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.241, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1749, i32 4}
!475 = !{ptr @uvc_scan_chain_forward._entry.240, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @uvc_scan_chain_forward._entry_ptr.242, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.244, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1758, i32 5}
!479 = !{ptr @uvc_scan_chain_forward._entry.243, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @uvc_scan_chain_forward._entry_ptr.245, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.247, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1765, i32 5}
!483 = !{ptr @uvc_scan_chain_forward._entry.246, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @uvc_scan_chain_forward._entry_ptr.248, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @uvc_scan_chain_forward._entry.249, !486, !"_entry", i1 false, i1 false}
!486 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1773, i32 5}
!487 = !{ptr @uvc_scan_chain_forward._entry_ptr.250, !486, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @uvc_scan_chain_forward._entry.251, !489, !"_entry", i1 false, i1 false}
!489 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1775, i32 4}
!490 = !{ptr @uvc_scan_chain_forward._entry_ptr.252, !489, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.254, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1781, i32 3}
!493 = !{ptr @uvc_scan_chain_forward._entry.253, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @uvc_scan_chain_forward._entry_ptr.255, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.256, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1806, i32 3}
!497 = !{ptr @.str.257, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @uvc_scan_chain_backward._entry, !496, !"_entry", i1 false, i1 false}
!499 = !{ptr @uvc_scan_chain_backward._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.259, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1813, i32 5}
!502 = !{ptr @uvc_scan_chain_backward._entry.258, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @uvc_scan_chain_backward._entry_ptr.260, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @uvc_scan_chain_backward._entry.261, !505, !"_entry", i1 false, i1 false}
!505 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1820, i32 5}
!506 = !{ptr @uvc_scan_chain_backward._entry_ptr.262, !505, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.264, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1826, i32 4}
!509 = !{ptr @uvc_scan_chain_backward._entry.263, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @uvc_scan_chain_backward._entry_ptr.265, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.267, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1832, i32 3}
!513 = !{ptr @uvc_scan_chain_backward._entry.266, !512, !"_entry", i1 false, i1 false}
!514 = !{ptr @uvc_scan_chain_backward._entry_ptr.268, !512, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.270, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1855, i32 3}
!517 = !{ptr @uvc_scan_chain_backward._entry.269, !516, !"_entry", i1 false, i1 false}
!518 = !{ptr @uvc_scan_chain_backward._entry_ptr.271, !516, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @uvc_print_chain.buffer, !520, !"buffer", i1 false, i1 false}
!520 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1926, i32 14}
!521 = !{ptr @.str.272, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1930, i32 18}
!523 = distinct !{null, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1913, i32 20}
!525 = distinct !{null, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1915, i32 20}
!527 = !{ptr @.str.275, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1918, i32 19}
!529 = !{ptr @.str.276, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2033, i32 2}
!531 = !{ptr @.str.277, !530, !"<string literal>", i1 false, i1 false}
!532 = !{ptr @uvc_scan_fallback._entry, !530, !"_entry", i1 false, i1 false}
!533 = !{ptr @uvc_scan_fallback._entry_ptr, !530, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.278, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2333, i32 4}
!536 = !{ptr @.str.279, !535, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @uvc_register_chains._entry, !535, !"_entry", i1 false, i1 false}
!538 = !{ptr @uvc_register_chains._entry_ptr, !535, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @.str.280, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2298, i32 4}
!541 = !{ptr @.str.281, !540, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @uvc_register_terms._entry, !540, !"_entry", i1 false, i1 false}
!543 = !{ptr @uvc_register_terms._entry_ptr, !540, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.282, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2263, i32 3}
!546 = !{ptr @.str.283, !545, !"<string literal>", i1 false, i1 false}
!547 = !{ptr @uvc_register_video._entry, !545, !"_entry", i1 false, i1 false}
!548 = !{ptr @uvc_register_video._entry_ptr, !545, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.284, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 1577, i32 7}
!551 = !{ptr @.str.285, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2525, i32 2}
!553 = !{ptr @.str.286, !552, !"<string literal>", i1 false, i1 false}
!554 = !{ptr @uvc_suspend._entry, !552, !"_entry", i1 false, i1 false}
!555 = !{ptr @uvc_suspend._entry_ptr, !552, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.288, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2543, i32 2}
!558 = !{ptr @uvc_suspend._entry.287, !557, !"_entry", i1 false, i1 false}
!559 = !{ptr @uvc_suspend._entry_ptr.289, !557, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.290, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2554, i32 2}
!562 = !{ptr @.str.291, !561, !"<string literal>", i1 false, i1 false}
!563 = !{ptr @__uvc_resume._entry, !561, !"_entry", i1 false, i1 false}
!564 = !{ptr @__uvc_resume._entry_ptr, !561, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @.str.293, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2583, i32 2}
!567 = !{ptr @__uvc_resume._entry.292, !566, !"_entry", i1 false, i1 false}
!568 = !{ptr @__uvc_resume._entry_ptr.294, !566, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @uvc_ids, !570, !"uvc_ids", i1 false, i1 false}
!570 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2672, i32 35}
!571 = !{ptr @uvc_quirk_probe_minmax, !572, !"uvc_quirk_probe_minmax", i1 false, i1 false}
!572 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2643, i32 37}
!573 = !{ptr @uvc_quirk_probe_def, !574, !"uvc_quirk_probe_def", i1 false, i1 false}
!574 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2651, i32 37}
!575 = !{ptr @uvc_quirk_fix_bandwidth, !576, !"uvc_quirk_fix_bandwidth", i1 false, i1 false}
!576 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2647, i32 37}
!577 = !{ptr @uvc_quirk_stream_no_fid, !578, !"uvc_quirk_stream_no_fid", i1 false, i1 false}
!578 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2655, i32 37}
!579 = !{ptr @uvc_quirk_force_y8, !580, !"uvc_quirk_force_y8", i1 false, i1 false}
!580 = !{!"../drivers/media/usb/uvc/uvc_driver.c", i32 2659, i32 37}
!581 = !{i32 1, !"wchar_size", i32 2}
!582 = !{i32 1, !"min_enum_size", i32 4}
!583 = !{i32 8, !"branch-target-enforcement", i32 0}
!584 = !{i32 8, !"sign-return-address", i32 0}
!585 = !{i32 8, !"sign-return-address-all", i32 0}
!586 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!587 = !{i32 7, !"uwtable", i32 1}
!588 = !{i32 7, !"frame-pointer", i32 2}
!589 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!590 = !{!"branch_weights", i32 1, i32 2000}
!591 = !{i64 2148205584, i64 2148205616, i64 2148205645, i64 2148205679, i64 2148205710, i64 2148205733}
!592 = !{!"branch_weights", i32 2000, i32 1}
!593 = !{i64 2148293585}
!594 = !{i64 2148208049, i64 2148208081, i64 2148208110, i64 2148208144, i64 2148208175, i64 2148208198}
!595 = !{i64 2149417631}
