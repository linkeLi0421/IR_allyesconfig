; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_uvc.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_uvc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.uvc_control_endpoint_descriptor = type <{ i8, i8, i8, i16 }>
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type opaque
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.uvc_device = type { %struct.video_device, %struct.v4l2_device, i32, %struct.usb_function, %struct.uvc_video, i8, %struct.anon.98, i32, ptr, ptr, ptr, i32, i32, i8 }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.uvc_video = type { ptr, ptr, %struct.work_struct, i8, i32, i32, i32, i32, %struct.mutex, i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, %struct.uvc_video_queue, i32 }
%struct.uvc_video_queue = type { %struct.vb2_queue, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.98 = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_uvc_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.uvc_camera_terminal_descriptor, %struct.uvc_processing_unit_descriptor, %struct.uvc_output_terminal_descriptor, %struct.uvc_color_matching_descriptor, [5 x ptr], [5 x ptr], ptr, ptr, ptr, %struct.mutex, i32 }
%struct.uvc_camera_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i16, i16, i8, [3 x i8] }
%struct.uvc_processing_unit_descriptor = type <{ i8, i8, i8, i8, i8, i16, i8, [2 x i8], i8, i8 }>
%struct.uvc_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.uvc_color_matching_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.v4l2_event = type { i32, %union.anon.99, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.99 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.100, i32, i32, i32, i32, i32 }
%union.anon.100 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.uvc_header_descriptor = type <{ i8, i8, i8, i16, i16, i32, i8, [0 x i8] }>
%struct.uvc_input_header_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }>

