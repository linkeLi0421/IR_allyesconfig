; ModuleID = '/llk/IR_all_yes/drivers/media/usb/uvc/uvc_video.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.uvc_streaming_control = type <{ i16, i8, i8, i32, i16, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8 }>
%struct.uvc_streaming = type { %struct.list_head, ptr, %struct.video_device, ptr, %struct.atomic_t, ptr, i32, i16, %struct.uvc_streaming_header, i32, i32, ptr, %struct.uvc_streaming_control, ptr, ptr, ptr, %struct.mutex, i8, %struct.uvc_video_queue, ptr, ptr, %struct.anon.100, %struct.anon.101, [5 x %struct.uvc_urb], i32, i32, i8, ptr, %struct.anon.102, %struct.uvc_clock }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.uvc_streaming_header = type { i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.100 = type { %struct.video_device, %struct.uvc_video_queue, i32 }
%struct.anon.101 = type { [256 x i8], i32, i32, i32, i32 }
%struct.uvc_urb = type { ptr, ptr, ptr, i32, ptr, i32, [32 x %struct.uvc_copy_op], %struct.work_struct }
%struct.uvc_copy_op = type { ptr, ptr, ptr, i32 }
%struct.anon.102 = type { %struct.uvc_stats_frame, %struct.uvc_stats_stream }
%struct.uvc_stats_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i16, i32 }
%struct.uvc_stats_stream = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_clock = type { ptr, i32, i32, i32, i16, i16, [6 x i8], %struct.spinlock }
%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.uvc_format = type { i8, i8, i8, i32, i32, i32, i32, i32, [32 x i8], i32, ptr }
%struct.uvc_frame = type { i8, i8, i16, i16, i32, i32, i32, i8, i32, ptr }
%struct.uvc_clock_sample = type { i32, i16, i16, i64 }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.kref }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.86, i32 }
%union.anon.86 = type { i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.uvc_meta_buf = type <{ i64, i16, i8, i8, [0 x i8] }>

@uvc_query_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Failed to query (%s) UVC control %u on unit %u: %d (exp. %u).\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uvc_query_ctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/uvc/uvc_video.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_query_ctrl._entry_ptr = internal global ptr @uvc_query_ctrl._entry, section ".printk_index", align 4
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_query_ctrl._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 101, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Control error %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@uvc_query_ctrl._entry_ptr.8 = internal global ptr @uvc_query_ctrl._entry.5, section ".printk_index", align 4
@uvc_hw_timestamps_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_video_clock_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 748, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s: PTS %u y %llu.%06llu SOF %u.%06llu (x1 %u x2 %u y1 %u y2 %u SOF offset %u)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uvc_video_clock_update\00", [41 x i8] zeroinitializer }, align 32
@uvc_video_clock_update._entry_ptr = internal global ptr @uvc_video_clock_update._entry, section ".printk_index", align 4
@uvc_video_clock_update._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 784, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s: SOF %u.%06llu y %llu ts %llu buf ts %llu (x1 %u/%u/%u x2 %u/%u/%u y1 %u y2 %u)\0A\00", [44 x i8] zeroinitializer }, align 32
@uvc_video_clock_update._entry_ptr.13 = internal global ptr @uvc_video_clock_update._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"frames:  %u\0Apackets: %u\0Aempty:   %u\0Aerrors:  %u\0Ainvalid: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pts: %u early, %u initial, %u ok\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scr: %u count ok, %u diff ok\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sof: %u <= sof <= %u, freq %u.%03u kHz\0A\00", [56 x i8] zeroinitializer }, align 32
@uvc_video_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 2078, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No supported video formats found.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uvc_video_init\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@uvc_video_init._entry_ptr = internal global ptr @uvc_video_init._entry, section ".printk_index", align 4
@uvc_video_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 2119, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"No frame descriptor found for the default format.\0A\00", [45 x i8] zeroinitializer }, align 32
@uvc_video_init._entry_ptr.23 = internal global ptr @uvc_video_init._entry.21, section ".printk_index", align 4
@uvc_video_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.2, i32 2154, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Isochronous endpoints are not supported for video output devices.\0A\00", [61 x i8] zeroinitializer }, align 32
@uvc_video_init._entry_ptr.26 = internal global ptr @uvc_video_init._entry.24, section ".printk_index", align 4
@uvc_video_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&uvc_urb->work)\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SET_CUR\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GET_CUR\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GET_MIN\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GET_MAX\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GET_RES\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GET_LEN\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GET_INFO\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GET_DEF\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<invalid>\00", [22 x i8] zeroinitializer }, align 32
@uvc_timeout_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_set_video_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to set UVC %s control : %d (exp. %u).\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_set_video_ctrl\00", [45 x i8] zeroinitializer }, align 32
@uvc_set_video_ctrl._entry_ptr = internal global ptr @uvc_set_video_ctrl._entry, section ".printk_index", align 4
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"commit\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uvc_get_video_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 276, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"UVC non compliance - GET_MIN/MAX(PROBE) incorrectly supported. Enabling workaround.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_get_video_ctrl\00", [45 x i8] zeroinitializer }, align 32
@uvc_get_video_ctrl._entry_ptr = internal global ptr @uvc_get_video_ctrl._entry, section ".printk_index", align 4
@uvc_get_video_ctrl._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 288, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.\0A\00", [55 x i8] zeroinitializer }, align 32
@uvc_get_video_ctrl._entry_ptr.45 = internal global ptr @uvc_get_video_ctrl._entry.43, section ".printk_index", align 4
@uvc_get_video_ctrl._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 294, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to query (%u) UVC %s control : %d (exp. %u).\0A\00", [43 x i8] zeroinitializer }, align 32
@uvc_get_video_ctrl._entry_ptr.48 = internal global ptr @uvc_get_video_ctrl._entry.46, section ".printk_index", align 4
@uvc_fixup_video_ctrl.elgato_cam_link_4k = internal constant { %struct.usb_device_id, [40 x i8] } { %struct.usb_device_id { i16 3, i16 4057, i16 102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@uvc_fixup_video_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 161, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"Correct USB video probe response from {bmHint: 0x%04x, bFormatIndex: %u} to {bmHint: 0x%04x, bFormatIndex: %u}\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uvc_fixup_video_ctrl\00", [43 x i8] zeroinitializer }, align 32
@uvc_fixup_video_ctrl._entry_ptr = internal global ptr @uvc_fixup_video_ctrl._entry, section ".printk_index", align 4
@uvc_video_start_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1917, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Device requested null bandwidth, defaulting to lowest\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"uvc_video_start_transfer\00", [39 x i8] zeroinitializer }, align 32
@uvc_video_start_transfer._entry_ptr = internal global ptr @uvc_video_start_transfer._entry, section ".printk_index", align 4
@uvc_video_start_transfer._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 1922, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Device requested %u B/frame bandwidth\0A\00", [57 x i8] zeroinitializer }, align 32
@uvc_video_start_transfer._entry_ptr.55 = internal global ptr @uvc_video_start_transfer._entry.53, section ".printk_index", align 4
@uvc_video_start_transfer._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 1946, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"No fast enough alt setting for requested bandwidth\0A\00", [44 x i8] zeroinitializer }, align 32
@uvc_video_start_transfer._entry_ptr.58 = internal global ptr @uvc_video_start_transfer._entry.56, section ".printk_index", align 4
@uvc_video_start_transfer._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.2, i32 1952, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Selecting alternate setting %u (%u B/frame bandwidth)\0A\00", [41 x i8] zeroinitializer }, align 32
@uvc_video_start_transfer._entry_ptr.61 = internal global ptr @uvc_video_start_transfer._entry.59, section ".printk_index", align 4
@uvc_video_start_transfer._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.2, i32 1982, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to submit URB %u (%d).\0A\00", [33 x i8] zeroinitializer }, align 32
@uvc_video_start_transfer._entry_ptr.64 = internal global ptr @uvc_video_start_transfer._entry.62, section ".printk_index", align 4
@uvc_alloc_urb_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1716, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Allocated %u URB buffers of %ux%u bytes each\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uvc_alloc_urb_buffers\00", [42 x i8] zeroinitializer }, align 32
@uvc_alloc_urb_buffers._entry_ptr = internal global ptr @uvc_alloc_urb_buffers._entry, section ".printk_index", align 4
@uvc_alloc_urb_buffers._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 1723, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to allocate URB buffers (%u bytes per packet)\0A\00", [42 x i8] zeroinitializer }, align 32
@uvc_alloc_urb_buffers._entry_ptr.69 = internal global ptr @uvc_alloc_urb_buffers._entry.67, section ".printk_index", align 4
@uvc_video_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1571, ptr @.str.72, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Non-zero status (%d) in video completion handler.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_video_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@uvc_video_complete._entry_ptr = internal global ptr @uvc_video_complete._entry, section ".printk_index", align 4
@uvc_video_complete._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.71, ptr @.str.2, i32 1615, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to resubmit video URB (%d).\0A\00", [60 x i8] zeroinitializer }, align 32
@uvc_video_complete._entry_ptr.75 = internal global ptr @uvc_video_complete._entry.73, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@uvc_video_decode_isoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1402, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"USB isochronous frame lost (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uvc_video_decode_isoc\00", [42 x i8] zeroinitializer }, align 32
@uvc_video_decode_isoc._entry_ptr = internal global ptr @uvc_video_decode_isoc._entry, section ".printk_index", align 4
@uvc_video_decode_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1077, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Marking buffer as bad (error bit set)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uvc_video_decode_start\00", [41 x i8] zeroinitializer }, align 32
@uvc_video_decode_start._entry_ptr = internal global ptr @uvc_video_decode_start._entry, section ".printk_index", align 4
@uvc_video_decode_start._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1092, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dropping payload (out of sync)\0A\00", [32 x i8] zeroinitializer }, align 32
@uvc_video_decode_start._entry_ptr.82 = internal global ptr @uvc_video_decode_start._entry.80, section ".printk_index", align 4
@uvc_video_decode_start._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 1124, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Frame complete (FID bit toggled)\0A\00", [62 x i8] zeroinitializer }, align 32
@uvc_video_decode_start._entry_ptr.85 = internal global ptr @uvc_video_decode_start._entry.83, section ".printk_index", align 4
@uvc_video_stats_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 921, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"frame %u stats: %u/%u/%u packets, %u/%u/%u pts (%searly %sinitial), %u/%u scr, last pts/stc/sof %u/%u/%u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uvc_video_stats_update\00", [41 x i8] zeroinitializer }, align 32
@uvc_video_stats_update._entry_ptr = internal global ptr @uvc_video_stats_update._entry, section ".printk_index", align 4
@.str.88 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"!\00", [30 x i8] zeroinitializer }, align 32
@uvc_clock_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_video_decode_meta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 1346, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s(): t-sys %lluns, SOF %u, len %u, flags 0x%x, PTS %u, STC %u frame SOF %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uvc_video_decode_meta\00", [42 x i8] zeroinitializer }, align 32
@uvc_video_decode_meta._entry_ptr = internal global ptr @uvc_video_decode_meta._entry, section ".printk_index", align 4
@uvc_video_decode_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 1209, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Frame complete (overflow)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uvc_video_decode_data\00", [42 x i8] zeroinitializer }, align 32
@uvc_video_decode_data._entry_ptr = internal global ptr @uvc_video_decode_data._entry, section ".printk_index", align 4
@uvc_video_decode_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1222, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Frame complete (EOF found)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uvc_video_decode_end\00", [43 x i8] zeroinitializer }, align 32
@uvc_video_decode_end._entry_ptr = internal global ptr @uvc_video_decode_end._entry, section ".printk_index", align 4
@uvc_video_decode_end._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 1224, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EOF in empty payload\0A\00", [42 x i8] zeroinitializer }, align 32
@uvc_video_decode_end._entry_ptr.98 = internal global ptr @uvc_video_decode_end._entry.96, section ".printk_index", align 4
@uvc_video_copy_data_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.99, ptr @.str.2, i32 1181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"uvc_video_copy_data_work\00", [39 x i8] zeroinitializer }, align 32
@uvc_video_copy_data_work._entry_ptr = internal global ptr @uvc_video_copy_data_work._entry, section ".printk_index", align 4
@uvc_video_clock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&clock->lock\00", [19 x i8] zeroinitializer }, align 32
@switch.table.uvc_query_ctrl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -16, i32 -84, i32 -66, i32 -34, i32 -5, i32 -5, i32 -5, i32 -22], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 8, i64 130, i64 131, i64 135]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 12]
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 82, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 101, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 743, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 778, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 962, i32 7 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 970, i32 7 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 975, i32 7 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 979, i32 7 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2077, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2118, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2153, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2161, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 50, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 52, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 54, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 56, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 58, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 60, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 62, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 64, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 66, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 372, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 274, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 286, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 292, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [19 x i8] c"elgato_cam_link_4k\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 135, i32 36 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 158, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1916, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1920, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1945, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1950, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1980, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1714, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1721, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1569, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1614, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1400, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1076, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1091, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1123, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 913, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1340, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1208, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1222, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1224, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1180, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private constant [37 x i8] c"../drivers/media/usb/uvc/uvc_video.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 583, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [28 x i8] c"switch.table.uvc_query_ctrl\00", align 1
@llvm.compiler.used = appending global [137 x ptr] [ptr @uvc_alloc_urb_buffers._entry, ptr @uvc_alloc_urb_buffers._entry.67, ptr @uvc_alloc_urb_buffers._entry_ptr, ptr @uvc_alloc_urb_buffers._entry_ptr.69, ptr @uvc_fixup_video_ctrl._entry, ptr @uvc_fixup_video_ctrl._entry_ptr, ptr @uvc_get_video_ctrl._entry, ptr @uvc_get_video_ctrl._entry.43, ptr @uvc_get_video_ctrl._entry.46, ptr @uvc_get_video_ctrl._entry_ptr, ptr @uvc_get_video_ctrl._entry_ptr.45, ptr @uvc_get_video_ctrl._entry_ptr.48, ptr @uvc_query_ctrl._entry, ptr @uvc_query_ctrl._entry.5, ptr @uvc_query_ctrl._entry_ptr, ptr @uvc_query_ctrl._entry_ptr.8, ptr @uvc_set_video_ctrl._entry, ptr @uvc_set_video_ctrl._entry_ptr, ptr @uvc_video_clock_update._entry, ptr @uvc_video_clock_update._entry.11, ptr @uvc_video_clock_update._entry_ptr, ptr @uvc_video_clock_update._entry_ptr.13, ptr @uvc_video_complete._entry, ptr @uvc_video_complete._entry.73, ptr @uvc_video_complete._entry_ptr, ptr @uvc_video_complete._entry_ptr.75, ptr @uvc_video_copy_data_work._entry, ptr @uvc_video_copy_data_work._entry_ptr, ptr @uvc_video_decode_data._entry, ptr @uvc_video_decode_data._entry_ptr, ptr @uvc_video_decode_end._entry, ptr @uvc_video_decode_end._entry.96, ptr @uvc_video_decode_end._entry_ptr, ptr @uvc_video_decode_end._entry_ptr.98, ptr @uvc_video_decode_isoc._entry, ptr @uvc_video_decode_isoc._entry_ptr, ptr @uvc_video_decode_meta._entry, ptr @uvc_video_decode_meta._entry_ptr, ptr @uvc_video_decode_start._entry, ptr @uvc_video_decode_start._entry.80, ptr @uvc_video_decode_start._entry.83, ptr @uvc_video_decode_start._entry_ptr, ptr @uvc_video_decode_start._entry_ptr.82, ptr @uvc_video_decode_start._entry_ptr.85, ptr @uvc_video_init._entry, ptr @uvc_video_init._entry.21, ptr @uvc_video_init._entry.24, ptr @uvc_video_init._entry_ptr, ptr @uvc_video_init._entry_ptr.23, ptr @uvc_video_init._entry_ptr.26, ptr @uvc_video_start_transfer._entry, ptr @uvc_video_start_transfer._entry.53, ptr @uvc_video_start_transfer._entry.56, ptr @uvc_video_start_transfer._entry.59, ptr @uvc_video_start_transfer._entry.62, ptr @uvc_video_start_transfer._entry_ptr, ptr @uvc_video_start_transfer._entry_ptr.55, ptr @uvc_video_start_transfer._entry_ptr.58, ptr @uvc_video_start_transfer._entry_ptr.61, ptr @uvc_video_start_transfer._entry_ptr.64, ptr @uvc_video_stats_update._entry, ptr @uvc_video_stats_update._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @uvc_video_init.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @uvc_fixup_video_ctrl.elgato_cam_link_4k, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @uvc_video_clock_init.__key, ptr @.str.100, ptr @switch.table.uvc_query_ctrl], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_query_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_query_ctrl._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_clock_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_clock_update._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_set_video_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_get_video_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_get_video_ctrl._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_get_video_ctrl._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_fixup_video_ctrl.elgato_cam_link_4k to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_fixup_video_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_start_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_start_transfer._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_start_transfer._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_start_transfer._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_start_transfer._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_alloc_urb_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_alloc_urb_buffers._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_complete._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_decode_isoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_decode_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_decode_start._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_decode_start._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_stats_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_decode_meta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_decode_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_decode_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_decode_end._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_copy_data_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_video_clock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uvc_query_ctrl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_query_ctrl(ptr nocapture noundef readonly %dev, i8 noundef zeroext %query, i8 noundef zeroext %unit, i8 noundef zeroext %intfnum, i8 noundef zeroext %cs, ptr noundef %data, i16 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %query)
  %tobool.not.i = icmp sgt i8 %query, -1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i26.i = shl i32 %3, 8
  %..i = select i1 %tobool.not.i, i32 -2147483648, i32 -2147483520
  %or4.i = or i32 %shl.i26.i, %..i
  %4 = and i8 %query, -128
  %5 = or i8 %4, 33
  %conv13.i = zext i8 %cs to i16
  %shl.i = shl nuw i16 %conv13.i, 8
  %conv15.i = zext i8 %unit to i16
  %shl16.i = shl nuw i16 %conv15.i, 8
  %conv17.i = zext i8 %intfnum to i16
  %or18.i = or i16 %shl16.i, %conv17.i
  %call20.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or4.i, i8 noundef zeroext %query, i8 noundef zeroext %5, i16 noundef zeroext %shl.i, i16 noundef zeroext %or18.i, ptr noundef %data, i16 noundef zeroext %size, i32 noundef 5000) #10
  %conv = zext i16 %size to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %conv)
  %cmp = icmp eq i32 %call20.i, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end, !prof !192

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %call4 = tail call fastcc ptr @uvc_query_name(i8 noundef zeroext %query)
  %conv5 = zext i8 %cs to i32
  %conv6 = zext i8 %unit to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str, ptr noundef nonnull %call4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %call20.i, i32 noundef %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call20.i)
  %cmp8.not = icmp eq i32 %call20.i, -32
  br i1 %cmp8.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i26.i60 = shl i32 %13, 8
  %or4.i61 = or i32 %shl.i26.i60, -2147483520
  %call20.i63 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or4.i61, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %conv17.i, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 5000) #10
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data, align 1
  store i8 %9, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20.i63)
  %cmp13.not = icmp eq i32 %call20.i63, 1
  br i1 %cmp13.not, label %do.body19, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i63)
  %cmp16 = icmp slt i32 %call20.i63, 0
  %spec.select = select i1 %cmp16, i32 %call20.i63, i32 -32
  br label %cleanup

do.body19:                                        ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %16 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.body19.do.end30_crit_edge, label %do.end24

do.body19.do.end30_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.end24:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  %conv27 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev26, ptr noundef nonnull @.str.6, i32 noundef %conv27) #13
  br label %do.end30