@__param_str_trace = internal constant [16 x i8] c"usb_f_uvc.trace\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@uvc_gadget_trace_param = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_trace = internal constant %struct.kernel_param { ptr @__param_str_trace, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @uvc_gadget_trace_param } }, section "__param", align 4
@__UNIQUE_ID_tracetype298 = internal constant [30 x i8] c"usb_f_uvc.parmtype=trace:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_trace299 = internal constant [41 x i8] c"usb_f_uvc.parm=trace:Trace level bitmask\00", section ".modinfo", align 1
@uvc_function_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: UVC connect failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uvc_function_connect\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/function/f_uvc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_function_connect._entry_ptr = internal global ptr @uvc_function_connect._entry, section ".printk_index", align 4
@uvc_function_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 396, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: UVC disconnect failed with %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uvc_function_disconnect\00", [40 x i8] zeroinitializer }, align 32
@uvc_function_disconnect._entry_ptr = internal global ptr @uvc_function_disconnect._entry, section ".printk_index", align 4
@__UNIQUE_ID_alias312 = internal constant [28 x i8] c"usb_f_uvc.alias=usbfunc:uvc\00", section ".modinfo", align 1
@uvcusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str.7, ptr null, %struct.list_head zeroinitializer, ptr @uvc_alloc_inst, ptr @uvc_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_uvc__313_959_uvcmod_init6 = internal global ptr @uvcmod_init, section ".initcall6.init", align 4
@__exitcall_uvcmod_exit = internal global ptr @uvcmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file314 = internal constant [53 x i8] c"usb_f_uvc.file=drivers/usb/gadget/function/usb_f_uvc\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [22 x i8] c"usb_f_uvc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [34 x i8] c"usb_f_uvc.author=Laurent Pinchart\00", section ".modinfo", align 1
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uvc\00", [28 x i8] zeroinitializer }, align 32
@uvc_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uvc_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&uvc->video.mutex\00", [46 x i8] zeroinitializer }, align 32
@uvc_function_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 598, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %s()\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uvc_function_bind\00", [46 x i8] zeroinitializer }, align 32
@uvc_function_bind._entry_ptr = internal global ptr @uvc_function_bind._entry, section ".printk_index", align 4
@uvc_function_bind._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 612, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: overriding streaming_maxpacket to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@uvc_function_bind._entry_ptr.14 = internal global ptr @uvc_function_bind._entry.12, section ".printk_index", align 4
@uvc_fs_streaming_ep = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uvc_hs_streaming_ep = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uvc_ss_streaming_ep = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uvc_ss_streaming_comp = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@uvc_control_ep = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 4096, i8 8, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uvc_function_bind._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Unable to allocate control EP\0A\00", [61 x i8] zeroinitializer }, align 32
@uvc_function_bind._entry_ptr.17 = internal global ptr @uvc_function_bind._entry.15, section ".printk_index", align 4
@uvc_function_bind._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 670, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Unable to allocate streaming EP\0A\00", [59 x i8] zeroinitializer }, align 32
@uvc_function_bind._entry_ptr.20 = internal global ptr @uvc_function_bind._entry.18, section ".printk_index", align 4
@uvc_function_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uvc_stringtab, ptr null], [24 x i8] zeroinitializer }, align 32
@uvc_iad = internal global { %struct.usb_interface_assoc_descriptor, [24 x i8] } { %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 14, i8 3, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@uvc_control_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 14, i8 1, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@uvc_streaming_intf_alt0 = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 0, i8 0, i8 14, i8 2, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@uvc_streaming_intf_alt1 = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 1, i8 1, i8 14, i8 2, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@uvc_function_bind._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.2, i32 743, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to register V4L2 device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@uvc_function_bind._entry_ptr.24 = internal global ptr @uvc_function_bind._entry.21, section ".printk_index", align 4
@uvc_function_bind._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.2, i32 755, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to register video device\0A\00", [59 x i8] zeroinitializer }, align 32
@uvc_function_bind._entry_ptr.27 = internal global ptr @uvc_function_bind._entry.25, section ".printk_index", align 4
@uvc_stringtab = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @uvc_en_us_strings }, [24 x i8] zeroinitializer }, align 32
@uvc_en_us_strings = internal global { [3 x %struct.usb_string], [40 x i8] } { [3 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.28 }, %struct.usb_string { i8 0, ptr @.str.29 }, %struct.usb_string zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UVC Camera\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Video Streaming\00", [16 x i8] zeroinitializer }, align 32
@uvc_ss_streaming = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @uvc_streaming_intf_alt1, ptr @uvc_ss_streaming_ep, ptr @uvc_ss_streaming_comp, ptr null], [16 x i8] zeroinitializer }, align 32
@uvc_hs_streaming = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @uvc_streaming_intf_alt1, ptr @uvc_hs_streaming_ep, ptr null], [20 x i8] zeroinitializer }, align 32
@uvc_fs_streaming = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @uvc_streaming_intf_alt1, ptr @uvc_fs_streaming_ep, ptr null], [20 x i8] zeroinitializer }, align 32
@uvc_control_cs_ep = internal constant { %struct.uvc_control_endpoint_descriptor, [27 x i8] } { %struct.uvc_control_endpoint_descriptor <{ i8 5, i8 37, i8 3, i16 4096 }>, [27 x i8] zeroinitializer }, align 32
@uvc_ss_control_comp = internal constant { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 4096 }, [26 x i8] zeroinitializer }, align 32
@uvc_v4l2_fops = external dso_local constant %struct.v4l2_file_operations, align 4
@uvc_v4l2_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 1
@dev_attr_function_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @function_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"function_name\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@uvc_function_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.32, ptr @.str.2, i32 894, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvc_function_unbind\00", [44 x i8] zeroinitializer }, align 32
@uvc_function_unbind._entry_ptr = internal global ptr @uvc_function_unbind._entry, section ".printk_index", align 4
@uvc_function_get_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %s(%u)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uvc_function_get_alt\00", [43 x i8] zeroinitializer }, align 32
@uvc_function_get_alt._entry_ptr = internal global ptr @uvc_function_get_alt._entry, section ".printk_index", align 4
@uvc_function_set_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %s(%u, %u)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uvc_function_set_alt\00", [43 x i8] zeroinitializer }, align 32
@uvc_function_set_alt._entry_ptr = internal global ptr @uvc_function_set_alt._entry, section ".printk_index", align 4
@uvc_function_set_alt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 289, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: reset UVC Control\0A\00", [41 x i8] zeroinitializer }, align 32
@uvc_function_set_alt._entry_ptr.39 = internal global ptr @uvc_function_set_alt._entry.37, section ".printk_index", align 4
@uvc_function_set_alt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: reset UVC\0A\00", [17 x i8] zeroinitializer }, align 32
@uvc_function_set_alt._entry_ptr.42 = internal global ptr @uvc_function_set_alt._entry.40, section ".printk_index", align 4
@uvc_function_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.43, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uvc_function_disable\00", [43 x i8] zeroinitializer }, align 32
@uvc_function_disable._entry_ptr = internal global ptr @uvc_function_disable._entry, section ".printk_index", align 4
@uvc_function_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid request type\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_function_setup\00", [45 x i8] zeroinitializer }, align 32
@uvc_function_setup._entry_ptr = internal global ptr @uvc_function_setup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"uvc_gadget_trace_param\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 33, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 387, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 396, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"uvcusb_func\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 959, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 798, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 916, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 598, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 611, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"uvc_fs_streaming_ep\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 139, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"uvc_hs_streaming_ep\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 150, i32 39 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"uvc_ss_streaming_ep\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 161, i32 39 }
@___asan_gen_.119 = private unnamed_addr constant [22 x i8] c"uvc_ss_streaming_comp\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 173, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"uvc_control_ep\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 90, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 656, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 670, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"uvc_function_strings\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 57, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant [8 x i8] c"uvc_iad\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 67, i32 46 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"uvc_control_intf\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 78, i32 40 }
@___asan_gen_.146 = private unnamed_addr constant [24 x i8] c"uvc_streaming_intf_alt0\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 115, i32 40 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"uvc_streaming_intf_alt1\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 127, i32 40 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 743, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 755, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [14 x i8] c"uvc_stringtab\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 52, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"uvc_en_us_strings\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 46, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 47, i32 31 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 48, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"uvc_ss_streaming\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 193, i32 51 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"uvc_hs_streaming\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 187, i32 51 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"uvc_fs_streaming\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 181, i32 51 }
@___asan_gen_.188 = private unnamed_addr constant [18 x i8] c"uvc_control_cs_ep\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 108, i32 47 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c"uvc_ss_control_comp\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 99, i32 41 }
@___asan_gen_.194 = private unnamed_addr constant [23 x i8] c"dev_attr_function_name\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 411, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 408, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 894, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 264, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 283, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 289, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 340, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 365, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [39 x i8] c"../drivers/usb/gadget/function/f_uvc.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 230, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_alias312, ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__UNIQUE_ID_trace299, ptr @__UNIQUE_ID_tracetype298, ptr @__exitcall_uvcmod_exit, ptr @__initcall__kmod_usb_f_uvc__313_959_uvcmod_init6, ptr @__param_trace, ptr @uvc_function_bind._entry, ptr @uvc_function_bind._entry.12, ptr @uvc_function_bind._entry.15, ptr @uvc_function_bind._entry.18, ptr @uvc_function_bind._entry.21, ptr @uvc_function_bind._entry.25, ptr @uvc_function_bind._entry_ptr, ptr @uvc_function_bind._entry_ptr.14, ptr @uvc_function_bind._entry_ptr.17, ptr @uvc_function_bind._entry_ptr.20, ptr @uvc_function_bind._entry_ptr.24, ptr @uvc_function_bind._entry_ptr.27, ptr @uvc_function_connect._entry, ptr @uvc_function_connect._entry_ptr, ptr @uvc_function_disable._entry, ptr @uvc_function_disable._entry_ptr, ptr @uvc_function_disconnect._entry, ptr @uvc_function_disconnect._entry_ptr, ptr @uvc_function_get_alt._entry, ptr @uvc_function_get_alt._entry_ptr, ptr @uvc_function_set_alt._entry, ptr @uvc_function_set_alt._entry.37, ptr @uvc_function_set_alt._entry.40, ptr @uvc_function_set_alt._entry_ptr, ptr @uvc_function_set_alt._entry_ptr.39, ptr @uvc_function_set_alt._entry_ptr.42, ptr @uvc_function_setup._entry, ptr @uvc_function_setup._entry_ptr, ptr @uvc_function_unbind._entry, ptr @uvc_function_unbind._entry_ptr, ptr @uvcmod_exit, ptr @uvc_gadget_trace_param, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @uvcusb_func, ptr @.str.7, ptr @uvc_alloc_inst.__key, ptr @.str.8, ptr @uvc_alloc.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @uvc_fs_streaming_ep, ptr @uvc_hs_streaming_ep, ptr @uvc_ss_streaming_ep, ptr @uvc_ss_streaming_comp, ptr @uvc_control_ep, ptr @.str.16, ptr @.str.19, ptr @uvc_function_strings, ptr @uvc_iad, ptr @uvc_control_intf, ptr @uvc_streaming_intf_alt0, ptr @uvc_streaming_intf_alt1, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @uvc_stringtab, ptr @uvc_en_us_strings, ptr @.str.28, ptr @.str.29, ptr @uvc_ss_streaming, ptr @uvc_hs_streaming, ptr @uvc_fs_streaming, ptr @uvc_control_cs_ep, ptr @uvc_ss_control_comp, ptr @dev_attr_function_name, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_gadget_trace_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_bind._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_fs_streaming_ep to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_hs_streaming_ep to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ss_streaming_ep to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ss_streaming_comp to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_control_ep to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_bind._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_bind._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_iad to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_control_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_streaming_intf_alt0 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_streaming_intf_alt1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_bind._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_bind._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_stringtab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_en_us_strings to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ss_streaming to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_hs_streaming to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_fs_streaming to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_control_cs_ep to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ss_control_comp to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_function_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_get_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_set_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_set_alt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_set_alt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_function_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_function_setup_continue(ptr nocapture noundef readonly %uvc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  tail call void @usb_composite_setup_continue(ptr noundef %3) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_setup_continue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_function_connect(ptr noundef %uvc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 3
  %call = tail call i32 @usb_function_activate(ptr noundef %func) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %config = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %7, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_function_disconnect(ptr noundef %uvc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 3
  %call = tail call i32 @usb_function_deactivate(ptr noundef %func) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %config = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %7, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uvcmod_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_function_unregister(ptr noundef nonnull @uvcusb_func) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcmod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @uvcusb_func) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uvc_alloc_inst() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 336) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @uvc_free_inst, ptr %free_func_inst, align 8
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @uvc_alloc_inst.__key) #11
  %uvc_camera_terminal = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %uvc_camera_terminal to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 18, ptr %uvc_camera_terminal, align 4
  %bDescriptorType = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 36, ptr %bDescriptorType, align 1
  %bDescriptorSubType = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %bDescriptorSubType to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %bDescriptorSubType, align 2
  %bTerminalID = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11, i32 3
  %5 = ptrtoint ptr %bTerminalID to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bTerminalID, align 1
  %wTerminalType = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %wTerminalType to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 258, ptr %wTerminalType, align 8
  %bAssocTerminal = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11, i32 5
  %bControlSize = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11, i32 10
  %7 = ptrtoint ptr %bAssocTerminal to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %bAssocTerminal, align 2
  %8 = ptrtoint ptr %bControlSize to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %bControlSize, align 2
  %bmControls = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11, i32 11
  %9 = ptrtoint ptr %bmControls to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %bmControls, align 1
  %arrayidx3 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 1
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 2
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx5, align 1
  %uvc_processing = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %uvc_processing to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 12, ptr %uvc_processing, align 2
  %bDescriptorType7 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %bDescriptorType7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 36, ptr %bDescriptorType7, align 1
  %bDescriptorSubType8 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %bDescriptorSubType8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %bDescriptorSubType8, align 8
  %bUnitID = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 3
  %15 = ptrtoint ptr %bUnitID to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %bUnitID, align 1
  %bSourceID = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 4
  %16 = ptrtoint ptr %bSourceID to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %bSourceID, align 2
  %wMaxMultiplier = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 5
  %17 = ptrtoint ptr %wMaxMultiplier to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 64, ptr %wMaxMultiplier, align 1
  %bControlSize9 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 6
  %18 = ptrtoint ptr %bControlSize9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %bControlSize9, align 1
  %bmControls10 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 7
  %19 = ptrtoint ptr %bmControls10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %bmControls10, align 2
  %arrayidx13 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 7, i32 1
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx13, align 1
  %iProcessing = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 8
  %21 = ptrtoint ptr %iProcessing to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %iProcessing, align 8
  %bmVideoStandards = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 12, i32 9
  %22 = ptrtoint ptr %bmVideoStandards to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bmVideoStandards, align 1
  %uvc_output_terminal = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 13
  %23 = ptrtoint ptr %uvc_output_terminal to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 9, ptr %uvc_output_terminal, align 2
  %bDescriptorType15 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %bDescriptorType15 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 36, ptr %bDescriptorType15, align 1
  %bDescriptorSubType16 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %bDescriptorSubType16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 3, ptr %bDescriptorSubType16, align 4
  %bTerminalID17 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 13, i32 3
  %26 = ptrtoint ptr %bTerminalID17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %bTerminalID17, align 1
  %wTerminalType18 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 13, i32 4
  %27 = ptrtoint ptr %wTerminalType18 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 257, ptr %wTerminalType18, align 2
  %bAssocTerminal19 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 13, i32 5
  %28 = ptrtoint ptr %bAssocTerminal19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %bAssocTerminal19, align 8
  %bSourceID20 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 13, i32 6
  %29 = ptrtoint ptr %bSourceID20 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %bSourceID20, align 1
  %iTerminal21 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 13, i32 7
  %30 = ptrtoint ptr %iTerminal21 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %iTerminal21, align 2
  %uvc_color_matching = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 14
  %31 = ptrtoint ptr %uvc_color_matching to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %uvc_color_matching, align 1
  %bDescriptorType23 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 14, i32 1
  %32 = ptrtoint ptr %bDescriptorType23 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 36, ptr %bDescriptorType23, align 4
  %bDescriptorSubType24 = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 14, i32 2
  %33 = ptrtoint ptr %bDescriptorSubType24 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 13, ptr %bDescriptorSubType24, align 1
  %bColorPrimaries = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 14, i32 3
  %34 = ptrtoint ptr %bColorPrimaries to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %bColorPrimaries, align 2
  %bTransferCharacteristics = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 14, i32 4
  %35 = ptrtoint ptr %bTransferCharacteristics to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %bTransferCharacteristics, align 1
  %bMatrixCoefficients = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 14, i32 5
  %36 = ptrtoint ptr %bMatrixCoefficients to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %bMatrixCoefficients, align 8
  %uvc_fs_control_cls = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 15
  %37 = ptrtoint ptr %uvc_fs_control_cls to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %uvc_fs_control_cls, align 4
  %arrayidx26 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %uvc_camera_terminal, ptr %arrayidx26, align 8
  %arrayidx27 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 15, i32 2
  %39 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %uvc_processing, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 15, i32 3
  %40 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %uvc_output_terminal, ptr %arrayidx28, align 8
  %arrayidx29 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 15, i32 4
  %41 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx29, align 4
  %fs_control = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %fs_control to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %uvc_fs_control_cls, ptr %fs_control, align 8
  %uvc_ss_control_cls = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 16
  %43 = ptrtoint ptr %uvc_ss_control_cls to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %uvc_ss_control_cls, align 8
  %arrayidx32 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 16, i32 1
  %44 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %uvc_camera_terminal, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 16, i32 2
  %45 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %uvc_processing, ptr %arrayidx33, align 8
  %arrayidx34 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 16, i32 3
  %46 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %uvc_output_terminal, ptr %arrayidx34, align 4
  %arrayidx35 = getelementptr %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 16, i32 4
  %47 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx35, align 8
  %ss_control = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %ss_control to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %uvc_ss_control_cls, ptr %ss_control, align 4
  %streaming_interval = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %streaming_interval to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %streaming_interval, align 4
  %streaming_maxpacket = getelementptr inbounds %struct.f_uvc_opts, ptr %call7.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %streaming_maxpacket to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1024, ptr %streaming_maxpacket, align 8
  %call36 = tail call i32 @uvcg_attach_configfs(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.then37, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %51 = inttoptr i32 %call36 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %51, %if.then37 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uvc_alloc(ptr noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2472) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 4, i32 8
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @uvc_alloc.__key) #11
  %state = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 8
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %uvc_fs_streaming_cls = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 17
  %2 = ptrtoint ptr %uvc_fs_streaming_cls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uvc_fs_streaming_cls, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end4_crit_edge, label %if.then2

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %fs_streaming = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 8
  %4 = ptrtoint ptr %fs_streaming to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %fs_streaming, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %do.body.if.end4_crit_edge
  %uvc_hs_streaming_cls = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 18
  %5 = ptrtoint ptr %uvc_hs_streaming_cls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uvc_hs_streaming_cls, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %hs_streaming = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 9
  %7 = ptrtoint ptr %hs_streaming to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %hs_streaming, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %uvc_ss_streaming_cls = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 19
  %8 = ptrtoint ptr %uvc_ss_streaming_cls to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uvc_ss_streaming_cls, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %ss_streaming = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 10
  %10 = ptrtoint ptr %ss_streaming to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ss_streaming, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %fs_control = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 6
  %11 = ptrtoint ptr %fs_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_control, align 4
  %desc = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %desc, align 8
  %ss_control = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 7
  %14 = ptrtoint ptr %ss_control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ss_control, align 4
  %ss_control15 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %ss_control15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %ss_control15, align 4
  %fs_streaming16 = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 8
  %17 = ptrtoint ptr %fs_streaming16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fs_streaming16, align 4
  %fs_streaming18 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %fs_streaming18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %fs_streaming18, align 8
  %hs_streaming19 = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 9
  %20 = ptrtoint ptr %hs_streaming19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hs_streaming19, align 4
  %hs_streaming21 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %hs_streaming21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %hs_streaming21, align 4
  %ss_streaming22 = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 10
  %23 = ptrtoint ptr %ss_streaming22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ss_streaming22, align 4
  %ss_streaming24 = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 6, i32 4
  %25 = ptrtoint ptr %ss_streaming24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %ss_streaming24, align 8
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %fi, i32 0, i32 21
  %26 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %refcnt, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %func = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.7, ptr %func, align 4
  %bind = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3, i32 9
  %29 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @uvc_function_bind, ptr %bind, align 8
  %unbind = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3, i32 10
  %30 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @uvc_function_unbind, ptr %unbind, align 4
  %get_alt = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3, i32 14
  %31 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @uvc_function_get_alt, ptr %get_alt, align 4
  %set_alt = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3, i32 13
  %32 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @uvc_function_set_alt, ptr %set_alt, align 8
  %disable = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3, i32 15
  %33 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @uvc_function_disable, ptr %disable, align 8
  %setup = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3, i32 16
  %34 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @uvc_function_setup, ptr %setup, align 4
  %free_func = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3, i32 11
  %35 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @uvc_free, ptr %free_func, align 8
  %bind_deactivated = getelementptr inbounds %struct.uvc_device, ptr %call7.i.i, i32 0, i32 3, i32 25
  %36 = ptrtoint ptr %bind_deactivated to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %bind_deactivated, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %bind_deactivated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %func, %if.end12 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_free_inst(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %f, i32 0, i32 20
  tail call void @mutex_destroy(ptr noundef %lock) #11
  tail call void @kfree(ptr noundef %f) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_attach_configfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_function_bind(ptr noundef %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %add.ptr.i = getelementptr i8, ptr %f, i32 -1484
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %cdev2 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %9, ptr noundef nonnull @.str.11) #14
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %10 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fi, align 4
  %streaming_interval = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %streaming_interval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %streaming_interval, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 1)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 16)
  %16 = ptrtoint ptr %streaming_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %streaming_interval, align 4
  %streaming_maxpacket = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 2
  %17 = ptrtoint ptr %streaming_maxpacket to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %streaming_maxpacket, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 1)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 3072)
  %21 = ptrtoint ptr %streaming_maxpacket to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %streaming_maxpacket, align 4
  %streaming_maxburst = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 3
  %22 = ptrtoint ptr %streaming_maxburst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %streaming_maxburst, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 15)
  %25 = ptrtoint ptr %streaming_maxburst to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %streaming_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  %rem = and i32 %20, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp33.not = icmp eq i32 %rem, 0
  %or.cond417 = select i1 %tobool.not, i1 true, i1 %cmp33.not
  br i1 %or.cond417, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw nsw i32 %20, 1023
  %div402 = and i32 %add, 7168
  %26 = ptrtoint ptr %streaming_maxpacket to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div402, ptr %streaming_maxpacket, align 4
  %27 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config, align 4
  %cdev41 = getelementptr inbounds %struct.usb_configuration, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %cdev41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cdev41, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev43 = getelementptr inbounds %struct.usb_gadget, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43, ptr noundef nonnull @.str.13, ptr noundef %34, i32 noundef %div402) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %35 = ptrtoint ptr %streaming_maxpacket to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %streaming_maxpacket, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %36)
  %cmp47 = icmp ult i32 %36, 1025
  br i1 %cmp47, label %if.end.if.end59_crit_edge, label %if.else

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %36)
  %cmp51 = icmp ult i32 %36, 2049
  br i1 %cmp51, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %div54401 = lshr i32 %36, 1
  br label %if.end59

if.else55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %div57 = udiv i32 %36, 3
  br label %if.end59

if.end59:                                         ; preds = %if.else55, %if.then52, %if.end.if.end59_crit_edge
  %max_packet_size.0 = phi i32 [ %div54401, %if.then52 ], [ %div57, %if.else55 ], [ %36, %if.end.if.end59_crit_edge ]
  %max_packet_mult.0 = phi i32 [ 2, %if.then52 ], [ 3, %if.else55 ], [ 1, %if.end.if.end59_crit_edge ]
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 1023)
  %conv = trunc i32 %37 to i16
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv)
  store i16 %38, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_fs_streaming_ep, i32 0, i32 4), align 1
  %39 = ptrtoint ptr %streaming_interval to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %streaming_interval, align 4
  %conv68 = trunc i32 %40 to i8
  store i8 %conv68, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_fs_streaming_ep, i32 0, i32 5), align 1
  %sub69 = add nsw i32 %max_packet_mult.0, -1
  %shl = shl nuw nsw i32 %sub69, 11
  %or = or i32 %shl, %max_packet_size.0
  %conv70 = trunc i32 %or to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv70)
  store i16 %41, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_hs_streaming_ep, i32 0, i32 4), align 1
  %spec.select = select i1 %cmp47, i8 %conv68, i8 1
  store i8 %spec.select, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_hs_streaming_ep, i32 0, i32 5), align 1
  %conv78 = trunc i32 %max_packet_size.0 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv78)
  store i16 %42, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_ss_streaming_ep, i32 0, i32 4), align 1
  store i8 %conv68, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_ss_streaming_ep, i32 0, i32 5), align 1
  %conv82 = trunc i32 %sub69 to i8
  store i8 %conv82, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @uvc_ss_streaming_comp, i32 0, i32 3), align 1
  %43 = ptrtoint ptr %streaming_maxburst to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %streaming_maxburst, align 4
  %conv84 = trunc i32 %44 to i8
  store i8 %conv84, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @uvc_ss_streaming_comp, i32 0, i32 2), align 1
  %mul85 = mul nuw i32 %max_packet_mult.0, %max_packet_size.0
  %add87 = add i32 %44, 1
  %mul88 = mul i32 %mul85, %add87
  %conv89 = trunc i32 %mul88 to i16
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv89)
  store i16 %45, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @uvc_ss_streaming_comp, i32 0, i32 4), align 1
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call91 = tail call ptr @usb_ep_autoconfig(ptr noundef %47, ptr noundef nonnull @uvc_control_ep) #11
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %do.end96, label %if.end102

do.end96:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config, align 4
  %cdev98 = getelementptr inbounds %struct.usb_configuration, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %cdev98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cdev98, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %dev100 = getelementptr inbounds %struct.usb_gadget, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev100, ptr noundef nonnull @.str.16, ptr noundef %55) #14
  br label %error

if.end102:                                        ; preds = %if.end59
  %control_ep = getelementptr i8, ptr %f, i32 964
  %56 = ptrtoint ptr %control_ep to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call91, ptr %control_ep, align 8
  %57 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cdev1, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %62)
  %cmp.i = icmp ult i32 %62, 5
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  br i1 %cmp.i, label %if.else110, label %if.then107

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %call109 = tail call ptr @usb_ep_autoconfig_ss(ptr noundef %64, ptr noundef nonnull @uvc_ss_streaming_ep, ptr noundef nonnull @uvc_ss_streaming_comp) #11
  br label %if.end121

if.else110:                                       ; preds = %if.end102
  %max_speed.i404 = getelementptr inbounds %struct.usb_gadget, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %max_speed.i404 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_speed.i404, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp.i405 = icmp ult i32 %66, 3
  br i1 %cmp.i405, label %if.else117, label %if.then114

if.then114:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #13
  %call116 = tail call ptr @usb_ep_autoconfig(ptr noundef %64, ptr noundef nonnull @uvc_hs_streaming_ep) #11
  br label %if.end121

if.else117:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #13
  %call119 = tail call ptr @usb_ep_autoconfig(ptr noundef %64, ptr noundef nonnull @uvc_fs_streaming_ep) #11
  br label %if.end121

if.end121:                                        ; preds = %if.else117, %if.then114, %if.then107
  %ep.0 = phi ptr [ %call109, %if.then107 ], [ %call116, %if.then114 ], [ %call119, %if.else117 ]
  %tobool122.not = icmp eq ptr %ep.0, null
  br i1 %tobool122.not, label %do.end126, label %if.end132

do.end126:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config, align 4
  %cdev128 = getelementptr inbounds %struct.usb_configuration, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %cdev128 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cdev128, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %dev130 = getelementptr inbounds %struct.usb_gadget, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev130, ptr noundef nonnull @.str.19, ptr noundef %74) #14
  br label %error