do.end30:                                         ; preds = %do.end24, %do.body19.do.end30_crit_edge
  %switch.tableidx = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %19 = icmp ult i8 %switch.tableidx, 8
  br i1 %19, label %switch.lookup, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  %20 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.uvc_query_ctrl, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end30.cleanup_crit_edge, %if.then15, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then15 ], [ 0, %entry.cleanup_crit_edge ], [ %call20.i, %do.end.cleanup_crit_edge ], [ -32, %do.end30.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @uvc_query_name(i8 noundef zeroext %query) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %query to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %query, label %sw.default [
    i8 1, label %entry.return_crit_edge
    i8 -127, label %sw.bb1
    i8 -126, label %sw.bb2
    i8 -125, label %sw.bb3
    i8 -124, label %sw.bb4
    i8 -123, label %sw.bb5
    i8 -122, label %sw.bb6
    i8 -121, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.36, %sw.default ], [ @.str.35, %sw.bb7 ], [ @.str.34, %sw.bb6 ], [ @.str.33, %sw.bb5 ], [ @.str.32, %sw.bb4 ], [ @.str.31, %sw.bb3 ], [ @.str.30, %sw.bb2 ], [ @.str.29, %sw.bb1 ], [ @.str.28, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_probe_video(ptr nocapture noundef readonly %stream, ptr noundef %probe) local_unnamed_addr #0 align 64 {
entry:
  %probe_min = alloca %struct.uvc_streaming_control, align 1
  %probe_max = alloca %struct.uvc_streaming_control, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %probe_min) #10
  %0 = call ptr @memset(ptr %probe_min, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %probe_max) #10
  %1 = call ptr @memset(ptr %probe_max, i32 255, i32 34)
  %call = tail call fastcc i32 @uvc_set_video_ctrl(ptr noundef %stream, ptr noundef %probe, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then1:                                         ; preds = %if.end
  %call2 = call fastcc i32 @uvc_get_video_ctrl(ptr noundef %stream, ptr noundef nonnull %probe_min, i8 noundef zeroext -126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.done_crit_edge, label %if.end5

if.then1.done_crit_edge:                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end5:                                          ; preds = %if.then1
  %call6 = call fastcc i32 @uvc_get_video_ctrl(ptr noundef %stream, ptr noundef nonnull %probe_max, i8 noundef zeroext -125)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.done_crit_edge, label %if.end9

if.end5.done_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %wCompQuality = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe_max, i32 0, i32 6
  %6 = ptrtoint ptr %wCompQuality to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wCompQuality, align 1
  %wCompQuality10 = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 6
  %8 = ptrtoint ptr %wCompQuality10 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %wCompQuality10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end.if.end11_crit_edge
  %intf = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %dwMaxPayloadTransferSize = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 10
  %maxpsize = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 7
  %wKeyFrameRate = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe_min, i32 0, i32 4
  %wKeyFrameRate36 = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 4
  %wPFrameRate = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe_min, i32 0, i32 5
  %wPFrameRate37 = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 5
  %wCompQuality38 = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe_max, i32 0, i32 6
  %wCompQuality39 = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 6
  %wCompWindowSize = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe_min, i32 0, i32 7
  %wCompWindowSize40 = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 7
  %call13 = call fastcc i32 @uvc_set_video_ctrl(ptr noundef %stream, ptr noundef %probe, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.done_crit_edge, label %if.end16

if.end11.done_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end16:                                         ; preds = %if.end11
  %call17 = call fastcc i32 @uvc_get_video_ctrl(ptr noundef %stream, ptr noundef %probe, i8 noundef zeroext -127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.done_crit_edge, label %if.end20

if.end16.done_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end20:                                         ; preds = %if.end16
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 8
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp21 = icmp eq i32 %12, 1
  br i1 %cmp21, label %if.end20.done_crit_edge, label %if.end23

if.end20.done_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end23:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %dwMaxPayloadTransferSize to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %dwMaxPayloadTransferSize, align 1
  %conv24 = and i32 %14, 65535
  %15 = ptrtoint ptr %maxpsize to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %maxpsize, align 8
  %conv25 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24, i32 %conv25)
  %cmp26.not = icmp ugt i32 %conv24, %conv25
  br i1 %cmp26.not, label %if.end29, label %if.end23.done_crit_edge

if.end23.done_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end29:                                         ; preds = %if.end23
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %quirks31 = getelementptr inbounds %struct.uvc_device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %quirks31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quirks31, align 4
  %and32 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.done_crit_edge

if.end29.done_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end35:                                         ; preds = %if.end29
  %21 = ptrtoint ptr %wKeyFrameRate to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %wKeyFrameRate, align 1
  %23 = ptrtoint ptr %wKeyFrameRate36 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %wKeyFrameRate36, align 1
  %24 = ptrtoint ptr %wPFrameRate to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %wPFrameRate, align 1
  %26 = ptrtoint ptr %wPFrameRate37 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %wPFrameRate37, align 1
  %27 = ptrtoint ptr %wCompQuality38 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wCompQuality38, align 1
  %29 = ptrtoint ptr %wCompQuality39 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %wCompQuality39, align 1
  %30 = ptrtoint ptr %wCompWindowSize to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %wCompWindowSize, align 1
  %32 = ptrtoint ptr %wCompWindowSize40 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %wCompWindowSize40, align 1
  %call13.1 = call fastcc i32 @uvc_set_video_ctrl(ptr noundef %stream, ptr noundef %probe, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %cmp14.1 = icmp slt i32 %call13.1, 0
  br i1 %cmp14.1, label %if.end35.done_crit_edge, label %if.end16.1

if.end35.done_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end16.1:                                       ; preds = %if.end35
  %call17.1 = call fastcc i32 @uvc_get_video_ctrl(ptr noundef %stream, ptr noundef %probe, i8 noundef zeroext -127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1)
  %cmp18.1 = icmp slt i32 %call17.1, 0
  br i1 %cmp18.1, label %if.end16.1.done_crit_edge, label %if.end20.1

if.end16.1.done_crit_edge:                        ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end20.1:                                       ; preds = %if.end16.1
  %33 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf, align 8
  %num_altsetting.1 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %num_altsetting.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_altsetting.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp21.1 = icmp eq i32 %36, 1
  br i1 %cmp21.1, label %if.end20.1.done_crit_edge, label %if.end23.1

if.end20.1.done_crit_edge:                        ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end23.1:                                       ; preds = %if.end20.1
  %37 = ptrtoint ptr %dwMaxPayloadTransferSize to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %dwMaxPayloadTransferSize, align 1
  %conv24.1 = and i32 %38, 65535
  %39 = ptrtoint ptr %maxpsize to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %maxpsize, align 8
  %conv25.1 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24.1, i32 %conv25.1)
  %cmp26.not.1 = icmp ugt i32 %conv24.1, %conv25.1
  br i1 %cmp26.not.1, label %if.end29.1, label %if.end23.1.done_crit_edge

if.end23.1.done_crit_edge:                        ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end29.1:                                       ; preds = %if.end23.1
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %quirks31.1 = getelementptr inbounds %struct.uvc_device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %quirks31.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quirks31.1, align 4
  %and32.1 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.1)
  %tobool33.not.1 = icmp eq i32 %and32.1, 0
  br i1 %tobool33.not.1, label %if.end35.1, label %if.end29.1.done_crit_edge

if.end29.1.done_crit_edge:                        ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end35.1:                                       ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %wKeyFrameRate to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %wKeyFrameRate, align 1
  %47 = ptrtoint ptr %wKeyFrameRate36 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %wKeyFrameRate36, align 1
  %48 = ptrtoint ptr %wPFrameRate to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %wPFrameRate, align 1
  %50 = ptrtoint ptr %wPFrameRate37 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %wPFrameRate37, align 1
  %51 = ptrtoint ptr %wCompQuality38 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %wCompQuality38, align 1
  %53 = ptrtoint ptr %wCompQuality39 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %52, ptr %wCompQuality39, align 1
  %54 = ptrtoint ptr %wCompWindowSize to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %wCompWindowSize, align 1
  %56 = ptrtoint ptr %wCompWindowSize40 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %55, ptr %wCompWindowSize40, align 1
  br label %done

done:                                             ; preds = %if.end35.1, %if.end29.1.done_crit_edge, %if.end23.1.done_crit_edge, %if.end20.1.done_crit_edge, %if.end16.1.done_crit_edge, %if.end35.done_crit_edge, %if.end29.done_crit_edge, %if.end23.done_crit_edge, %if.end20.done_crit_edge, %if.end16.done_crit_edge, %if.end11.done_crit_edge, %if.end5.done_crit_edge, %if.then1.done_crit_edge, %entry.done_crit_edge
  %ret.2 = phi i32 [ %call, %entry.done_crit_edge ], [ %call2, %if.then1.done_crit_edge ], [ %call6, %if.end5.done_crit_edge ], [ %call13, %if.end11.done_crit_edge ], [ %call17, %if.end16.done_crit_edge ], [ 0, %if.end20.done_crit_edge ], [ 0, %if.end23.done_crit_edge ], [ -28, %if.end29.done_crit_edge ], [ %call13.1, %if.end35.done_crit_edge ], [ %call17.1, %if.end16.1.done_crit_edge ], [ 0, %if.end20.1.done_crit_edge ], [ 0, %if.end23.1.done_crit_edge ], [ -28, %if.end29.1.done_crit_edge ], [ 0, %if.end35.1 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %probe_max) #10
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %probe_min) #10
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_set_video_ctrl(ptr nocapture noundef readonly %stream, ptr nocapture noundef readonly %ctrl, i32 noundef %probe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %uvc_version.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %uvc_version.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uvc_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %3)
  %cmp.i = icmp ult i16 %3, 272
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %3)
  %cmp5.i = icmp ult i16 %3, 336
  %..i = select i1 %cmp5.i, i32 34, i32 48
  %retval.0.i = select i1 %cmp.i, i32 26, i32 %..i
  %conv = trunc i32 %retval.0.i to i16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #14
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ctrl, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %call9.i.i, align 128
  %bFormatIndex = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 1
  %8 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bFormatIndex, align 1
  %arrayidx4 = getelementptr i8, ptr %call9.i.i, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx4, align 2
  %bFrameIndex = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 2
  %11 = ptrtoint ptr %bFrameIndex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bFrameIndex, align 1
  %arrayidx5 = getelementptr i8, ptr %call9.i.i, i32 3
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx5, align 1
  %dwFrameInterval = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 3
  %14 = ptrtoint ptr %dwFrameInterval to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %dwFrameInterval, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %arrayidx6 = getelementptr i8, ptr %call9.i.i, i32 4
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx6, align 4
  %wKeyFrameRate = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 4
  %18 = ptrtoint ptr %wKeyFrameRate to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wKeyFrameRate, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %arrayidx7 = getelementptr i8, ptr %call9.i.i, i32 8
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx7, align 8
  %wPFrameRate = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 5
  %22 = ptrtoint ptr %wPFrameRate to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %wPFrameRate, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %arrayidx8 = getelementptr i8, ptr %call9.i.i, i32 10
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx8, align 2
  %wCompQuality = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 6
  %26 = ptrtoint ptr %wCompQuality to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %wCompQuality, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %arrayidx9 = getelementptr i8, ptr %call9.i.i, i32 12
  %29 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx9, align 4
  %wCompWindowSize = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 7
  %30 = ptrtoint ptr %wCompWindowSize to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %wCompWindowSize, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %arrayidx10 = getelementptr i8, ptr %call9.i.i, i32 14
  %33 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx10, align 2
  %wDelay = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 8
  %34 = ptrtoint ptr %wDelay to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %wDelay, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %arrayidx11 = getelementptr i8, ptr %call9.i.i, i32 16
  %37 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %arrayidx11, align 16
  %dwMaxVideoFrameSize = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 9
  %38 = ptrtoint ptr %dwMaxVideoFrameSize to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %dwMaxVideoFrameSize, align 1
  %arrayidx12 = getelementptr i8, ptr %call9.i.i, i32 18
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  %41 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %arrayidx12, align 2
  %dwMaxPayloadTransferSize = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 10
  %42 = ptrtoint ptr %dwMaxPayloadTransferSize to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %dwMaxPayloadTransferSize, align 1
  %arrayidx13 = getelementptr i8, ptr %call9.i.i, i32 22
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  %45 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %arrayidx13, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %retval.0.i)
  %cmp15 = icmp ugt i32 %retval.0.i, 33
  br i1 %cmp15, label %if.then17, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dwClockFrequency = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 11
  %46 = ptrtoint ptr %dwClockFrequency to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %dwClockFrequency, align 1
  %arrayidx18 = getelementptr i8, ptr %call9.i.i, i32 26
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  %49 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %arrayidx18, align 2
  %bmFramingInfo = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 12
  %50 = ptrtoint ptr %bmFramingInfo to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bmFramingInfo, align 1
  %arrayidx19 = getelementptr i8, ptr %call9.i.i, i32 30
  %52 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx19, align 2
  %bPreferedVersion = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 13
  %53 = ptrtoint ptr %bPreferedVersion to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bPreferedVersion, align 1
  %arrayidx20 = getelementptr i8, ptr %call9.i.i, i32 31
  %55 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx20, align 1
  %bMinVersion = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 14
  %56 = ptrtoint ptr %bMinVersion to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bMinVersion, align 1
  %arrayidx21 = getelementptr i8, ptr %call9.i.i, i32 32
  %58 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx21, align 32
  %bMaxVersion = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 15
  %59 = ptrtoint ptr %bMaxVersion to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bMaxVersion, align 1
  %arrayidx22 = getelementptr i8, ptr %call9.i.i, i32 33
  %61 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx22, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end.if.end23_crit_edge
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  %intfnum = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 6
  %64 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %intfnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %probe)
  %tobool.not = icmp eq i32 %probe, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_timeout_param to i32))
  %66 = load i32, ptr @uvc_timeout_param, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %63, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  %shl.i26.i = shl i32 %70, 8
  %or4.i = or i32 %shl.i26.i, -2147483648
  %conv13.i = select i1 %tobool.not, i16 512, i16 256
  %71 = trunc i32 %65 to i16
  %conv17.i = and i16 %71, 255
  %call20.i = tail call i32 @usb_control_msg(ptr noundef %68, i32 noundef %or4.i, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext %conv13.i, i16 noundef zeroext %conv17.i, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv, i32 noundef %66) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %retval.0.i)
  %cmp28.not = icmp eq i32 %call20.i, %retval.0.i
  br i1 %cmp28.not, label %if.end23.if.end35_crit_edge, label %do.end

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %72 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %intf, align 8
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %73, i32 0, i32 7
  %cond33 = select i1 %tobool.not, ptr @.str.40, ptr @.str.39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond33, i32 noundef %call20.i, i32 noundef %retval.0.i) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.end23.if.end35_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ %retval.0.i, %if.end23.if.end35_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_get_video_ctrl(ptr nocapture noundef readonly %stream, ptr noundef %ctrl, i8 noundef zeroext %query) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %uvc_version.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %uvc_version.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uvc_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %3)
  %cmp.i2 = icmp ult i16 %3, 272
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %3)
  %cmp5.i = icmp ult i16 %3, 336
  %..i = select i1 %cmp5.i, i32 34, i32 48
  %retval.0.i = select i1 %cmp.i2, i32 26, i32 %..i
  %conv = trunc i32 %retval.0.i to i16
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %query)
  %cmp = icmp eq i8 %query, -121
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #14
  %cmp5 = icmp eq ptr %call9.i, null
  br i1 %cmp5, label %if.end8.i.cleanup_crit_edge, label %if.end8

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end8.i
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %intfnum = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 6
  %8 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intfnum, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_timeout_param to i32))
  %10 = load i32, ptr @uvc_timeout_param, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %query)
  %tobool.not.i = icmp sgt i8 %query, -1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i26.i = shl i32 %14, 8
  %..i3 = select i1 %tobool.not.i, i32 -2147483648, i32 -2147483520
  %or4.i = or i32 %shl.i26.i, %..i3
  %15 = and i8 %query, -128
  %16 = or i8 %15, 33
  %17 = trunc i32 %9 to i16
  %conv17.i = and i16 %17, 255
  %call20.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or4.i, i8 noundef zeroext %query, i8 noundef zeroext %16, i16 noundef zeroext 256, i16 noundef zeroext %conv17.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv, i32 noundef %10) #10
  %conv14 = zext i8 %query to i32
  %18 = zext i8 %query to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %query, label %if.end8.if.else61_crit_edge [
    i8 -126, label %if.end8.land.lhs.true20_crit_edge
    i8 -125, label %if.end8.land.lhs.true20_crit_edge37
    i8 -121, label %land.lhs.true41
  ]

if.end8.land.lhs.true20_crit_edge37:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true20

if.end8.land.lhs.true20_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true20

if.end8.if.else61_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

land.lhs.true20:                                  ; preds = %if.end8.land.lhs.true20_crit_edge, %if.end8.land.lhs.true20_crit_edge37
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i)
  %cmp21 = icmp eq i32 %call20.i, 2
  br i1 %cmp21, label %do.body, label %land.lhs.true20.if.else61_crit_edge

land.lhs.true20.if.else61_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

do.body:                                          ; preds = %land.lhs.true20
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %warnings = getelementptr inbounds %struct.uvc_device, ptr %20, i32 0, i32 2
  %call25 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %warnings) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.end, label %do.body.do.end33_crit_edge

do.body.do.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev30 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.41) #13
  br label %do.end33

do.end33:                                         ; preds = %do.end, %do.body.do.end33_crit_edge
  %25 = call ptr @memset(ptr %ctrl, i32 0, i32 34)
  %26 = ptrtoint ptr %call9.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %call9.i, align 128
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #10
  %wCompQuality = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 6
  %29 = ptrtoint ptr %wCompQuality to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %wCompQuality, align 1
  br label %out

land.lhs.true41:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %retval.0.i)
  %cmp43.not.old = icmp eq i32 %call20.i, %retval.0.i
  br i1 %cmp43.not.old, label %land.lhs.true41.if.else61_crit_edge, label %do.body46

land.lhs.true41.if.else61_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else61

do.body46:                                        ; preds = %land.lhs.true41
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  %warnings48 = getelementptr inbounds %struct.uvc_device, ptr %31, i32 0, i32 2
  %call49 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %warnings48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.end54, label %do.body46.out_crit_edge

do.body46.out_crit_edge:                          ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end54:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %dev57 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev57, ptr noundef nonnull @.str.44) #13
  br label %out

if.else61:                                        ; preds = %land.lhs.true41.if.else61_crit_edge, %land.lhs.true20.if.else61_crit_edge, %if.end8.if.else61_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %retval.0.i)
  %cmp63.not = icmp eq i32 %call20.i, %retval.0.i
  br i1 %cmp63.not, label %if.end76, label %do.end68

do.end68:                                         ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %36 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %intf, align 8
  %dev69 = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69, ptr noundef nonnull @.str.47, i32 noundef %conv14, ptr noundef nonnull @.str.39, i32 noundef %call20.i, i32 noundef %retval.0.i) #13
  br label %out

if.end76:                                         ; preds = %if.else61
  %38 = ptrtoint ptr %call9.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %call9.i, align 128
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #10
  %41 = ptrtoint ptr %ctrl to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %ctrl, align 1
  %arrayidx78 = getelementptr i8, ptr %call9.i, i32 2
  %42 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx78, align 2
  %bFormatIndex = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 1
  %44 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %bFormatIndex, align 1
  %arrayidx79 = getelementptr i8, ptr %call9.i, i32 3
  %45 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx79, align 1
  %bFrameIndex = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 2
  %47 = ptrtoint ptr %bFrameIndex to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %bFrameIndex, align 1
  %arrayidx80 = getelementptr i8, ptr %call9.i, i32 4
  %48 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx80, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %dwFrameInterval = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 3
  %51 = ptrtoint ptr %dwFrameInterval to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %dwFrameInterval, align 1
  %arrayidx82 = getelementptr i8, ptr %call9.i, i32 8
  %52 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx82, align 8
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #10
  %wKeyFrameRate = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 4
  %55 = ptrtoint ptr %wKeyFrameRate to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %wKeyFrameRate, align 1
  %arrayidx84 = getelementptr i8, ptr %call9.i, i32 10
  %56 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx84, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #10
  %wPFrameRate = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 5
  %59 = ptrtoint ptr %wPFrameRate to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %wPFrameRate, align 1
  %arrayidx86 = getelementptr i8, ptr %call9.i, i32 12
  %60 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx86, align 4
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #10
  %wCompQuality88 = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 6
  %63 = ptrtoint ptr %wCompQuality88 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %62, ptr %wCompQuality88, align 1
  %arrayidx89 = getelementptr i8, ptr %call9.i, i32 14
  %64 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx89, align 2
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #10
  %wCompWindowSize = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 7
  %67 = ptrtoint ptr %wCompWindowSize to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %wCompWindowSize, align 1
  %arrayidx91 = getelementptr i8, ptr %call9.i, i32 16
  %68 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx91, align 16
  %70 = tail call i16 @llvm.bswap.i16(i16 %69) #10
  %wDelay = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 8
  %71 = ptrtoint ptr %wDelay to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %70, ptr %wDelay, align 1
  %arrayidx93 = getelementptr i8, ptr %call9.i, i32 18
  %72 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %arrayidx93, align 2
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #10
  %dwMaxVideoFrameSize = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 9
  %75 = ptrtoint ptr %dwMaxVideoFrameSize to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %dwMaxVideoFrameSize, align 1
  %arrayidx95 = getelementptr i8, ptr %call9.i, i32 22
  %76 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %arrayidx95, align 2
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #10
  %dwMaxPayloadTransferSize = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 10
  %79 = ptrtoint ptr %dwMaxPayloadTransferSize to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %dwMaxPayloadTransferSize, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %retval.0.i)
  %cmp98 = icmp ugt i32 %retval.0.i, 33
  br i1 %cmp98, label %if.then100, label %if.else107

if.then100:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx101 = getelementptr i8, ptr %call9.i, i32 26
  %80 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %arrayidx101, align 2
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #10
  %arrayidx103 = getelementptr i8, ptr %call9.i, i32 30
  %83 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx103, align 2
  %arrayidx104 = getelementptr i8, ptr %call9.i, i32 31
  %85 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx104, align 1
  %arrayidx105 = getelementptr i8, ptr %call9.i, i32 32
  %87 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx105, align 32
  %arrayidx106 = getelementptr i8, ptr %call9.i, i32 33
  %89 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx106, align 1
  br label %if.end114

if.else107:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 8
  %clock_frequency = getelementptr inbounds %struct.uvc_device, ptr %92, i32 0, i32 13
  %93 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %clock_frequency, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else107, %if.then100
  %.sink21 = phi i32 [ %82, %if.then100 ], [ %94, %if.else107 ]
  %.sink20 = phi i8 [ %84, %if.then100 ], [ 0, %if.else107 ]
  %.sink19 = phi i8 [ %86, %if.then100 ], [ 0, %if.else107 ]
  %.sink18 = phi i8 [ %88, %if.then100 ], [ 0, %if.else107 ]
  %.sink = phi i8 [ %90, %if.then100 ], [ 0, %if.else107 ]
  %95 = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 11
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %.sink21, ptr %95, align 1
  %97 = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 12
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %.sink20, ptr %97, align 1
  %99 = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 13
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %.sink19, ptr %99, align 1
  %101 = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 14
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink18, ptr %101, align 1
  %103 = getelementptr inbounds %struct.uvc_streaming_control, ptr %ctrl, i32 0, i32 15
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %.sink, ptr %103, align 1
  %105 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i, align 8
  %intf.i = getelementptr inbounds %struct.uvc_device, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %intf.i, align 4
  %call.i = tail call i32 @usb_match_one_id(ptr noundef %108, ptr noundef nonnull @uvc_fixup_video_ctrl.elgato_cam_link_4k) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i5 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i5, label %if.end114.if.end18.i_crit_edge, label %land.lhs.true.i

if.end114.if.end18.i_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end114
  %109 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %ctrl, align 1
  %conv.i = zext i16 %110 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %110)
  %cmp.i6 = icmp ugt i16 %110, 255
  br i1 %cmp.i6, label %if.then.i7, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then.i7:                                       ; preds = %land.lhs.true.i
  %111 = lshr i16 %110, 8
  %conv4.i = trunc i16 %111 to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %112 = load i32, ptr @uvc_dbg_param, align 4
  %and.i = and i32 %112, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.then.i7.do.end15.i_crit_edge, label %do.end.i

if.then.i7.do.end15.i_crit_edge:                  ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15.i

do.end.i:                                         ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 8
  %dev9.i = getelementptr inbounds %struct.usb_device, ptr %116, i32 0, i32 15
  %117 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bFormatIndex, align 1
  %conv12.i = zext i8 %118 to i32
  %conv13.i = zext i16 %111 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev9.i, ptr noundef nonnull @.str.49, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef 1, i32 noundef %conv13.i) #13
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %if.then.i7.do.end15.i_crit_edge
  %119 = ptrtoint ptr %ctrl to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 1, ptr %ctrl, align 1
  %120 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv4.i, ptr %bFormatIndex, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end15.i, %land.lhs.true.i.if.end18.i_crit_edge, %if.end114.if.end18.i_crit_edge
  %nformats.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 10
  %121 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp19175.not.i = icmp eq i32 %122, 0
  br i1 %cmp19175.not.i, label %if.end18.i.out_crit_edge, label %for.body.lr.ph.i

if.end18.i.out_crit_edge:                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph.i:                                 ; preds = %if.end18.i
  %format21.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 11
  %123 = ptrtoint ptr %format21.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %format21.i, align 8
  %125 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bFormatIndex, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0176.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i = getelementptr %struct.uvc_format, ptr %124, i32 %i.0176.i, i32 1
  %127 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %index.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %126)
  %cmp25.i = icmp eq i8 %128, %126
  br i1 %cmp25.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0176.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %122
  br i1 %exitcond.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.end.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.uvc_format, ptr %124, i32 %i.0176.i
  %cmp31.i = icmp eq ptr %arrayidx.i, null
  br i1 %cmp31.i, label %for.end.i.out_crit_edge, label %for.cond35.preheader.i

for.end.i.out_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond35.preheader.i:                           ; preds = %for.end.i
  %nframes.i = getelementptr %struct.uvc_format, ptr %124, i32 %i.0176.i, i32 9
  %129 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nframes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp36177.not.i = icmp eq i32 %130, 0
  br i1 %cmp36177.not.i, label %for.cond35.preheader.i.out_crit_edge, label %for.body38.lr.ph.i

for.cond35.preheader.i.out_crit_edge:             ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body38.lr.ph.i:                               ; preds = %for.cond35.preheader.i
  %frame39.i = getelementptr %struct.uvc_format, ptr %124, i32 %i.0176.i, i32 10
  %131 = ptrtoint ptr %frame39.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %frame39.i, align 4
  %133 = ptrtoint ptr %bFrameIndex to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bFrameIndex, align 1
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.inc50.i.for.body38.i_crit_edge, %for.body38.lr.ph.i
  %i.1178.i = phi i32 [ 0, %for.body38.lr.ph.i ], [ %inc51.i, %for.inc50.i.for.body38.i_crit_edge ]
  %arrayidx40.i = getelementptr %struct.uvc_frame, ptr %132, i32 %i.1178.i
  %135 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx40.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %134)
  %cmp44.i = icmp eq i8 %136, %134
  br i1 %cmp44.i, label %for.end52.i, label %for.inc50.i

for.inc50.i:                                      ; preds = %for.body38.i
  %inc51.i = add nuw i32 %i.1178.i, 1
  %exitcond183.not.i = icmp eq i32 %inc51.i, %130
  br i1 %exitcond183.not.i, label %for.inc50.i.out_crit_edge, label %for.inc50.i.for.body38.i_crit_edge

for.inc50.i.for.body38.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i

for.inc50.i.out_crit_edge:                        ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.end52.i:                                      ; preds = %for.body38.i
  %cmp53.i = icmp eq ptr %arrayidx40.i, null
  br i1 %cmp53.i, label %for.end52.i.out_crit_edge, label %if.end56.i

for.end52.i.out_crit_edge:                        ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end56.i:                                       ; preds = %for.end52.i
  %flags.i = getelementptr %struct.uvc_format, ptr %124, i32 %i.0176.i, i32 7
  %137 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags.i, align 4
  %and57.i = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i.if.then66.i_crit_edge, label %lor.lhs.false.i

if.end56.i.if.then66.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66.i

lor.lhs.false.i:                                  ; preds = %if.end56.i
  %139 = ptrtoint ptr %dwMaxVideoFrameSize to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %dwMaxVideoFrameSize, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp59.i = icmp eq i32 %140, 0
  br i1 %cmp59.i, label %land.lhs.true61.i, label %lor.lhs.false.i.if.end68.i_crit_edge

lor.lhs.false.i.if.end68.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

land.lhs.true61.i:                                ; preds = %lor.lhs.false.i
  %141 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i, align 8
  %uvc_version.i8 = getelementptr inbounds %struct.uvc_device, ptr %142, i32 0, i32 12
  %143 = ptrtoint ptr %uvc_version.i8 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %uvc_version.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %144)
  %cmp64.i = icmp ult i16 %144, 272
  br i1 %cmp64.i, label %land.lhs.true61.i.if.then66.i_crit_edge, label %land.lhs.true61.i.if.end68.i_crit_edge

land.lhs.true61.i.if.end68.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

land.lhs.true61.i.if.then66.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66.i

if.then66.i:                                      ; preds = %land.lhs.true61.i.if.then66.i_crit_edge, %if.end56.i.if.then66.i_crit_edge
  %dwMaxVideoFrameBufferSize.i = getelementptr %struct.uvc_frame, ptr %132, i32 %i.1178.i, i32 6
  %145 = ptrtoint ptr %dwMaxVideoFrameBufferSize.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dwMaxVideoFrameBufferSize.i, align 4
  %147 = ptrtoint ptr %dwMaxVideoFrameSize to i32
  call void @__asan_storeN_noabort(i32 %147, i32 4)
  store i32 %146, ptr %dwMaxVideoFrameSize, align 1
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %land.lhs.true61.i.if.end68.i_crit_edge, %lor.lhs.false.i.if.end68.i_crit_edge
  %148 = ptrtoint ptr %dwMaxPayloadTransferSize to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %dwMaxPayloadTransferSize, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %149)
  %cmp70.i = icmp ugt i32 %149, -65537
  br i1 %cmp70.i, label %if.then72.i, label %if.end68.i.if.end75.i_crit_edge

if.end68.i.if.end75.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i

if.then72.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  %and74.i = and i32 %149, 65535
  %150 = ptrtoint ptr %dwMaxPayloadTransferSize to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 %and74.i, ptr %dwMaxPayloadTransferSize, align 1
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %if.end68.i.if.end75.i_crit_edge
  %151 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags.i, align 4
  %and77.i = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %land.lhs.true79.i, label %if.end75.i.out_crit_edge

if.end75.i.out_crit_edge:                         ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true79.i:                                ; preds = %if.end75.i
  %153 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev.i, align 8
  %quirks.i = getelementptr inbounds %struct.uvc_device, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %quirks.i, align 4
  %and81.i = and i32 %156, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %land.lhs.true79.i.out_crit_edge, label %land.lhs.true83.i

land.lhs.true79.i.out_crit_edge:                  ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true83.i:                                ; preds = %land.lhs.true79.i
  %intf84.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %157 = ptrtoint ptr %intf84.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %intf84.i, align 8
  %num_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_altsetting.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp85.i = icmp ugt i32 %160, 1
  br i1 %cmp85.i, label %if.then87.i, label %land.lhs.true83.i.out_crit_edge

land.lhs.true83.i.out_crit_edge:                  ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then87.i:                                      ; preds = %land.lhs.true83.i
  %161 = ptrtoint ptr %dwFrameInterval to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %dwFrameInterval, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %162)
  %cmp88.i = icmp ugt i32 %162, 100000
  br i1 %cmp88.i, label %if.then87.i.cond.end.i_crit_edge, label %cond.false.i

if.then87.i.cond.end.i_crit_edge:                 ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  %dwFrameInterval91.i = getelementptr %struct.uvc_frame, ptr %132, i32 %i.1178.i, i32 9
  %163 = ptrtoint ptr %dwFrameInterval91.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dwFrameInterval91.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then87.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %166, %cond.false.i ], [ %162, %if.then87.i.cond.end.i_crit_edge ]
  %wWidth.i = getelementptr %struct.uvc_frame, ptr %132, i32 %i.1178.i, i32 2
  %167 = ptrtoint ptr %wWidth.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %wWidth.i, align 2
  %conv93.i = zext i16 %168 to i32
  %wHeight.i = getelementptr %struct.uvc_frame, ptr %132, i32 %i.1178.i, i32 3
  %169 = ptrtoint ptr %wHeight.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %wHeight.i, align 4
  %conv94.i = zext i16 %170 to i32
  %mul.i = mul nuw i32 %conv94.i, %conv93.i
  %div.i = sdiv i32 %mul.i, 8
  %bpp.i = getelementptr %struct.uvc_format, ptr %124, i32 %i.0176.i, i32 2
  %171 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %bpp.i, align 2
  %conv95.i = zext i8 %172 to i32
  %mul96.i = mul i32 %div.i, %conv95.i
  %div97.i = udiv i32 10000000, %cond.i
  %add.i = add nuw nsw i32 %div97.i, 1
  %mul98.i = mul i32 %mul96.i, %add.i
  %173 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %154, align 8
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %176)
  %cmp102.i = icmp eq i32 %176, 3
  %spec.select.v.i = select i1 %cmp102.i, i32 8000, i32 1000
  %spec.select.i = udiv i32 %mul98.i, %spec.select.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1012, i32 %spec.select.i)
  %cmp108.i = icmp ugt i32 %spec.select.i, 1012
  %add107.i = add nuw nsw i32 %spec.select.i, 12
  %cond113.i = select i1 %cmp108.i, i32 %add107.i, i32 1024
  %177 = ptrtoint ptr %dwMaxPayloadTransferSize to i32
  call void @__asan_storeN_noabort(i32 %177, i32 4)
  store i32 %cond113.i, ptr %dwMaxPayloadTransferSize, align 1
  br label %out