if.end132:                                        ; preds = %if.end121
  %video = getelementptr i8, ptr %f, i32 108
  %ep133 = getelementptr i8, ptr %f, i32 112
  %75 = ptrtoint ptr %ep133 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %ep.0, ptr %ep133, align 4
  %address = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 8
  %76 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %address, align 1
  store i8 %77, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_fs_streaming_ep, i32 0, i32 2), align 1
  store i8 %77, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_hs_streaming_ep, i32 0, i32 2), align 1
  store i8 %77, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_ss_streaming_ep, i32 0, i32 2), align 1
  %call142 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @uvc_function_strings, i32 noundef 3) #11
  %cmp.i407 = icmp ugt ptr %call142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i407, label %if.then144, label %if.end146

if.then144:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %call142 to i32
  br label %error

if.end146:                                        ; preds = %if.end132
  %79 = ptrtoint ptr %call142 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %call142, align 4
  store i8 %80, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @uvc_iad, i32 0, i32 7), align 1
  %81 = load i8, ptr %call142, align 4
  store i8 %81, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_control_intf, i32 0, i32 8), align 1
  %arrayidx149 = getelementptr %struct.usb_string, ptr %call142, i32 1
  %82 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx149, align 4
  store i8 %83, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_streaming_intf_alt0, i32 0, i32 8), align 1
  store i8 %83, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_streaming_intf_alt1, i32 0, i32 8), align 1
  %call154 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.end146.error_crit_edge, label %if.end158

if.end146.error_crit_edge:                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end158:                                        ; preds = %if.end146
  %conv159 = trunc i32 %call154 to i8
  store i8 %conv159, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @uvc_iad, i32 0, i32 2), align 1
  store i8 %conv159, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_control_intf, i32 0, i32 2), align 1
  %control_intf = getelementptr i8, ptr %f, i32 960
  %84 = ptrtoint ptr %control_intf to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call154, ptr %control_intf, align 4
  %control_interface = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 4
  %85 = ptrtoint ptr %control_interface to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call154, ptr %control_interface, align 4
  %call161 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %if.end158.error_crit_edge, label %if.end165

if.end158.error_crit_edge:                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end165:                                        ; preds = %if.end158
  %conv166 = trunc i32 %call161 to i8
  store i8 %conv166, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_streaming_intf_alt0, i32 0, i32 2), align 1
  store i8 %conv166, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_streaming_intf_alt1, i32 0, i32 2), align 1
  %streaming_intf = getelementptr i8, ptr %f, i32 976
  %86 = ptrtoint ptr %streaming_intf to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call161, ptr %streaming_intf, align 4
  %streaming_interface = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 5
  %87 = ptrtoint ptr %streaming_interface to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call161, ptr %streaming_interface, align 4
  %call168 = tail call fastcc ptr @uvc_copy_descriptors(ptr noundef %add.ptr.i, i32 noundef 2)
  %fs_descriptors = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 2
  %88 = ptrtoint ptr %fs_descriptors to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call168, ptr %fs_descriptors, align 4
  %cmp.i408 = icmp ugt ptr %call168, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i408, label %if.then171, label %if.end175

if.then171:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %call168 to i32
  %90 = ptrtoint ptr %fs_descriptors to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %fs_descriptors, align 4
  br label %error

if.end175:                                        ; preds = %if.end165
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %max_speed.i409 = getelementptr inbounds %struct.usb_gadget, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %max_speed.i409 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_speed.i409, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %94)
  %cmp.i410 = icmp ult i32 %94, 3
  br i1 %cmp.i410, label %if.end175.if.end188_crit_edge, label %if.then179

if.end175.if.end188_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.then179:                                       ; preds = %if.end175
  %call180 = tail call fastcc ptr @uvc_copy_descriptors(ptr noundef %add.ptr.i, i32 noundef 3)
  %hs_descriptors = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 3
  %95 = ptrtoint ptr %hs_descriptors to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call180, ptr %hs_descriptors, align 4
  %cmp.i412 = icmp ugt ptr %call180, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i412, label %if.then183, label %if.then179.if.end188_crit_edge

if.then179.if.end188_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.then183:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %call180 to i32
  %97 = ptrtoint ptr %hs_descriptors to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %hs_descriptors, align 4
  br label %error

if.end188:                                        ; preds = %if.then179.if.end188_crit_edge, %if.end175.if.end188_crit_edge
  %98 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cdev1, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %max_speed.i413 = getelementptr inbounds %struct.usb_gadget, ptr %101, i32 0, i32 6
  %102 = ptrtoint ptr %max_speed.i413 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_speed.i413, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %103)
  %cmp.i414 = icmp ult i32 %103, 5
  br i1 %cmp.i414, label %if.end188.if.end202_crit_edge, label %if.then193

if.end188.if.end202_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202

if.then193:                                       ; preds = %if.end188
  %call194 = tail call fastcc ptr @uvc_copy_descriptors(ptr noundef %add.ptr.i, i32 noundef 5)
  %ss_descriptors = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 4
  %104 = ptrtoint ptr %ss_descriptors to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call194, ptr %ss_descriptors, align 4
  %cmp.i416 = icmp ugt ptr %call194, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i416, label %if.then197, label %if.then193.if.end202_crit_edge

if.then193.if.end202_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202

if.then197:                                       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %call194 to i32
  %106 = ptrtoint ptr %ss_descriptors to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %ss_descriptors, align 4
  br label %error

if.end202:                                        ; preds = %if.then193.if.end202_crit_edge, %if.end188.if.end202_crit_edge
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ep0, align 4
  %call204 = tail call ptr @usb_ep_alloc_request(ptr noundef %110, i32 noundef 3264) #11
  %control_req = getelementptr i8, ptr %f, i32 968
  %111 = ptrtoint ptr %control_req to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call204, ptr %control_req, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3264, i32 noundef 64) #15
  %control_buf = getelementptr i8, ptr %f, i32 972
  %113 = ptrtoint ptr %control_buf to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i, ptr %control_buf, align 8
  %114 = ptrtoint ptr %control_req to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %control_req, align 4
  %cmp207 = icmp eq ptr %115, null
  %cmp210 = icmp eq ptr %call7.i, null
  %or.cond = select i1 %cmp207, i1 true, i1 %cmp210
  br i1 %or.cond, label %if.end202.error_crit_edge, label %if.end213

if.end202.error_crit_edge:                        ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end213:                                        ; preds = %if.end202
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call7.i, ptr %115, align 4
  %117 = ptrtoint ptr %control_req to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %control_req, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @uvc_function_ep0_complete, ptr %complete, align 4
  %120 = load ptr, ptr %control_req, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %120, i32 0, i32 8
  %121 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr.i, ptr %context, align 4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %dev219 = getelementptr inbounds %struct.usb_gadget, ptr %123, i32 0, i32 11
  %v4l2_dev = getelementptr i8, ptr %f, i32 -132
  %call220 = tail call i32 @v4l2_device_register(ptr noundef %dev219, ptr noundef %v4l2_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.end231, label %do.end225

do.end225:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %config, align 4
  %cdev227 = getelementptr inbounds %struct.usb_configuration, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %cdev227 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cdev227, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %dev229 = getelementptr inbounds %struct.usb_gadget, ptr %129, i32 0, i32 11
  %130 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev229, ptr noundef nonnull @.str.22, ptr noundef %131) #14
  br label %error

if.end231:                                        ; preds = %if.end213
  %call233 = tail call i32 @uvcg_video_init(ptr noundef %video, ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %if.end231.v4l2_error_crit_edge, label %if.end237

if.end231.v4l2_error_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_error

if.end237:                                        ; preds = %if.end231
  %call238 = tail call fastcc i32 @uvc_register_video(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cmp239 = icmp slt i32 %call238, 0
  br i1 %cmp239, label %do.end244, label %if.end237.cleanup_crit_edge

if.end237.cleanup_crit_edge:                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end244:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %config, align 4
  %cdev246 = getelementptr inbounds %struct.usb_configuration, ptr %133, i32 0, i32 9
  %134 = ptrtoint ptr %cdev246 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cdev246, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %dev248 = getelementptr inbounds %struct.usb_gadget, ptr %137, i32 0, i32 11
  %138 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev248, ptr noundef nonnull @.str.26, ptr noundef %139) #14
  br label %v4l2_error

v4l2_error:                                       ; preds = %do.end244, %if.end231.v4l2_error_crit_edge
  %ret.0 = phi i32 [ %call233, %if.end231.v4l2_error_crit_edge ], [ %call238, %do.end244 ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  br label %error

error:                                            ; preds = %v4l2_error, %do.end225, %if.end202.error_crit_edge, %if.then197, %if.then183, %if.then171, %if.end158.error_crit_edge, %if.end146.error_crit_edge, %if.then144, %do.end126, %do.end96
  %ret.1 = phi i32 [ %78, %if.then144 ], [ %call154, %if.end146.error_crit_edge ], [ %call161, %if.end158.error_crit_edge ], [ %89, %if.then171 ], [ %96, %if.then183 ], [ %105, %if.then197 ], [ %call161, %do.end225 ], [ %ret.0, %v4l2_error ], [ -22, %do.end126 ], [ -22, %do.end96 ], [ -12, %if.end202.error_crit_edge ]
  %control_req252 = getelementptr i8, ptr %f, i32 968
  %140 = ptrtoint ptr %control_req252 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %control_req252, align 4
  %tobool253.not = icmp eq ptr %141, null
  br i1 %tobool253.not, label %error.if.end258_crit_edge, label %if.then254

error.if.end258_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end258

if.then254:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 4
  %ep0256 = getelementptr inbounds %struct.usb_gadget, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %ep0256 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ep0256, align 4
  tail call void @usb_ep_free_request(ptr noundef %145, ptr noundef nonnull %141) #11
  br label %if.end258

if.end258:                                        ; preds = %if.then254, %error.if.end258_crit_edge
  %control_buf259 = getelementptr i8, ptr %f, i32 972
  %146 = ptrtoint ptr %control_buf259 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %control_buf259, align 8
  tail call void @kfree(ptr noundef %147) #11
  tail call void @usb_free_all_descriptors(ptr noundef %f) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end258, %if.end237.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end258 ], [ 0, %if.end237.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_function_unbind(ptr nocapture noundef readonly %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %add.ptr.i = getelementptr i8, ptr %f, i32 -1484
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %cdev2 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %9, ptr noundef nonnull @.str.32) #14
  %dev3 = getelementptr i8, ptr %f, i32 -1244
  tail call void @device_remove_file(ptr noundef %dev3, ptr noundef nonnull @dev_attr_function_name) #11
  tail call void @video_unregister_device(ptr noundef %add.ptr.i) #11
  %v4l2_dev = getelementptr i8, ptr %f, i32 -132
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep0, align 4
  %control_req = getelementptr i8, ptr %f, i32 968
  %14 = ptrtoint ptr %control_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %control_req, align 4
  tail call void @usb_ep_free_request(ptr noundef %13, ptr noundef %15) #11
  %control_buf = getelementptr i8, ptr %f, i32 972
  %16 = ptrtoint ptr %control_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %control_buf, align 8
  tail call void @kfree(ptr noundef %17) #11
  tail call void @usb_free_all_descriptors(ptr noundef %f) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_function_get_alt(ptr nocapture noundef readonly %f, i32 noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %7, ptr noundef nonnull @.str.34, i32 noundef %interface) #14
  %control_intf = getelementptr i8, ptr %f, i32 960
  %8 = ptrtoint ptr %control_intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control_intf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %interface)
  %cmp = icmp eq i32 %9, %interface
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %streaming_intf = getelementptr i8, ptr %f, i32 976
  %10 = ptrtoint ptr %streaming_intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %streaming_intf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %interface)
  %cmp1.not = icmp eq i32 %11, %interface
  br i1 %cmp1.not, label %if.else3, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %ep = getelementptr i8, ptr %f, i32 112
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled, align 1, !range !147
  %16 = zext i8 %15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else3, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.else3 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_function_set_alt(ptr noundef %f, i32 noundef %interface, i32 noundef %alt) #0 align 64 {
entry:
  %v4l2_event = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -1484
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %v4l2_event) #11
  %4 = call ptr @memset(ptr %v4l2_event, i32 255, i32 136)
  %u = getelementptr inbounds %struct.v4l2_event, ptr %v4l2_event, i32 0, i32 1
  %5 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdev1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %10, ptr noundef nonnull @.str.36, i32 noundef %interface, i32 noundef %alt) #14
  %control_intf = getelementptr i8, ptr %f, i32 960
  %11 = ptrtoint ptr %control_intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %control_intf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %interface)
  %cmp = icmp eq i32 %12, %interface
  br i1 %cmp, label %if.then, label %if.end31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %tobool.not = icmp eq i32 %alt, 0
  br i1 %tobool.not, label %do.end7, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end7:                                          ; preds = %if.then
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %cdev9 = getelementptr inbounds %struct.usb_configuration, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %cdev9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdev9, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev11 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.38, ptr noundef %20) #14
  %control_ep = getelementptr i8, ptr %f, i32 964
  %21 = ptrtoint ptr %control_ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %control_ep, align 8
  %call13 = tail call i32 @usb_ep_disable(ptr noundef %22) #11
  %23 = ptrtoint ptr %control_ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %control_ep, align 8
  %desc = getelementptr inbounds %struct.usb_ep, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %tobool15.not = icmp eq ptr %26, null
  br i1 %tobool15.not, label %if.then16, label %do.end7.if.end23_crit_edge

do.end7.if.end23_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then16:                                        ; preds = %do.end7
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %call19 = tail call i32 @config_ep_by_speed(ptr noundef %28, ptr noundef %f, ptr noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then16.if.end23_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end23:                                         ; preds = %if.then16.if.end23_crit_edge, %do.end7.if.end23_crit_edge
  %29 = ptrtoint ptr %control_ep to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %control_ep, align 8
  %call25 = tail call i32 @usb_ep_enable(ptr noundef %30) #11
  %state = getelementptr i8, ptr %f, i32 -4
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp26 = icmp eq i32 %32, 0
  br i1 %cmp26, label %if.then27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %33 = call ptr @memset(ptr %v4l2_event, i32 0, i32 136)
  %34 = ptrtoint ptr %v4l2_event to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 134217728, ptr %v4l2_event, align 8
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed, align 8
  %39 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %u, align 8
  call void @v4l2_event_queue(ptr noundef %add.ptr.i, ptr noundef nonnull %v4l2_event) #11
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %state, align 8
  br label %cleanup

if.end31:                                         ; preds = %entry
  %streaming_intf = getelementptr i8, ptr %f, i32 976
  %41 = ptrtoint ptr %streaming_intf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %streaming_intf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %interface)
  %cmp32.not = icmp eq i32 %42, %interface
  br i1 %cmp32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %43 = zext i32 %alt to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %alt, label %if.end34.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb48
  ]

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end34
  %state35 = getelementptr i8, ptr %f, i32 -4
  %44 = ptrtoint ptr %state35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp36.not = icmp eq i32 %45, 2
  br i1 %cmp36.not, label %if.end38, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %sw.bb
  %ep = getelementptr i8, ptr %f, i32 112
  %46 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ep, align 4
  %tobool39.not = icmp eq ptr %47, null
  br i1 %tobool39.not, label %if.end38.if.end44_crit_edge, label %if.then40

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 @usb_ep_disable(ptr noundef nonnull %47) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end38.if.end44_crit_edge
  %48 = call ptr @memset(ptr %v4l2_event, i32 0, i32 136)
  %49 = ptrtoint ptr %v4l2_event to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 134217731, ptr %v4l2_event, align 8
  call void @v4l2_event_queue(ptr noundef %add.ptr.i, ptr noundef nonnull %v4l2_event) #11
  %50 = ptrtoint ptr %state35 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %state35, align 8
  br label %cleanup

sw.bb48:                                          ; preds = %if.end34
  %state49 = getelementptr i8, ptr %f, i32 -4
  %51 = ptrtoint ptr %state49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp50.not = icmp eq i32 %52, 1
  br i1 %cmp50.not, label %if.end52, label %sw.bb48.cleanup_crit_edge

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %sw.bb48
  %ep54 = getelementptr i8, ptr %f, i32 112
  %53 = ptrtoint ptr %ep54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ep54, align 4
  %tobool55.not = icmp eq ptr %54, null
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %do.end60

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end60:                                         ; preds = %if.end52
  %55 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config, align 4
  %cdev62 = getelementptr inbounds %struct.usb_configuration, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %cdev62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cdev62, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %dev64 = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev64, ptr noundef nonnull @.str.41, ptr noundef %62) #14
  %63 = ptrtoint ptr %ep54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ep54, align 4
  %call68 = tail call i32 @usb_ep_disable(ptr noundef %64) #11
  %65 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config, align 4
  %cdev70 = getelementptr inbounds %struct.usb_configuration, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %cdev70 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cdev70, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %ep54 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ep54, align 4
  %call74 = tail call i32 @config_ep_by_speed(ptr noundef %70, ptr noundef %f, ptr noundef %72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end77:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %ep54 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ep54, align 4
  %call80 = tail call i32 @usb_ep_enable(ptr noundef %74) #11
  %75 = call ptr @memset(ptr %v4l2_event, i32 0, i32 136)
  %76 = ptrtoint ptr %v4l2_event to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 134217730, ptr %v4l2_event, align 8
  call void @v4l2_event_queue(ptr noundef %add.ptr.i, ptr noundef nonnull %v4l2_event) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end60.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %if.end44, %sw.bb.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then27, %if.end23.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 32767, %if.end77 ], [ 0, %if.end44 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then16.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end23.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb48.cleanup_crit_edge ], [ -22, %if.end52.cleanup_crit_edge ], [ %call74, %do.end60.cleanup_crit_edge ], [ -22, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %v4l2_event) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_function_disable(ptr noundef %f) #0 align 64 {