out:                                              ; preds = %cond.end.i, %land.lhs.true83.i.out_crit_edge, %land.lhs.true79.i.out_crit_edge, %if.end75.i.out_crit_edge, %for.end52.i.out_crit_edge, %for.inc50.i.out_crit_edge, %for.cond35.preheader.i.out_crit_edge, %for.end.i.out_crit_edge, %for.inc.i.out_crit_edge, %if.end18.i.out_crit_edge, %do.end68, %do.end54, %do.body46.out_crit_edge, %do.end33
  %ret.0 = phi i32 [ 0, %do.end33 ], [ -5, %do.end68 ], [ -5, %do.end54 ], [ -5, %do.body46.out_crit_edge ], [ 0, %if.end18.i.out_crit_edge ], [ 0, %for.end.i.out_crit_edge ], [ 0, %for.cond35.preheader.i.out_crit_edge ], [ 0, %for.end52.i.out_crit_edge ], [ 0, %if.end75.i.out_crit_edge ], [ 0, %land.lhs.true79.i.out_crit_edge ], [ 0, %land.lhs.true83.i.out_crit_edge ], [ 0, %cond.end.i ], [ 0, %for.inc50.i.out_crit_edge ], [ 0, %for.inc.i.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_video_clock_update(ptr noundef %stream, ptr nocapture noundef %vbuf, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock1 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_hw_timestamps_param to i32))
  %0 = load i32, ptr @uvc_hw_timestamps_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %clock1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clock1, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 7
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %count = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 2
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %size = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 3
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp9 = icmp ult i32 %4, %6
  br i1 %cmp9, label %do.body5.done_crit_edge, label %if.end12

do.body5.done_crit_edge:                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end12:                                         ; preds = %do.body5
  %7 = ptrtoint ptr %clock1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clock1, align 4
  %head = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 1
  %9 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %head, align 4
  %arrayidx = getelementptr %struct.uvc_clock_sample, ptr %8, i32 %10
  %sub = add i32 %10, -1
  %rem = urem i32 %sub, %6
  %arrayidx17 = getelementptr %struct.uvc_clock_sample, ptr %8, i32 %rem
  %pts = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 7
  %11 = ptrtoint ptr %pts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pts, align 4
  %sub18 = xor i32 %12, -2147483648
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 8
  %sub19 = sub i32 %14, %sub18
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17, align 8
  %sub21 = sub i32 %16, %sub18
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp22 = icmp eq i32 %16, %14
  br i1 %cmp22, label %if.end12.done_crit_edge, label %if.end25

if.end12.done_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end25:                                         ; preds = %if.end12
  %dev_sof = getelementptr %struct.uvc_clock_sample, ptr %8, i32 %10, i32 1
  %17 = ptrtoint ptr %dev_sof to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dev_sof, align 4
  %conv26 = zext i16 %18 to i32
  %add = shl nuw i32 %conv26, 16
  %shl = add i32 %add, 134217728
  %dev_sof27 = getelementptr %struct.uvc_clock_sample, ptr %8, i32 %rem, i32 1
  %19 = ptrtoint ptr %dev_sof27 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dev_sof27, align 4
  %conv28 = zext i16 %20 to i32
  %add29 = shl nuw i32 %conv28, 16
  %shl30 = add i32 %add29, 134217728
  call void @__sanitizer_cov_trace_cmp4(i32 %shl30, i32 %shl)
  %cmp31 = icmp ult i32 %shl30, %shl
  %add34 = add i32 %add29, 268435456
  %spec.select = select i1 %cmp31, i32 %add34, i32 %shl30
  %sub36 = sub i32 %spec.select, %shl
  %conv37 = zext i32 %sub36 to i64
  %mul = shl nuw nsw i64 %conv37, 31
  %conv38 = zext i32 %shl to i64
  %conv39 = zext i32 %sub21 to i64
  %mul40 = mul nuw i64 %conv38, %conv39
  %conv42 = zext i32 %spec.select to i64
  %conv43 = zext i32 %sub19 to i64
  %mul44 = mul nuw i64 %conv42, %conv43
  %add41 = sub i64 %mul40, %mul44
  %sub45 = add i64 %add41, %mul
  %sub46 = sub i32 %sub21, %sub19
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub45)
  %cmp164.i.i = icmp ult i64 %sub45, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !192

if.then168.i.i:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i = trunc i64 %sub45 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %sub46
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub46, i64 %sub45) #15, !srcloc !193
  %asmresult1.i.i.i = extractvalue { i64, i64 } %21, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %conv48 = trunc i64 %dividend.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %22 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %div_u64.exit.do.end69_crit_edge, label %do.end54

div_u64.exit.do.end69_crit_edge:                  ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

do.end54:                                         ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev55 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %name = getelementptr inbounds %struct.uvc_device, ptr %24, i32 0, i32 5
  %shr = lshr i64 %dividend.addr.0.i.i, 16
  %and58 = and i64 %dividend.addr.0.i.i, 65535
  %mul59 = mul nuw nsw i64 %and58, 1000000
  %shr.i.i250 = lshr i64 %mul59, 16
  %shr61 = lshr i32 %conv48, 16
  %sof_offset = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 5
  %27 = ptrtoint ptr %sof_offset to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sof_offset, align 2
  %conv66 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev55, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %12, i64 noundef %shr, i64 noundef %shr.i.i250, i32 noundef %shr61, i64 noundef %shr.i.i250, i32 noundef %sub19, i32 noundef %sub21, i32 noundef %shl, i32 noundef %spec.select, i32 noundef %conv66) #13
  br label %do.end69

do.end69:                                         ; preds = %do.end54, %div_u64.exit.do.end69_crit_edge
  %host_sof.i = getelementptr %struct.uvc_clock_sample, ptr %8, i32 %10, i32 2
  %29 = ptrtoint ptr %host_sof.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %host_sof.i, align 2
  %31 = ptrtoint ptr %dev_sof to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dev_sof, align 4
  %sub.i = sub i16 %30, %32
  %conv2.i = zext i16 %sub.i to i32
  %sext.i = shl i32 %conv2.i, 24
  %conv5.i = ashr exact i32 %sext.i, 24
  %33 = trunc i32 %conv5.i to i16
  %34 = add i16 %32, %33
  %conv7.i = and i16 %34, 2047
  %conv71 = zext i16 %conv7.i to i32
  %add72 = shl nuw nsw i32 %conv71, 16
  %shl73 = or i32 %add72, 134217728
  %host_sof.i257 = getelementptr %struct.uvc_clock_sample, ptr %8, i32 %rem, i32 2
  %35 = ptrtoint ptr %host_sof.i257 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %host_sof.i257, align 2
  %37 = ptrtoint ptr %dev_sof27 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dev_sof27, align 4
  %sub.i259 = sub i16 %36, %38
  %conv2.i260 = zext i16 %sub.i259 to i32
  %sext.i261 = shl i32 %conv2.i260, 24
  %conv5.i262 = ashr exact i32 %sext.i261, 24
  %39 = trunc i32 %conv5.i262 to i16
  %40 = add i16 %38, %39
  %conv7.i263 = and i16 %40, 2047
  %conv75 = zext i16 %conv7.i263 to i32
  %add76 = shl nuw nsw i32 %conv75, 16
  %shl77 = or i32 %add76, 134217728
  call void @__sanitizer_cov_trace_cmp4(i32 %shl77, i32 %shl73)
  %cmp78 = icmp ult i32 %shl77, %shl73
  %add81 = or i32 %add76, 268435456
  %spec.select247 = select i1 %cmp78, i32 %add81, i32 %shl77
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select247, i32 %shl73)
  %cmp83 = icmp eq i32 %spec.select247, %shl73
  br i1 %cmp83, label %do.end69.done_crit_edge, label %if.end86

do.end69.done_crit_edge:                          ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end86:                                         ; preds = %do.end69
  %host_time = getelementptr %struct.uvc_clock_sample, ptr %8, i32 %rem, i32 3
  %41 = ptrtoint ptr %host_time to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %host_time, align 8
  %host_time87 = getelementptr %struct.uvc_clock_sample, ptr %8, i32 %10, i32 3
  %43 = ptrtoint ptr %host_time87 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %host_time87, align 8
  %sub88 = sub i64 %42, %44
  %conv90 = trunc i64 %sub88 to i32
  %add91 = add i32 %conv90, 1000000000
  %add92 = add nuw nsw i32 %spec.select247, %shl73
  %div246 = lshr exact i32 %add92, 1
  %sub93 = add nsw i32 %div246, -67108864
  call void @__sanitizer_cov_trace_cmp4(i32 %sub93, i32 %conv48)
  %cmp94 = icmp ugt i32 %sub93, %conv48
  br i1 %cmp94, label %if.then96, label %if.else

if.then96:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %add97 = add i32 %conv48, 134217728
  br label %if.end104

if.else:                                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %add98 = add nuw nsw i32 %div246, 67108864
  call void @__sanitizer_cov_trace_cmp4(i32 %add98, i32 %conv48)
  %cmp99 = icmp ult i32 %add98, %conv48
  %sub102 = add i32 %conv48, -134217728
  %spec.select248 = select i1 %cmp99, i32 %sub102, i32 %conv48
  br label %if.end104

if.end104:                                        ; preds = %if.else, %if.then96
  %sof.0 = phi i32 [ %add97, %if.then96 ], [ %spec.select248, %if.else ]
  %conv106 = and i64 %sub88, 4294967295
  %conv107 = zext i32 %sof.0 to i64
  %mul108 = mul nuw i64 %conv106, %conv107
  %conv110 = zext i32 %spec.select247 to i64
  %mul111 = mul nuw nsw i64 %conv110, 1000000000
  %conv113 = zext i32 %add91 to i64
  %conv114 = zext i32 %shl73 to i64
  %mul115 = mul nuw nsw i64 %conv113, %conv114
  %add112 = sub nsw i64 %mul111, %mul115
  %sub116 = add i64 %add112, %mul108
  %sub117 = sub nsw i32 %spec.select247, %shl73
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub116)
  %cmp164.i.i368 = icmp ult i64 %sub116, 4294967296
  br i1 %cmp164.i.i368, label %if.then168.i.i373, label %if.else174.i.i375, !prof !192

if.then168.i.i373:                                ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i370 = trunc i64 %sub116 to i32
  %div172.i.i371 = udiv i32 %conv169.i.i370, %sub117
  %conv173.i.i372 = zext i32 %div172.i.i371 to i64
  br label %div_u64.exit377

if.else174.i.i375:                                ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub117, i64 %sub116) #15, !srcloc !193
  %asmresult1.i.i.i374 = extractvalue { i64, i64 } %45, 1
  br label %div_u64.exit377

div_u64.exit377:                                  ; preds = %if.else174.i.i375, %if.then168.i.i373
  %dividend.addr.0.i.i376 = phi i64 [ %conv173.i.i372, %if.then168.i.i373 ], [ %asmresult1.i.i.i374, %if.else174.i.i375 ]
  %add121 = add i64 %44, -1000000000
  %sub123 = add i64 %add121, %dividend.addr.0.i.i376
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %46 = load i32, ptr @uvc_dbg_param, align 4
  %and125 = and i32 %46, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %div_u64.exit377.do.end152_crit_edge, label %do.end130

div_u64.exit377.do.end152_crit_edge:              ; preds = %div_u64.exit377
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end152

do.end130:                                        ; preds = %div_u64.exit377
  call void @__sanitizer_cov_trace_pc() #12
  %dev131 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %47 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev131, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %dev133 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 15
  %name135 = getelementptr inbounds %struct.uvc_device, ptr %48, i32 0, i32 5
  %shr137 = lshr i32 %sof.0, 16
  %and139 = and i64 %conv107, 65535
  %mul140 = mul nuw nsw i64 %and139, 1000000
  %shr.i.i379 = lshr i64 %mul140, 16
  %timestamp142 = getelementptr inbounds %struct.vb2_buffer, ptr %vbuf, i32 0, i32 5
  %51 = ptrtoint ptr %timestamp142 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %timestamp142, align 8
  %53 = ptrtoint ptr %host_sof.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %host_sof.i, align 2
  %conv143 = zext i16 %54 to i32
  %55 = ptrtoint ptr %dev_sof to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %dev_sof, align 4
  %conv145 = zext i16 %56 to i32
  %57 = ptrtoint ptr %host_sof.i257 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %host_sof.i257, align 2
  %conv147 = zext i16 %58 to i32
  %59 = ptrtoint ptr %dev_sof27 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %dev_sof27, align 4
  %conv149 = zext i16 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev133, ptr noundef nonnull @.str.12, ptr noundef %name135, i32 noundef %shr137, i64 noundef %shr.i.i379, i64 noundef %dividend.addr.0.i.i376, i64 noundef %sub123, i64 noundef %52, i32 noundef %shl73, i32 noundef %conv143, i32 noundef %conv145, i32 noundef %spec.select247, i32 noundef %conv147, i32 noundef %conv149, i32 noundef 1000000000, i32 noundef %add91) #13
  br label %do.end152

do.end152:                                        ; preds = %do.end130, %div_u64.exit377.do.end152_crit_edge
  %timestamp154 = getelementptr inbounds %struct.vb2_buffer, ptr %vbuf, i32 0, i32 5
  %61 = ptrtoint ptr %timestamp154 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %sub123, ptr %timestamp154, align 8
  br label %done

done:                                             ; preds = %do.end152, %do.end69.done_crit_edge, %if.end12.done_crit_edge, %do.body5.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_video_stats_dump(ptr nocapture noundef readonly %stream, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1
  %stop_ts = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 1
  %0 = ptrtoint ptr %stop_ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stop_ts, align 8
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stream1, align 8
  %sub.i = sub i64 %1, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #10
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #15, !srcloc !194
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #15, !srcloc !195
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv = trunc i64 %cond213.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp.not = icmp eq i32 %conv, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %scr_sof_count = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 12
  %7 = ptrtoint ptr %scr_sof_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scr_sof_count, align 8
  %mul = mul i32 %8, 1000
  %div = udiv i32 %mul, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %scr_sof_freq.0 = phi i32 [ %div, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %nb_frames = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 2
  %9 = ptrtoint ptr %nb_frames to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nb_frames, align 8
  %nb_packets = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 3
  %11 = ptrtoint ptr %nb_packets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nb_packets, align 4
  %nb_empty = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 4
  %13 = ptrtoint ptr %nb_empty to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nb_empty, align 8
  %nb_errors = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 6
  %15 = ptrtoint ptr %nb_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nb_errors, align 8
  %nb_invalid = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 5
  %17 = ptrtoint ptr %nb_invalid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nb_invalid, align 4
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str.14, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #10
  %add.ptr18 = getelementptr i8, ptr %buf, i32 %call17
  %sub19 = sub i32 %size, %call17
  %nb_pts_early = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 8
  %19 = ptrtoint ptr %nb_pts_early to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nb_pts_early, align 8
  %nb_pts_initial = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 9
  %21 = ptrtoint ptr %nb_pts_initial to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nb_pts_initial, align 4
  %nb_pts_constant = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 7
  %23 = ptrtoint ptr %nb_pts_constant to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nb_pts_constant, align 4
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.15, i32 noundef %20, i32 noundef %22, i32 noundef %24) #10
  %add27 = add i32 %call26, %call17
  %add.ptr28 = getelementptr i8, ptr %buf, i32 %add27
  %sub29 = sub i32 %size, %add27
  %nb_scr_count_ok = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 10
  %25 = ptrtoint ptr %nb_scr_count_ok to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nb_scr_count_ok, align 8
  %nb_scr_diffs_ok = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 11
  %27 = ptrtoint ptr %nb_scr_diffs_ok to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nb_scr_diffs_ok, align 4
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.16, i32 noundef %26, i32 noundef %28) #10
  %add35 = add i32 %call34, %add27
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %add35
  %sub37 = sub i32 %size, %add35
  %min_sof = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 14
  %29 = ptrtoint ptr %min_sof to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min_sof, align 8
  %max_sof = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 15
  %31 = ptrtoint ptr %max_sof to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_sof, align 4
  %scr_sof_freq.0.frozen = freeze i32 %scr_sof_freq.0
  %div42 = udiv i32 %scr_sof_freq.0.frozen, 1000
  %33 = mul i32 %div42, 1000
  %rem.decomposed = sub i32 %scr_sof_freq.0.frozen, %33
  %call43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.17, i32 noundef %30, i32 noundef %32, i32 noundef %div42, i32 noundef %rem.decomposed) #10
  %add44 = add i32 %call43, %add35
  ret i32 %add44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_video_suspend(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 18, i32 0, i32 28
  %0 = ptrtoint ptr %streaming.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i.i = load i16, ptr %streaming.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %frozen = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 17
  %1 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %frozen, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %frozen, align 8
  %call.i.i = tail call i64 @ktime_get() #10
  %stop_ts.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 1
  %2 = ptrtoint ptr %stop_ts.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i.i, ptr %stop_ts.i.i, align 8
  %uvc_urb1.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 23
  %arrayidx3.i = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 24
  %cmp28.i = icmp ult ptr %uvc_urb1.i, %arrayidx3.i
  br i1 %cmp28.i, label %if.end.for.body.i_crit_edge, label %for.end.thread.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.end.thread.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %async_wq32.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 19
  %3 = ptrtoint ptr %async_wq32.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %async_wq32.i, align 4
  tail call void @flush_workqueue(ptr noundef %4) #10
  br label %uvc_video_stop_transfer.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %uvc_urb.029.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %uvc_urb1.i, %if.end.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %uvc_urb.029.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uvc_urb.029.i, align 4
  tail call void @usb_poison_urb(ptr noundef %6) #10
  %incdec.ptr.i = getelementptr %struct.uvc_urb, ptr %uvc_urb.029.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %arrayidx3.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body10.i.preheader

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body10.i.preheader:                           ; preds = %for.body.i
  %async_wq.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 19
  %7 = ptrtoint ptr %async_wq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async_wq.i, align 4
  tail call void @flush_workqueue(ptr noundef %8) #10
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.body10.i.preheader
  %uvc_urb.131.i = phi ptr [ %incdec.ptr14.i, %for.body10.i.for.body10.i_crit_edge ], [ %uvc_urb1.i, %for.body10.i.preheader ]
  %9 = ptrtoint ptr %uvc_urb.131.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uvc_urb.131.i, align 4
  tail call void @usb_free_urb(ptr noundef %10) #10
  %11 = ptrtoint ptr %uvc_urb.131.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %uvc_urb.131.i, align 4
  %incdec.ptr14.i = getelementptr %struct.uvc_urb, ptr %uvc_urb.131.i, i32 1
  %cmp9.i = icmp ult ptr %incdec.ptr14.i, %arrayidx3.i
  br i1 %cmp9.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.uvc_video_stop_transfer.exit_crit_edge

for.body10.i.uvc_video_stop_transfer.exit_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_stop_transfer.exit

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i

uvc_video_stop_transfer.exit:                     ; preds = %for.body10.i.uvc_video_stop_transfer.exit_crit_edge, %for.end.thread.i
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %intfnum = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 6
  %16 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intfnum, align 4
  %call1 = tail call i32 @usb_set_interface(ptr noundef %15, i32 noundef %17, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %uvc_video_stop_transfer.exit, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvc_video_stop_transfer(ptr noundef %stream, i32 noundef %free_buffers) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #10
  %stop_ts.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 1
  %0 = ptrtoint ptr %stop_ts.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call.i, ptr %stop_ts.i, align 8
  %uvc_urb1 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 23
  %arrayidx3 = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 24
  %cmp28 = icmp ult ptr %uvc_urb1, %arrayidx3
  br i1 %cmp28, label %entry.for.body_crit_edge, label %for.end.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %async_wq32 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 19
  %1 = ptrtoint ptr %async_wq32 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %async_wq32, align 4
  tail call void @flush_workqueue(ptr noundef %2) #10
  br label %for.end15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %uvc_urb.029 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %uvc_urb1, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %uvc_urb.029 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %uvc_urb.029, align 4
  tail call void @usb_poison_urb(ptr noundef %4) #10
  %incdec.ptr = getelementptr %struct.uvc_urb, ptr %uvc_urb.029, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %async_wq = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 19
  %5 = ptrtoint ptr %async_wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %async_wq, align 4
  tail call void @flush_workqueue(ptr noundef %6) #10
  br i1 %cmp28, label %for.end.for.body10_crit_edge, label %for.end.for.end15_crit_edge

for.end.for.end15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15

for.end.for.body10_crit_edge:                     ; preds = %for.end
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.end.for.body10_crit_edge
  %uvc_urb.131 = phi ptr [ %incdec.ptr14, %for.body10.for.body10_crit_edge ], [ %uvc_urb1, %for.end.for.body10_crit_edge ]
  %7 = ptrtoint ptr %uvc_urb.131 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uvc_urb.131, align 4
  tail call void @usb_free_urb(ptr noundef %8) #10
  %9 = ptrtoint ptr %uvc_urb.131 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %uvc_urb.131, align 4
  %incdec.ptr14 = getelementptr %struct.uvc_urb, ptr %uvc_urb.131, i32 1
  %cmp9 = icmp ult ptr %incdec.ptr14, %arrayidx3
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end15_crit_edge

for.body10.for.end15_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.end15:                                        ; preds = %for.body10.for.end15_crit_edge, %for.end.for.end15_crit_edge, %for.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_buffers)
  %tobool.not = icmp eq i32 %free_buffers, 0
  br i1 %tobool.not, label %for.end15.if.end_crit_edge, label %if.then

for.end15.if.end_crit_edge:                       ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end15
  %dev.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %sysdev.i.i = getelementptr inbounds %struct.usb_bus, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %sysdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sysdev.i.i, align 4
  br i1 %cmp28, label %for.body.lr.ph.i, label %if.then.uvc_free_urb_buffers.exit_crit_edge

if.then.uvc_free_urb_buffers.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_free_urb_buffers.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %type.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %uvc_urb.022.i = phi ptr [ %uvc_urb1, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %buffer.i = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.022.i, i32 0, i32 2
  %18 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_vunmap_noncontiguous(ptr noundef %17, ptr noundef nonnull %19) #10
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3, align 4
  %sgt.i = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.022.i, i32 0, i32 4
  %22 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgt.i, align 4
  %24 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 1
  %..i.i = select i1 %cmp.i.i, i32 2, i32 1
  tail call void @dma_free_noncontiguous(ptr noundef %17, i32 noundef %21, ptr noundef %23, i32 noundef %..i.i) #10
  %26 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %buffer.i, align 4
  %27 = ptrtoint ptr %sgt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %sgt.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.uvc_urb, ptr %uvc_urb.022.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %arrayidx3
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.uvc_free_urb_buffers.exit_crit_edge

for.inc.i.uvc_free_urb_buffers.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_free_urb_buffers.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

uvc_free_urb_buffers.exit:                        ; preds = %for.inc.i.uvc_free_urb_buffers.exit_crit_edge, %if.then.uvc_free_urb_buffers.exit_crit_edge
  %28 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx3, align 4
  br label %if.end

if.end:                                           ; preds = %uvc_free_urb_buffers.exit, %for.end15.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_video_resume(ptr noundef %stream, i32 noundef %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset)
  %tobool.not = icmp eq i32 %reset, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %intfnum = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 6
  %4 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intfnum, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef %5, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %frozen = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 17
  %6 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %frozen, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %frozen, align 8
  %head.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 1
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %head.i, align 4
  %count.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 2
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %count.i, align 4
  %last_sof.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 4
  %9 = ptrtoint ptr %last_sof.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %last_sof.i, align 4
  %sof_offset.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 5
  %10 = ptrtoint ptr %sof_offset.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %sof_offset.i, align 2
  %streaming.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 18, i32 0, i32 28
  %11 = ptrtoint ptr %streaming.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %streaming.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool2.not = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ctrl = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12
  %call.i = tail call fastcc i32 @uvc_set_video_ctrl(ptr noundef %stream, ptr noundef %ctrl, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call fastcc i32 @uvc_video_start_transfer(ptr noundef %stream, i32 noundef 3072)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_video_start_transfer(ptr noundef %stream, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 8
  %sequence = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 25
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sequence, align 8
  %last_fid = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 26
  %3 = ptrtoint ptr %last_fid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %last_fid, align 4
  %header_size = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %header_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %header_size, align 8
  %skip_payload = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 22, i32 2
  %5 = ptrtoint ptr %skip_payload to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %skip_payload, align 4
  %payload_size = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 22, i32 3
  %6 = ptrtoint ptr %payload_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %payload_size, align 8
  %stats.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28
  %7 = call ptr @memset(ptr %stats.i, i32 0, i32 136)
  %min_sof.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 14
  %8 = ptrtoint ptr %min_sof.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2048, ptr %min_sof.i, align 8
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp ugt i32 %10, 1
  br i1 %cmp, label %if.then, label %if.else85

if.then:                                          ; preds = %entry
  %intfnum4 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 6
  %11 = ptrtoint ptr %intfnum4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intfnum4, align 4
  %dwMaxPayloadTransferSize = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12, i32 10
  %13 = ptrtoint ptr %dwMaxPayloadTransferSize to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %dwMaxPayloadTransferSize, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5 = icmp eq i32 %14, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %15 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp5, label %do.body, label %do.body12

do.body:                                          ; preds = %if.then
  br i1 %tobool.not, label %do.body.if.end25_crit_edge, label %do.end

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev9, ptr noundef nonnull @.str.51) #13
  br label %if.end25

do.body12:                                        ; preds = %if.then
  br i1 %tobool.not, label %do.body12.if.end25_crit_edge, label %do.end18

do.body12.if.end25_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %20 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev19, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev21, ptr noundef nonnull @.str.54, i32 noundef %14) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end18, %do.body12.if.end25_crit_edge, %do.end, %do.body.if.end25_crit_edge
  %bandwidth.0 = phi i32 [ %14, %do.end18 ], [ %14, %do.body12.if.end25_crit_edge ], [ 1, %do.end ], [ 1, %do.body.if.end25_crit_edge ]
  %24 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp27224.not = icmp eq i32 %25, 0
  br i1 %cmp27224.not, label %if.end25.do.body43_crit_edge, label %for.body.lr.ph

if.end25.do.body43_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

for.body.lr.ph:                                   ; preds = %if.end25
  %bEndpointAddress = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 8, i32 1
  %dev32 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %altsetting.0228 = phi i32 [ -1, %for.body.lr.ph ], [ %altsetting.2, %cleanup.for.body_crit_edge ]
  %best_psize.0227 = phi i32 [ -1, %for.body.lr.ph ], [ %best_psize.2, %cleanup.for.body_crit_edge ]
  %best_ep.0226 = phi ptr [ null, %for.body.lr.ph ], [ %best_ep.2, %cleanup.for.body_crit_edge ]
  %i.0225 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.usb_host_interface, ptr %27, i32 %i.0225
  %28 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bEndpointAddress, align 1
  %call = tail call ptr @uvc_find_endpoint(ptr noundef %arrayidx, i8 noundef zeroext %29) #10
  %cmp29 = icmp eq ptr %call, null
  br i1 %cmp29, label %for.body.cleanup_crit_edge, label %if.end31

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %for.body
  %30 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev32, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %speed.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %35, label %sw.default.i [
    i32 5, label %if.end31.sw.bb.i_crit_edge
    i32 6, label %if.end31.sw.bb.i_crit_edge254
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb8.i
  ]

if.end31.sw.bb.i_crit_edge254:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end31.sw.bb.i_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end31.sw.bb.i_crit_edge, %if.end31.sw.bb.i_crit_edge254
  %wBytesPerInterval.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %call, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %wBytesPerInterval.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %wBytesPerInterval.i, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #10
  br label %uvc_endpoint_max_bpi.exit

sw.bb1.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %call, i32 0, i32 4
  %40 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %42 = and i16 %41, -249
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #10
  %44 = lshr i16 %41, 3
  %45 = and i16 %44, 3
  %narrow.i.i = add nuw nsw i16 %45, 1
  %narrow.i = mul nuw nsw i16 %narrow.i.i, %43
  br label %uvc_endpoint_max_bpi.exit

sw.bb8.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i25.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %call, i32 0, i32 4
  %46 = ptrtoint ptr %wMaxPacketSize.i25.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %wMaxPacketSize.i25.i, align 1
  %48 = and i16 %47, -249
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #10
  br label %uvc_endpoint_max_bpi.exit

sw.default.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i27.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %call, i32 0, i32 4
  %50 = ptrtoint ptr %wMaxPacketSize.i27.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %wMaxPacketSize.i27.i, align 1
  %52 = and i16 %51, -249
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #10
  br label %uvc_endpoint_max_bpi.exit

uvc_endpoint_max_bpi.exit:                        ; preds = %sw.default.i, %sw.bb8.i, %sw.bb1.i, %sw.bb.i
  %retval.0.in.i = phi i16 [ %53, %sw.default.i ], [ %49, %sw.bb8.i ], [ %narrow.i, %sw.bb1.i ], [ %39, %sw.bb.i ]
  %retval.0.i = zext i16 %retval.0.in.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bandwidth.0, i32 %retval.0.i)
  %cmp35.not = icmp ugt i32 %bandwidth.0, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %best_psize.0227, i32 %retval.0.i)
  %cmp36.not = icmp ult i32 %best_psize.0227, %retval.0.i
  %or.cond = select i1 %cmp35.not, i1 true, i1 %cmp36.not
  br i1 %or.cond, label %uvc_endpoint_max_bpi.exit.cleanup_crit_edge, label %if.then37