entry:
  %v4l2_event = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -1484
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %v4l2_event) #11
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %7, ptr noundef nonnull @.str.43) #14
  %8 = call ptr @memset(ptr %v4l2_event, i32 0, i32 136)
  %9 = ptrtoint ptr %v4l2_event to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 134217729, ptr %v4l2_event, align 8
  call void @v4l2_event_queue(ptr noundef %add.ptr.i, ptr noundef nonnull %v4l2_event) #11
  %state = getelementptr i8, ptr %f, i32 -4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 8
  %ep = getelementptr i8, ptr %f, i32 112
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep, align 4
  %call1 = call i32 @usb_ep_disable(ptr noundef %12) #11
  %control_ep = getelementptr i8, ptr %f, i32 964
  %13 = ptrtoint ptr %control_ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %control_ep, align 8
  %call2 = call i32 @usb_ep_disable(ptr noundef %14) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %v4l2_event) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_function_setup(ptr noundef %f, ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %v4l2_event = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -1484
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %v4l2_event) #11
  %u = getelementptr inbounds %struct.v4l2_event, ptr %v4l2_event, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl, align 1
  %2 = and i8 %1, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp.not = icmp eq i8 %2, 32
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef %10) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %11 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wLength, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %13)
  %cmp3 = icmp ugt i16 %13, 64
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %event_setup_out = getelementptr i8, ptr %f, i32 984
  %14 = and i8 %1, -128
  %15 = ptrtoint ptr %event_setup_out to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %event_setup_out, align 4
  %bf.clear = and i8 %bf.load, 127
  %16 = or i8 %bf.clear, %14
  %bf.set = xor i8 %16, -128
  store i8 %bf.set, ptr %event_setup_out, align 4
  %17 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %wLength, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv11 = zext i16 %19 to i32
  %event_length = getelementptr i8, ptr %f, i32 980
  %20 = ptrtoint ptr %event_length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv11, ptr %event_length, align 8
  %21 = call ptr @memset(ptr %v4l2_event, i32 0, i32 136)
  %22 = ptrtoint ptr %v4l2_event to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 134217732, ptr %v4l2_event, align 8
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %ctrl, align 1
  %25 = ptrtoint ptr %u to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %u, align 8
  call void @v4l2_event_queue(ptr noundef %add.ptr.i, ptr noundef nonnull %v4l2_event) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end6 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %v4l2_event) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_free(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -1484
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig_ss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @uvc_copy_descriptors(ptr nocapture noundef readonly %uvc, i32 noundef %speed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %speed, label %sw.default [
    i32 5, label %sw.bb
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ss_control = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 6, i32 1
  %ss_streaming = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 6, i32 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %desc3 = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 6
  %hs_streaming = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 6, i32 3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %desc6 = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 6
  %fs_streaming = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 6, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %uvc_control_desc.0.in = phi ptr [ %desc6, %sw.default ], [ %desc3, %sw.bb2 ], [ %ss_control, %sw.bb ]
  %uvc_streaming_cls.0.in = phi ptr [ %fs_streaming, %sw.default ], [ %hs_streaming, %sw.bb2 ], [ %ss_streaming, %sw.bb ]
  %uvc_streaming_std.0 = phi ptr [ @uvc_fs_streaming, %sw.default ], [ @uvc_hs_streaming, %sw.bb2 ], [ @uvc_ss_streaming, %sw.bb ]
  %1 = ptrtoint ptr %uvc_streaming_cls.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %uvc_streaming_cls.0 = load ptr, ptr %uvc_streaming_cls.0.in, align 4
  %2 = ptrtoint ptr %uvc_control_desc.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %uvc_control_desc.0 = load ptr, ptr %uvc_control_desc.0.in, align 4
  %tobool.not = icmp eq ptr %uvc_control_desc.0, null
  %tobool9.not = icmp eq ptr %uvc_streaming_cls.0, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %3 = load i8, ptr @uvc_iad, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8, ptr @uvc_control_intf, align 1
  %conv10 = zext i8 %4 to i32
  %5 = load i8, ptr @uvc_control_ep, align 1
  %conv11 = zext i8 %5 to i32
  %6 = load i8, ptr @uvc_streaming_intf_alt0, align 1
  %conv15 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv, 5
  %add12 = add nuw nsw i32 %add, %conv10
  %add14 = add nuw nsw i32 %add12, %conv11
  %add16 = add nuw nsw i32 %add14, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %speed)
  %cmp = icmp eq i32 %speed, 5
  %add20 = add nuw nsw i32 %add16, 6
  %n_desc.0 = select i1 %cmp, i32 6, i32 5
  %bytes.0 = select i1 %cmp, i32 %add20, i32 %add16
  %7 = ptrtoint ptr %uvc_control_desc.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uvc_control_desc.0, align 4
  %tobool22.not264 = icmp eq ptr %8, null
  br i1 %tobool22.not264, label %if.end.for.cond28.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond28.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond28.preheader

for.cond28.preheader.loopexit:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = trunc i32 %add24 to i16
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.cond28.preheader.loopexit, %if.end.for.cond28.preheader_crit_edge
  %control_size.0.lcssa = phi i16 [ 0, %if.end.for.cond28.preheader_crit_edge ], [ %phi.cast, %for.cond28.preheader.loopexit ]
  %n_desc.1.lcssa = phi i32 [ %n_desc.0, %if.end.for.cond28.preheader_crit_edge ], [ %inc, %for.cond28.preheader.loopexit ]
  %bytes.1.lcssa = phi i32 [ %bytes.0, %if.end.for.cond28.preheader_crit_edge ], [ %add27, %for.cond28.preheader.loopexit ]
  %9 = ptrtoint ptr %uvc_streaming_cls.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uvc_streaming_cls.0, align 4
  %tobool29.not271 = icmp eq ptr %10, null
  br i1 %tobool29.not271, label %for.cond28.preheader.for.cond41.preheader_crit_edge, label %for.cond28.preheader.for.body30_crit_edge

for.cond28.preheader.for.body30_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body30

for.cond28.preheader.for.cond41.preheader_crit_edge: ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond41.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %11 = phi ptr [ %15, %for.body.for.body_crit_edge ], [ %8, %if.end.for.body_crit_edge ]
  %bytes.1268 = phi i32 [ %add27, %for.body.for.body_crit_edge ], [ %bytes.0, %if.end.for.body_crit_edge ]
  %n_desc.1267 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %n_desc.0, %if.end.for.body_crit_edge ]
  %control_size.0266 = phi i32 [ %add24, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %src.0265 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %uvc_control_desc.0, %if.end.for.body_crit_edge ]
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv23 = zext i8 %13 to i32
  %add24 = add i32 %control_size.0266, %conv23
  %add27 = add i32 %bytes.1268, %conv23
  %inc = add i32 %n_desc.1267, 1
  %incdec.ptr = getelementptr ptr, ptr %src.0265, i32 1
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %incdec.ptr, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %for.cond28.preheader.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond41.preheader.loopexit:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast302 = trunc i32 %add33 to i16
  br label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.cond41.preheader.loopexit, %for.cond28.preheader.for.cond41.preheader_crit_edge
  %streaming_size.0.lcssa = phi i16 [ 0, %for.cond28.preheader.for.cond41.preheader_crit_edge ], [ %phi.cast302, %for.cond41.preheader.loopexit ]
  %n_desc.2.lcssa = phi i32 [ %n_desc.1.lcssa, %for.cond28.preheader.for.cond41.preheader_crit_edge ], [ %inc37, %for.cond41.preheader.loopexit ]
  %bytes.2.lcssa = phi i32 [ %bytes.1.lcssa, %for.cond28.preheader.for.cond41.preheader_crit_edge ], [ %add36, %for.cond41.preheader.loopexit ]
  %16 = ptrtoint ptr %uvc_streaming_std.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uvc_streaming_std.0, align 4
  %tobool42.not279 = icmp eq ptr %17, null
  br i1 %tobool42.not279, label %for.cond41.preheader.for.end50_crit_edge, label %for.cond41.preheader.for.body43_crit_edge

for.cond41.preheader.for.body43_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body43

for.cond41.preheader.for.end50_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end50

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.cond28.preheader.for.body30_crit_edge
  %18 = phi ptr [ %22, %for.body30.for.body30_crit_edge ], [ %10, %for.cond28.preheader.for.body30_crit_edge ]
  %bytes.2275 = phi i32 [ %add36, %for.body30.for.body30_crit_edge ], [ %bytes.1.lcssa, %for.cond28.preheader.for.body30_crit_edge ]
  %n_desc.2274 = phi i32 [ %inc37, %for.body30.for.body30_crit_edge ], [ %n_desc.1.lcssa, %for.cond28.preheader.for.body30_crit_edge ]
  %streaming_size.0273 = phi i32 [ %add33, %for.body30.for.body30_crit_edge ], [ 0, %for.cond28.preheader.for.body30_crit_edge ]
  %src.1272 = phi ptr [ %incdec.ptr39, %for.body30.for.body30_crit_edge ], [ %uvc_streaming_cls.0, %for.cond28.preheader.for.body30_crit_edge ]
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv32 = zext i8 %20 to i32
  %add33 = add i32 %streaming_size.0273, %conv32
  %add36 = add i32 %bytes.2275, %conv32
  %inc37 = add i32 %n_desc.2274, 1
  %incdec.ptr39 = getelementptr ptr, ptr %src.1272, i32 1
  %21 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %incdec.ptr39, align 4
  %tobool29.not = icmp eq ptr %22, null
  br i1 %tobool29.not, label %for.cond41.preheader.loopexit, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body30

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.cond41.preheader.for.body43_crit_edge
  %23 = phi ptr [ %27, %for.body43.for.body43_crit_edge ], [ %17, %for.cond41.preheader.for.body43_crit_edge ]
  %bytes.3282 = phi i32 [ %add46, %for.body43.for.body43_crit_edge ], [ %bytes.2.lcssa, %for.cond41.preheader.for.body43_crit_edge ]
  %n_desc.3281 = phi i32 [ %inc47, %for.body43.for.body43_crit_edge ], [ %n_desc.2.lcssa, %for.cond41.preheader.for.body43_crit_edge ]
  %src.2280 = phi ptr [ %incdec.ptr49, %for.body43.for.body43_crit_edge ], [ %uvc_streaming_std.0, %for.cond41.preheader.for.body43_crit_edge ]
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv45 = zext i8 %25 to i32
  %add46 = add i32 %bytes.3282, %conv45
  %inc47 = add i32 %n_desc.3281, 1
  %incdec.ptr49 = getelementptr ptr, ptr %src.2280, i32 1
  %26 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %incdec.ptr49, align 4
  %tobool42.not = icmp eq ptr %27, null
  br i1 %tobool42.not, label %for.body43.for.end50_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43

for.body43.for.end50_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end50

for.end50:                                        ; preds = %for.body43.for.end50_crit_edge, %for.cond41.preheader.for.end50_crit_edge
  %n_desc.3.lcssa = phi i32 [ %n_desc.2.lcssa, %for.cond41.preheader.for.end50_crit_edge ], [ %inc47, %for.body43.for.end50_crit_edge ]
  %bytes.3.lcssa = phi i32 [ %bytes.2.lcssa, %for.cond41.preheader.for.end50_crit_edge ], [ %add46, %for.body43.for.end50_crit_edge ]
  %add51 = shl i32 %n_desc.3.lcssa, 2
  %mul = add i32 %add51, 4
  %add52 = add i32 %mul, %bytes.3.lcssa
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add52, i32 noundef 3264) #16
  %cmp54 = icmp eq ptr %call9.i, null
  br i1 %cmp54, label %for.end50.cleanup_crit_edge, label %if.end57