uvc_endpoint_max_bpi.exit.cleanup_crit_edge:      ; preds = %uvc_endpoint_max_bpi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %uvc_endpoint_max_bpi.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx, i32 0, i32 3
  %54 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bAlternateSetting, align 1
  %conv = zext i8 %55 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %uvc_endpoint_max_bpi.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %best_ep.2 = phi ptr [ %best_ep.0226, %for.body.cleanup_crit_edge ], [ %call, %if.then37 ], [ %best_ep.0226, %uvc_endpoint_max_bpi.exit.cleanup_crit_edge ]
  %best_psize.2 = phi i32 [ %best_psize.0227, %for.body.cleanup_crit_edge ], [ %retval.0.i, %if.then37 ], [ %best_psize.0227, %uvc_endpoint_max_bpi.exit.cleanup_crit_edge ]
  %altsetting.2 = phi i32 [ %altsetting.0228, %for.body.cleanup_crit_edge ], [ %conv, %if.then37 ], [ %altsetting.0228, %uvc_endpoint_max_bpi.exit.cleanup_crit_edge ]
  %inc = add nuw i32 %i.0225, 1
  %56 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_altsetting, align 8
  %cmp27 = icmp ult i32 %inc, %57
  br i1 %cmp27, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  %cmp40 = icmp eq ptr %best_ep.2, null
  br i1 %cmp40, label %for.end.do.body43_crit_edge, label %do.body57

for.end.do.body43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

do.body43:                                        ; preds = %for.end.do.body43_crit_edge, %if.end25.do.body43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %58 = load i32, ptr @uvc_dbg_param, align 4
  %and44 = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.cleanup135_crit_edge, label %do.end49

do.body43.cleanup135_crit_edge:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup135

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %dev50 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %59 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev50, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %dev52 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev52, ptr noundef nonnull @.str.57) #13
  br label %cleanup135

do.body57:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %63 = load i32, ptr @uvc_dbg_param, align 4
  %and58 = and i32 %63, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.do.end69_crit_edge, label %do.end63

do.body57.do.end69_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %dev64 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %64 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev64, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %dev66 = getelementptr inbounds %struct.usb_device, ptr %67, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev66, ptr noundef nonnull @.str.60, i32 noundef %altsetting.2, i32 noundef %best_psize.2) #13
  br label %do.end69

do.end69:                                         ; preds = %do.end63, %do.body57.do.end69_crit_edge
  %dev70 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %68 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev70, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %call72 = tail call i32 @usb_set_interface(ptr noundef %71, i32 noundef %12, i32 noundef %altsetting.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end69.cleanup135_crit_edge, label %if.end76

do.end69.cleanup135_crit_edge:                    ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup135

if.end76:                                         ; preds = %do.end69
  %72 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev70, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %speed.i.i, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %77, label %sw.default.i.i [
    i32 5, label %if.end76.sw.bb.i.i_crit_edge
    i32 6, label %if.end76.sw.bb.i.i_crit_edge255
    i32 3, label %sw.bb1.i.i
    i32 4, label %sw.bb8.i.i
  ]

if.end76.sw.bb.i.i_crit_edge255:                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.end76.sw.bb.i.i_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end76.sw.bb.i.i_crit_edge, %if.end76.sw.bb.i.i_crit_edge255
  %wBytesPerInterval.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %best_ep.2, i32 0, i32 1, i32 4
  %79 = ptrtoint ptr %wBytesPerInterval.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %wBytesPerInterval.i.i, align 1
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #10
  br label %uvc_endpoint_max_bpi.exit.i

sw.bb1.i.i:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %best_ep.2, i32 0, i32 4
  %82 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %84 = and i16 %83, -249
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #10
  %86 = lshr i16 %83, 3
  %87 = and i16 %86, 3
  %narrow.i.i.i = add nuw nsw i16 %87, 1
  %narrow.i.i193 = mul nuw nsw i16 %narrow.i.i.i, %85
  br label %uvc_endpoint_max_bpi.exit.i

sw.bb8.i.i:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i25.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %best_ep.2, i32 0, i32 4
  %88 = ptrtoint ptr %wMaxPacketSize.i25.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %wMaxPacketSize.i25.i.i, align 1
  %90 = and i16 %89, -249
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #10
  br label %uvc_endpoint_max_bpi.exit.i

sw.default.i.i:                                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i27.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %best_ep.2, i32 0, i32 4
  %92 = ptrtoint ptr %wMaxPacketSize.i27.i.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %wMaxPacketSize.i27.i.i, align 1
  %94 = and i16 %93, -249
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #10
  br label %uvc_endpoint_max_bpi.exit.i

uvc_endpoint_max_bpi.exit.i:                      ; preds = %sw.default.i.i, %sw.bb8.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi i16 [ %95, %sw.default.i.i ], [ %91, %sw.bb8.i.i ], [ %narrow.i.i193, %sw.bb1.i.i ], [ %81, %sw.bb.i.i ]
  %retval.0.i.i = zext i16 %retval.0.in.i.i to i32
  %dwMaxVideoFrameSize.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12, i32 9
  %96 = ptrtoint ptr %dwMaxVideoFrameSize.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %dwMaxVideoFrameSize.i, align 2
  %call2.i = tail call fastcc i32 @uvc_alloc_urb_buffers(ptr noundef %stream, i32 noundef %97, i32 noundef %retval.0.i.i, i32 noundef %gfp_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %uvc_endpoint_max_bpi.exit.i.cleanup135_crit_edge, label %if.end.i

uvc_endpoint_max_bpi.exit.i.cleanup135_crit_edge: ; preds = %uvc_endpoint_max_bpi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup135

if.end.i:                                         ; preds = %uvc_endpoint_max_bpi.exit.i
  %mul.i = mul i32 %call2.i, %retval.0.i.i
  %uvc_urb5.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 23
  %arrayidx7.i = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 24
  %cmp885.i = icmp ult ptr %uvc_urb5.i, %arrayidx7.i
  br i1 %cmp885.i, label %for.body.lr.ph.i, label %if.end.i.if.end106_crit_edge

if.end.i.if.end106_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %best_ep.2, i32 0, i32 2
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %best_ep.2, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond25.for.end_crit_edge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %uvc_urb.086.i = phi ptr [ %uvc_urb5.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.cond25.for.end_crit_edge.i.for.body.i_crit_edge ]
  %call10.i = tail call ptr @usb_alloc_urb(i32 noundef %call2.i, i32 noundef %gfp_flags) #10
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @uvc_video_stop_transfer(ptr noundef %stream, i32 noundef 1) #10
  br label %cleanup135

if.end14.i:                                       ; preds = %for.body.i
  %98 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev70, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %dev17.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 8
  %102 = ptrtoint ptr %dev17.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %dev17.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 27
  %103 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %uvc_urb.086.i, ptr %context.i, align 4
  %104 = load ptr, ptr %dev70, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %107 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %bEndpointAddress.i, align 2
  %conv20.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %106, align 8
  %shl.i.i = shl i32 %110, 8
  %shl1.i.i = shl nuw nsw i32 %conv20.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or22.i = or i32 %or.i.i, 128
  %pipe.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 10
  %111 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or22.i, ptr %pipe.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 13
  %112 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 6, ptr %transfer_flags.i, align 4
  %dma.i = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.086.i, i32 0, i32 3
  %113 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dma.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 15
  %115 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %transfer_dma.i, align 4
  %116 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %bInterval.i, align 2
  %conv24.i = zext i8 %117 to i32
  %interval.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 25
  %118 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv24.i, ptr %interval.i, align 4
  %buffer.i = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.086.i, i32 0, i32 2
  %119 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %buffer.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 14
  %121 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %transfer_buffer.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 28
  %122 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @uvc_video_complete, ptr %complete.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 24
  %123 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call2.i, ptr %number_of_packets.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 19
  %124 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %mul.i, ptr %transfer_buffer_length.i, align 4
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %if.end14.i
  %i.084.i = phi i32 [ 0, %if.end14.i ], [ %inc.i, %for.body28.i.for.body28.i_crit_edge ]
  %mul30.i = mul i32 %i.084.i, %retval.0.i.i
  %arrayidx31.i = getelementptr %struct.urb, ptr %call10.i, i32 0, i32 29, i32 %i.084.i
  %125 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %mul30.i, ptr %arrayidx31.i, align 4
  %length.i = getelementptr %struct.urb, ptr %call10.i, i32 0, i32 29, i32 %i.084.i, i32 1
  %126 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %retval.0.i.i, ptr %length.i, align 4
  %inc.i = add nuw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call2.i
  br i1 %exitcond.not.i, label %for.cond25.for.end_crit_edge.i, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.i

for.cond25.for.end_crit_edge.i:                   ; preds = %for.body28.i
  %127 = ptrtoint ptr %uvc_urb.086.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call10.i, ptr %uvc_urb.086.i, align 4
  %incdec.ptr.i = getelementptr %struct.uvc_urb, ptr %uvc_urb.086.i, i32 1
  %cmp8.i = icmp ult ptr %incdec.ptr.i, %arrayidx7.i
  br i1 %cmp8.i, label %for.cond25.for.end_crit_edge.i.for.body.i_crit_edge, label %for.cond25.for.end_crit_edge.i.if.end106_crit_edge

for.cond25.for.end_crit_edge.i.if.end106_crit_edge: ; preds = %for.cond25.for.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

for.cond25.for.end_crit_edge.i.for.body.i_crit_edge: ; preds = %for.cond25.for.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.else85:                                        ; preds = %entry
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 8
  %bEndpointAddress89 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 8, i32 1
  %130 = ptrtoint ptr %bEndpointAddress89 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bEndpointAddress89, align 1
  %call90 = tail call ptr @uvc_find_endpoint(ptr noundef %129, i8 noundef zeroext %131) #10
  %cmp91 = icmp eq ptr %call90, null
  br i1 %cmp91, label %if.else85.cleanup135_crit_edge, label %if.end94

if.else85.cleanup135_crit_edge:                   ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup135

if.end94:                                         ; preds = %if.else85
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %call90, i32 0, i32 4
  %132 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %wMaxPacketSize.i, align 1
  %134 = and i16 %133, -249
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #10
  %and.i = zext i16 %135 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %cmp97 = icmp eq i16 %134, 0
  br i1 %cmp97, label %if.end94.cleanup135_crit_edge, label %if.end100

if.end94.cleanup135_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup135

if.end100:                                        ; preds = %if.end94
  %dwMaxPayloadTransferSize.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12, i32 10
  %136 = ptrtoint ptr %dwMaxPayloadTransferSize.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %dwMaxPayloadTransferSize.i, align 2
  %max_payload_size.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 22, i32 4
  %138 = ptrtoint ptr %max_payload_size.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %max_payload_size.i, align 4
  %call2.i196 = tail call fastcc i32 @uvc_alloc_urb_buffers(ptr noundef %stream, i32 noundef %137, i32 noundef %and.i, i32 noundef %gfp_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i196)
  %cmp.i197 = icmp eq i32 %call2.i196, 0
  br i1 %cmp.i197, label %if.end100.cleanup135_crit_edge, label %if.end.i199

if.end100.cleanup135_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup135

if.end.i199:                                      ; preds = %if.end100
  %mul.i198 = mul i32 %call2.i196, %and.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %call90, i32 0, i32 2
  %139 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %140)
  %tobool.not.i = icmp sgt i8 %140, -1
  %dev12.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %141 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev12.i, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 8
  %conv16.i = zext i8 %140 to i32
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 8
  %shl.i68.i = shl i32 %146, 8
  %shl1.i69.i = shl nuw nsw i32 %conv16.i, 15
  %..i = select i1 %tobool.not.i, i32 -1073741824, i32 -1073741696
  %or.i70.i = or i32 %..i, %shl1.i69.i
  %or18.i = or i32 %or.i70.i, %shl.i68.i
  %type.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 9
  %147 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %148)
  %cmp20.i = icmp eq i32 %148, 2
  %spec.select.i = select i1 %cmp20.i, i32 0, i32 %mul.i198
  %uvc_urb24.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 23
  %arrayidx26.i = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 24
  %cmp2771.i = icmp ult ptr %uvc_urb24.i, %arrayidx26.i
  br i1 %cmp2771.i, label %if.end.i199.for.body.i201_crit_edge, label %if.end.i199.if.end106_crit_edge

if.end.i199.if.end106_crit_edge:                  ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.end.i199.for.body.i201_crit_edge:              ; preds = %if.end.i199
  br label %for.body.i201

for.body.i201:                                    ; preds = %if.end33.i.for.body.i201_crit_edge, %if.end.i199.for.body.i201_crit_edge
  %uvc_urb.072.i = phi ptr [ %incdec.ptr.i206, %if.end33.i.for.body.i201_crit_edge ], [ %uvc_urb24.i, %if.end.i199.for.body.i201_crit_edge ]
  %call29.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %gfp_flags) #10
  %cmp30.i = icmp eq ptr %call29.i, null
  br i1 %cmp30.i, label %if.then32.i, label %if.end33.i

if.then32.i:                                      ; preds = %for.body.i201
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @uvc_video_stop_transfer(ptr noundef %stream, i32 noundef 1) #10
  br label %cleanup135

if.end33.i:                                       ; preds = %for.body.i201
  %149 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev12.i, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 8
  %buffer.i202 = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.072.i, i32 0, i32 2
  %153 = ptrtoint ptr %buffer.i202 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %buffer.i202, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call29.i, i32 0, i32 8
  %155 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %152, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call29.i, i32 0, i32 10
  %156 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or18.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call29.i, i32 0, i32 14
  %157 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %154, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call29.i, i32 0, i32 19
  %158 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %spec.select.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call29.i, i32 0, i32 28
  %159 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @uvc_video_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call29.i, i32 0, i32 27
  %160 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %uvc_urb.072.i, ptr %context4.i.i, align 4
  %transfer_flags.i203 = getelementptr inbounds %struct.urb, ptr %call29.i, i32 0, i32 13
  %161 = ptrtoint ptr %transfer_flags.i203 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 4, ptr %transfer_flags.i203, align 4
  %dma.i204 = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.072.i, i32 0, i32 3
  %162 = ptrtoint ptr %dma.i204 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dma.i204, align 4
  %transfer_dma.i205 = getelementptr inbounds %struct.urb, ptr %call29.i, i32 0, i32 15
  %164 = ptrtoint ptr %transfer_dma.i205 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %transfer_dma.i205, align 4
  %165 = ptrtoint ptr %uvc_urb.072.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call29.i, ptr %uvc_urb.072.i, align 4
  %incdec.ptr.i206 = getelementptr %struct.uvc_urb, ptr %uvc_urb.072.i, i32 1
  %cmp27.i = icmp ult ptr %incdec.ptr.i206, %arrayidx26.i
  br i1 %cmp27.i, label %if.end33.i.for.body.i201_crit_edge, label %if.end33.i.if.end106_crit_edge

if.end33.i.if.end106_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.end33.i.for.body.i201_crit_edge:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i201

if.end106:                                        ; preds = %if.end33.i.if.end106_crit_edge, %if.end.i199.if.end106_crit_edge, %for.cond25.for.end_crit_edge.i.if.end106_crit_edge, %if.end.i.if.end106_crit_edge
  %uvc_urb107 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 23
  %arrayidx111 = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 24
  %cmp112231 = icmp ult ptr %uvc_urb107, %arrayidx111
  br i1 %cmp112231, label %if.end106.for.body114_crit_edge, label %if.end106.for.end127_crit_edge

if.end106.for.end127_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end127

if.end106.for.body114_crit_edge:                  ; preds = %if.end106
  br label %for.body114

for.body114:                                      ; preds = %for.inc126.for.body114_crit_edge, %if.end106.for.body114_crit_edge
  %uvc_urb.0232 = phi ptr [ %incdec.ptr, %for.inc126.for.body114_crit_edge ], [ %uvc_urb107, %if.end106.for.body114_crit_edge ]
  %stream.i = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.0232, i32 0, i32 1
  %166 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %stream.i, align 4
  %dev.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i.i, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 8
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %171, i32 0, i32 12
  %172 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bus.i.i, align 8
  %sysdev.i.i = getelementptr inbounds %struct.usb_bus, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %sysdev.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sysdev.i.i, align 4
  %sgt.i = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.0232, i32 0, i32 4
  %176 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %sgt.i, align 4
  %type.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %167, i32 0, i32 9
  %178 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp.i.i = icmp eq i32 %179, 1
  %..i.i = select i1 %cmp.i.i, i32 2, i32 1
  %180 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %177, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %177, i32 0, i32 2
  %182 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %175, ptr noundef %181, i32 noundef %183, i32 noundef %..i.i) #10
  %184 = ptrtoint ptr %uvc_urb.0232 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %uvc_urb.0232, align 4
  %call3.i = tail call i32 @usb_submit_urb(ptr noundef %185, i32 noundef %gfp_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp116 = icmp slt i32 %call3.i, 0
  br i1 %cmp116, label %do.end121, label %for.inc126

do.end121:                                        ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #12
  %stream.i.le = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.0232, i32 0, i32 1
  %186 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %intf1, align 8
  %dev123 = getelementptr inbounds %struct.usb_interface, ptr %187, i32 0, i32 7
  %188 = ptrtoint ptr %stream.i.le to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %stream.i.le, align 4
  %uvc_urb1.i = getelementptr inbounds %struct.uvc_streaming, ptr %189, i32 0, i32 23
  %sub.ptr.lhs.cast.i = ptrtoint ptr %uvc_urb.0232 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %uvc_urb1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 580
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev123, ptr noundef nonnull @.str.63, i32 noundef %sub.ptr.div.i, i32 noundef %call3.i) #13
  tail call fastcc void @uvc_video_stop_transfer(ptr noundef %stream, i32 noundef 1)
  br label %cleanup135

for.inc126:                                       ; preds = %for.body114
  %incdec.ptr = getelementptr %struct.uvc_urb, ptr %uvc_urb.0232, i32 1
  %cmp112 = icmp ult ptr %incdec.ptr, %arrayidx111
  br i1 %cmp112, label %for.inc126.for.body114_crit_edge, label %for.inc126.for.end127_crit_edge

for.inc126.for.end127_crit_edge:                  ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end127

for.inc126.for.body114_crit_edge:                 ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body114

for.end127:                                       ; preds = %for.inc126.for.end127_crit_edge, %if.end106.for.end127_crit_edge
  %dev128 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %190 = ptrtoint ptr %dev128 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev128, align 8
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %191, i32 0, i32 3
  %192 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %quirks, align 4
  %and129 = and i32 %193, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %for.end127.cleanup135_crit_edge, label %if.then131

for.end127.cleanup135_crit_edge:                  ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup135

if.then131:                                       ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #12
  %call133 = tail call i32 @uvc_ctrl_restore_values(ptr noundef %191) #10
  br label %cleanup135

cleanup135:                                       ; preds = %if.then131, %for.end127.cleanup135_crit_edge, %do.end121, %if.then32.i, %if.end100.cleanup135_crit_edge, %if.end94.cleanup135_crit_edge, %if.else85.cleanup135_crit_edge, %if.then13.i, %uvc_endpoint_max_bpi.exit.i.cleanup135_crit_edge, %do.end69.cleanup135_crit_edge, %do.end49, %do.body43.cleanup135_crit_edge
  %retval.1 = phi i32 [ %call3.i, %do.end121 ], [ -5, %if.else85.cleanup135_crit_edge ], [ -5, %if.end94.cleanup135_crit_edge ], [ 0, %if.then131 ], [ 0, %for.end127.cleanup135_crit_edge ], [ -5, %do.end49 ], [ -5, %do.body43.cleanup135_crit_edge ], [ %call72, %do.end69.cleanup135_crit_edge ], [ -12, %if.then32.i ], [ -12, %if.end100.cleanup135_crit_edge ], [ -12, %uvc_endpoint_max_bpi.exit.i.cleanup135_crit_edge ], [ -12, %if.then13.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_video_init(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12
  %nformats = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup.sink.split.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split.sink.split_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #10
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %active, align 4
  %dev1 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %intfnum = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 6
  %7 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intfnum, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %6, i32 noundef %8, i32 noundef 0) #10
  %call2 = tail call fastcc i32 @uvc_get_video_ctrl(ptr noundef %stream, ptr noundef %ctrl, i8 noundef zeroext -121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @uvc_set_video_ctrl(ptr noundef %stream, ptr noundef %ctrl, i32 noundef 1)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call7 = tail call fastcc i32 @uvc_get_video_ctrl(ptr noundef %stream, ptr noundef %ctrl, i8 noundef zeroext -127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12.not153 = icmp eq i32 %10, 0
  br i1 %cmp12.not153, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %format13 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 11
  %11 = ptrtoint ptr %format13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %format13, align 8
  %bFormatIndex = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bFormatIndex, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ %10, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %sub = add i32 %i.0154, -1
  %index = getelementptr %struct.uvc_format, ptr %12, i32 %sub, i32 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %14)
  %cmp15 = icmp eq i8 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12.not = icmp eq i32 %sub, 0
  %or.cond162 = select i1 %cmp15, i1 true, i1 %cmp12.not
  br i1 %or.cond162, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.uvc_format, ptr %12, i32 %sub
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end10.for.end_crit_edge
  %format.1 = phi ptr [ null, %if.end10.for.end_crit_edge ], [ %arrayidx, %for.end.loopexit ]
  %nframes = getelementptr inbounds %struct.uvc_format, ptr %format.1, i32 0, i32 9
  %17 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nframes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %for.end.cleanup.sink.split.sink.split_crit_edge, label %for.cond29.preheader

for.end.cleanup.sink.split.sink.split_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

for.cond29.preheader:                             ; preds = %for.end
  %frame33 = getelementptr inbounds %struct.uvc_format, ptr %format.1, i32 0, i32 10
  %19 = ptrtoint ptr %frame33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %frame33, align 4
  %bFrameIndex37 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %bFrameIndex37 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bFrameIndex37, align 1
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.cond29.preheader
  %i.1157 = phi i32 [ %18, %for.cond29.preheader ], [ %sub34, %for.body32.for.body32_crit_edge ]
  %sub34 = add i32 %i.1157, -1
  %arrayidx35 = getelementptr %struct.uvc_frame, ptr %20, i32 %sub34
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %22)
  %cmp39 = icmp eq i8 %24, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp30.not = icmp eq i32 %sub34, 0
  %or.cond = select i1 %cmp39, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %for.end45, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

for.end45:                                        ; preds = %for.body32
  %index46 = getelementptr inbounds %struct.uvc_format, ptr %format.1, i32 0, i32 1
  %25 = ptrtoint ptr %index46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %index46, align 1
  %bFormatIndex47 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %bFormatIndex47 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %bFormatIndex47, align 1
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx35, align 4
  %30 = ptrtoint ptr %bFrameIndex37 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %bFrameIndex37, align 1
  %def_format = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 13
  %31 = ptrtoint ptr %def_format to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %format.1, ptr %def_format, align 8
  %cur_format = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 14
  %32 = ptrtoint ptr %cur_format to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %format.1, ptr %cur_format, align 4
  %cur_frame = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 15
  %33 = ptrtoint ptr %cur_frame to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx35, ptr %cur_frame, align 8
  %type = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 9
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp50 = icmp eq i32 %35, 1
  br i1 %cmp50, label %if.then52, label %if.else64

if.then52:                                        ; preds = %for.end45
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 8
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %quirks, align 4
  %and = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %decode = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 20
  %40 = ptrtoint ptr %decode to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @uvc_video_decode_isight, ptr %decode, align 8
  br label %if.end78

if.else:                                          ; preds = %if.then52
  %intf55 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %41 = ptrtoint ptr %intf55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intf55, align 8
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp56 = icmp ugt i32 %44, 1
  %decode59 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 20
  br i1 %cmp56, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %decode59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @uvc_video_decode_isoc, ptr %decode59, align 8
  br label %if.end78

if.else60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %decode59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @uvc_video_decode_bulk, ptr %decode59, align 8
  br label %if.end78

if.else64:                                        ; preds = %for.end45
  %intf65 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %47 = ptrtoint ptr %intf65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %intf65, align 8
  %num_altsetting66 = getelementptr inbounds %struct.usb_interface, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %num_altsetting66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_altsetting66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp67 = icmp eq i32 %50, 1
  br i1 %cmp67, label %if.then69, label %if.else64.cleanup.sink.split_crit_edge

if.else64.cleanup.sink.split_crit_edge:           ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then69:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #12
  %decode70 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 20
  %51 = ptrtoint ptr %decode70 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @uvc_video_encode_bulk, ptr %decode70, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then69, %if.else60, %if.then58, %if.then54
  %uvc_urb79 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 23
  %arrayidx83 = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 24
  %cmp84160 = icmp ult ptr %uvc_urb79, %arrayidx83
  br i1 %cmp84160, label %if.end78.do.body87_crit_edge, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end78.do.body87_crit_edge:                     ; preds = %if.end78
  br label %do.body87

do.body87:                                        ; preds = %do.body87.do.body87_crit_edge, %if.end78.do.body87_crit_edge
  %uvc_urb.0161 = phi ptr [ %incdec.ptr, %do.body87.do.body87_crit_edge ], [ %uvc_urb79, %if.end78.do.body87_crit_edge ]
  %work = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.0161, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %52 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.0161, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @uvc_video_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry91 = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.0161, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %entry91 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry91, ptr %entry91, align 4
  %prev.i = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.0161, i32 0, i32 7, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry91, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.0161, i32 0, i32 7, i32 2
  %55 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @uvc_video_copy_data_work, ptr %func, align 4
  %incdec.ptr = getelementptr %struct.uvc_urb, ptr %uvc_urb.0161, i32 1
  %cmp84 = icmp ult ptr %incdec.ptr, %arrayidx83
  br i1 %cmp84, label %do.body87.do.body87_crit_edge, label %do.body87.cleanup_crit_edge

do.body87.cleanup_crit_edge:                      ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body87.do.body87_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body87

cleanup.sink.split.sink.split:                    ; preds = %for.end.cleanup.sink.split.sink.split_crit_edge, %entry.cleanup.sink.split.sink.split_crit_edge
  %.str.25.sink.ph = phi ptr [ @.str.18, %entry.cleanup.sink.split.sink.split_crit_edge ], [ @.str.22, %for.end.cleanup.sink.split.sink.split_crit_edge ]
  %intf = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %56 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intf, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.else64.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %48, %if.else64.cleanup.sink.split_crit_edge ], [ %57, %cleanup.sink.split.sink.split ]
  %.str.25.sink = phi ptr [ @.str.25, %if.else64.cleanup.sink.split_crit_edge ], [ %.str.25.sink.ph, %cleanup.sink.split.sink.split ]
  %dev76 = getelementptr inbounds %struct.usb_interface, ptr %.sink, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev76, ptr noundef nonnull %.str.25.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body87.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %do.body87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_video_decode_isight(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_video_decode_isoc(ptr nocapture noundef %uvc_urb, ptr noundef %buf, ptr noundef %meta_buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uvc_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uvc_urb, align 4
  %stream2 = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 1
  %2 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream2, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp131 = icmp sgt i32 %5, 0
  br i1 %cmp131, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %dwMaxVideoFrameSize.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 12, i32 9
  %cur_format.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 14
  %queue.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 21, i32 1
  %queue11.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %dev.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 1
  %last_fid.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %meta_buf.addr.0133 = phi ptr [ %meta_buf, %for.body.lr.ph ], [ %meta_buf.addr.4, %for.inc.for.body_crit_edge ]
  %buf.addr.0132 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.2, %for.inc.for.body_crit_edge ]
  %status = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.0134, i32 3
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %do.body, label %if.end15

do.body:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %8 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev6, ptr noundef nonnull @.str.76, i32 noundef %7) #13
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %cmp12.not = icmp eq ptr %buf.addr.0132, null
  br i1 %cmp12.not, label %do.end11.for.inc_crit_edge, label %if.then13

do.end11.for.inc_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.0132, i32 0, i32 3
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %error, align 4
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.0134
  %14 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_buffer, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %actual_length = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.0134, i32 2
  %18 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_length, align 4
  %call122 = tail call fastcc i32 @uvc_video_decode_start(ptr noundef %3, ptr noundef %buf.addr.0132, ptr noundef %add.ptr, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call122)
  %cmp21123 = icmp eq i32 %call122, -11
  br i1 %cmp21123, label %if.end15.if.then22_crit_edge, label %if.end15.do.end26.critedge_crit_edge

if.end15.do.end26.critedge_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.critedge

if.end15.if.then22_crit_edge:                     ; preds = %if.end15
  br label %if.then22

if.then22:                                        ; preds = %uvc_video_next_buffers.exit.if.then22_crit_edge, %if.end15.if.then22_crit_edge
  %meta_buf.addr.1127 = phi ptr [ %meta_buf.addr.2, %uvc_video_next_buffers.exit.if.then22_crit_edge ], [ %meta_buf.addr.0133, %if.end15.if.then22_crit_edge ]
  %buf.addr.1124 = phi ptr [ %call12.i, %uvc_video_next_buffers.exit.if.then22_crit_edge ], [ %buf.addr.0132, %if.end15.if.then22_crit_edge ]
  %20 = ptrtoint ptr %dwMaxVideoFrameSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %dwMaxVideoFrameSize.i.i, align 2
  %bytesused.i.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1124, i32 0, i32 6
  %22 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytesused.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not.i.i = icmp eq i32 %21, %23
  br i1 %cmp.not.i.i, label %if.then22.uvc_video_validate_buffer.exit.i_crit_edge, label %land.lhs.true.i.i

if.then22.uvc_video_validate_buffer.exit.i_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_validate_buffer.exit.i

land.lhs.true.i.i:                                ; preds = %if.then22
  %24 = ptrtoint ptr %cur_format.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_format.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.uvc_format, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.uvc_video_validate_buffer.exit.i_crit_edge

land.lhs.true.i.i.uvc_video_validate_buffer.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_validate_buffer.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %error.i.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1124, i32 0, i32 3
  %28 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %error.i.i, align 4
  br label %uvc_video_validate_buffer.exit.i

uvc_video_validate_buffer.exit.i:                 ; preds = %if.then.i.i, %land.lhs.true.i.i.uvc_video_validate_buffer.exit.i_crit_edge, %if.then22.uvc_video_validate_buffer.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %meta_buf.addr.1127, null
  br i1 %tobool.not.i, label %uvc_video_validate_buffer.exit.i.uvc_video_next_buffers.exit_crit_edge, label %if.then.i

uvc_video_validate_buffer.exit.i.uvc_video_next_buffers.exit_crit_edge: ; preds = %uvc_video_validate_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_next_buffers.exit

if.then.i:                                        ; preds = %uvc_video_validate_buffer.exit.i
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.addr.1124, i32 0, i32 4
  %29 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sequence.i, align 8
  %sequence2.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %meta_buf.addr.1127, i32 0, i32 4
  %31 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sequence2.i, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.addr.1124, i32 0, i32 2
  %32 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %meta_buf.addr.1127, i32 0, i32 2
  %34 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %field3.i, align 4
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf.addr.1124, i32 0, i32 5
  %35 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %timestamp.i, align 8
  %timestamp5.i = getelementptr inbounds %struct.vb2_buffer, ptr %meta_buf.addr.1127, i32 0, i32 5
  %37 = ptrtoint ptr %timestamp5.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %timestamp5.i, align 8
  %state.i = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf.addr.1127, i32 0, i32 2
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %state.i, align 8
  %error.i = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf.addr.1127, i32 0, i32 3
  %39 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool6.not.i = icmp eq i32 %40, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %error8.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1124, i32 0, i32 3
  %41 = ptrtoint ptr %error8.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error8.i, align 4
  %43 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %error.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %call.i = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue.i, ptr noundef nonnull %meta_buf.addr.1127) #10
  br label %uvc_video_next_buffers.exit

uvc_video_next_buffers.exit:                      ; preds = %if.end.i, %uvc_video_validate_buffer.exit.i.uvc_video_next_buffers.exit_crit_edge
  %meta_buf.addr.2 = phi ptr [ null, %uvc_video_validate_buffer.exit.i.uvc_video_next_buffers.exit_crit_edge ], [ %call.i, %if.end.i ]
  %call12.i = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue11.i, ptr noundef %buf.addr.1124) #10
  %44 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_length, align 4
  %call = tail call fastcc i32 @uvc_video_decode_start(ptr noundef %3, ptr noundef %call12.i, ptr noundef %add.ptr, i32 noundef %45)
  %cmp21 = icmp eq i32 %call, -11
  br i1 %cmp21, label %uvc_video_next_buffers.exit.if.then22_crit_edge, label %uvc_video_next_buffers.exit.do.end26.critedge_crit_edge

uvc_video_next_buffers.exit.do.end26.critedge_crit_edge: ; preds = %uvc_video_next_buffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.critedge

uvc_video_next_buffers.exit.if.then22_crit_edge:  ; preds = %uvc_video_next_buffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

do.end26.critedge:                                ; preds = %uvc_video_next_buffers.exit.do.end26.critedge_crit_edge, %if.end15.do.end26.critedge_crit_edge
  %buf.addr.1.lcssa = phi ptr [ %buf.addr.0132, %if.end15.do.end26.critedge_crit_edge ], [ %call12.i, %uvc_video_next_buffers.exit.do.end26.critedge_crit_edge ]
  %meta_buf.addr.1.lcssa = phi ptr [ %meta_buf.addr.0133, %if.end15.do.end26.critedge_crit_edge ], [ %meta_buf.addr.2, %uvc_video_next_buffers.exit.do.end26.critedge_crit_edge ]
  %call.lcssa = phi i32 [ %call122, %if.end15.do.end26.critedge_crit_edge ], [ %call, %uvc_video_next_buffers.exit.do.end26.critedge_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa)
  %cmp27 = icmp slt i32 %call.lcssa, 0
  br i1 %cmp27, label %do.end26.critedge.for.inc_crit_edge, label %if.end29

do.end26.critedge.for.inc_crit_edge:              ; preds = %do.end26.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end29:                                         ; preds = %do.end26.critedge
  tail call fastcc void @uvc_video_decode_meta(ptr noundef %3, ptr noundef %meta_buf.addr.1.lcssa, ptr noundef %add.ptr, i32 noundef %call.lcssa)
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %call.lcssa
  %46 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_length, align 4
  %sub = sub i32 %47, %call.lcssa
  tail call fastcc void @uvc_video_decode_data(ptr noundef %uvc_urb, ptr noundef %buf.addr.1.lcssa, ptr noundef %add.ptr30, i32 noundef %sub)
  %48 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %actual_length, align 4
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 1
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %52 = and i8 %51, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i70 = icmp eq i8 %52, 0
  br i1 %tobool.not.i70, label %if.end29.uvc_video_decode_end.exit_crit_edge, label %land.lhs.true.i

if.end29.uvc_video_decode_end.exit_crit_edge:     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_decode_end.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %bytesused.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1.lcssa, i32 0, i32 6
  %53 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytesused.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i = icmp eq i32 %54, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.uvc_video_decode_end.exit_crit_edge, label %do.body.i

land.lhs.true.i.uvc_video_decode_end.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_decode_end.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %55 = load i32, ptr @uvc_dbg_param, align 4
  %and2.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %dev6.i = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev6.i, ptr noundef nonnull @.str.94) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr, align 1
  %conv9.i = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv9.i)
  %cmp10.i = icmp eq i32 %49, %conv9.i
  br i1 %cmp10.i, label %do.body13.i, label %do.end7.i.if.end24.i_crit_edge

do.end7.i.if.end24.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.body13.i:                                      ; preds = %do.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %62 = load i32, ptr @uvc_dbg_param, align 4
  %and14.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body13.i.if.end24.i_crit_edge, label %do.end18.i

do.body13.i.if.end24.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.end18.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %dev21.i = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev21.i, ptr noundef nonnull @.str.97) #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end18.i, %do.body13.i.if.end24.i_crit_edge, %do.end7.i.if.end24.i_crit_edge
  %state.i71 = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1.lcssa, i32 0, i32 2
  %67 = ptrtoint ptr %state.i71 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %state.i71, align 8
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 8
  %quirks.i = getelementptr inbounds %struct.uvc_device, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %quirks.i, align 4
  %and26.i = and i32 %71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.uvc_video_decode_end.exit_crit_edge, label %if.then28.i

if.end24.i.uvc_video_decode_end.exit_crit_edge:   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_decode_end.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %last_fid.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %last_fid.i, align 4
  %74 = xor i8 %73, 1
  store i8 %74, ptr %last_fid.i, align 4
  br label %uvc_video_decode_end.exit

uvc_video_decode_end.exit:                        ; preds = %if.then28.i, %if.end24.i.uvc_video_decode_end.exit_crit_edge, %land.lhs.true.i.uvc_video_decode_end.exit_crit_edge, %if.end29.uvc_video_decode_end.exit_crit_edge
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1.lcssa, i32 0, i32 2
  %75 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp37 = icmp eq i32 %76, 3
  br i1 %cmp37, label %if.then38, label %uvc_video_decode_end.exit.for.inc_crit_edge

uvc_video_decode_end.exit.for.inc_crit_edge:      ; preds = %uvc_video_decode_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then38:                                        ; preds = %uvc_video_decode_end.exit
  %77 = ptrtoint ptr %dwMaxVideoFrameSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %dwMaxVideoFrameSize.i.i, align 2
  %bytesused.i.i73 = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1.lcssa, i32 0, i32 6
  %79 = ptrtoint ptr %bytesused.i.i73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bytesused.i.i73, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp.not.i.i74 = icmp eq i32 %78, %80
  br i1 %cmp.not.i.i74, label %if.then38.uvc_video_validate_buffer.exit.i83_crit_edge, label %land.lhs.true.i.i79

if.then38.uvc_video_validate_buffer.exit.i83_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_validate_buffer.exit.i83

land.lhs.true.i.i79:                              ; preds = %if.then38
  %81 = ptrtoint ptr %cur_format.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur_format.i.i, align 4
  %flags.i.i76 = getelementptr inbounds %struct.uvc_format, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %flags.i.i76 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i.i76, align 4
  %and.i.i77 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77)
  %tobool.not.i.i78 = icmp eq i32 %and.i.i77, 0
  br i1 %tobool.not.i.i78, label %if.then.i.i81, label %land.lhs.true.i.i79.uvc_video_validate_buffer.exit.i83_crit_edge

land.lhs.true.i.i79.uvc_video_validate_buffer.exit.i83_crit_edge: ; preds = %land.lhs.true.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_validate_buffer.exit.i83

if.then.i.i81:                                    ; preds = %land.lhs.true.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  %error.i.i80 = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1.lcssa, i32 0, i32 3
  %85 = ptrtoint ptr %error.i.i80 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %error.i.i80, align 4
  br label %uvc_video_validate_buffer.exit.i83

uvc_video_validate_buffer.exit.i83:               ; preds = %if.then.i.i81, %land.lhs.true.i.i79.uvc_video_validate_buffer.exit.i83_crit_edge, %if.then38.uvc_video_validate_buffer.exit.i83_crit_edge
  %tobool.not.i82 = icmp eq ptr %meta_buf.addr.1.lcssa, null
  br i1 %tobool.not.i82, label %uvc_video_validate_buffer.exit.i83.uvc_video_next_buffers.exit101_crit_edge, label %if.then.i93

uvc_video_validate_buffer.exit.i83.uvc_video_next_buffers.exit101_crit_edge: ; preds = %uvc_video_validate_buffer.exit.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_next_buffers.exit101

if.then.i93:                                      ; preds = %uvc_video_validate_buffer.exit.i83
  %sequence.i84 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.addr.1.lcssa, i32 0, i32 4
  %86 = ptrtoint ptr %sequence.i84 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sequence.i84, align 8
  %sequence2.i85 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %meta_buf.addr.1.lcssa, i32 0, i32 4
  %88 = ptrtoint ptr %sequence2.i85 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %sequence2.i85, align 8
  %field.i86 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.addr.1.lcssa, i32 0, i32 2
  %89 = ptrtoint ptr %field.i86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %field.i86, align 4
  %field3.i87 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %meta_buf.addr.1.lcssa, i32 0, i32 2
  %91 = ptrtoint ptr %field3.i87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %field3.i87, align 4
  %timestamp.i88 = getelementptr inbounds %struct.vb2_buffer, ptr %buf.addr.1.lcssa, i32 0, i32 5
  %92 = ptrtoint ptr %timestamp.i88 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %timestamp.i88, align 8
  %timestamp5.i89 = getelementptr inbounds %struct.vb2_buffer, ptr %meta_buf.addr.1.lcssa, i32 0, i32 5
  %94 = ptrtoint ptr %timestamp5.i89 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %timestamp5.i89, align 8
  %state.i90 = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf.addr.1.lcssa, i32 0, i32 2
  %95 = ptrtoint ptr %state.i90 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 3, ptr %state.i90, align 8
  %error.i91 = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf.addr.1.lcssa, i32 0, i32 3
  %96 = ptrtoint ptr %error.i91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %error.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool6.not.i92 = icmp eq i32 %97, 0
  br i1 %tobool6.not.i92, label %if.then7.i95, label %if.then.i93.if.end.i98_crit_edge

if.then.i93.if.end.i98_crit_edge:                 ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i98

if.then7.i95:                                     ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #12
  %error8.i94 = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1.lcssa, i32 0, i32 3
  %98 = ptrtoint ptr %error8.i94 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %error8.i94, align 4
  %100 = ptrtoint ptr %error.i91 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %error.i91, align 4
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.then7.i95, %if.then.i93.if.end.i98_crit_edge
  %call.i97 = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue.i, ptr noundef nonnull %meta_buf.addr.1.lcssa) #10
  br label %uvc_video_next_buffers.exit101

uvc_video_next_buffers.exit101:                   ; preds = %if.end.i98, %uvc_video_validate_buffer.exit.i83.uvc_video_next_buffers.exit101_crit_edge
  %meta_buf.addr.3 = phi ptr [ null, %uvc_video_validate_buffer.exit.i83.uvc_video_next_buffers.exit101_crit_edge ], [ %call.i97, %if.end.i98 ]
  %call12.i100 = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue11.i, ptr noundef %buf.addr.1.lcssa) #10
  br label %for.inc

for.inc:                                          ; preds = %uvc_video_next_buffers.exit101, %uvc_video_decode_end.exit.for.inc_crit_edge, %do.end26.critedge.for.inc_crit_edge, %if.then13, %do.end11.for.inc_crit_edge
  %buf.addr.2 = phi ptr [ null, %do.end11.for.inc_crit_edge ], [ %buf.addr.0132, %if.then13 ], [ %buf.addr.1.lcssa, %do.end26.critedge.for.inc_crit_edge ], [ %call12.i100, %uvc_video_next_buffers.exit101 ], [ %buf.addr.1.lcssa, %uvc_video_decode_end.exit.for.inc_crit_edge ]
  %meta_buf.addr.4 = phi ptr [ %meta_buf.addr.0133, %do.end11.for.inc_crit_edge ], [ %meta_buf.addr.0133, %if.then13 ], [ %meta_buf.addr.1.lcssa, %do.end26.critedge.for.inc_crit_edge ], [ %meta_buf.addr.3, %uvc_video_next_buffers.exit101 ], [ %meta_buf.addr.1.lcssa, %uvc_video_decode_end.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0134, 1
  %101 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %number_of_packets, align 4
  %cmp = icmp slt i32 %inc, %102
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_video_decode_bulk(ptr nocapture noundef %uvc_urb, ptr noundef %buf, ptr noundef %meta_buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uvc_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uvc_urb, align 4
  %stream2 = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 1
  %2 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream2, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %header_size = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %header_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %bulk5 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22
  %payload_size = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 3
  %10 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %payload_size, align 8
  %add = add i32 %11, %5
  store i32 %add, ptr %payload_size, align 8
  %header_size7 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 1
  %12 = ptrtoint ptr %header_size7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %header_size7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true9:                                   ; preds = %if.end
  %skip_payload = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 2
  %14 = ptrtoint ptr %skip_payload to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %skip_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.body.preheader, label %land.lhs.true9.if.end25_crit_edge

land.lhs.true9.if.end25_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body.preheader:                                ; preds = %land.lhs.true9
  %call162 = tail call fastcc i32 @uvc_video_decode_start(ptr noundef %3, ptr noundef %buf, ptr noundef %9, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call162)
  %cmp12163 = icmp eq i32 %call162, -11
  br i1 %cmp12163, label %if.then13.lr.ph, label %do.body.preheader.do.end.critedge_crit_edge

do.body.preheader.do.end.critedge_crit_edge:      ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.critedge

if.then13.lr.ph:                                  ; preds = %do.body.preheader
  %dwMaxVideoFrameSize.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 12, i32 9
  %cur_format.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 14
  %queue.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 21, i32 1
  %queue11.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  br label %if.then13

if.then13:                                        ; preds = %uvc_video_next_buffers.exit.if.then13_crit_edge, %if.then13.lr.ph
  %meta_buf.addr.0167 = phi ptr [ %meta_buf, %if.then13.lr.ph ], [ %meta_buf.addr.1, %uvc_video_next_buffers.exit.if.then13_crit_edge ]
  %buf.addr.0164 = phi ptr [ %buf, %if.then13.lr.ph ], [ %call12.i, %uvc_video_next_buffers.exit.if.then13_crit_edge ]
  %16 = ptrtoint ptr %dwMaxVideoFrameSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %dwMaxVideoFrameSize.i.i, align 2
  %bytesused.i.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.0164, i32 0, i32 6
  %18 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytesused.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not.i.i = icmp eq i32 %17, %19
  br i1 %cmp.not.i.i, label %if.then13.uvc_video_validate_buffer.exit.i_crit_edge, label %land.lhs.true.i.i

if.then13.uvc_video_validate_buffer.exit.i_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_validate_buffer.exit.i

land.lhs.true.i.i:                                ; preds = %if.then13
  %20 = ptrtoint ptr %cur_format.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_format.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.uvc_format, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.uvc_video_validate_buffer.exit.i_crit_edge

land.lhs.true.i.i.uvc_video_validate_buffer.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_validate_buffer.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %error.i.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.0164, i32 0, i32 3
  %24 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %error.i.i, align 4
  br label %uvc_video_validate_buffer.exit.i

uvc_video_validate_buffer.exit.i:                 ; preds = %if.then.i.i, %land.lhs.true.i.i.uvc_video_validate_buffer.exit.i_crit_edge, %if.then13.uvc_video_validate_buffer.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %meta_buf.addr.0167, null
  br i1 %tobool.not.i, label %uvc_video_validate_buffer.exit.i.uvc_video_next_buffers.exit_crit_edge, label %if.then.i

uvc_video_validate_buffer.exit.i.uvc_video_next_buffers.exit_crit_edge: ; preds = %uvc_video_validate_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_next_buffers.exit

if.then.i:                                        ; preds = %uvc_video_validate_buffer.exit.i
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.addr.0164, i32 0, i32 4
  %25 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sequence.i, align 8
  %sequence2.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %meta_buf.addr.0167, i32 0, i32 4
  %27 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sequence2.i, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.addr.0164, i32 0, i32 2
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %meta_buf.addr.0167, i32 0, i32 2
  %30 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %field3.i, align 4
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf.addr.0164, i32 0, i32 5
  %31 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %timestamp.i, align 8
  %timestamp5.i = getelementptr inbounds %struct.vb2_buffer, ptr %meta_buf.addr.0167, i32 0, i32 5
  %33 = ptrtoint ptr %timestamp5.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %timestamp5.i, align 8
  %state.i = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf.addr.0167, i32 0, i32 2
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %state.i, align 8
  %error.i = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf.addr.0167, i32 0, i32 3
  %35 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool6.not.i = icmp eq i32 %36, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %error8.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.0164, i32 0, i32 3
  %37 = ptrtoint ptr %error8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %error8.i, align 4
  %39 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %error.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %call.i = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue.i, ptr noundef nonnull %meta_buf.addr.0167) #10
  br label %uvc_video_next_buffers.exit

uvc_video_next_buffers.exit:                      ; preds = %if.end.i, %uvc_video_validate_buffer.exit.i.uvc_video_next_buffers.exit_crit_edge
  %meta_buf.addr.1 = phi ptr [ null, %uvc_video_validate_buffer.exit.i.uvc_video_next_buffers.exit_crit_edge ], [ %call.i, %if.end.i ]
  %call12.i = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue11.i, ptr noundef %buf.addr.0164) #10
  %call = tail call fastcc i32 @uvc_video_decode_start(ptr noundef %3, ptr noundef %call12.i, ptr noundef %9, i32 noundef %5)
  %cmp12 = icmp eq i32 %call, -11
  br i1 %cmp12, label %uvc_video_next_buffers.exit.if.then13_crit_edge, label %uvc_video_next_buffers.exit.do.end.critedge_crit_edge

uvc_video_next_buffers.exit.do.end.critedge_crit_edge: ; preds = %uvc_video_next_buffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.critedge

uvc_video_next_buffers.exit.if.then13_crit_edge:  ; preds = %uvc_video_next_buffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

do.end.critedge:                                  ; preds = %uvc_video_next_buffers.exit.do.end.critedge_crit_edge, %do.body.preheader.do.end.critedge_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %do.body.preheader.do.end.critedge_crit_edge ], [ %call12.i, %uvc_video_next_buffers.exit.do.end.critedge_crit_edge ]
  %meta_buf.addr.0.lcssa = phi ptr [ %meta_buf, %do.body.preheader.do.end.critedge_crit_edge ], [ %meta_buf.addr.1, %uvc_video_next_buffers.exit.do.end.critedge_crit_edge ]
  %call.lcssa = phi i32 [ %call162, %do.body.preheader.do.end.critedge_crit_edge ], [ %call, %uvc_video_next_buffers.exit.do.end.critedge_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa)
  %cmp16 = icmp slt i32 %call.lcssa, 0
  %cmp17 = icmp eq ptr %buf.addr.0.lcssa, null
  %or.cond = or i1 %cmp17, %cmp16
  br i1 %or.cond, label %if.then18, label %if.else

if.then18:                                        ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %skip_payload to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %skip_payload, align 4
  br label %if.end25