for.end50.cleanup_crit_edge:                      ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end57:                                         ; preds = %for.end50
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %mul
  %28 = load i8, ptr @uvc_iad, align 1
  %conv60 = zext i8 %28 to i32
  %29 = call ptr @memcpy(ptr %add.ptr, ptr @uvc_iad, i32 %conv60)
  %incdec.ptr61 = getelementptr ptr, ptr %call9.i, i32 1
  %30 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr, ptr %call9.i, align 128
  %add.ptr63 = getelementptr i8, ptr %add.ptr, i32 %conv60
  %31 = load i8, ptr @uvc_control_intf, align 1
  %conv65 = zext i8 %31 to i32
  %32 = call ptr @memcpy(ptr %add.ptr63, ptr @uvc_control_intf, i32 %conv65)
  %incdec.ptr66 = getelementptr ptr, ptr %call9.i, i32 2
  %33 = ptrtoint ptr %incdec.ptr61 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr63, ptr %incdec.ptr61, align 4
  %add.ptr68 = getelementptr i8, ptr %add.ptr63, i32 %conv65
  %34 = ptrtoint ptr %uvc_control_desc.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uvc_control_desc.0, align 4
  %tobool73.not285 = icmp eq ptr %35, null
  br i1 %tobool73.not285, label %if.end57.for.end83_crit_edge, label %if.end57.for.body74_crit_edge

if.end57.for.body74_crit_edge:                    ; preds = %if.end57
  br label %for.body74

if.end57.for.end83_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end83

for.body74:                                       ; preds = %for.body74.for.body74_crit_edge, %if.end57.for.body74_crit_edge
  %36 = phi ptr [ %46, %for.body74.for.body74_crit_edge ], [ %35, %if.end57.for.body74_crit_edge ]
  %__src.0288 = phi ptr [ %incdec.ptr82, %for.body74.for.body74_crit_edge ], [ %uvc_control_desc.0, %if.end57.for.body74_crit_edge ]
  %mem.0287 = phi ptr [ %add.ptr80, %for.body74.for.body74_crit_edge ], [ %add.ptr68, %if.end57.for.body74_crit_edge ]
  %dst.0286 = phi ptr [ %incdec.ptr77, %for.body74.for.body74_crit_edge ], [ %incdec.ptr66, %if.end57.for.body74_crit_edge ]
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %conv76 = zext i8 %38 to i32
  %39 = call ptr @memcpy(ptr %mem.0287, ptr %36, i32 %conv76)
  %incdec.ptr77 = getelementptr ptr, ptr %dst.0286, i32 1
  %40 = ptrtoint ptr %dst.0286 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mem.0287, ptr %dst.0286, align 4
  %41 = ptrtoint ptr %__src.0288 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__src.0288, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv79 = zext i8 %44 to i32
  %add.ptr80 = getelementptr i8, ptr %mem.0287, i32 %conv79
  %incdec.ptr82 = getelementptr ptr, ptr %__src.0288, i32 1
  %45 = ptrtoint ptr %incdec.ptr82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %incdec.ptr82, align 4
  %tobool73.not = icmp eq ptr %46, null
  br i1 %tobool73.not, label %for.body74.for.end83_crit_edge, label %for.body74.for.body74_crit_edge

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body74

for.body74.for.end83_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end83

for.end83:                                        ; preds = %for.body74.for.end83_crit_edge, %if.end57.for.end83_crit_edge
  %dst.0.lcssa = phi ptr [ %incdec.ptr66, %if.end57.for.end83_crit_edge ], [ %incdec.ptr77, %for.body74.for.end83_crit_edge ]
  %mem.0.lcssa = phi ptr [ %add.ptr68, %if.end57.for.end83_crit_edge ], [ %add.ptr80, %for.body74.for.end83_crit_edge ]
  %47 = tail call i16 @llvm.bswap.i16(i16 %control_size.0.lcssa)
  %wTotalLength = getelementptr inbounds %struct.uvc_header_descriptor, ptr %add.ptr68, i32 0, i32 4
  %48 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %wTotalLength, align 1
  %bInCollection = getelementptr inbounds %struct.uvc_header_descriptor, ptr %add.ptr68, i32 0, i32 6
  %49 = ptrtoint ptr %bInCollection to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %bInCollection, align 1
  %streaming_intf = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 11
  %50 = ptrtoint ptr %streaming_intf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %streaming_intf, align 4
  %conv87 = trunc i32 %51 to i8
  %baInterfaceNr = getelementptr inbounds %struct.uvc_header_descriptor, ptr %add.ptr68, i32 0, i32 7
  %52 = ptrtoint ptr %baInterfaceNr to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv87, ptr %baInterfaceNr, align 1
  %53 = load i8, ptr @uvc_control_ep, align 1
  %conv89 = zext i8 %53 to i32
  %54 = call ptr @memcpy(ptr %mem.0.lcssa, ptr @uvc_control_ep, i32 %conv89)
  %incdec.ptr90 = getelementptr ptr, ptr %dst.0.lcssa, i32 1
  %55 = ptrtoint ptr %dst.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %mem.0.lcssa, ptr %dst.0.lcssa, align 4
  %add.ptr92 = getelementptr i8, ptr %mem.0.lcssa, i32 %conv89
  br i1 %cmp, label %do.body98, label %for.end83.do.body106_crit_edge

for.end83.do.body106_crit_edge:                   ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body106

do.body98:                                        ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #13
  %56 = call ptr @memcpy(ptr %add.ptr92, ptr @uvc_ss_control_comp, i32 6)
  %incdec.ptr100 = getelementptr ptr, ptr %dst.0.lcssa, i32 2
  %57 = ptrtoint ptr %incdec.ptr90 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr92, ptr %incdec.ptr90, align 4
  %add.ptr102 = getelementptr i8, ptr %add.ptr92, i32 6
  br label %do.body106

do.body106:                                       ; preds = %do.body98, %for.end83.do.body106_crit_edge
  %dst.1 = phi ptr [ %incdec.ptr100, %do.body98 ], [ %incdec.ptr90, %for.end83.do.body106_crit_edge ]
  %mem.1 = phi ptr [ %add.ptr102, %do.body98 ], [ %add.ptr92, %for.end83.do.body106_crit_edge ]
  %58 = call ptr @memcpy(ptr %mem.1, ptr @uvc_control_cs_ep, i32 5)
  %incdec.ptr108 = getelementptr ptr, ptr %dst.1, i32 1
  %59 = ptrtoint ptr %dst.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %mem.1, ptr %dst.1, align 4
  %add.ptr110 = getelementptr i8, ptr %mem.1, i32 5
  %60 = load i8, ptr @uvc_streaming_intf_alt0, align 1
  %conv114 = zext i8 %60 to i32
  %61 = call ptr @memcpy(ptr %add.ptr110, ptr @uvc_streaming_intf_alt0, i32 %conv114)
  %incdec.ptr115 = getelementptr ptr, ptr %dst.1, i32 2
  %62 = ptrtoint ptr %incdec.ptr108 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr110, ptr %incdec.ptr108, align 4
  %63 = load i8, ptr @uvc_streaming_intf_alt0, align 1
  %conv116 = zext i8 %63 to i32
  %add.ptr117 = getelementptr i8, ptr %add.ptr110, i32 %conv116
  %64 = ptrtoint ptr %uvc_streaming_cls.0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %uvc_streaming_cls.0, align 4
  %tobool123.not291 = icmp eq ptr %65, null
  br i1 %tobool123.not291, label %do.body106.for.end133_crit_edge, label %do.body106.for.body124_crit_edge

do.body106.for.body124_crit_edge:                 ; preds = %do.body106
  br label %for.body124

do.body106.for.end133_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end133

for.body124:                                      ; preds = %for.body124.for.body124_crit_edge, %do.body106.for.body124_crit_edge
  %66 = phi ptr [ %76, %for.body124.for.body124_crit_edge ], [ %65, %do.body106.for.body124_crit_edge ]
  %__src121.0294 = phi ptr [ %incdec.ptr132, %for.body124.for.body124_crit_edge ], [ %uvc_streaming_cls.0, %do.body106.for.body124_crit_edge ]
  %mem.2293 = phi ptr [ %add.ptr130, %for.body124.for.body124_crit_edge ], [ %add.ptr117, %do.body106.for.body124_crit_edge ]
  %dst.2292 = phi ptr [ %incdec.ptr127, %for.body124.for.body124_crit_edge ], [ %incdec.ptr115, %do.body106.for.body124_crit_edge ]
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  %conv126 = zext i8 %68 to i32
  %69 = call ptr @memcpy(ptr %mem.2293, ptr %66, i32 %conv126)
  %incdec.ptr127 = getelementptr ptr, ptr %dst.2292, i32 1
  %70 = ptrtoint ptr %dst.2292 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %mem.2293, ptr %dst.2292, align 4
  %71 = ptrtoint ptr %__src121.0294 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %__src121.0294, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %conv129 = zext i8 %74 to i32
  %add.ptr130 = getelementptr i8, ptr %mem.2293, i32 %conv129
  %incdec.ptr132 = getelementptr ptr, ptr %__src121.0294, i32 1
  %75 = ptrtoint ptr %incdec.ptr132 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %incdec.ptr132, align 4
  %tobool123.not = icmp eq ptr %76, null
  br i1 %tobool123.not, label %for.body124.for.end133_crit_edge, label %for.body124.for.body124_crit_edge

for.body124.for.body124_crit_edge:                ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body124

for.body124.for.end133_crit_edge:                 ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end133

for.end133:                                       ; preds = %for.body124.for.end133_crit_edge, %do.body106.for.end133_crit_edge
  %dst.2.lcssa = phi ptr [ %incdec.ptr115, %do.body106.for.end133_crit_edge ], [ %incdec.ptr127, %for.body124.for.end133_crit_edge ]
  %mem.2.lcssa = phi ptr [ %add.ptr117, %do.body106.for.end133_crit_edge ], [ %add.ptr130, %for.body124.for.end133_crit_edge ]
  %77 = tail call i16 @llvm.bswap.i16(i16 %streaming_size.0.lcssa)
  %wTotalLength137 = getelementptr inbounds %struct.uvc_input_header_descriptor, ptr %add.ptr117, i32 0, i32 4
  %78 = ptrtoint ptr %wTotalLength137 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %77, ptr %wTotalLength137, align 1
  %ep = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ep, align 4
  %address = getelementptr inbounds %struct.usb_ep, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %address, align 1
  %bEndpointAddress = getelementptr inbounds %struct.uvc_input_header_descriptor, ptr %add.ptr117, i32 0, i32 5
  %83 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %bEndpointAddress, align 1
  %84 = ptrtoint ptr %uvc_streaming_std.0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %uvc_streaming_std.0, align 4
  %tobool141.not297 = icmp eq ptr %85, null
  br i1 %tobool141.not297, label %for.end133.for.end151_crit_edge, label %for.end133.for.body142_crit_edge