if.else:                                          ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %41 = call ptr @memcpy(ptr %bulk5, ptr %9, i32 %call.lcssa)
  %42 = ptrtoint ptr %header_size7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.lcssa, ptr %header_size7, align 8
  tail call fastcc void @uvc_video_decode_meta(ptr noundef %3, ptr noundef %meta_buf.addr.0.lcssa, ptr noundef %9, i32 noundef %call.lcssa)
  %add.ptr = getelementptr i8, ptr %9, i32 %call.lcssa
  %sub = sub i32 %5, %call.lcssa
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then18, %land.lhs.true9.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %buf.addr.1 = phi ptr [ %buf.addr.0.lcssa, %if.then18 ], [ %buf.addr.0.lcssa, %if.else ], [ %buf, %land.lhs.true9.if.end25_crit_edge ], [ %buf, %if.end.if.end25_crit_edge ]
  %meta_buf.addr.2 = phi ptr [ %meta_buf.addr.0.lcssa, %if.then18 ], [ %meta_buf.addr.0.lcssa, %if.else ], [ %meta_buf, %land.lhs.true9.if.end25_crit_edge ], [ %meta_buf, %if.end.if.end25_crit_edge ]
  %mem.0 = phi ptr [ %9, %if.then18 ], [ %add.ptr, %if.else ], [ %9, %land.lhs.true9.if.end25_crit_edge ], [ %9, %if.end.if.end25_crit_edge ]
  %len.0 = phi i32 [ %5, %if.then18 ], [ %sub, %if.else ], [ %5, %land.lhs.true9.if.end25_crit_edge ], [ %5, %if.end.if.end25_crit_edge ]
  %skip_payload27 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 2
  %43 = ptrtoint ptr %skip_payload27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %skip_payload27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool28.not = icmp ne i32 %44, 0
  %cmp30.not = icmp eq ptr %buf.addr.1, null
  %or.cond160 = or i1 %cmp30.not, %tobool28.not
  br i1 %or.cond160, label %if.end25.if.end32_crit_edge, label %if.then31

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @uvc_video_decode_data(ptr noundef %uvc_urb, ptr noundef nonnull %buf.addr.1, ptr noundef %mem.0, i32 noundef %len.0)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end25.if.end32_crit_edge
  %45 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %47 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp34 = icmp ult i32 %46, %48
  br i1 %cmp34, label %if.end32.if.then40_crit_edge, label %lor.lhs.false35

if.end32.if.then40_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

lor.lhs.false35:                                  ; preds = %if.end32
  %49 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %payload_size, align 8
  %max_payload_size = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 4
  %51 = ptrtoint ptr %max_payload_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_payload_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp39.not = icmp ult i32 %50, %52
  br i1 %cmp39.not, label %lor.lhs.false35.cleanup_crit_edge, label %lor.lhs.false35.if.then40_crit_edge

lor.lhs.false35.if.then40_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

lor.lhs.false35.cleanup_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %lor.lhs.false35.if.then40_crit_edge, %if.end32.if.then40_crit_edge
  %53 = ptrtoint ptr %skip_payload27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %skip_payload27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool43.not = icmp ne i32 %54, 0
  %or.cond161 = or i1 %cmp30.not, %tobool43.not
  br i1 %or.cond161, label %if.then40.if.end55_crit_edge, label %if.then46

if.then40.if.end55_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then46:                                        ; preds = %if.then40
  %55 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %payload_size, align 8
  %arrayidx.i = getelementptr %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i, align 1
  %59 = and i8 %58, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i108 = icmp eq i8 %59, 0
  br i1 %tobool.not.i108, label %if.then46.uvc_video_decode_end.exit_crit_edge, label %land.lhs.true.i

if.then46.uvc_video_decode_end.exit_crit_edge:    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_decode_end.exit

land.lhs.true.i:                                  ; preds = %if.then46
  %bytesused.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 6
  %60 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bytesused.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.not.i = icmp eq i32 %61, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.uvc_video_decode_end.exit_crit_edge, label %do.body.i

land.lhs.true.i.uvc_video_decode_end.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_decode_end.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %62 = load i32, ptr @uvc_dbg_param, align 4
  %and2.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 1
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %dev6.i = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev6.i, ptr noundef nonnull @.str.94) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %67 = ptrtoint ptr %bulk5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bulk5, align 1
  %conv9.i = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv9.i)
  %cmp10.i = icmp eq i32 %56, %conv9.i
  br i1 %cmp10.i, label %do.body13.i, label %do.end7.i.if.end24.i_crit_edge

do.end7.i.if.end24.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.body13.i:                                      ; preds = %do.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %69 = load i32, ptr @uvc_dbg_param, align 4
  %and14.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body13.i.if.end24.i_crit_edge, label %do.end18.i

do.body13.i.if.end24.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.end18.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev19.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 1
  %70 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev19.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %dev21.i = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev21.i, ptr noundef nonnull @.str.97) #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end18.i, %do.body13.i.if.end24.i_crit_edge, %do.end7.i.if.end24.i_crit_edge
  %state.i109 = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 2
  %74 = ptrtoint ptr %state.i109 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 3, ptr %state.i109, align 8
  %dev25.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 1
  %75 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev25.i, align 8
  %quirks.i = getelementptr inbounds %struct.uvc_device, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %quirks.i, align 4
  %and26.i = and i32 %78, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.uvc_video_decode_end.exit_crit_edge, label %if.then28.i

if.end24.i.uvc_video_decode_end.exit_crit_edge:   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_decode_end.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %last_fid.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 26
  %79 = ptrtoint ptr %last_fid.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %last_fid.i, align 4
  %81 = xor i8 %80, 1
  store i8 %81, ptr %last_fid.i, align 4
  br label %uvc_video_decode_end.exit

uvc_video_decode_end.exit:                        ; preds = %if.then28.i, %if.end24.i.uvc_video_decode_end.exit_crit_edge, %land.lhs.true.i.uvc_video_decode_end.exit_crit_edge, %if.then46.uvc_video_decode_end.exit_crit_edge
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 2
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %cmp52 = icmp eq i32 %83, 3
  br i1 %cmp52, label %if.then53, label %uvc_video_decode_end.exit.if.end55_crit_edge

uvc_video_decode_end.exit.if.end55_crit_edge:     ; preds = %uvc_video_decode_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then53:                                        ; preds = %uvc_video_decode_end.exit
  %dwMaxVideoFrameSize.i.i110 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 12, i32 9
  %84 = ptrtoint ptr %dwMaxVideoFrameSize.i.i110 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %dwMaxVideoFrameSize.i.i110, align 2
  %bytesused.i.i111 = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 6
  %86 = ptrtoint ptr %bytesused.i.i111 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bytesused.i.i111, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp.not.i.i112 = icmp eq i32 %85, %87
  br i1 %cmp.not.i.i112, label %if.then53.uvc_video_validate_buffer.exit.i121_crit_edge, label %land.lhs.true.i.i117

if.then53.uvc_video_validate_buffer.exit.i121_crit_edge: ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_validate_buffer.exit.i121

land.lhs.true.i.i117:                             ; preds = %if.then53
  %cur_format.i.i113 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 14
  %88 = ptrtoint ptr %cur_format.i.i113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur_format.i.i113, align 4
  %flags.i.i114 = getelementptr inbounds %struct.uvc_format, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %flags.i.i114 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i.i114, align 4
  %and.i.i115 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i115)
  %tobool.not.i.i116 = icmp eq i32 %and.i.i115, 0
  br i1 %tobool.not.i.i116, label %if.then.i.i119, label %land.lhs.true.i.i117.uvc_video_validate_buffer.exit.i121_crit_edge

land.lhs.true.i.i117.uvc_video_validate_buffer.exit.i121_crit_edge: ; preds = %land.lhs.true.i.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_validate_buffer.exit.i121

if.then.i.i119:                                   ; preds = %land.lhs.true.i.i117
  call void @__sanitizer_cov_trace_pc() #12
  %error.i.i118 = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 3
  %92 = ptrtoint ptr %error.i.i118 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %error.i.i118, align 4
  br label %uvc_video_validate_buffer.exit.i121

uvc_video_validate_buffer.exit.i121:              ; preds = %if.then.i.i119, %land.lhs.true.i.i117.uvc_video_validate_buffer.exit.i121_crit_edge, %if.then53.uvc_video_validate_buffer.exit.i121_crit_edge
  %tobool.not.i120 = icmp eq ptr %meta_buf.addr.2, null
  br i1 %tobool.not.i120, label %uvc_video_validate_buffer.exit.i121.uvc_video_next_buffers.exit139_crit_edge, label %if.then.i131

uvc_video_validate_buffer.exit.i121.uvc_video_next_buffers.exit139_crit_edge: ; preds = %uvc_video_validate_buffer.exit.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_next_buffers.exit139

if.then.i131:                                     ; preds = %uvc_video_validate_buffer.exit.i121
  %sequence.i122 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.addr.1, i32 0, i32 4
  %93 = ptrtoint ptr %sequence.i122 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sequence.i122, align 8
  %sequence2.i123 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %meta_buf.addr.2, i32 0, i32 4
  %95 = ptrtoint ptr %sequence2.i123 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %sequence2.i123, align 8
  %field.i124 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.addr.1, i32 0, i32 2
  %96 = ptrtoint ptr %field.i124 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %field.i124, align 4
  %field3.i125 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %meta_buf.addr.2, i32 0, i32 2
  %98 = ptrtoint ptr %field3.i125 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %field3.i125, align 4
  %timestamp.i126 = getelementptr inbounds %struct.vb2_buffer, ptr %buf.addr.1, i32 0, i32 5
  %99 = ptrtoint ptr %timestamp.i126 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %timestamp.i126, align 8
  %timestamp5.i127 = getelementptr inbounds %struct.vb2_buffer, ptr %meta_buf.addr.2, i32 0, i32 5
  %101 = ptrtoint ptr %timestamp5.i127 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %timestamp5.i127, align 8
  %state.i128 = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf.addr.2, i32 0, i32 2
  %102 = ptrtoint ptr %state.i128 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %state.i128, align 8
  %error.i129 = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf.addr.2, i32 0, i32 3
  %103 = ptrtoint ptr %error.i129 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %error.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool6.not.i130 = icmp eq i32 %104, 0
  br i1 %tobool6.not.i130, label %if.then7.i133, label %if.then.i131.if.end.i136_crit_edge

if.then.i131.if.end.i136_crit_edge:               ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i136

if.then7.i133:                                    ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #12
  %error8.i132 = getelementptr inbounds %struct.uvc_buffer, ptr %buf.addr.1, i32 0, i32 3
  %105 = ptrtoint ptr %error8.i132 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %error8.i132, align 4
  %107 = ptrtoint ptr %error.i129 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %error.i129, align 4
  br label %if.end.i136

if.end.i136:                                      ; preds = %if.then7.i133, %if.then.i131.if.end.i136_crit_edge
  %queue.i134 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 21, i32 1
  %call.i135 = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue.i134, ptr noundef nonnull %meta_buf.addr.2) #10
  br label %uvc_video_next_buffers.exit139

uvc_video_next_buffers.exit139:                   ; preds = %if.end.i136, %uvc_video_validate_buffer.exit.i121.uvc_video_next_buffers.exit139_crit_edge
  %queue11.i137 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %call12.i138 = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue11.i137, ptr noundef nonnull %buf.addr.1) #10
  br label %if.end55

if.end55:                                         ; preds = %uvc_video_next_buffers.exit139, %uvc_video_decode_end.exit.if.end55_crit_edge, %if.then40.if.end55_crit_edge
  %108 = ptrtoint ptr %header_size7 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %header_size7, align 8
  %109 = ptrtoint ptr %skip_payload27 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %skip_payload27, align 4
  %110 = ptrtoint ptr %payload_size to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %payload_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %lor.lhs.false35.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_video_encode_bulk(ptr nocapture noundef readonly %uvc_urb, ptr noundef %buf, ptr nocapture noundef readnone %meta_buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uvc_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uvc_urb, align 4
  %stream2 = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 1
  %2 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream2, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %urb_size = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %urb_size, align 4
  %cmp = icmp eq ptr %buf, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %header_size = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %header_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %5, align 1
  %last_fid.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 26
  %11 = ptrtoint ptr %last_fid.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %last_fid.i, align 4
  %13 = and i8 %12, 1
  %14 = or i8 %13, -126
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx2.i, align 1
  %16 = ptrtoint ptr %header_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %header_size, align 8
  %payload_size = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 3
  %17 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %payload_size, align 8
  %add = add i32 %18, 2
  store i32 %add, ptr %payload_size, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 2
  %sub = add i32 %7, -2
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %mem.0 = phi ptr [ %add.ptr, %if.then4 ], [ %5, %if.end.if.end8_crit_edge ]
  %len.0 = phi i32 [ %sub, %if.then4 ], [ %7, %if.end.if.end8_crit_edge ]
  %mem2.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 4
  %19 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem2.i, align 8
  %buf_used.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18, i32 3
  %21 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_used.i, align 4
  %bytesused.i = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 6
  %23 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bytesused.i, align 8
  %sub.i = sub i32 %24, %22
  %25 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %len.0) #10
  %max_payload_size.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 4
  %26 = ptrtoint ptr %max_payload_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_payload_size.i, align 4
  %payload_size.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 22, i32 3
  %28 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %payload_size.i, align 8
  %sub5.i = sub i32 %27, %29
  %30 = tail call i32 @llvm.umin.i32(i32 %sub5.i, i32 %25) #10
  %add.ptr.i = getelementptr i8, ptr %20, i32 %22
  %31 = call ptr @memcpy(ptr %mem.0, ptr %add.ptr.i, i32 %30)
  %32 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_used.i, align 4
  %add.i = add i32 %33, %30
  store i32 %add.i, ptr %buf_used.i, align 4
  %34 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %payload_size.i, align 8
  %add12 = add i32 %35, %30
  store i32 %add12, ptr %payload_size.i, align 8
  %sub13.neg = sub i32 %30, %len.0
  %36 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytesused.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add.i)
  %cmp14 = icmp eq i32 %37, %add.i
  br i1 %cmp14, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %38 = ptrtoint ptr %max_payload_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_payload_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %39)
  %cmp18 = icmp eq i32 %add12, %39
  br i1 %cmp18, label %lor.lhs.false.if.end32_crit_edge, label %lor.lhs.false.if.end37_crit_edge

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then24:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %40 = ptrtoint ptr %buf_used.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %buf_used.i, align 4
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 2
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %state, align 8
  %sequence = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 25
  %42 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sequence, align 8
  %inc = add i32 %43, 1
  store i32 %inc, ptr %sequence, align 8
  %sequence28 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %44 = ptrtoint ptr %sequence28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc, ptr %sequence28, align 8
  %call30 = tail call ptr @uvc_queue_next_buffer(ptr noundef %queue, ptr noundef nonnull %buf) #10
  %last_fid = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 26
  %45 = ptrtoint ptr %last_fid to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %last_fid, align 4
  %47 = xor i8 %46, 1
  store i8 %47, ptr %last_fid, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %lor.lhs.false.if.end32_crit_edge
  %48 = ptrtoint ptr %header_size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %header_size, align 8
  %49 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %payload_size.i, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end32, %lor.lhs.false.if.end37_crit_edge
  %50 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %urb_size, align 4
  %sub39 = add i32 %sub13.neg, %51
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  %sub39.sink = phi i32 [ %sub39, %if.end37 ], [ 0, %entry.cleanup_crit_edge ]
  %transfer_buffer_length40 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %52 = ptrtoint ptr %transfer_buffer_length40 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub39.sink, ptr %transfer_buffer_length40, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_video_copy_data_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -536
  %async_operations = getelementptr i8, ptr %work, i32 -516
  %0 = ptrtoint ptr %async_operations to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %async_operations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %copy_operations = getelementptr i8, ptr %work, i32 -512
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.uvc_copy_op], ptr %copy_operations, i32 0, i32 %i.012
  %dst = getelementptr inbounds %struct.uvc_copy_op, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 4
  %src = getelementptr inbounds %struct.uvc_copy_op, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 4
  %len = getelementptr inbounds %struct.uvc_copy_op, ptr %arrayidx, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = call ptr @memcpy(ptr %3, ptr %5, i32 %7)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void @uvc_queue_buffer_release(ptr noundef %10) #10
  %inc = add nuw i32 %i.012, 1
  %11 = ptrtoint ptr %async_operations to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %async_operations, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %stream.i = getelementptr i8, ptr %work, i32 -532
  %13 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream.i, align 4
  %dev.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i.i, align 8
  %sysdev.i.i = getelementptr inbounds %struct.usb_bus, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sysdev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sysdev.i.i, align 4
  %sgt.i = getelementptr i8, ptr %work, i32 -520
  %23 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sgt.i, align 4
  %type.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %14, i32 0, i32 9
  %25 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 1
  %..i.i = select i1 %cmp.i.i, i32 2, i32 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %22, ptr noundef %28, i32 noundef %30, i32 noundef %..i.i) #10
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %call3.i = tail call i32 @usb_submit_urb(ptr noundef %32, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp1 = icmp slt i32 %call3.i, 0
  br i1 %cmp1, label %do.end, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stream.i, align 4
  %intf = getelementptr inbounds %struct.uvc_streaming, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %call3.i) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_video_start_streaming(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock1.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29
  %lock.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @uvc_video_clock_init.__key, i16 noundef signext 3) #10
  %size.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 3
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 512) #16
  %2 = ptrtoint ptr %clock1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %clock1.i, align 4
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 1
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %head.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 2
  %4 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %count.i.i, align 4
  %last_sof.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 4
  %5 = ptrtoint ptr %last_sof.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %last_sof.i.i, align 4
  %sof_offset.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 5
  %6 = ptrtoint ptr %sof_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %sof_offset.i.i, align 2
  %ctrl = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12
  %call.i = tail call fastcc i32 @uvc_set_video_ctrl(ptr noundef %stream, ptr noundef %ctrl, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.error_commit_crit_edge, label %if.end4

if.end.error_commit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_commit

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @uvc_video_start_transfer(ptr noundef %stream, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %error_video, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_video:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %intfnum = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 6
  %11 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intfnum, align 4
  %call9 = tail call i32 @usb_set_interface(ptr noundef %10, i32 noundef %12, i32 noundef 0) #10
  br label %error_commit

error_commit:                                     ; preds = %error_video, %if.end.error_commit_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.error_commit_crit_edge ], [ %call5, %error_video ]
  %13 = ptrtoint ptr %clock1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clock1.i, align 8
  tail call void @kfree(ptr noundef %14) #10
  %15 = ptrtoint ptr %clock1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %clock1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %error_commit, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_commit ], [ 0, %if.end4.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_video_stop_streaming(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @uvc_video_stop_transfer(ptr noundef %stream, i32 noundef 1)
  %intf = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 5
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %intfnum = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 6
  %8 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intfnum, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %7, i32 noundef %9, i32 noundef 0) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bEndpointAddress = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %11 to i32
  %and4 = and i32 %conv, 128
  %dev5 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i = shl i32 %17, 8
  %and = shl nuw nsw i32 %conv, 15
  %shl1.i = and i32 %and, 491520
  %or.i = or i32 %and4, %shl1.i
  %or = or i32 %or.i, %shl.i
  %or8 = or i32 %or, -1073741824
  %call11 = tail call i32 @usb_clear_halt(ptr noundef %15, i32 noundef %or8) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %clock.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29
  %18 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clock.i, align 8
  tail call void @kfree(ptr noundef %19) #10
  %20 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %clock.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_match_one_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_vunmap_noncontiguous(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_noncontiguous(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_find_endpoint(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_restore_values(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_alloc_urb_buffers(ptr noundef %stream, i32 noundef %size, i32 noundef %psize, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %urb_size = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 24
  %0 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urb_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div = udiv i32 %1, %psize
  br label %cleanup40

if.end:                                           ; preds = %entry
  %add = add i32 %size, -1
  %sub = add i32 %add, %psize
  %div2 = udiv i32 %sub, %psize
  %2 = tail call i32 @llvm.umin.i32(i32 %div2, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp592 = icmp ugt i32 %2, 1
  br i1 %cmp592, label %for.body.lr.ph, label %if.end.do.body27_crit_edge

if.end.do.body27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

for.body.lr.ph:                                   ; preds = %if.end
  %dev.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %type.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 9
  %uvc_urb1.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %for.body.lr.ph
  %npackets.093 = phi i32 [ %2, %for.body.lr.ph ], [ %div2564, %for.inc24.for.body_crit_edge ]
  %mul = mul i32 %npackets.093, %psize
  %3 = ptrtoint ptr %urb_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %urb_size, align 4
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body
  %i.091 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body9_crit_edge ]
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %sysdev.i.i = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sysdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysdev.i.i, align 4
  %12 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %urb_size, align 4
  %14 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 1
  %..i.i = select i1 %cmp.i.i, i32 2, i32 1
  %call2.i = tail call ptr @dma_alloc_noncontiguous(ptr noundef %11, i32 noundef %13, i32 noundef %..i.i, i32 noundef %gfp_flags, i32 noundef 0) #10
  %sgt.i = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 23, i32 %i.091, i32 4
  %16 = ptrtoint ptr %sgt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2.i, ptr %sgt.i, align 4
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body9.for.body.lr.ph.i_crit_edge, label %if.end.i

for.body9.for.body.lr.ph.i_crit_edge:             ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i

if.end.i:                                         ; preds = %for.body9
  %17 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call2.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_address.i, align 4
  %dma.i = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 23, i32 %i.091, i32 3
  %21 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dma.i, align 4
  %22 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %urb_size, align 4
  %call7.i = tail call ptr @dma_vmap_noncontiguous(ptr noundef %11, i32 noundef %23, ptr noundef nonnull %call2.i) #10
  %buffer.i = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 23, i32 %i.091, i32 2
  %24 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %buffer.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %for.inc

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %urb_size, align 4
  %27 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sgt.i, align 4
  %29 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i32.i = icmp eq i32 %30, 1
  %..i33.i = select i1 %cmp.i32.i, i32 2, i32 1
  tail call void @dma_free_noncontiguous(ptr noundef %11, i32 noundef %26, ptr noundef %28, i32 noundef %..i33.i) #10
  %31 = ptrtoint ptr %sgt.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %sgt.i, align 4
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then10.i, %for.body9.for.body.lr.ph.i_crit_edge
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %bus.i.i66 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %bus.i.i66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i66, align 8
  %sysdev.i.i67 = getelementptr inbounds %struct.usb_bus, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %sysdev.i.i67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sysdev.i.i67, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %uvc_urb.022.i = phi ptr [ %uvc_urb1.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %buffer.i69 = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.022.i, i32 0, i32 2
  %40 = ptrtoint ptr %buffer.i69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer.i69, align 4
  %tobool.not.i70 = icmp eq ptr %41, null
  br i1 %tobool.not.i70, label %for.body.i.for.inc.i_crit_edge, label %if.end.i74

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i74:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_vunmap_noncontiguous(ptr noundef %39, ptr noundef nonnull %41) #10
  %42 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %urb_size, align 4
  %sgt.i71 = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb.022.i, i32 0, i32 4
  %44 = ptrtoint ptr %sgt.i71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sgt.i71, align 4
  %46 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i.i72 = icmp eq i32 %47, 1
  %..i.i73 = select i1 %cmp.i.i72, i32 2, i32 1
  tail call void @dma_free_noncontiguous(ptr noundef %39, i32 noundef %43, ptr noundef %45, i32 noundef %..i.i73) #10
  %48 = ptrtoint ptr %buffer.i69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %buffer.i69, align 4
  %49 = ptrtoint ptr %sgt.i71 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %sgt.i71, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i74, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.uvc_urb, ptr %uvc_urb.022.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %urb_size
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc:                                          ; preds = %if.end.i
  %stream13 = getelementptr %struct.uvc_streaming, ptr %stream, i32 0, i32 23, i32 %i.091, i32 1
  %50 = ptrtoint ptr %stream13 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %stream, ptr %stream13, align 4
  %inc = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end:                                          ; preds = %for.inc.i
  %51 = ptrtoint ptr %urb_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %urb_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.091)
  %cmp14 = icmp eq i32 %i.091, 5
  br i1 %cmp14, label %for.end.do.body_crit_edge, label %for.inc24

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %for.inc.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %52 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.cleanup40_crit_edge, label %do.end

do.body.cleanup40_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev19, ptr noundef nonnull @.str.65, i32 noundef 5, i32 noundef %npackets.093, i32 noundef %psize) #13
  br label %cleanup40

for.inc24:                                        ; preds = %for.end
  %div2564 = lshr i32 %npackets.093, 1
  %cmp5 = icmp ugt i32 %npackets.093, 3
  br i1 %cmp5, label %for.inc24.for.body_crit_edge, label %for.inc24.do.body27_crit_edge

for.inc24.do.body27_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body27:                                        ; preds = %for.inc24.do.body27_crit_edge, %if.end.do.body27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %57 = load i32, ptr @uvc_dbg_param, align 4
  %and28 = and i32 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.cleanup40_crit_edge, label %do.end33

do.body27.cleanup40_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %dev34 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %58 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev34, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev36, ptr noundef nonnull @.str.68, i32 noundef %psize) #13
  br label %cleanup40

cleanup40:                                        ; preds = %do.end33, %do.body27.cleanup40_crit_edge, %do.end, %do.body.cleanup40_crit_edge, %if.then
  %retval.0 = phi i32 [ %div, %if.then ], [ %npackets.093, %do.end ], [ %npackets.093, %do.body.cleanup40_crit_edge ], [ 0, %do.end33 ], [ 0, %do.body27.cleanup40_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_video_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %stream1 = getelementptr inbounds %struct.uvc_urb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %queue2 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %queue3 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 21, i32 1
  %queue5 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 21, i32 0, i32 10
  %4 = ptrtoint ptr %queue5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue5, align 8
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %7, label %do.end [
    i32 0, label %sw.epilog
    i32 -2, label %entry.sw.bb_crit_edge
    i32 -104, label %entry.sw.bb7_crit_edge
    i32 -108, label %entry.sw.bb7_crit_edge91
  ]

entry.sw.bb7_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %7) #13
  br label %sw.bb

sw.bb:                                            ; preds = %do.end, %entry.sw.bb_crit_edge
  %frozen = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %frozen, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %sw.bb.sw.bb7_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge91
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %13)
  %cmp = icmp eq i32 %13, -108
  %conv = zext i1 %cmp to i32
  tail call void @uvc_queue_cancel(ptr noundef %queue2, i32 noundef %conv) #10
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %sw.bb7.cleanup_crit_edge, label %if.then10

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %15)
  %cmp12 = icmp eq i32 %15, -108
  %conv13 = zext i1 %cmp12 to i32
  tail call void @uvc_queue_cancel(ptr noundef %queue3, i32 noundef %conv13) #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %call = tail call ptr @uvc_queue_get_current_buffer(ptr noundef %queue2) #10
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %sw.epilog.if.end34_crit_edge, label %do.body18

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.body18:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %irqlock = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 21, i32 1, i32 4
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %irqqueue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 21, i32 1, i32 5
  %16 = ptrtoint ptr %irqqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %irqqueue, align 4
  %cmp.i.not = icmp eq ptr %17, %irqqueue
  %add.ptr = getelementptr i8, ptr %17, i32 -736
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call22) #10
  br label %if.end34

if.end34:                                         ; preds = %do.body18, %sw.epilog.if.end34_crit_edge
  %buf_meta.1 = phi ptr [ %spec.select, %do.body18 ], [ null, %sw.epilog.if.end34_crit_edge ]
  %async_operations = getelementptr inbounds %struct.uvc_urb, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %async_operations to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %async_operations, align 4
  %19 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stream1, align 4
  %dev.i = getelementptr inbounds %struct.uvc_streaming, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 8
  %sysdev.i = getelementptr inbounds %struct.usb_bus, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sysdev.i, align 4
  %sgt = getelementptr inbounds %struct.uvc_urb, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sgt, align 4
  %type.i = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 9
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i90 = icmp eq i32 %32, 1
  %..i = select i1 %cmp.i90, i32 2, i32 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %30, i32 0, i32 2
  %35 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %28, ptr noundef %34, i32 noundef %36, i32 noundef %..i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %37 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.end34.invalidate_kernel_vmap_range.exit_crit_edge, label %if.then.i

if.end34.invalidate_kernel_vmap_range.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %invalidate_kernel_vmap_range.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stream1, align 4
  %urb_size = getelementptr inbounds %struct.uvc_streaming, ptr %39, i32 0, i32 24
  %40 = ptrtoint ptr %urb_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %urb_size, align 4
  %buffer = getelementptr inbounds %struct.uvc_urb, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %44(ptr noundef %43, i32 noundef %41) #10
  br label %invalidate_kernel_vmap_range.exit

invalidate_kernel_vmap_range.exit:                ; preds = %if.then.i, %if.end34.invalidate_kernel_vmap_range.exit_crit_edge
  %decode = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 20
  %45 = ptrtoint ptr %decode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %decode, align 8
  tail call void %46(ptr noundef %1, ptr noundef %call, ptr noundef %buf_meta.1) #10
  %47 = ptrtoint ptr %async_operations to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %async_operations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool40.not = icmp eq i32 %48, 0
  br i1 %tobool40.not, label %if.then41, label %if.end52

if.then41:                                        ; preds = %invalidate_kernel_vmap_range.exit
  %49 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stream1, align 4
  %dev.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i.i, align 8
  %sysdev.i.i = getelementptr inbounds %struct.usb_bus, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %sysdev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sysdev.i.i, align 4
  %59 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sgt, align 4
  %type.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %50, i32 0, i32 9
  %61 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i.i = icmp eq i32 %62, 1
  %..i.i = select i1 %cmp.i.i, i32 2, i32 1
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %60, i32 0, i32 2
  %65 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %58, ptr noundef %64, i32 noundef %66, i32 noundef %..i.i) #10
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 @usb_submit_urb(ptr noundef %68, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp43 = icmp slt i32 %call3.i, 0
  br i1 %cmp43, label %do.end48, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %intf49 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 5
  %69 = ptrtoint ptr %intf49 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %intf49, align 8
  %dev50 = getelementptr inbounds %struct.usb_interface, ptr %70, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.74, i32 noundef %call3.i) #13
  br label %cleanup

if.end52:                                         ; preds = %invalidate_kernel_vmap_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  %async_wq = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 19
  %71 = ptrtoint ptr %async_wq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %async_wq, align 4
  %work = getelementptr inbounds %struct.uvc_urb, ptr %1, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %72, ptr noundef %work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end48, %if.then41.cleanup_crit_edge, %if.then10, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_noncontiguous(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_vmap_noncontiguous(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_queue_cancel(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_queue_get_current_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_video_decode_start(ptr noundef %stream, ptr noundef %buf, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp slt i32 %len, 2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp1 = icmp ult i8 %1, 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp6 = icmp ugt i32 %conv, %len
  %or.cond = or i1 %cmp1, %cmp6
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %nb_invalid = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 4
  %2 = ptrtoint ptr %nb_invalid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_invalid, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %nb_invalid, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr i8, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  %6 = and i8 %5, 1
  %last_fid = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 26
  %7 = ptrtoint ptr %last_fid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %last_fid, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %6)
  %cmp13.not = icmp eq i8 %8, %6
  br i1 %cmp13.not, label %if.end.if.end20_crit_edge, label %if.then15

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then15:                                        ; preds = %if.end
  %sequence = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 25
  %9 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sequence, align 8
  %inc16 = add i32 %10, 1
  store i32 %inc16, ptr %sequence, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc16)
  %tobool.not = icmp eq i32 %inc16, 0
  br i1 %tobool.not, label %if.then15.if.end20_crit_edge, label %if.then18

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %11 = load i32, ptr @uvc_dbg_param, align 4
  %and.i = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then18.do.end9.i_crit_edge, label %do.end.i

if.then18.do.end9.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  %first_data.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 1
  %16 = ptrtoint ptr %first_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first_data.i, align 4
  %nb_packets.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 2
  %18 = ptrtoint ptr %nb_packets.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nb_packets.i, align 4
  %nb_empty.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 3
  %20 = ptrtoint ptr %nb_empty.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_empty.i, align 4
  %sub.i = sub i32 %19, %21
  %nb_pts_diffs.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 7
  %22 = ptrtoint ptr %nb_pts_diffs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nb_pts_diffs.i, align 4
  %last_pts_diff.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 8
  %24 = ptrtoint ptr %last_pts_diff.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_pts_diff.i, align 4
  %nb_pts.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 6
  %26 = ptrtoint ptr %nb_pts.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nb_pts.i, align 4
  %has_early_pts.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 10
  %28 = ptrtoint ptr %has_early_pts.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_early_pts.i, align 1, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool5.not.i = icmp eq i8 %29, 0
  %cond.i = select i1 %tobool5.not.i, ptr @.str.89, ptr @.str.88
  %has_initial_pts.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 9
  %30 = ptrtoint ptr %has_initial_pts.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_initial_pts.i, align 4, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool6.not.i = icmp eq i8 %31, 0
  %cond7.i = select i1 %tobool6.not.i, ptr @.str.89, ptr @.str.88
  %nb_scr_diffs.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 13
  %32 = ptrtoint ptr %nb_scr_diffs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nb_scr_diffs.i, align 4
  %nb_scr.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 12
  %34 = ptrtoint ptr %nb_scr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nb_scr.i, align 4
  %pts.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 11
  %36 = ptrtoint ptr %pts.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pts.i, align 4
  %scr_stc.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 15
  %38 = ptrtoint ptr %scr_stc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scr_stc.i, align 4
  %scr_sof.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 14
  %40 = ptrtoint ptr %scr_sof.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %scr_sof.i, align 4
  %conv.i = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev3.i, ptr noundef nonnull @.str.86, i32 noundef %inc16, i32 noundef %17, i32 noundef %sub.i, i32 noundef %19, i32 noundef %23, i32 noundef %25, i32 noundef %27, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond7.i, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %conv.i) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then18.do.end9.i_crit_edge
  %nb_frames.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 2
  %42 = ptrtoint ptr %nb_frames.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nb_frames.i, align 8
  %inc.i = add i32 %43, 1
  store i32 %inc.i, ptr %nb_frames.i, align 8
  %nb_packets14.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 2
  %44 = ptrtoint ptr %nb_packets14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nb_packets14.i, align 8
  %nb_packets17.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 3
  %46 = ptrtoint ptr %nb_packets17.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nb_packets17.i, align 4
  %add.i = add i32 %47, %45
  store i32 %add.i, ptr %nb_packets17.i, align 4
  %nb_empty20.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 3
  %48 = ptrtoint ptr %nb_empty20.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nb_empty20.i, align 4
  %nb_empty23.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 4
  %50 = ptrtoint ptr %nb_empty23.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nb_empty23.i, align 8
  %add24.i = add i32 %51, %49
  store i32 %add24.i, ptr %nb_empty23.i, align 8
  %nb_errors.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 5
  %52 = ptrtoint ptr %nb_errors.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nb_errors.i, align 4
  %nb_errors29.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 6
  %54 = ptrtoint ptr %nb_errors29.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nb_errors29.i, align 8
  %add30.i = add i32 %55, %53
  store i32 %add30.i, ptr %nb_errors29.i, align 8
  %nb_invalid.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 4
  %56 = ptrtoint ptr %nb_invalid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nb_invalid.i, align 8
  %nb_invalid35.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 5
  %58 = ptrtoint ptr %nb_invalid35.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nb_invalid35.i, align 4
  %add36.i = add i32 %59, %57
  store i32 %add36.i, ptr %nb_invalid35.i, align 4
  %has_early_pts37.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 10
  %60 = ptrtoint ptr %has_early_pts37.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %has_early_pts37.i, align 1, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool38.not.i = icmp eq i8 %61, 0
  br i1 %tobool38.not.i, label %do.end9.i.if.end43.i_crit_edge, label %if.then39.i

do.end9.i.if.end43.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then39.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_pts_early.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 8
  %62 = ptrtoint ptr %nb_pts_early.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nb_pts_early.i, align 8
  %inc42.i = add i32 %63, 1
  store i32 %inc42.i, ptr %nb_pts_early.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %do.end9.i.if.end43.i_crit_edge
  %has_initial_pts44.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 9
  %64 = ptrtoint ptr %has_initial_pts44.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %has_initial_pts44.i, align 4, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool45.not.i = icmp eq i8 %65, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end50.i_crit_edge, label %if.then46.i

if.end43.i.if.end50.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_pts_initial.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 9
  %66 = ptrtoint ptr %nb_pts_initial.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nb_pts_initial.i, align 4
  %inc49.i = add i32 %67, 1
  store i32 %inc49.i, ptr %nb_pts_initial.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end50.i_crit_edge
  %last_pts_diff51.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 8
  %68 = ptrtoint ptr %last_pts_diff51.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_pts_diff51.i, align 4
  %first_data52.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 1
  %70 = ptrtoint ptr %first_data52.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %first_data52.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp.not.i = icmp ugt i32 %69, %71
  br i1 %cmp.not.i, label %if.end50.i.if.end58.i_crit_edge, label %if.then54.i

if.end50.i.if.end58.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_pts_constant.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 7
  %72 = ptrtoint ptr %nb_pts_constant.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nb_pts_constant.i, align 4
  %inc57.i = add i32 %73, 1
  store i32 %inc57.i, ptr %nb_pts_constant.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then54.i, %if.end50.i.if.end58.i_crit_edge
  %nb_scr59.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 12
  %74 = ptrtoint ptr %nb_scr59.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nb_scr59.i, align 4
  %sub62.i = sub i32 %45, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %sub62.i)
  %cmp63.not.i = icmp ult i32 %75, %sub62.i
  br i1 %cmp63.not.i, label %if.end58.i.if.end69.i_crit_edge, label %if.then65.i

if.end58.i.if.end69.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

if.then65.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_scr_count_ok.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 10
  %76 = ptrtoint ptr %nb_scr_count_ok.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nb_scr_count_ok.i, align 8
  %inc68.i = add i32 %77, 1
  store i32 %inc68.i, ptr %nb_scr_count_ok.i, align 8
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then65.i, %if.end58.i.if.end69.i_crit_edge
  %nb_scr_diffs70.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 13
  %78 = ptrtoint ptr %nb_scr_diffs70.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nb_scr_diffs70.i, align 4
  %add71.i = add i32 %79, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add71.i, i32 %75)
  %cmp73.i = icmp eq i32 %add71.i, %75
  br i1 %cmp73.i, label %if.then75.i, label %if.end69.i.uvc_video_stats_update.exit_crit_edge

if.end69.i.uvc_video_stats_update.exit_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_stats_update.exit

if.then75.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_scr_diffs_ok.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 11
  %80 = ptrtoint ptr %nb_scr_diffs_ok.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nb_scr_diffs_ok.i, align 4
  %inc78.i = add i32 %81, 1
  store i32 %inc78.i, ptr %nb_scr_diffs_ok.i, align 4
  br label %uvc_video_stats_update.exit

uvc_video_stats_update.exit:                      ; preds = %if.then75.i, %if.end69.i.uvc_video_stats_update.exit_crit_edge
  %stats.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28
  %82 = call ptr @memset(ptr %stats.i, i32 0, i32 60)
  br label %if.end20

if.end20:                                         ; preds = %uvc_video_stats_update.exit, %if.then15.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %83 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx8, align 1
  %85 = and i8 %84, 12
  %and.i149 = zext i8 %85 to i32
  %86 = zext i32 %and.i149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %and.i149, label %sw.default.i [
    i32 12, label %if.end20.sw.epilog.i_crit_edge
    i32 4, label %sw.bb1.i
    i32 8, label %sw.bb2.i
  ]

if.end20.sw.epilog.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end20.sw.epilog.i_crit_edge
  %header_size.0.i = phi i32 [ 2, %sw.default.i ], [ 8, %sw.bb2.i ], [ 6, %sw.bb1.i ], [ %and.i149, %if.end20.sw.epilog.i_crit_edge ]
  %has_pts.0.off0.i = phi i1 [ true, %sw.default.i ], [ true, %sw.bb2.i ], [ false, %sw.bb1.i ], [ false, %if.end20.sw.epilog.i_crit_edge ]
  %has_scr.0.off0.i = phi i1 [ false, %sw.default.i ], [ true, %sw.bb2.i ], [ false, %sw.bb1.i ], [ true, %if.end20.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %header_size.0.i, i32 %len)
  %cmp.i = icmp ugt i32 %header_size.0.i, %len
  br i1 %cmp.i, label %sw.epilog.i.uvc_video_clock_decode.exit_crit_edge, label %if.end.i

sw.epilog.i.uvc_video_clock_decode.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_clock_decode.exit

if.end.i:                                         ; preds = %sw.epilog.i
  %cmp5.not.i = icmp eq ptr %buf, null
  %or.cond.i = or i1 %cmp5.not.i, %has_pts.0.off0.i
  br i1 %or.cond.i, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i = getelementptr i8, ptr %data, i32 2
  %87 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %arrayidx8.i, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  %pts.i150 = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 7
  %90 = ptrtoint ptr %pts.i150 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %pts.i150, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  br i1 %has_scr.0.off0.i, label %if.end12.i, label %if.end9.i.uvc_video_clock_decode.exit_crit_edge

if.end9.i.uvc_video_clock_decode.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_clock_decode.exit

if.end12.i:                                       ; preds = %if.end9.i
  %sub.i151 = add nsw i32 %header_size.0.i, -2
  %arrayidx13.i = getelementptr i8, ptr %data, i32 %sub.i151
  %91 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %arrayidx13.i, align 1
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #10
  %clock.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29
  %last_sof.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 4
  %94 = ptrtoint ptr %last_sof.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %last_sof.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %95)
  %cmp17.i = icmp eq i16 %93, %95
  br i1 %cmp17.i, label %if.end12.i.uvc_video_clock_decode.exit_crit_edge, label %if.end20.i

if.end12.i.uvc_video_clock_decode.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_clock_decode.exit

if.end20.i:                                       ; preds = %if.end12.i
  %96 = ptrtoint ptr %last_sof.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %93, ptr %last_sof.i, align 8
  %dev.i152 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %97 = ptrtoint ptr %dev.i152 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i152, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %call23.i = tail call i32 @usb_get_current_frame_number(ptr noundef %100) #10
  %conv24.i = trunc i32 %call23.i to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_clock_param to i32))
  %101 = load i32, ptr @uvc_clock_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp.i.i = icmp eq i32 %101, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i64 @ktime_get() #10
  br label %uvc_video_get_time.exit.i

if.else.i.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  br label %uvc_video_get_time.exit.i

uvc_video_get_time.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i64 [ %call.i.i, %if.then.i.i ], [ %call.i.i.i, %if.else.i.i ]
  %sof_offset.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 5
  %102 = ptrtoint ptr %sof_offset.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %sof_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %103)
  %cmp28.i = icmp eq i16 %103, -1
  br i1 %cmp28.i, label %if.then30.i, label %uvc_video_get_time.exit.i.if.end45.i_crit_edge

uvc_video_get_time.exit.i.if.end45.i_crit_edge:   ; preds = %uvc_video_get_time.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then30.i:                                      ; preds = %uvc_video_get_time.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = sub i16 %conv24.i, %93
  %conv35.i = and i16 %104, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %conv35.i)
  %cmp37.i = icmp ugt i16 %conv35.i, 9
  %conv35..i = select i1 %cmp37.i, i16 %conv35.i, i16 0
  %105 = ptrtoint ptr %sof_offset.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv35..i, ptr %sof_offset.i, align 2
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then30.i, %uvc_video_get_time.exit.i.if.end45.i_crit_edge
  %106 = ptrtoint ptr %sof_offset.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %sof_offset.i, align 2
  %add.i153 = add i16 %107, %93
  %and50.i = and i16 %add.i153, 2047
  %lock.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 7
  %call57.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %108 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clock.i, align 8
  %head.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 1
  %110 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %head.i, align 4
  %arrayidx62.i = getelementptr %struct.uvc_clock_sample, ptr %109, i32 %111
  %sub63.i = add nsw i32 %header_size.0.i, -6
  %arrayidx64.i = getelementptr i8, ptr %data, i32 %sub63.i
  %112 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %arrayidx64.i, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #10
  %115 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx62.i, align 8
  %dev_sof66.i = getelementptr %struct.uvc_clock_sample, ptr %109, i32 %111, i32 1
  %116 = ptrtoint ptr %dev_sof66.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %and50.i, ptr %dev_sof66.i, align 4
  %host_sof67.i = getelementptr %struct.uvc_clock_sample, ptr %109, i32 %111, i32 2
  %117 = ptrtoint ptr %host_sof67.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv24.i, ptr %host_sof67.i, align 2
  %host_time.i = getelementptr %struct.uvc_clock_sample, ptr %109, i32 %111, i32 3
  %118 = ptrtoint ptr %host_time.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %retval.0.i.i, ptr %host_time.i, align 8
  %119 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %head.i, align 4
  %add70.i = add i32 %120, 1
  %size.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 3
  %121 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add70.i, %122
  store i32 %rem.i, ptr %head.i, align 4
  %count.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 2
  %123 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %122)
  %cmp77.i = icmp ult i32 %124, %122
  br i1 %cmp77.i, label %if.then79.i, label %if.end45.i.if.end82.i_crit_edge

if.end45.i.if.end82.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i

if.then79.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i154 = add nuw i32 %124, 1
  %125 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %inc.i154, ptr %count.i, align 8
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then79.i, %if.end45.i.if.end82.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call57.i) #10
  br label %uvc_video_clock_decode.exit

uvc_video_clock_decode.exit:                      ; preds = %if.end82.i, %if.end12.i.uvc_video_clock_decode.exit_crit_edge, %if.end9.i.uvc_video_clock_decode.exit_crit_edge, %sw.epilog.i.uvc_video_clock_decode.exit_crit_edge
  %stats.i155 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28
  %stream1.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1
  %nb_frames.i156 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 2
  %126 = ptrtoint ptr %nb_frames.i156 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nb_frames.i156, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i157 = icmp eq i32 %127, 0
  br i1 %cmp.i157, label %land.lhs.true.i, label %uvc_video_clock_decode.exit.if.end.i161_crit_edge

uvc_video_clock_decode.exit.if.end.i161_crit_edge: ; preds = %uvc_video_clock_decode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i161

land.lhs.true.i:                                  ; preds = %uvc_video_clock_decode.exit
  %nb_packets.i158 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 2
  %128 = ptrtoint ptr %nb_packets.i158 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nb_packets.i158, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp3.i = icmp eq i32 %129, 0
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.end.i161_crit_edge

land.lhs.true.i.if.end.i161_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i161

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i64 @ktime_get() #10
  %130 = ptrtoint ptr %stream1.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %call.i, ptr %stream1.i, align 8
  br label %if.end.i161

if.end.i161:                                      ; preds = %if.then.i, %land.lhs.true.i.if.end.i161_crit_edge, %uvc_video_clock_decode.exit.if.end.i161_crit_edge
  %131 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx8, align 1
  %133 = and i8 %132, 12
  %and.i160 = zext i8 %133 to i32
  %134 = zext i32 %and.i160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %and.i160, label %sw.default.i162 [
    i32 12, label %if.end.i161.sw.epilog.i166_crit_edge
    i32 4, label %sw.bb6.i
    i32 8, label %sw.bb7.i
  ]

if.end.i161.sw.epilog.i166_crit_edge:             ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i166

sw.bb6.i:                                         ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i166

sw.bb7.i:                                         ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i166

sw.default.i162:                                  ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i166

sw.epilog.i166:                                   ; preds = %sw.default.i162, %sw.bb7.i, %sw.bb6.i, %if.end.i161.sw.epilog.i166_crit_edge
  %header_size.0.i163 = phi i32 [ 2, %sw.default.i162 ], [ 8, %sw.bb7.i ], [ 6, %sw.bb6.i ], [ %and.i160, %if.end.i161.sw.epilog.i166_crit_edge ]
  %has_pts.0.off0.i164 = phi i1 [ false, %sw.default.i162 ], [ false, %sw.bb7.i ], [ true, %sw.bb6.i ], [ true, %if.end.i161.sw.epilog.i166_crit_edge ]
  %has_scr.0.off0.i165 = phi i1 [ false, %sw.default.i162 ], [ true, %sw.bb7.i ], [ false, %sw.bb6.i ], [ true, %if.end.i161.sw.epilog.i166_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %header_size.0.i163, i32 %len)
  %cmp8.i = icmp ugt i32 %header_size.0.i163, %len
  br i1 %cmp8.i, label %sw.epilog.i166.if.then14.i_crit_edge, label %lor.lhs.false.i

sw.epilog.i166.if.then14.i_crit_edge:             ; preds = %sw.epilog.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.i166
  %135 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %data, align 1
  %conv11.i = zext i8 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %header_size.0.i163, i32 %conv11.i)
  %cmp12.i = icmp ugt i32 %header_size.0.i163, %conv11.i
  br i1 %cmp12.i, label %lor.lhs.false.i.if.then14.i_crit_edge, label %if.end17.i

lor.lhs.false.i.if.then14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then14.i:                                      ; preds = %lor.lhs.false.i.if.then14.i_crit_edge, %sw.epilog.i166.if.then14.i_crit_edge
  %nb_invalid.i167 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 4
  %137 = ptrtoint ptr %nb_invalid.i167 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nb_invalid.i167, align 8
  %inc.i168 = add i32 %138, 1
  store i32 %inc.i168, ptr %nb_invalid.i167, align 8
  br label %uvc_video_stats_decode.exit

if.end17.i:                                       ; preds = %lor.lhs.false.i
  br i1 %has_pts.0.off0.i164, label %if.then18.i, label %if.end17.i.if.end21.i_crit_edge

if.end17.i.if.end21.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19.i = getelementptr i8, ptr %data, i32 2
  %139 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %arrayidx19.i, align 1
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end17.i.if.end21.i_crit_edge
  %pts.0.i = phi i32 [ %141, %if.then18.i ], [ -1, %if.end17.i.if.end21.i_crit_edge ]
  br i1 %has_scr.0.off0.i165, label %if.then23.i, label %if.end21.i.if.end29.i_crit_edge

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i169 = add nsw i32 %header_size.0.i163, -6
  %arrayidx24.i = getelementptr i8, ptr %data, i32 %sub.i169
  %142 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %arrayidx24.i, align 1
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #10
  %sub26.i = add nsw i32 %header_size.0.i163, -2
  %arrayidx27.i = getelementptr i8, ptr %data, i32 %sub26.i
  %145 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %arrayidx27.i, align 1
  %147 = tail call i16 @llvm.bswap.i16(i16 %146) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %if.end21.i.if.end29.i_crit_edge
  %scr_sof.0.i = phi i16 [ %147, %if.then23.i ], [ -1, %if.end21.i.if.end29.i_crit_edge ]
  %scr_stc.0.i = phi i32 [ %144, %if.then23.i ], [ -1, %if.end21.i.if.end29.i_crit_edge ]
  br i1 %has_pts.0.off0.i164, label %land.lhs.true32.i, label %if.end29.i.if.end62.i_crit_edge

if.end29.i.if.end62.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

land.lhs.true32.i:                                ; preds = %if.end29.i
  %nb_pts.i170 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 6
  %148 = ptrtoint ptr %nb_pts.i170 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nb_pts.i170, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool35.not.i = icmp eq i32 %149, 0
  br i1 %tobool35.not.i, label %land.lhs.true32.i.if.then54.i173_crit_edge, label %if.then36.i

land.lhs.true32.i.if.then54.i173_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i173

if.then36.i:                                      ; preds = %land.lhs.true32.i
  %pts39.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 11
  %150 = ptrtoint ptr %pts39.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pts39.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %pts.0.i)
  %cmp40.not.i = icmp eq i32 %151, %pts.0.i
  br i1 %cmp40.not.i, label %if.then36.i.if.then54.i173_crit_edge, label %if.then42.i

if.then36.i.if.then54.i173_crit_edge:             ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i173

if.then42.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_pts_diffs.i171 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 7
  %152 = ptrtoint ptr %nb_pts_diffs.i171 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %nb_pts_diffs.i171, align 4
  %inc45.i = add i32 %153, 1
  store i32 %inc45.i, ptr %nb_pts_diffs.i171, align 4
  %nb_packets48.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 2
  %154 = ptrtoint ptr %nb_packets48.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nb_packets48.i, align 8
  %last_pts_diff.i172 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 8
  %156 = ptrtoint ptr %last_pts_diff.i172 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %last_pts_diff.i172, align 8
  br label %if.then54.i173

if.then54.i173:                                   ; preds = %if.then42.i, %if.then36.i.if.then54.i173_crit_edge, %land.lhs.true32.i.if.then54.i173_crit_edge
  %inc58.i = add i32 %149, 1
  %157 = ptrtoint ptr %nb_pts.i170 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %inc58.i, ptr %nb_pts.i170, align 8
  %pts61.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 11
  %158 = ptrtoint ptr %pts61.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %pts.0.i, ptr %pts61.i, align 8
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then54.i173, %if.end29.i.if.end62.i_crit_edge
  %159 = ptrtoint ptr %stats.i155 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %stats.i155, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp65.i = icmp eq i32 %160, 0
  br i1 %cmp65.i, label %if.then67.i, label %if.end62.i.if.end84.i_crit_edge

if.end62.i.if.end84.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