for.end133.for.body142_crit_edge:                 ; preds = %for.end133
  br label %for.body142

for.end133.for.end151_crit_edge:                  ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end151

for.body142:                                      ; preds = %for.body142.for.body142_crit_edge, %for.end133.for.body142_crit_edge
  %86 = phi ptr [ %96, %for.body142.for.body142_crit_edge ], [ %85, %for.end133.for.body142_crit_edge ]
  %__src139.0300 = phi ptr [ %incdec.ptr150, %for.body142.for.body142_crit_edge ], [ %uvc_streaming_std.0, %for.end133.for.body142_crit_edge ]
  %mem.3299 = phi ptr [ %add.ptr148, %for.body142.for.body142_crit_edge ], [ %mem.2.lcssa, %for.end133.for.body142_crit_edge ]
  %dst.3298 = phi ptr [ %incdec.ptr145, %for.body142.for.body142_crit_edge ], [ %dst.2.lcssa, %for.end133.for.body142_crit_edge ]
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 1
  %conv144 = zext i8 %88 to i32
  %89 = call ptr @memcpy(ptr %mem.3299, ptr %86, i32 %conv144)
  %incdec.ptr145 = getelementptr ptr, ptr %dst.3298, i32 1
  %90 = ptrtoint ptr %dst.3298 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %mem.3299, ptr %dst.3298, align 4
  %91 = ptrtoint ptr %__src139.0300 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %__src139.0300, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 1
  %conv147 = zext i8 %94 to i32
  %add.ptr148 = getelementptr i8, ptr %mem.3299, i32 %conv147
  %incdec.ptr150 = getelementptr ptr, ptr %__src139.0300, i32 1
  %95 = ptrtoint ptr %incdec.ptr150 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %incdec.ptr150, align 4
  %tobool141.not = icmp eq ptr %96, null
  br i1 %tobool141.not, label %for.body142.for.end151_crit_edge, label %for.body142.for.body142_crit_edge

for.body142.for.body142_crit_edge:                ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body142

for.body142.for.end151_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end151

for.end151:                                       ; preds = %for.body142.for.end151_crit_edge, %for.end133.for.end151_crit_edge
  %dst.3.lcssa = phi ptr [ %dst.2.lcssa, %for.end133.for.end151_crit_edge ], [ %incdec.ptr145, %for.body142.for.end151_crit_edge ]
  %97 = ptrtoint ptr %dst.3.lcssa to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %dst.3.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end151, %for.end50.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i, %for.end151 ], [ null, %for.end50.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_function_ep0_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %v4l2_event = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %v4l2_event) #11
  %event_setup_out = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %event_setup_out to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %event_setup_out, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %u = getelementptr inbounds %struct.v4l2_event, ptr %v4l2_event, i32 0, i32 1
  %bf.clear = and i8 %bf.load, 127
  %3 = ptrtoint ptr %event_setup_out to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear, ptr %event_setup_out, align 4
  %4 = call ptr @memset(ptr %v4l2_event, i32 0, i32 136)
  %5 = ptrtoint ptr %v4l2_event to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 134217733, ptr %v4l2_event, align 8
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %8 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %u, align 8
  %data = getelementptr inbounds %struct.v4l2_event, ptr %v4l2_event, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  %11 = call ptr @memcpy(ptr %data, ptr %10, i32 %7)
  call void @v4l2_event_queue(ptr noundef %1, ptr noundef nonnull %v4l2_event) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %v4l2_event) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_video_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_register_video(ptr noundef %uvc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %4 = call ptr @memset(ptr %uvc, i32 0, i32 828)
  %v4l2_dev = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 1
  %v4l2_dev3 = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 7
  %5 = ptrtoint ptr %v4l2_dev3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %v4l2_dev, ptr %v4l2_dev3, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %v4l2_dev, align 4
  %fops = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 3
  %9 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uvc_v4l2_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 24
  %10 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @uvc_v4l2_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 23
  %11 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @video_device_release_empty, ptr %release, align 8
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 14
  %12 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %vfl_dir, align 4
  %mutex = getelementptr inbounds %struct.uvc_device, ptr %uvc, i32 0, i32 4, i32 8
  %lock = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 26
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mutex, ptr %lock, align 8
  %device_caps = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 4
  %14 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 67108866, ptr %device_caps, align 8
  %name = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 12
  %15 = load ptr, ptr %3, align 4
  %name15 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %name15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name15, align 4
  %call = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %17, i32 noundef 32) #11
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 5, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %uvc, ptr %driver_data.i.i, align 4
  %19 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fops, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %uvc, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev20 = getelementptr inbounds %struct.video_device, ptr %uvc, i32 0, i32 5
  %call21 = tail call i32 @device_create_file(ptr noundef %dev20, ptr noundef nonnull @dev_attr_function_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @video_unregister_device(ptr noundef %uvc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then23 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @function_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fi = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fi, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__param_trace, !1, !"__param_trace", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_tracetype298, !1, !"__UNIQUE_ID_tracetype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_trace299, !4, !"__UNIQUE_ID_trace299", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 35, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 387, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @uvc_function_connect._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @uvc_function_connect._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 396, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @uvc_function_disconnect._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @uvc_function_disconnect._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alias312, !19, !"__UNIQUE_ID_alias312", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 959, i32 1}
!20 = !{ptr @__initcall__kmod_usb_f_uvc__313_959_uvcmod_init6, !19, !"__initcall__kmod_usb_f_uvc__313_959_uvcmod_init6", i1 false, i1 false}
!21 = !{ptr @__exitcall_uvcmod_exit, !19, !"__exitcall_uvcmod_exit", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file314, !23, !"__UNIQUE_ID_file314", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 960, i32 1}
!24 = !{ptr @__UNIQUE_ID_license315, !23, !"__UNIQUE_ID_license315", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_author316, !26, !"__UNIQUE_ID_author316", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 961, i32 1}
!27 = !{ptr @uvc_gadget_trace_param, !28, !"uvc_gadget_trace_param", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 33, i32 14}
!29 = !{ptr @__param_str_trace, !1, !"__param_str_trace", i1 false, i1 false}
!30 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @uvcusb_func, !19, !"uvcusb_func", i1 false, i1 false}
!32 = !{ptr @uvc_alloc_inst.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 798, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @uvc_alloc.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 916, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 598, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @uvc_function_bind._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @uvc_function_bind._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 611, i32 3}
!45 = !{ptr @uvc_function_bind._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @uvc_function_bind._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 656, i32 3}
!49 = !{ptr @uvc_function_bind._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @uvc_function_bind._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 670, i32 3}
!53 = !{ptr @uvc_function_bind._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @uvc_function_bind._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 743, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @uvc_function_bind._entry.21, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @uvc_function_bind._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 755, i32 3}
!62 = !{ptr @uvc_function_bind._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @uvc_function_bind._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @uvc_fs_streaming_ep, !65, !"uvc_fs_streaming_ep", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 139, i32 39}
!66 = !{ptr @uvc_hs_streaming_ep, !67, !"uvc_hs_streaming_ep", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 150, i32 39}
!68 = !{ptr @uvc_ss_streaming_ep, !69, !"uvc_ss_streaming_ep", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 161, i32 39}
!70 = !{ptr @uvc_ss_streaming_comp, !71, !"uvc_ss_streaming_comp", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 173, i32 41}
!72 = !{ptr @uvc_control_ep, !73, !"uvc_control_ep", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 90, i32 39}
!74 = !{ptr @uvc_function_strings, !75, !"uvc_function_strings", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 57, i32 35}
!76 = !{ptr @uvc_stringtab, !77, !"uvc_stringtab", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 52, i32 34}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 47, i32 31}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 48, i32 33}
!82 = !{ptr @uvc_en_us_strings, !83, !"uvc_en_us_strings", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 46, i32 26}
!84 = !{ptr @uvc_iad, !85, !"uvc_iad", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 67, i32 46}
!86 = !{ptr @uvc_control_intf, !87, !"uvc_control_intf", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 78, i32 40}
!88 = !{ptr @uvc_streaming_intf_alt0, !89, !"uvc_streaming_intf_alt0", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 115, i32 40}
!90 = !{ptr @uvc_streaming_intf_alt1, !91, !"uvc_streaming_intf_alt1", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 127, i32 40}
!92 = !{ptr @uvc_ss_streaming, !93, !"uvc_ss_streaming", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 193, i32 51}
!94 = !{ptr @uvc_hs_streaming, !95, !"uvc_hs_streaming", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 187, i32 51}
!96 = !{ptr @uvc_fs_streaming, !97, !"uvc_fs_streaming", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 181, i32 51}
!98 = !{ptr @uvc_control_cs_ep, !99, !"uvc_control_cs_ep", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 108, i32 47}
!100 = !{ptr @uvc_ss_control_comp, !101, !"uvc_ss_control_comp", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 99, i32 41}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 411, i32 8}
!104 = !{ptr @dev_attr_function_name, !103, !"dev_attr_function_name", i1 false, i1 false}
!105 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 408, i32 22}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 894, i32 2}
!109 = !{ptr @uvc_function_unbind._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @uvc_function_unbind._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 264, i32 2}
!113 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @uvc_function_get_alt._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @uvc_function_get_alt._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 283, i32 2}
!118 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @uvc_function_set_alt._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @uvc_function_set_alt._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 289, i32 3}
!123 = !{ptr @uvc_function_set_alt._entry.37, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @uvc_function_set_alt._entry_ptr.39, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 340, i32 3}
!127 = !{ptr @uvc_function_set_alt._entry.40, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @uvc_function_set_alt._entry_ptr.42, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 365, i32 2}
!131 = !{ptr @uvc_function_disable._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @uvc_function_disable._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/function/f_uvc.c", i32 230, i32 3}
!135 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @uvc_function_setup._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @uvc_function_setup._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i8 0, i8 2}