if.then67.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_cmp4(i32 %header_size.0.i163, i32 %len)
  %cmp68.i = icmp ult i32 %header_size.0.i163, %len
  br i1 %cmp68.i, label %if.then70.i, label %if.then67.i.if.end74.i_crit_edge

if.then67.i.if.end74.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.then70.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  %has_initial_pts.i174 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 9
  %frombool.i = zext i1 %has_pts.0.off0.i164 to i8
  %161 = ptrtoint ptr %has_initial_pts.i174 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %frombool.i, ptr %has_initial_pts.i174, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then70.i, %if.then67.i.if.end74.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %header_size.0.i163, i32 %len)
  %cmp75.i = icmp eq i32 %header_size.0.i163, %len
  %162 = and i1 %has_pts.0.off0.i164, %cmp75.i
  br i1 %162, label %if.then80.i, label %if.end74.i.if.end84.i_crit_edge

if.end74.i.if.end84.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

if.then80.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  %has_early_pts.i175 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 10
  %163 = ptrtoint ptr %has_early_pts.i175 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %has_early_pts.i175, align 1
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then80.i, %if.end74.i.if.end84.i_crit_edge, %if.end62.i.if.end84.i_crit_edge
  br i1 %has_scr.0.off0.i165, label %land.lhs.true87.i, label %if.end84.i.if.end161.i_crit_edge

if.end84.i.if.end161.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

land.lhs.true87.i:                                ; preds = %if.end84.i
  %nb_scr.i176 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 12
  %164 = ptrtoint ptr %nb_scr.i176 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %nb_scr.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool90.not.i = icmp eq i32 %165, 0
  br i1 %tobool90.not.i, label %if.then104.thread.i, label %if.then91.i

if.then91.i:                                      ; preds = %land.lhs.true87.i
  %scr_stc94.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 15
  %166 = ptrtoint ptr %scr_stc94.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %scr_stc94.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %scr_stc.0.i)
  %cmp95.not.i = icmp eq i32 %167, %scr_stc.0.i
  br i1 %cmp95.not.i, label %if.then91.i.if.then116.i_crit_edge, label %if.then97.i

if.then91.i.if.then116.i_crit_edge:               ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116.i

if.then97.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_scr_diffs.i177 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 13
  %168 = ptrtoint ptr %nb_scr_diffs.i177 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %nb_scr_diffs.i177, align 8
  %inc100.i = add i32 %169, 1
  store i32 %inc100.i, ptr %nb_scr_diffs.i177, align 8
  br label %if.then116.i

if.then104.thread.i:                              ; preds = %land.lhs.true87.i
  %170 = ptrtoint ptr %nb_frames.i156 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %nb_frames.i156, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp108.not278.i = icmp eq i32 %171, 0
  br i1 %cmp108.not278.i, label %if.then104.thread.if.end124_crit_edge.i, label %if.then104.thread.i.if.then116.i_crit_edge

if.then104.thread.i.if.then116.i_crit_edge:       ; preds = %if.then104.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116.i

if.then104.thread.if.end124_crit_edge.i:          ; preds = %if.then104.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i = zext i16 %scr_sof.0.i to i32
  br label %if.end124.i

if.then116.i:                                     ; preds = %if.then104.thread.i.if.then116.i_crit_edge, %if.then97.i, %if.then91.i.if.then116.i_crit_edge
  %conv117.i = zext i16 %scr_sof.0.i to i32
  %scr_sof120.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 13
  %172 = ptrtoint ptr %scr_sof120.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %scr_sof120.i, align 4
  %sub121.i = sub i32 %conv117.i, %173
  %rem.i178 = and i32 %sub121.i, 2047
  %scr_sof_count.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 12
  %174 = ptrtoint ptr %scr_sof_count.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %scr_sof_count.i, align 8
  %add.i179 = add i32 %rem.i178, %175
  store i32 %add.i179, ptr %scr_sof_count.i, align 8
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then116.i, %if.then104.thread.if.end124_crit_edge.i
  %conv125.pre-phi.i = phi i32 [ %.pre.i, %if.then104.thread.if.end124_crit_edge.i ], [ %conv117.i, %if.then116.i ]
  %scr_sof128.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 13
  %176 = ptrtoint ptr %scr_sof128.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %conv125.pre-phi.i, ptr %scr_sof128.i, align 4
  %inc132.i = add i32 %165, 1
  %177 = ptrtoint ptr %nb_scr.i176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %inc132.i, ptr %nb_scr.i176, align 4
  %scr_stc135.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 15
  %178 = ptrtoint ptr %scr_stc135.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %scr_stc.0.i, ptr %scr_stc135.i, align 8
  %scr_sof138.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 14
  %179 = ptrtoint ptr %scr_sof138.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %scr_sof.0.i, ptr %scr_sof138.i, align 4
  %min_sof.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 14
  %180 = ptrtoint ptr %min_sof.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %min_sof.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %conv125.pre-phi.i)
  %cmp142.i = icmp ugt i32 %181, %conv125.pre-phi.i
  br i1 %cmp142.i, label %if.then144.i, label %if.end124.i.if.end149.i_crit_edge

if.end124.i.if.end149.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149.i

if.then144.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %min_sof.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %conv125.pre-phi.i, ptr %min_sof.i, align 8
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then144.i, %if.end124.i.if.end149.i_crit_edge
  %max_sof.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 1, i32 15
  %183 = ptrtoint ptr %max_sof.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max_sof.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %conv125.pre-phi.i)
  %cmp153.i = icmp ult i32 %184, %conv125.pre-phi.i
  br i1 %cmp153.i, label %if.then155.i, label %if.end149.i.if.end161.i_crit_edge

if.end149.i.if.end161.i_crit_edge:                ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then155.i:                                     ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %max_sof.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %conv125.pre-phi.i, ptr %max_sof.i, align 4
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then155.i, %if.end149.i.if.end161.i_crit_edge, %if.end84.i.if.end161.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %header_size.0.i163, i32 %len)
  %cmp168.i = icmp ult i32 %header_size.0.i163, %len
  %or.cond.i180 = and i1 %cmp168.i, %cmp65.i
  br i1 %or.cond.i180, label %if.then170.i, label %if.end161.i.if.end176.i_crit_edge

if.end161.i.if.end176.i_crit_edge:                ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176.i

if.then170.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_packets173.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 2
  %186 = ptrtoint ptr %nb_packets173.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %nb_packets173.i, align 8
  %first_data.i181 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 1
  %188 = ptrtoint ptr %first_data.i181 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %first_data.i181, align 4
  br label %if.end176.i

if.end176.i:                                      ; preds = %if.then170.i, %if.end161.i.if.end176.i_crit_edge
  %sub177.i = sub nsw i32 %len, %header_size.0.i163
  %add181.i = add i32 %sub177.i, %160
  %189 = ptrtoint ptr %stats.i155 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %add181.i, ptr %stats.i155, align 8
  %nb_packets184.i = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 2
  %190 = ptrtoint ptr %nb_packets184.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %nb_packets184.i, align 8
  %inc185.i = add i32 %191, 1
  store i32 %inc185.i, ptr %nb_packets184.i, align 8
  br i1 %cmp168.i, label %if.end176.i.if.end192.i_crit_edge, label %if.then188.i

if.end176.i.if.end192.i_crit_edge:                ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192.i

if.then188.i:                                     ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_empty.i182 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 3
  %192 = ptrtoint ptr %nb_empty.i182 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nb_empty.i182, align 4
  %inc191.i = add i32 %193, 1
  store i32 %inc191.i, ptr %nb_empty.i182, align 4
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.then188.i, %if.end176.i.if.end192.i_crit_edge
  %194 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx8, align 1
  %196 = and i8 %195, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool196.not.i = icmp eq i8 %196, 0
  br i1 %tobool196.not.i, label %if.end192.i.uvc_video_stats_decode.exit_crit_edge, label %if.then197.i

if.end192.i.uvc_video_stats_decode.exit_crit_edge: ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %uvc_video_stats_decode.exit

if.then197.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_errors.i183 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 28, i32 0, i32 5
  %197 = ptrtoint ptr %nb_errors.i183 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nb_errors.i183, align 4
  %inc200.i = add i32 %198, 1
  store i32 %inc200.i, ptr %nb_errors.i183, align 4
  br label %uvc_video_stats_decode.exit

uvc_video_stats_decode.exit:                      ; preds = %if.then197.i, %if.end192.i.uvc_video_stats_decode.exit_crit_edge, %if.then14.i
  %cmp21 = icmp eq ptr %buf, null
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %uvc_video_stats_decode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %199 = ptrtoint ptr %last_fid to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %6, ptr %last_fid, align 4
  br label %cleanup

if.end25:                                         ; preds = %uvc_video_stats_decode.exit
  %200 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx8, align 1
  %202 = and i8 %201, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool29.not = icmp eq i8 %202, 0
  br i1 %tobool29.not, label %if.end25.if.end39_crit_edge, label %do.body

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.body:                                          ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %203 = load i32, ptr @uvc_dbg_param, align 4
  %and31 = and i32 %203, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body.do.end38_crit_edge, label %do.end

do.body.do.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %204 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev, align 8
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 8
  %dev35 = getelementptr inbounds %struct.usb_device, ptr %207, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev35, ptr noundef nonnull @.str.78) #13
  br label %do.end38

do.end38:                                         ; preds = %do.end, %do.body.do.end38_crit_edge
  %error = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 3
  %208 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 1, ptr %error, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %if.end25.if.end39_crit_edge
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 2
  %209 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %210)
  %cmp40.not = icmp eq i32 %210, 2
  br i1 %cmp40.not, label %if.end39.if.end82_crit_edge, label %if.then42

if.end39.if.end82_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then42:                                        ; preds = %if.end39
  %211 = ptrtoint ptr %last_fid to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %last_fid, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %212)
  %cmp46 = icmp eq i8 %6, %212
  br i1 %cmp46, label %do.body49, label %if.end74

do.body49:                                        ; preds = %if.then42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %213 = load i32, ptr @uvc_dbg_param, align 4
  %and50 = and i32 %213, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end61_crit_edge, label %do.end55

do.body49.do.end61_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %dev56 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %214 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev56, align 8
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 8
  %dev58 = getelementptr inbounds %struct.usb_device, ptr %217, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev58, ptr noundef nonnull @.str.81) #13
  br label %do.end61

do.end61:                                         ; preds = %do.end55, %do.body49.do.end61_crit_edge
  %dev62 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %218 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev62, align 8
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %219, i32 0, i32 3
  %220 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %quirks, align 4
  %and63 = and i32 %221, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.end61.cleanup_crit_edge, label %land.lhs.true

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end61
  %222 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx8, align 1
  %224 = and i8 %223, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool68.not = icmp eq i8 %224, 0
  br i1 %tobool68.not, label %land.lhs.true.cleanup_crit_edge, label %if.then69

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %225 = ptrtoint ptr %last_fid to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %last_fid, align 4
  %227 = xor i8 %226, 1
  store i8 %227, ptr %last_fid, align 4
  br label %cleanup

if.end74:                                         ; preds = %if.then42
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 2
  %228 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 1, ptr %field, align 4
  %sequence76 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 25
  %229 = ptrtoint ptr %sequence76 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %sequence76, align 8
  %sequence78 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %231 = ptrtoint ptr %sequence78 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %sequence78, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_clock_param to i32))
  %232 = load i32, ptr @uvc_clock_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %232)
  %cmp.i184 = icmp eq i32 %232, 1
  br i1 %cmp.i184, label %if.then.i186, label %if.else.i

if.then.i186:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %call.i185 = tail call i64 @ktime_get() #10
  br label %uvc_video_get_time.exit

if.else.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i187 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  br label %uvc_video_get_time.exit

uvc_video_get_time.exit:                          ; preds = %if.else.i, %if.then.i186
  %retval.0.i = phi i64 [ %call.i185, %if.then.i186 ], [ %call.i.i187, %if.else.i ]
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 5
  %233 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 %retval.0.i, ptr %timestamp, align 8
  %234 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 2, ptr %state, align 8
  br label %if.end82

if.end82:                                         ; preds = %uvc_video_get_time.exit, %if.end39.if.end82_crit_edge
  %235 = ptrtoint ptr %last_fid to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %last_fid, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %236)
  %cmp86.not = icmp eq i8 %6, %236
  br i1 %cmp86.not, label %if.end82.if.end106_crit_edge, label %land.lhs.true88

if.end82.if.end106_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

land.lhs.true88:                                  ; preds = %if.end82
  %bytesused = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 6
  %237 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %bytesused, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp89.not = icmp eq i32 %238, 0
  br i1 %cmp89.not, label %land.lhs.true88.if.end106_crit_edge, label %do.body92

land.lhs.true88.if.end106_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

do.body92:                                        ; preds = %land.lhs.true88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %239 = load i32, ptr @uvc_dbg_param, align 4
  %and93 = and i32 %239, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body92.do.end104_crit_edge, label %do.end98

do.body92.do.end104_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %dev99 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %240 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev99, align 8
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 8
  %dev101 = getelementptr inbounds %struct.usb_device, ptr %243, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev101, ptr noundef nonnull @.str.84) #13
  br label %do.end104

do.end104:                                        ; preds = %do.end98, %do.body92.do.end104_crit_edge
  %244 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 3, ptr %state, align 8
  br label %cleanup

if.end106:                                        ; preds = %land.lhs.true88.if.end106_crit_edge, %if.end82.if.end106_crit_edge
  %245 = ptrtoint ptr %last_fid to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %6, ptr %last_fid, align 4
  %246 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %data, align 1
  %conv109 = zext i8 %247 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %do.end104, %if.then69, %land.lhs.true.cleanup_crit_edge, %do.end61.cleanup_crit_edge, %if.then23, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -61, %if.then23 ], [ -11, %do.end104 ], [ %conv109, %if.end106 ], [ -61, %if.then69 ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %do.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvc_video_decode_meta(ptr nocapture noundef %stream, ptr noundef %meta_buf, ptr nocapture noundef readonly %mem, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %meta_buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %length)
  %cmp = icmp eq i32 %length, 2
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %length1 = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf, i32 0, i32 5
  %0 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length1, align 4
  %bytesused = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf, i32 0, i32 6
  %2 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytesused, align 8
  %sub = sub i32 %1, %3
  %add2 = add i32 %length, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add2)
  %cmp3 = icmp ult i32 %sub, %add2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf, i32 0, i32 3
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %error, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %mem, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %and9 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %7 = or i32 %and, 2
  %scr.0 = getelementptr i8, ptr %mem, i32 %7
  %len_std.1.v = select i1 %tobool10.not, i32 2, i32 8
  %len_std.1 = or i32 %len_std.1.v, %and
  %format = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1212372565, i32 %9)
  %cmp22 = icmp eq i32 %9, 1212372565
  %length.addr.0 = select i1 %cmp22, i32 %len_std.1, i32 %length
  call void @__sanitizer_cov_trace_cmp4(i32 %length.addr.0, i32 %len_std.1)
  %cmp26 = icmp eq i32 %length.addr.0, %len_std.1
  br i1 %cmp26, label %land.lhs.true, label %if.end5.if.end32_crit_edge

if.end5.if.end32_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end5
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false29:                                  ; preds = %land.lhs.true
  %last_scr = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %scr.0, ptr noundef dereferenceable(6) %last_scr, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool30.not = icmp eq i32 %bcmp, 0
  br i1 %tobool30.not, label %lor.lhs.false29.cleanup_crit_edge, label %lor.lhs.false29.if.end32_crit_edge

lor.lhs.false29.if.end32_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false29.if.end32_crit_edge, %if.end5.if.end32_crit_edge
  %mem33 = getelementptr inbounds %struct.uvc_buffer, ptr %meta_buf, i32 0, i32 4
  %10 = ptrtoint ptr %mem33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem33, align 8
  %add.ptr35 = getelementptr i8, ptr %11, i32 %3
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !197
  %and.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool47.not = icmp eq i32 %and.i, 0
  br i1 %tobool47.not, label %if.then48, label %if.end32.do.end51_crit_edge

if.end32.do.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.then48:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %if.end32.do.end51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_clock_param to i32))
  %13 = load i32, ptr @uvc_clock_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i64 @ktime_get() #10
  br label %uvc_video_get_time.exit

if.else.i:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  br label %uvc_video_get_time.exit

uvc_video_get_time.exit:                          ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i64 [ %call.i, %if.then.i ], [ %call.i.i, %if.else.i ]
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %call53 = tail call i32 @usb_get_current_frame_number(ptr noundef %17) #10
  br i1 %tobool47.not, label %if.then63, label %uvc_video_get_time.exit.do.body65_crit_edge

uvc_video_get_time.exit.do.body65_crit_edge:      ; preds = %uvc_video_get_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

if.then63:                                        ; preds = %uvc_video_get_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body65

do.body65:                                        ; preds = %if.then63, %uvc_video_get_time.exit.do.body65_crit_edge
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !198
  %and.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool73.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool73.not, label %if.then77, label %do.body65.do.end80_crit_edge, !prof !199

do.body65.do.end80_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %do.body65.do.end80_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #10, !srcloc !200
  %19 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %retval.0.i, ptr %add.ptr35, align 1
  %sof91 = getelementptr inbounds %struct.uvc_meta_buf, ptr %add.ptr35, i32 0, i32 1
  %conv92 = trunc i32 %call53 to i16
  %20 = ptrtoint ptr %sof91 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %conv92, ptr %sof91, align 1
  br i1 %tobool10.not, label %do.end80.if.end101_crit_edge, label %if.then97

do.end80.if.end101_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then97:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  %last_scr99 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 29, i32 6
  %21 = call ptr @memcpy(ptr %last_scr99, ptr %scr.0, i32 6)
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %do.end80.if.end101_crit_edge
  %length102 = getelementptr inbounds %struct.uvc_meta_buf, ptr %add.ptr35, i32 0, i32 2
  %22 = call ptr @memcpy(ptr %length102, ptr %mem, i32 %length.addr.0)
  %add104 = add i32 %length.addr.0, 10
  %23 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bytesused, align 8
  %add106 = add i32 %add104, %24
  store i32 %add106, ptr %bytesused, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %25 = load i32, ptr @uvc_dbg_param, align 4
  %and108 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end101.cleanup_crit_edge, label %do.end113

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end113:                                        ; preds = %if.end101
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %dev116 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %sof91 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %sof91, align 1
  %conv119 = zext i16 %31 to i32
  %32 = ptrtoint ptr %length102 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %length102, align 1
  %conv121 = zext i8 %33 to i32
  %flags122 = getelementptr inbounds %struct.uvc_meta_buf, ptr %add.ptr35, i32 0, i32 3
  %34 = ptrtoint ptr %flags122 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags122, align 1
  %conv123 = zext i8 %35 to i32
  br i1 %tobool6.not, label %do.end113.cond.end_crit_edge, label %cond.true

do.end113.cond.end_crit_edge:                     ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #12
  %buf = getelementptr inbounds %struct.uvc_meta_buf, ptr %add.ptr35, i32 0, i32 4
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %buf, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end113.cond.end_crit_edge
  %cond = phi i32 [ %37, %cond.true ], [ 0, %do.end113.cond.end_crit_edge ]
  br i1 %tobool10.not, label %cond.end.cond.end139_crit_edge, label %cond.true135

cond.end.cond.end139_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end139

cond.true135:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %scr.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scr.0, align 4
  %add.ptr136 = getelementptr i8, ptr %scr.0, i32 4
  %40 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr136, align 4
  %and137 = and i32 %41, 2047
  br label %cond.end139

cond.end139:                                      ; preds = %cond.true135, %cond.end.cond.end139_crit_edge
  %cond132191 = phi i32 [ %39, %cond.true135 ], [ 0, %cond.end.cond.end139_crit_edge ]
  %cond140 = phi i32 [ %and137, %cond.true135 ], [ 0, %cond.end.cond.end139_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev116, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i64 noundef %retval.0.i, i32 noundef %conv119, i32 noundef %conv121, i32 noundef %conv123, i32 noundef %cond, i32 noundef %cond132191, i32 noundef %cond140) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.end139, %if.end101.cleanup_crit_edge, %lor.lhs.false29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvc_video_decode_data(ptr nocapture noundef %uvc_urb, ptr noundef %buf, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %async_operations = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 5
  %0 = ptrtoint ptr %async_operations to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %async_operations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 6, i32 %1
  %length = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 5
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %bytesused = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 6
  %4 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytesused, align 8
  %sub = sub i32 %3, %5
  %ref = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !201
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !199

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !192

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %arrayidx, align 4
  %src = getelementptr %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 6, i32 %1, i32 2
  %9 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %src, align 4
  %mem = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 4
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 8
  %12 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytesused, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %dst = getelementptr %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 6, i32 %1, i32 1
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %dst, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %len4 = getelementptr %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 6, i32 %1, i32 3
  %16 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %len4, align 4
  %17 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytesused, align 8
  %add = add i32 %18, %15
  store i32 %add, ptr %bytesused, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp7 = icmp ult i32 %sub, %len
  br i1 %cmp7, label %do.body, label %kref_get.exit.if.end15_crit_edge

kref_get.exit.if.end15_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.body:                                          ; preds = %kref_get.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %19 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end14_crit_edge, label %do.end

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %stream = getelementptr inbounds %struct.uvc_urb, ptr %uvc_urb, i32 0, i32 1
  %20 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream, align 4
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev11, ptr noundef nonnull @.str.92) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  %error = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 3
  %26 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %error, align 4
  %state = getelementptr inbounds %struct.uvc_buffer, ptr %buf, i32 0, i32 2
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %state, align 8
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %kref_get.exit.if.end15_crit_edge
  %28 = ptrtoint ptr %async_operations to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %async_operations, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %async_operations, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_current_frame_number(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_queue_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_queue_buffer_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 82, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uvc_query_ctrl._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @uvc_query_ctrl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 101, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @uvc_query_ctrl._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @uvc_query_ctrl._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 743, i32 2}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @uvc_video_clock_update._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @uvc_video_clock_update._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 778, i32 2}
!20 = !{ptr @uvc_video_clock_update._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @uvc_video_clock_update._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 962, i32 7}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 970, i32 7}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 975, i32 7}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 979, i32 7}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 2077, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @uvc_video_init._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @uvc_video_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 2118, i32 3}
!38 = !{ptr @uvc_video_init._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @uvc_video_init._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 2153, i32 4}
!42 = !{ptr @uvc_video_init._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @uvc_video_init._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @uvc_video_init.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 2161, i32 3}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 50, i32 10}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 52, i32 10}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 54, i32 10}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 56, i32 10}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 58, i32 10}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 60, i32 10}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 62, i32 10}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 64, i32 10}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 66, i32 10}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 372, i32 3}
!67 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @uvc_set_video_ctrl._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @uvc_set_video_ctrl._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 274, i32 3}
!74 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @uvc_get_video_ctrl._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @uvc_get_video_ctrl._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 286, i32 3}
!79 = !{ptr @uvc_get_video_ctrl._entry.43, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @uvc_get_video_ctrl._entry_ptr.45, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 292, i32 3}
!83 = !{ptr @uvc_get_video_ctrl._entry.46, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @uvc_get_video_ctrl._entry_ptr.48, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @uvc_fixup_video_ctrl.elgato_cam_link_4k, !86, !"elgato_cam_link_4k", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 135, i32 36}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 158, i32 3}
!89 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @uvc_fixup_video_ctrl._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @uvc_fixup_video_ctrl._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1916, i32 4}
!94 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @uvc_video_start_transfer._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @uvc_video_start_transfer._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1920, i32 4}
!99 = !{ptr @uvc_video_start_transfer._entry.53, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @uvc_video_start_transfer._entry_ptr.55, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1945, i32 4}
!103 = !{ptr @uvc_video_start_transfer._entry.56, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @uvc_video_start_transfer._entry_ptr.58, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1950, i32 3}
!107 = !{ptr @uvc_video_start_transfer._entry.59, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @uvc_video_start_transfer._entry_ptr.61, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1980, i32 4}
!111 = !{ptr @uvc_video_start_transfer._entry.62, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @uvc_video_start_transfer._entry_ptr.64, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1714, i32 4}
!115 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @uvc_alloc_urb_buffers._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @uvc_alloc_urb_buffers._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1721, i32 2}
!120 = !{ptr @uvc_alloc_urb_buffers._entry.67, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @uvc_alloc_urb_buffers._entry_ptr.69, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1569, i32 3}
!124 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.72, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @uvc_video_complete._entry, !123, !"_entry", i1 false, i1 false}
!127 = !{ptr @uvc_video_complete._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1614, i32 4}
!130 = !{ptr @uvc_video_complete._entry.73, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @uvc_video_complete._entry_ptr.75, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1400, i32 4}
!134 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @uvc_video_decode_isoc._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @uvc_video_decode_isoc._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1076, i32 3}
!139 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @uvc_video_decode_start._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @uvc_video_decode_start._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1091, i32 4}
!144 = !{ptr @uvc_video_decode_start._entry.80, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @uvc_video_decode_start._entry_ptr.82, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1123, i32 3}
!148 = !{ptr @uvc_video_decode_start._entry.83, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @uvc_video_decode_start._entry_ptr.85, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.86, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 913, i32 2}
!152 = !{ptr @.str.87, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @uvc_video_stats_update._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @uvc_video_stats_update._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.88, !151, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.89, !151, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.90, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1340, i32 2}
!159 = !{ptr @.str.91, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @uvc_video_decode_meta._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @uvc_video_decode_meta._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1208, i32 3}
!164 = !{ptr @.str.93, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @uvc_video_decode_data._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @uvc_video_decode_data._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1222, i32 3}
!169 = !{ptr @.str.95, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @uvc_video_decode_end._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @uvc_video_decode_end._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.97, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1224, i32 4}
!174 = !{ptr @uvc_video_decode_end._entry.96, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @uvc_video_decode_end._entry_ptr.98, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.99, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 1180, i32 3}
!178 = !{ptr @uvc_video_copy_data_work._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @uvc_video_copy_data_work._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @uvc_video_clock_init.__key, !181, !"__key", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/uvc/uvc_video.c", i32 583, i32 2}
!182 = !{ptr @.str.100, !181, !"<string literal>", i1 false, i1 false}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{!"branch_weights", i32 2000, i32 1}
!193 = !{i64 2148409434, i64 2148409714, i64 2148410048, i64 2148410382}
!194 = !{i64 923603, i64 923630}
!195 = !{i64 924298, i64 924325, i64 924358, i64 924379, i64 924406, i64 924432}
!196 = !{i8 0, i8 2}
!197 = !{i64 965112, i64 965173}
!198 = !{i64 967844}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{i64 968129}
!201 = !{i64 2148572384, i64 2148572416, i64 2148572445, i64 2148572479, i64 2148572510, i64 2148572533}
