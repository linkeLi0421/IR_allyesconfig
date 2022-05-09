; ModuleID = '/llk/IR_all_yes/drivers/media/usb/uvc/uvc_v4l2.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subscribed_event_ops = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.uvc_fh = type { %struct.v4l2_fh, ptr, ptr, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.uvc_streaming = type { %struct.list_head, ptr, %struct.video_device, ptr, %struct.atomic_t, ptr, i32, i16, %struct.uvc_streaming_header, i32, i32, ptr, %struct.uvc_streaming_control, ptr, ptr, ptr, %struct.mutex, i8, %struct.uvc_video_queue, ptr, ptr, %struct.anon.128, %struct.anon.129, [5 x %struct.uvc_urb], i32, i32, i8, ptr, %struct.anon.130, %struct.uvc_clock }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.109 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.106], %struct.media_entity_enum, i32 }
%struct.anon.106 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.uvc_streaming_header = type { i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.uvc_streaming_control = type <{ i16, i8, i8, i32, i16, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8 }>
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.anon.128 = type { %struct.video_device, %struct.uvc_video_queue, i32 }
%struct.anon.129 = type { [256 x i8], i32, i32, i32, i32 }
%struct.uvc_urb = type { ptr, ptr, ptr, i32, ptr, i32, [32 x %struct.uvc_copy_op], %struct.work_struct }
%struct.uvc_copy_op = type { ptr, ptr, ptr, i32 }
%struct.anon.130 = type { %struct.uvc_stats_frame, %struct.uvc_stats_stream }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.uvc_video_chain = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex, %struct.v4l2_prio_state, i32, i8 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.uvc_format = type { i8, i8, i8, i32, i32, i32, i32, i32, [32 x i8], i32, ptr }
%struct.uvc_entity = type { %struct.list_head, %struct.list_head, i32, i16, i16, [64 x i8], [16 x i8], ptr, %struct.v4l2_subdev, i32, i32, ptr, %union.anon.120, i8, ptr, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%union.anon.120 = type { %struct.anon.122 }
%struct.anon.122 = type { i8, ptr, i8, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.v4l2_query_ext_ctrl = type { i32, i32, [32 x i8], i64, i64, i64, i64, i32, i32, i32, i32, [4 x i32], [32 x i32] }
%struct.v4l2_ext_controls = type { %union.anon.91, i32, i32, i32, [1 x i32], ptr }
%union.anon.91 = type { i32 }
%struct.v4l2_ext_control = type <{ i32, i32, [1 x i32], %union.anon.92 }>
%union.anon.92 = type { i64 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.uvc_frame = type { i8, i8, i16, i16, i32, i32, i32, i8, i32, ptr }
%struct.v4l2_streamparm = type { i32, %union.anon.100 }
%union.anon.100 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.102, [2 x i32] }
%union.anon.102 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.103, [2 x i32] }
%union.anon.103 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.uvc_control_mapping = type { %struct.list_head, %struct.list_head, i32, ptr, [16 x i8], i8, i8, i8, i32, i32, ptr, i32, i32, i32, [2 x i32], ptr, ptr }
%struct.uvc_xu_control_mapping = type { i32, [32 x i8], [16 x i8], i8, i8, i8, i32, i32, ptr, i32, [4 x i32] }
%struct.v4l2_format = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.86, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.86 = type { i8 }

@uvc_ioctl_ops = dso_local constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @uvc_ioctl_querycap, ptr @uvc_ioctl_enum_fmt_vid_cap, ptr null, ptr @uvc_ioctl_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_g_fmt_vid_cap, ptr null, ptr @uvc_ioctl_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_s_fmt_vid_cap, ptr null, ptr @uvc_ioctl_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_try_fmt_vid_cap, ptr null, ptr @uvc_ioctl_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_reqbufs, ptr @uvc_ioctl_querybuf, ptr @uvc_ioctl_qbuf, ptr @uvc_ioctl_expbuf, ptr @uvc_ioctl_dqbuf, ptr @uvc_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_streamon, ptr @uvc_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @uvc_ioctl_enum_input, ptr @uvc_ioctl_g_input, ptr @uvc_ioctl_s_input, ptr null, ptr null, ptr null, ptr @uvc_ioctl_queryctrl, ptr @uvc_ioctl_query_ext_ctrl, ptr null, ptr null, ptr @uvc_ioctl_g_ext_ctrls, ptr @uvc_ioctl_s_ext_ctrls, ptr @uvc_ioctl_try_ext_ctrls, ptr @uvc_ioctl_querymenu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_g_parm, ptr @uvc_ioctl_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_enum_framesizes, ptr @uvc_ioctl_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr @uvc_ioctl_default }, [120 x i8] zeroinitializer }, align 32
@uvc_fops = dso_local constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @uvc_v4l2_read, ptr null, ptr @uvc_v4l2_poll, ptr @video_ioctl2, ptr null, ptr @uvc_v4l2_mmap, ptr @uvc_v4l2_open, ptr @uvc_v4l2_release }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uvcvideo\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_v4l2_try_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Trying format 0x%08x (%c%c%c%c): %ux%u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvc_v4l2_try_format\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/uvc/uvc_v4l2.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_v4l2_try_format._entry_ptr = internal global ptr @uvc_v4l2_try_format._entry, section ".printk_index", align 4
@uvc_v4l2_try_format._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported size %ux%u\0A\00", [40 x i8] zeroinitializer }, align 32
@uvc_v4l2_try_format._entry_ptr.9 = internal global ptr @uvc_v4l2_try_format._entry.7, section ".printk_index", align 4
@uvc_v4l2_try_format._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Using default frame interval %u.%u us (%u.%u fps)\0A\00", [45 x i8] zeroinitializer }, align 32
@uvc_v4l2_try_format._entry_ptr.12 = internal global ptr @uvc_v4l2_try_format._entry.10, section ".printk_index", align 4
@uvc_v4l2_try_format._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unknown bFormatIndex %u, using default\0A\00", [56 x i8] zeroinitializer }, align 32
@uvc_v4l2_try_format._entry_ptr.15 = internal global ptr @uvc_v4l2_try_format._entry.13, section ".printk_index", align 4
@uvc_v4l2_try_format._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unknown bFrameIndex %u, using default\0A\00", [57 x i8] zeroinitializer }, align 32
@uvc_v4l2_try_format._entry_ptr.18 = internal global ptr @uvc_v4l2_try_format._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uvc_v4l2_set_streamparm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 429, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Setting frame interval to %u/%u (%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uvc_v4l2_set_streamparm\00", [40 x i8] zeroinitializer }, align 32
@uvc_v4l2_set_streamparm._entry_ptr = internal global ptr @uvc_v4l2_set_streamparm._entry, section ".printk_index", align 4
@uvc_ctrl_sub_ev_ops = external dso_local constant %struct.v4l2_subscribed_event_ops, align 4
@uvc_ioctl_ctrl_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 87, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported V4L2 control type %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvc_ioctl_ctrl_map\00", [45 x i8] zeroinitializer }, align 32
@uvc_ioctl_ctrl_map._entry_ptr = internal global ptr @uvc_ioctl_ctrl_map._entry, section ".printk_index", align 4
@uvc_v4l2_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1461, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: not implemented\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uvc_v4l2_read\00", [18 x i8] zeroinitializer }, align 32
@uvc_v4l2_read._entry_ptr = internal global ptr @uvc_v4l2_read._entry, section ".printk_index", align 4
@uvc_v4l2_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 1480, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uvc_v4l2_poll\00", [18 x i8] zeroinitializer }, align 32
@uvc_v4l2_poll._entry_ptr = internal global ptr @uvc_v4l2_poll._entry, section ".printk_index", align 4
@uvc_v4l2_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.27, ptr @.str.4, i32 1470, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uvc_v4l2_mmap\00", [18 x i8] zeroinitializer }, align 32
@uvc_v4l2_mmap._entry_ptr = internal global ptr @uvc_v4l2_mmap._entry, section ".printk_index", align 4
@uvc_v4l2_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.28, ptr @.str.4, i32 561, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uvc_v4l2_open\00", [18 x i8] zeroinitializer }, align 32
@uvc_v4l2_open._entry_ptr = internal global ptr @uvc_v4l2_open._entry, section ".printk_index", align 4
@uvc_v4l2_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str.4, i32 603, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvc_v4l2_release\00", [47 x i8] zeroinitializer }, align 32
@uvc_v4l2_release._entry_ptr = internal global ptr @uvc_v4l2_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 257, i64 258]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 3222041889, i64 3227022624]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 808596557, i64 842093913, i64 842094158, i64 842094169]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 808596557, i64 842093913, i64 842094158, i64 842094169]
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"uvc_ioctl_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1499, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"uvc_fops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1536, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 632, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 912, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 175, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 218, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 225, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 272, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 284, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 428, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 86, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1461, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1480, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1470, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 561, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [36 x i8] c"../drivers/media/usb/uvc/uvc_v4l2.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 603, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @uvc_ioctl_ctrl_map._entry, ptr @uvc_ioctl_ctrl_map._entry_ptr, ptr @uvc_v4l2_mmap._entry, ptr @uvc_v4l2_mmap._entry_ptr, ptr @uvc_v4l2_open._entry, ptr @uvc_v4l2_open._entry_ptr, ptr @uvc_v4l2_poll._entry, ptr @uvc_v4l2_poll._entry_ptr, ptr @uvc_v4l2_read._entry, ptr @uvc_v4l2_read._entry_ptr, ptr @uvc_v4l2_release._entry, ptr @uvc_v4l2_release._entry_ptr, ptr @uvc_v4l2_set_streamparm._entry, ptr @uvc_v4l2_set_streamparm._entry_ptr, ptr @uvc_v4l2_try_format._entry, ptr @uvc_v4l2_try_format._entry.10, ptr @uvc_v4l2_try_format._entry.13, ptr @uvc_v4l2_try_format._entry.16, ptr @uvc_v4l2_try_format._entry.7, ptr @uvc_v4l2_try_format._entry_ptr, ptr @uvc_v4l2_try_format._entry_ptr.12, ptr @uvc_v4l2_try_format._entry_ptr.15, ptr @uvc_v4l2_try_format._entry_ptr.18, ptr @uvc_v4l2_try_format._entry_ptr.9, ptr @uvc_ioctl_ops, ptr @uvc_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_try_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_try_format._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_try_format._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_try_format._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_try_format._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_set_streamparm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ioctl_ctrl_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_v4l2_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_querycap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain1, align 4
  %stream2 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream2, align 4
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %6 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream2, align 4
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 5
  %call6 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #9
  %dev7 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %17, ptr noundef %devpath.i) #9
  %caps = getelementptr inbounds %struct.uvc_video_chain, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps, align 4
  %or = or i32 %19, -2080374784
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %20 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %type1.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1.i, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %type4.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %type4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not.i = icmp eq i32 %3, %7
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.uvc_ioctl_enum_fmt.exit_crit_edge

entry.uvc_ioctl_enum_fmt.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_ioctl_enum_fmt.exit

lor.lhs.false.i:                                  ; preds = %entry
  %nformats.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp6.not.i = icmp ult i32 %5, %9
  br i1 %cmp6.not.i, label %if.end.i, label %lor.lhs.false.i.uvc_ioctl_enum_fmt.exit_crit_edge

lor.lhs.false.i.uvc_ioctl_enum_fmt.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_ioctl_enum_fmt.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = getelementptr inbounds i8, ptr %fmt, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 56)
  %format9.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %format9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format9.i, align 8
  %flags11.i = getelementptr %struct.uvc_format, ptr %13, i32 %5, i32 7
  %14 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags11.i, align 4
  %and.i = and i32 %15, 1
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %10, align 4
  %description.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 3
  %name.i = getelementptr %struct.uvc_format, ptr %13, i32 %5, i32 8
  %call.i = tail call i32 @strscpy(ptr noundef %description.i, ptr noundef %name.i, i32 noundef 32) #9
  %arrayidx17.i = getelementptr %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 3, i32 31
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx17.i, align 1
  %fcc.i = getelementptr %struct.uvc_format, ptr %13, i32 %5, i32 6
  %18 = ptrtoint ptr %fcc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fcc.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat.i, align 4
  br label %uvc_ioctl_enum_fmt.exit

uvc_ioctl_enum_fmt.exit:                          ; preds = %if.end.i, %lor.lhs.false.i.uvc_ioctl_enum_fmt.exit_crit_edge, %entry.uvc_ioctl_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %lor.lhs.false.i.uvc_ioctl_enum_fmt.exit_crit_edge ], [ -22, %entry.uvc_ioctl_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %type1.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1.i, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %type4.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %type4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not.i = icmp eq i32 %3, %7
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.uvc_ioctl_enum_fmt.exit_crit_edge

entry.uvc_ioctl_enum_fmt.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_ioctl_enum_fmt.exit

lor.lhs.false.i:                                  ; preds = %entry
  %nformats.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nformats.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp6.not.i = icmp ult i32 %5, %9
  br i1 %cmp6.not.i, label %if.end.i, label %lor.lhs.false.i.uvc_ioctl_enum_fmt.exit_crit_edge

lor.lhs.false.i.uvc_ioctl_enum_fmt.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_ioctl_enum_fmt.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = getelementptr inbounds i8, ptr %fmt, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 56)
  %format9.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %format9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format9.i, align 8
  %flags11.i = getelementptr %struct.uvc_format, ptr %13, i32 %5, i32 7
  %14 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags11.i, align 4
  %and.i = and i32 %15, 1
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %10, align 4
  %description.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 3
  %name.i = getelementptr %struct.uvc_format, ptr %13, i32 %5, i32 8
  %call.i = tail call i32 @strscpy(ptr noundef %description.i, ptr noundef %name.i, i32 noundef 32) #9
  %arrayidx17.i = getelementptr %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 3, i32 31
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx17.i, align 1
  %fcc.i = getelementptr %struct.uvc_format, ptr %13, i32 %5, i32 6
  %18 = ptrtoint ptr %fcc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fcc.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat.i, align 4
  br label %uvc_ioctl_enum_fmt.exit

uvc_ioctl_enum_fmt.exit:                          ; preds = %if.end.i, %lor.lhs.false.i.uvc_ioctl_enum_fmt.exit_crit_edge, %entry.uvc_ioctl_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %lor.lhs.false.i.uvc_ioctl_enum_fmt.exit_crit_edge ], [ -22, %entry.uvc_ioctl_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %call = tail call fastcc i32 @uvc_v4l2_get_format(ptr noundef %1, ptr noundef %fmt)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %call = tail call fastcc i32 @uvc_v4l2_get_format(ptr noundef %1, ptr noundef %fmt)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  %probe.i = alloca %struct.uvc_streaming_control, align 1
  %format.i = alloca ptr, align 4
  %frame.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %active.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp1.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp1.not.i, label %if.end5.i, label %uvc_acquire_privileges.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state.i, align 4
  br label %if.end

uvc_acquire_privileges.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream1, align 4
  %active4.i = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 4
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active4.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active4.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active4.i, ptr %active4.i, i32 1, ptr elementtype(i32) %active4.i) #9, !srcloc !76
  br label %cleanup

if.end:                                           ; preds = %if.end5.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %probe.i) #9
  %9 = call ptr @memset(ptr %probe.i, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format.i) #9
  %10 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %format.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame.i) #9
  %11 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame.i, align 4, !annotation !77
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  %type1.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i = icmp eq i32 %13, %15
  br i1 %cmp.not.i, label %if.end.i7, label %if.end.uvc_v4l2_set_format.exit_crit_edge

if.end.uvc_v4l2_set_format.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_v4l2_set_format.exit

if.end.i7:                                        ; preds = %if.end
  %call.i = call fastcc i32 @uvc_v4l2_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef nonnull %probe.i, ptr noundef nonnull %format.i, ptr noundef nonnull %frame.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.i7.uvc_v4l2_set_format.exit_crit_edge, label %if.end4.i

if.end.i7.uvc_v4l2_set_format.exit_crit_edge:     ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_v4l2_set_format.exit

if.end4.i:                                        ; preds = %if.end.i7
  %mutex.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %queue.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 18
  %call5.i = call i32 @uvc_queue_allocated(ptr noundef %queue.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end4.i.done.i_crit_edge

if.end4.i.done.i_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 12
  %16 = call ptr @memcpy(ptr %ctrl.i, ptr %probe.i, i32 34)
  %17 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %format.i, align 4
  %cur_format.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %cur_format.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %cur_format.i, align 4
  %20 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %frame.i, align 4
  %cur_frame.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %cur_frame.i, align 8
  br label %done.i

done.i:                                           ; preds = %if.end7.i, %if.end4.i.done.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end7.i ], [ -16, %if.end4.i.done.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %uvc_v4l2_set_format.exit

uvc_v4l2_set_format.exit:                         ; preds = %done.i, %if.end.i7.uvc_v4l2_set_format.exit_crit_edge, %if.end.uvc_v4l2_set_format.exit_crit_edge
  %retval.0.i8 = phi i32 [ %ret.0.i, %done.i ], [ -22, %if.end.uvc_v4l2_set_format.exit_crit_edge ], [ %call.i, %if.end.i7.uvc_v4l2_set_format.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format.i) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %probe.i) #9
  br label %cleanup

cleanup:                                          ; preds = %uvc_v4l2_set_format.exit, %uvc_acquire_privileges.exit
  %retval.0 = phi i32 [ %retval.0.i8, %uvc_v4l2_set_format.exit ], [ -16, %uvc_acquire_privileges.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  %probe.i = alloca %struct.uvc_streaming_control, align 1
  %format.i = alloca ptr, align 4
  %frame.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %active.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp1.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp1.not.i, label %if.end5.i, label %uvc_acquire_privileges.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state.i, align 4
  br label %if.end

uvc_acquire_privileges.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream1, align 4
  %active4.i = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 4
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active4.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active4.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active4.i, ptr %active4.i, i32 1, ptr elementtype(i32) %active4.i) #9, !srcloc !76
  br label %cleanup

if.end:                                           ; preds = %if.end5.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %probe.i) #9
  %9 = call ptr @memset(ptr %probe.i, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format.i) #9
  %10 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %format.i, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame.i) #9
  %11 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame.i, align 4, !annotation !77
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  %type1.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i = icmp eq i32 %13, %15
  br i1 %cmp.not.i, label %if.end.i7, label %if.end.uvc_v4l2_set_format.exit_crit_edge

if.end.uvc_v4l2_set_format.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_v4l2_set_format.exit

if.end.i7:                                        ; preds = %if.end
  %call.i = call fastcc i32 @uvc_v4l2_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef nonnull %probe.i, ptr noundef nonnull %format.i, ptr noundef nonnull %frame.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.i7.uvc_v4l2_set_format.exit_crit_edge, label %if.end4.i

if.end.i7.uvc_v4l2_set_format.exit_crit_edge:     ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_v4l2_set_format.exit

if.end4.i:                                        ; preds = %if.end.i7
  %mutex.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %queue.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 18
  %call5.i = call i32 @uvc_queue_allocated(ptr noundef %queue.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end4.i.done.i_crit_edge

if.end4.i.done.i_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 12
  %16 = call ptr @memcpy(ptr %ctrl.i, ptr %probe.i, i32 34)
  %17 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %format.i, align 4
  %cur_format.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %cur_format.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %cur_format.i, align 4
  %20 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %frame.i, align 4
  %cur_frame.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %cur_frame.i, align 8
  br label %done.i

done.i:                                           ; preds = %if.end7.i, %if.end4.i.done.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end7.i ], [ -16, %if.end4.i.done.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %uvc_v4l2_set_format.exit

uvc_v4l2_set_format.exit:                         ; preds = %done.i, %if.end.i7.uvc_v4l2_set_format.exit_crit_edge, %if.end.uvc_v4l2_set_format.exit_crit_edge
  %retval.0.i8 = phi i32 [ %ret.0.i, %done.i ], [ -22, %if.end.uvc_v4l2_set_format.exit_crit_edge ], [ %call.i, %if.end.i7.uvc_v4l2_set_format.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format.i) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %probe.i) #9
  br label %cleanup

cleanup:                                          ; preds = %uvc_v4l2_set_format.exit, %uvc_acquire_privileges.exit
  %retval.0 = phi i32 [ %retval.0.i8, %uvc_v4l2_set_format.exit ], [ -16, %uvc_acquire_privileges.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  %probe = alloca %struct.uvc_streaming_control, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %probe) #9
  %2 = call ptr @memset(ptr %probe, i32 255, i32 34)
  %call = call fastcc i32 @uvc_v4l2_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef nonnull %probe, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %probe) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  %probe = alloca %struct.uvc_streaming_control, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %probe) #9
  %2 = call ptr @memset(ptr %probe, i32 255, i32 34)
  %call = call fastcc i32 @uvc_v4l2_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef nonnull %probe, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %probe) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_reqbufs(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, ptr noundef %rb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %active.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp1.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp1.not.i, label %if.end5.i, label %uvc_acquire_privileges.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state.i, align 4
  br label %if.end

uvc_acquire_privileges.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream1, align 4
  %active4.i = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 4
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active4.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active4.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active4.i, ptr %active4.i, i32 1, ptr elementtype(i32) %active4.i) #9, !srcloc !76
  br label %cleanup

if.end:                                           ; preds = %if.end5.i, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 18
  %call2 = tail call i32 @uvc_request_buffers(ptr noundef %queue, ptr noundef %rb) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp7 = icmp eq i32 %call2, 0
  br i1 %cmp7, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i21 = icmp eq i32 %10, 1
  br i1 %cmp.i21, label %if.then.i, label %if.then8.uvc_dismiss_privileges.exit_crit_edge

if.then8.uvc_dismiss_privileges.exit_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_dismiss_privileges.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream1, align 4
  %active.i23 = getelementptr inbounds %struct.uvc_streaming, ptr %12, i32 0, i32 4
  %call.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i23, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active.i23, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i23, ptr %active.i23, i32 1, ptr elementtype(i32) %active.i23) #9, !srcloc !76
  br label %uvc_dismiss_privileges.exit

uvc_dismiss_privileges.exit:                      ; preds = %if.then.i, %if.then8.uvc_dismiss_privileges.exit_crit_edge
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %uvc_dismiss_privileges.exit, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uvc_acquire_privileges.exit
  %retval.0 = phi i32 [ -16, %uvc_acquire_privileges.exit ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %uvc_dismiss_privileges.exit ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_querybuf(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %call2 = tail call i32 @uvc_query_buffer(ptr noundef %queue, ptr noundef %buf) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_qbuf(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %v4l2_dev = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_dev, align 4
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 4
  %call2 = tail call i32 @uvc_queue_buffer(ptr noundef %queue, ptr noundef %7, ptr noundef %buf) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_expbuf(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %exp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %call2 = tail call i32 @uvc_export_buffer(ptr noundef %queue, ptr noundef %exp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_dqbuf(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %fh, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  %call2 = tail call i32 @uvc_dequeue_buffer(ptr noundef %queue, ptr noundef %buf, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_create_bufs(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %active.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp1.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp1.not.i, label %if.end5.i, label %uvc_acquire_privileges.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state.i, align 4
  br label %if.end

uvc_acquire_privileges.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream1, align 4
  %active4.i = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 4
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active4.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active4.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active4.i, ptr %active4.i, i32 1, ptr elementtype(i32) %active4.i) #9, !srcloc !76
  br label %cleanup

if.end:                                           ; preds = %if.end5.i, %entry.if.end_crit_edge
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 18
  %call2 = tail call i32 @uvc_create_buffers(ptr noundef %queue, ptr noundef %cb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %uvc_acquire_privileges.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %uvc_acquire_privileges.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_streamon(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %mutex = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %call2 = tail call i32 @uvc_queue_streamon(ptr noundef %queue, i32 noundef %type) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_streamoff(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %mutex = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %call2 = tail call i32 @uvc_queue_streamoff(ptr noundef %queue, i32 noundef %type) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  %selector2 = getelementptr inbounds %struct.uvc_video_chain, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %selector2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %selector2, align 4
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %entities = getelementptr inbounds %struct.uvc_video_chain, ptr %1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn124.in = phi ptr [ %entities, %if.end ], [ %.pn124, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %.pn124.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn124 = load ptr, ptr %.pn124.in, align 4
  %cmp8.not = icmp eq ptr %.pn124, %entities
  br i1 %cmp8.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %type = getelementptr i8, ptr %.pn124, i32 14
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %type, align 2
  %conv = zext i16 %12 to i32
  %and9 = and i32 %conv, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp ne i32 %and9, 0
  %and14 = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 0
  %or.cond = and i1 %cmp10.not, %cmp15
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn124.lcssa = phi ptr [ %.pn124, %for.body.for.end_crit_edge ], [ %entities, %for.cond.for.end_crit_edge ]
  %id = getelementptr i8, ptr %.pn124.lcssa, i32 12
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id, align 4
  %conv24 = zext i16 %14 to i32
  br label %if.end69

if.else:                                          ; preds = %lor.lhs.false
  %bNrInPins = getelementptr inbounds %struct.uvc_entity, ptr %3, i32 0, i32 13
  %15 = ptrtoint ptr %bNrInPins to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bNrInPins, align 4
  %conv25 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv25)
  %cmp26 = icmp ult i32 %5, %conv25
  br i1 %cmp26, label %if.then28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %if.else
  %baSourceID = getelementptr inbounds %struct.uvc_entity, ptr %3, i32 0, i32 14
  %17 = ptrtoint ptr %baSourceID to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %baSourceID, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 %5
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv29 = zext i8 %20 to i32
  %entities31 = getelementptr inbounds %struct.uvc_video_chain, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %entities31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn129 = load ptr, ptr %entities31, align 4
  %cmp38.not130 = icmp eq ptr %.pn129, %entities31
  br i1 %cmp38.not130, label %if.then28.if.end69_crit_edge, label %for.body41.lr.ph

if.then28.if.end69_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

for.body41.lr.ph:                                 ; preds = %if.then28
  %22 = zext i8 %20 to i16
  br label %for.body41

for.body41:                                       ; preds = %for.inc61.for.body41_crit_edge, %for.body41.lr.ph
  %.pn131 = phi ptr [ %.pn129, %for.body41.lr.ph ], [ %.pn, %for.inc61.for.body41_crit_edge ]
  %type42 = getelementptr i8, ptr %.pn131, i32 14
  %23 = ptrtoint ptr %type42 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %type42, align 2
  %conv43 = zext i16 %24 to i32
  %and44 = and i32 %conv43, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45.not = icmp ne i32 %and44, 0
  %and50 = and i32 %conv43, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %cmp51 = icmp eq i32 %and50, 0
  %or.cond125 = and i1 %cmp45.not, %cmp51
  br i1 %or.cond125, label %if.end54, label %for.body41.for.inc61_crit_edge

for.body41.for.inc61_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc61

if.end54:                                         ; preds = %for.body41
  %id55 = getelementptr i8, ptr %.pn131, i32 12
  %25 = ptrtoint ptr %id55 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id55, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %22)
  %cmp57 = icmp eq i16 %26, %22
  br i1 %cmp57, label %if.end54.if.end69_crit_edge, label %if.end54.for.inc61_crit_edge

if.end54.for.inc61_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc61

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

for.inc61:                                        ; preds = %if.end54.for.inc61_crit_edge, %for.body41.for.inc61_crit_edge
  %27 = ptrtoint ptr %.pn131 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn131, align 4
  %cmp38.not = icmp eq ptr %.pn, %entities31
  br i1 %cmp38.not, label %for.inc61.if.end69_crit_edge, label %for.inc61.for.body41_crit_edge

for.inc61.for.body41_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

for.inc61.if.end69_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end69:                                         ; preds = %for.inc61.if.end69_crit_edge, %if.end54.if.end69_crit_edge, %if.then28.if.end69_crit_edge, %for.end
  %pin.0 = phi i32 [ %conv24, %for.end ], [ %conv29, %if.then28.if.end69_crit_edge ], [ %conv29, %if.end54.if.end69_crit_edge ], [ %conv29, %for.inc61.if.end69_crit_edge ]
  %.pn124.pn = phi ptr [ %.pn124.lcssa, %for.end ], [ %entities31, %if.then28.if.end69_crit_edge ], [ %entities31, %for.inc61.if.end69_crit_edge ], [ %.pn131, %if.end54.if.end69_crit_edge ]
  %iterm.2 = getelementptr i8, ptr %.pn124.pn, i32 -8
  %cmp70 = icmp eq ptr %iterm.2, null
  br i1 %cmp70, label %if.end69.cleanup_crit_edge, label %lor.lhs.false72

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false72:                                  ; preds = %if.end69
  %id73 = getelementptr i8, ptr %.pn124.pn, i32 12
  %28 = ptrtoint ptr %id73 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %id73, align 4
  %conv74 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pin.0, i32 %conv74)
  %cmp75.not = icmp eq i32 %pin.0, %conv74
  br i1 %cmp75.not, label %if.end78, label %lor.lhs.false72.cleanup_crit_edge

lor.lhs.false72.cleanup_crit_edge:                ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end78:                                         ; preds = %lor.lhs.false72
  %30 = call ptr @memset(ptr %input, i32 0, i32 80)
  %31 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %5, ptr %input, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %name80 = getelementptr i8, ptr %.pn124.pn, i32 16
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name80, i32 noundef 32) #9
  %type82 = getelementptr i8, ptr %.pn124.pn, i32 14
  %32 = ptrtoint ptr %type82 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %type82, align 2
  %34 = and i16 %33, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %34)
  %cmp85 = icmp eq i16 %34, 513
  br i1 %cmp85, label %if.then87, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then87:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %type88 = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %35 = ptrtoint ptr %type88 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %type88, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end78.cleanup_crit_edge, %lor.lhs.false72.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %lor.lhs.false72.cleanup_crit_edge ], [ -22, %if.end69.cleanup_crit_edge ], [ 0, %if.then87 ], [ 0, %if.end78.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  %selector = getelementptr inbounds %struct.uvc_video_chain, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %selector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %selector, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %input, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 1) #12
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %selector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %selector, align 4
  %id = getelementptr inbounds %struct.uvc_entity, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %id, align 4
  %conv = trunc i16 %15 to i8
  %intfnum = getelementptr inbounds %struct.uvc_device, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intfnum, align 8
  %conv8 = trunc i32 %17 to i8
  %call9 = tail call i32 @uvc_query_ctrl(ptr noundef %11, i8 noundef zeroext -127, i8 noundef zeroext %conv, i8 noundef zeroext %conv8, i8 noundef zeroext 1, ptr noundef nonnull %call7.i, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i, align 8
  %conv12 = zext i8 %19 to i32
  %sub = add nsw i32 %conv12, -1
  %20 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %input, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end4.if.end13_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call9, %if.end13 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, i32 noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %stream.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream.i, align 4
  %active.i = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp1.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp1.not.i, label %if.end5.i, label %uvc_acquire_privileges.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %state.i, align 4
  br label %if.end

uvc_acquire_privileges.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream.i, align 4
  %active4.i = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 4
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active4.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active4.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active4.i, ptr %active4.i, i32 1, ptr elementtype(i32) %active4.i) #9, !srcloc !76
  br label %cleanup

if.end:                                           ; preds = %if.end5.i, %entry.if.end_crit_edge
  %selector = getelementptr inbounds %struct.uvc_video_chain, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %selector to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %selector, align 4
  %cmp2 = icmp eq ptr %12, null
  br i1 %cmp2, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks, align 4
  %and = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %tobool4.not = icmp eq i32 %input, 0
  %. = select i1 %tobool4.not, i32 0, i32 -22
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %bNrInPins = getelementptr inbounds %struct.uvc_entity, ptr %12, i32 0, i32 13
  %17 = ptrtoint ptr %bNrInPins to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bNrInPins, align 4
  %conv = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %input)
  %cmp9.not = icmp ugt i32 %conv, %input
  br i1 %cmp9.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 1) #12
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %20 = trunc i32 %input to i8
  %conv17 = add i8 %20, 1
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17, ptr %call7.i, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %selector to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %selector, align 4
  %id = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %id, align 4
  %conv20 = trunc i16 %27 to i8
  %intfnum = getelementptr inbounds %struct.uvc_device, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %intfnum, align 8
  %conv22 = trunc i32 %29 to i8
  %call23 = tail call i32 @uvc_query_ctrl(ptr noundef %23, i8 noundef zeroext 1, i8 noundef zeroext %conv20, i8 noundef zeroext %conv22, i8 noundef zeroext 1, ptr noundef nonnull %call7.i, i16 noundef zeroext 1) #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then3, %uvc_acquire_privileges.exit
  %retval.0 = phi i32 [ %call23, %if.end16 ], [ -16, %uvc_acquire_privileges.exit ], [ %., %if.then3 ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_queryctrl(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %qc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  %call = tail call i32 @uvc_query_v4l2_ctrl(ptr noundef %1, ptr noundef %qc) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_query_ext_ctrl(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %qec) #0 align 64 {
entry:
  %qc = alloca %struct.v4l2_queryctrl, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %qc) #9
  %2 = getelementptr inbounds i8, ptr %qc, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 64)
  %4 = ptrtoint ptr %qec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qec, align 8
  %6 = ptrtoint ptr %qc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %qc, align 4
  %call = call i32 @uvc_query_v4l2_ctrl(ptr noundef %1, ptr noundef nonnull %qc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qc, align 4
  %9 = ptrtoint ptr %qec to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %qec, align 8
  %type = getelementptr inbounds %struct.v4l2_queryctrl, ptr %qc, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %type5 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 1
  %12 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %type5, align 4
  %name = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 2
  %name6 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %qc, i32 0, i32 2
  %call8 = call i32 @strscpy(ptr noundef %name, ptr noundef %name6, i32 noundef 32) #9
  %minimum = getelementptr inbounds %struct.v4l2_queryctrl, ptr %qc, i32 0, i32 3
  %13 = ptrtoint ptr %minimum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %minimum, align 4
  %conv = sext i32 %14 to i64
  %minimum9 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 3
  %15 = ptrtoint ptr %minimum9 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %minimum9, align 8
  %maximum = getelementptr inbounds %struct.v4l2_queryctrl, ptr %qc, i32 0, i32 4
  %16 = ptrtoint ptr %maximum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maximum, align 4
  %conv10 = sext i32 %17 to i64
  %maximum11 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 4
  %18 = ptrtoint ptr %maximum11 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv10, ptr %maximum11, align 8
  %step = getelementptr inbounds %struct.v4l2_queryctrl, ptr %qc, i32 0, i32 5
  %19 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %step, align 4
  %conv12 = sext i32 %20 to i64
  %step13 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 5
  %21 = ptrtoint ptr %step13 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv12, ptr %step13, align 8
  %default_value = getelementptr inbounds %struct.v4l2_queryctrl, ptr %qc, i32 0, i32 6
  %22 = ptrtoint ptr %default_value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %default_value, align 4
  %conv14 = sext i32 %23 to i64
  %default_value15 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 6
  %24 = ptrtoint ptr %default_value15 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv14, ptr %default_value15, align 8
  %flags = getelementptr inbounds %struct.v4l2_queryctrl, ptr %qc, i32 0, i32 7
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %flags16 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 7
  %27 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %flags16, align 8
  %elem_size = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 8
  %28 = ptrtoint ptr %elem_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %elem_size, align 4
  %elems = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 9
  %29 = ptrtoint ptr %elems to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %elems, align 8
  %nr_of_dims = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %qec, i32 0, i32 10
  %30 = call ptr @memset(ptr %nr_of_dims, i32 0, i32 148)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %qc) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_ext_ctrls(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %ctrls) #0 align 64 {
entry:
  %qc = alloca %struct.v4l2_queryctrl, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  %controls = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 5
  %2 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controls, align 4
  %count.i = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %entry.uvc_ctrl_check_access.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.uvc_ctrl_check_access.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_ctrl_check_access.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %ctrl.013.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %ctrl.013.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ctrl.013.i, align 1
  %call.i = tail call i32 @uvc_ctrl_is_accessible(ptr noundef %1, i32 noundef %7, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %uvc_ctrl_check_access.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.v4l2_ext_control, ptr %ctrl.013.i, i32 1
  %inc.i = add nuw i32 %i.014.i, 1
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.uvc_ctrl_check_access.exit.thread_crit_edge

for.inc.i.uvc_ctrl_check_access.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_ctrl_check_access.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

uvc_ctrl_check_access.exit.thread:                ; preds = %for.inc.i.uvc_ctrl_check_access.exit.thread_crit_edge, %entry.uvc_ctrl_check_access.exit.thread_crit_edge
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %error_idx.i67 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 2
  %12 = ptrtoint ptr %error_idx.i67 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %error_idx.i67, align 4
  br label %if.end

uvc_ctrl_check_access.exit:                       ; preds = %for.body.i
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 4
  %error_idx.i = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 2
  %15 = ptrtoint ptr %error_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %error_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %uvc_ctrl_check_access.exit.cleanup31_crit_edge, label %uvc_ctrl_check_access.exit.if.end_crit_edge

uvc_ctrl_check_access.exit.if.end_crit_edge:      ; preds = %uvc_ctrl_check_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

uvc_ctrl_check_access.exit.cleanup31_crit_edge:   ; preds = %uvc_ctrl_check_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

if.end:                                           ; preds = %uvc_ctrl_check_access.exit.if.end_crit_edge, %uvc_ctrl_check_access.exit.thread
  %error_idx.i69 = phi ptr [ %error_idx.i67, %uvc_ctrl_check_access.exit.thread ], [ %error_idx.i, %uvc_ctrl_check_access.exit.if.end_crit_edge ]
  %16 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctrls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %17)
  %cmp2 = icmp eq i32 %17, 251658240
  br i1 %cmp2, label %for.cond.preheader, label %if.end10

for.cond.preheader:                               ; preds = %if.end
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp477.not = icmp eq i32 %19, 0
  br i1 %cmp477.not, label %for.cond.preheader.cleanup31_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup31_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %default_value = getelementptr inbounds %struct.v4l2_queryctrl, ptr %qc, i32 0, i32 6
  %20 = getelementptr inbounds i8, ptr %qc, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ctrl.078 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %qc) #9
  %21 = call ptr @memset(ptr %20, i32 0, i32 64)
  %22 = ptrtoint ptr %ctrl.078 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %ctrl.078, align 1
  %24 = ptrtoint ptr %qc to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %qc, align 4
  %call6 = call i32 @uvc_query_v4l2_ctrl(ptr noundef %1, ptr noundef nonnull %qc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %error_idx.i69 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.079, ptr %error_idx.i69, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %qc) #9
  br label %cleanup31

for.inc:                                          ; preds = %for.body
  %26 = ptrtoint ptr %default_value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %default_value, align 4
  %28 = getelementptr inbounds %struct.v4l2_ext_control, ptr %ctrl.078, i32 0, i32 3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %27, ptr %28, align 1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %qc) #9
  %incdec.ptr = getelementptr %struct.v4l2_ext_control, ptr %ctrl.078, i32 1
  %inc = add nuw i32 %i.079, 1
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i, align 4
  %cmp4 = icmp ult i32 %inc, %31
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.cleanup31_crit_edge

for.inc.cleanup31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @uvc_ctrl_begin(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup31_crit_edge, label %for.cond15.preheader

if.end10.cleanup31_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

for.cond15.preheader:                             ; preds = %if.end10
  %32 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1774.not = icmp eq i32 %33, 0
  br i1 %cmp1774.not, label %for.cond15.preheader.for.end28_crit_edge, label %for.cond15.preheader.for.body18_crit_edge

for.cond15.preheader.for.body18_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body18

for.cond15.preheader.for.end28_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end28

for.body18:                                       ; preds = %for.inc25.for.body18_crit_edge, %for.cond15.preheader.for.body18_crit_edge
  %i.176 = phi i32 [ %inc27, %for.inc25.for.body18_crit_edge ], [ 0, %for.cond15.preheader.for.body18_crit_edge ]
  %ctrl.175 = phi ptr [ %incdec.ptr26, %for.inc25.for.body18_crit_edge ], [ %3, %for.cond15.preheader.for.body18_crit_edge ]
  %call19 = tail call i32 @uvc_ctrl_get(ptr noundef %1, ptr noundef %ctrl.175) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %for.inc25

if.then21:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  %call.i64 = tail call i32 @__uvc_ctrl_commit(ptr noundef %fh, i32 noundef 1, ptr noundef null) #9
  %34 = ptrtoint ptr %error_idx.i69 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %i.176, ptr %error_idx.i69, align 4
  br label %cleanup31

for.inc25:                                        ; preds = %for.body18
  %incdec.ptr26 = getelementptr %struct.v4l2_ext_control, ptr %ctrl.175, i32 1
  %inc27 = add nuw i32 %i.176, 1
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 4
  %cmp17 = icmp ult i32 %inc27, %36
  br i1 %cmp17, label %for.inc25.for.body18_crit_edge, label %for.inc25.for.end28_crit_edge

for.inc25.for.end28_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end28

for.inc25.for.body18_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.end28:                                        ; preds = %for.inc25.for.end28_crit_edge, %for.cond15.preheader.for.end28_crit_edge
  %37 = ptrtoint ptr %error_idx.i69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %error_idx.i69, align 4
  %call.i65 = tail call i32 @__uvc_ctrl_commit(ptr noundef %fh, i32 noundef 1, ptr noundef null) #9
  br label %cleanup31

cleanup31:                                        ; preds = %for.end28, %if.then21, %if.end10.cleanup31_crit_edge, %for.inc.cleanup31_crit_edge, %cleanup.thread, %for.cond.preheader.cleanup31_crit_edge, %uvc_ctrl_check_access.exit.cleanup31_crit_edge
  %retval.2 = phi i32 [ %call19, %if.then21 ], [ %call.i65, %for.end28 ], [ %call.i, %uvc_ctrl_check_access.exit.cleanup31_crit_edge ], [ %call11, %if.end10.cleanup31_crit_edge ], [ %call6, %cleanup.thread ], [ 0, %for.cond.preheader.cleanup31_crit_edge ], [ 0, %for.inc.cleanup31_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_ext_ctrls(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %ctrls) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @uvc_ioctl_s_try_ext_ctrls(ptr noundef %fh, ptr noundef %ctrls, i32 noundef -1072146872)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_try_ext_ctrls(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr noundef %ctrls) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @uvc_ioctl_s_try_ext_ctrls(ptr noundef %fh, ptr noundef %ctrls, i32 noundef -1072146871)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_querymenu(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %qm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  %call = tail call i32 @uvc_query_v4l2_menu(ptr noundef %1, ptr noundef %qm) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %type2 = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge30
    i32 257, label %if.end.sw.bb7_crit_edge
    i32 258, label %if.end.sw.bb7_crit_edge31
  ]

if.end.sw.bb7_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

if.end.sw.bb_crit_edge30:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp4.not = icmp eq i32 %3, 1
  br i1 %cmp4.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp9.not = icmp eq i32 %3, 2
  br i1 %cmp9.not, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top, align 4
  %mutex = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %cur_frame = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_frame, align 8
  %wWidth = getelementptr inbounds %struct.uvc_frame, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %wWidth to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %wWidth, align 2
  %conv = zext i16 %14 to i32
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %width, align 4
  %16 = load ptr, ptr %cur_frame, align 8
  %wHeight = getelementptr inbounds %struct.uvc_frame, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %wHeight to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wHeight, align 4
  %conv15 = zext i16 %18 to i32
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv15, ptr %height, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %parm) #0 align 64 {
entry:
  %numerator.i = alloca i32, align 4
  %denominator.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numerator.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %denominator.i) #9
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parm, align 4
  %type1.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp eq i32 %3, %5
  br i1 %cmp.not.i, label %if.end.i, label %entry.uvc_v4l2_get_streamparm.exit_crit_edge

entry.uvc_v4l2_get_streamparm.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_v4l2_get_streamparm.exit

if.end.i:                                         ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %dwFrameInterval.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 12, i32 3
  %6 = ptrtoint ptr %dwFrameInterval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dwFrameInterval.i, align 4
  %8 = ptrtoint ptr %numerator.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %numerator.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %9 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10000000, ptr %denominator.i, align 4
  call void @uvc_simplify_fraction(ptr noundef nonnull %numerator.i, ptr noundef nonnull %denominator.i, i32 noundef 8, i32 noundef 333) #9
  %10 = call ptr @memset(ptr %parm, i32 0, i32 204)
  %11 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type1.i, align 8
  %13 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %parm, align 4
  %14 = load i32, ptr %type1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp6.i = icmp eq i32 %14, 1
  %parm8.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %15 = ptrtoint ptr %parm8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %parm8.i, align 4
  %capturemode.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %capturemode.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %capturemode.i, align 4
  %17 = ptrtoint ptr %numerator.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numerator.i, align 4
  %timeperframe.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %timeperframe.i, align 4
  %20 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %denominator.i, align 4
  %denominator14.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %denominator14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %denominator14.i, align 4
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.uvc_v4l2_get_streamparm.exit_crit_edge

if.end.i.uvc_v4l2_get_streamparm.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_v4l2_get_streamparm.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %extendedmode.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %extendedmode.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %extendedmode.i, align 4
  %readbuffers.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %readbuffers.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %readbuffers.i, align 4
  br label %uvc_v4l2_get_streamparm.exit

uvc_v4l2_get_streamparm.exit:                     ; preds = %if.then7.i, %if.end.i.uvc_v4l2_get_streamparm.exit_crit_edge, %entry.uvc_v4l2_get_streamparm.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.uvc_v4l2_get_streamparm.exit_crit_edge ], [ 0, %if.then7.i ], [ 0, %if.end.i.uvc_v4l2_get_streamparm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %denominator.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numerator.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef %fh, ptr nocapture noundef %parm) #0 align 64 {
entry:
  %probe.i = alloca %struct.uvc_streaming_control, align 1
  %timeperframe.i = alloca %struct.v4l2_fract, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %active.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp1.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp1.not.i, label %if.end5.i, label %uvc_acquire_privileges.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state.i, align 4
  br label %if.end

uvc_acquire_privileges.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream1, align 4
  %active4.i = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 4
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active4.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active4.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active4.i, ptr %active4.i, i32 1, ptr elementtype(i32) %active4.i) #9, !srcloc !76
  br label %cleanup

if.end:                                           ; preds = %if.end5.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %probe.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timeperframe.i) #9
  %9 = getelementptr inbounds %struct.v4l2_fract, ptr %timeperframe.i, i32 0, i32 1
  %10 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parm, align 4
  %type1.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i = icmp eq i32 %11, %13
  br i1 %cmp.not.i, label %if.end9.i, label %if.end.uvc_v4l2_set_streamparm.exit_crit_edge

if.end.uvc_v4l2_set_streamparm.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_v4l2_set_streamparm.exit

if.end9.i:                                        ; preds = %if.end
  %storemerge.in.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %storemerge.i = load i64, ptr %storemerge.in.i, align 4
  %15 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %storemerge.i, ptr %timeperframe.i, align 8
  %16 = lshr i64 %storemerge.i, 32
  %17 = trunc i64 %16 to i32
  %18 = trunc i64 %storemerge.i to i32
  %call.i = tail call i32 @uvc_fraction_to_interval(i32 noundef %17, i32 noundef %18) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %19 = load i32, ptr @uvc_dbg_param, align 4
  %and.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end9.i.do.end17.i_crit_edge, label %do.end.i

if.end9.i.do.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeperframe.i, align 8
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev12.i, ptr noundef nonnull @.str.19, i32 noundef %25, i32 noundef %27, i32 noundef %call.i) #13
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end.i, %if.end9.i.do.end17.i_crit_edge
  %mutex.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %streaming.i.i.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 18, i32 0, i32 28
  %28 = ptrtoint ptr %streaming.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i.i.i = load i16, ptr %streaming.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i.i)
  %tobool19.not.i = icmp sgt i16 %bf.load.i.i.i, -1
  br i1 %tobool19.not.i, label %if.end22.i, label %if.then20.i

if.then20.i:                                      ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %uvc_v4l2_set_streamparm.exit

if.end22.i:                                       ; preds = %do.end17.i
  %cur_format.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %cur_format.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur_format.i, align 4
  %cur_frame.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_frame.i, align 8
  %ctrl.i = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 12
  %33 = call ptr @memcpy(ptr %probe.i, ptr %ctrl.i, i32 34)
  %bFrameIntervalType.i.i = getelementptr inbounds %struct.uvc_frame, ptr %32, i32 0, i32 7
  %34 = ptrtoint ptr %bFrameIntervalType.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bFrameIntervalType.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i = icmp eq i8 %35, 0
  %dwFrameInterval16.i.i = getelementptr inbounds %struct.uvc_frame, ptr %32, i32 0, i32 9
  br i1 %tobool.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end22.i
  %conv.i.i = zext i8 %35 to i32
  %36 = ptrtoint ptr %dwFrameInterval16.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dwFrameInterval16.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.056.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %best.055.i.i = phi i32 [ -1, %for.cond.preheader.i.i ], [ %cond.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %37, i32 %i.056.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %call.i)
  %cmp3.i.i = icmp ult i32 %39, %call.i
  %sub.i.i = sub i32 %call.i, %39
  %sub9.i.i = sub i32 %39, %call.i
  %cond.i.i = select i1 %cmp3.i.i, i32 %sub.i.i, i32 %sub9.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %best.055.i.i)
  %cmp10.i.i = icmp ugt i32 %cond.i.i, %best.055.i.i
  br i1 %cmp10.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.056.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %i.056.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %conv.i.i, %if.end.i.i.for.end.i.i_crit_edge ]
  %sub14.i.i = add nsw i32 %i.0.lcssa.i.i, -1
  %arrayidx15.i.i = getelementptr i32, ptr %37, i32 %sub14.i.i
  %40 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx15.i.i, align 4
  br label %uvc_try_frame_interval.exit.i

if.else.i.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %dwFrameInterval16.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dwFrameInterval16.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %arrayidx19.i.i = getelementptr i32, ptr %43, i32 1
  %46 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx19.i.i, align 4
  %arrayidx21.i.i = getelementptr i32, ptr %43, i32 2
  %48 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx21.i.i, align 4
  %sub22.i.i = sub i32 %call.i, %45
  %div54.i.i = lshr i32 %49, 1
  %add.i.i = add i32 %div54.i.i, %sub22.i.i
  %50 = urem i32 %add.i.i, %49
  %mul.i.i = sub i32 %45, %50
  %add24.i.i = add i32 %mul.i.i, %add.i.i
  %51 = tail call i32 @llvm.umin.i32(i32 %add24.i.i, i32 %47) #9
  br label %uvc_try_frame_interval.exit.i

uvc_try_frame_interval.exit.i:                    ; preds = %if.else.i.i, %for.end.i.i
  %interval.addr.1.i.i = phi i32 [ %41, %for.end.i.i ], [ %51, %if.else.i.i ]
  %dwFrameInterval.i = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe.i, i32 0, i32 3
  %52 = ptrtoint ptr %dwFrameInterval.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %interval.addr.1.i.i, ptr %dwFrameInterval.i, align 1
  %nframes.i = getelementptr inbounds %struct.uvc_format, ptr %30, i32 0, i32 9
  %53 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nframes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp27189.i = icmp eq i32 %54, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %interval.addr.1.i.i, i32 %call.i)
  %cmp28.not190.i = icmp eq i32 %interval.addr.1.i.i, %call.i
  %or.cond191.i = select i1 %cmp27189.i, i1 true, i1 %cmp28.not190.i
  br i1 %or.cond191.i, label %uvc_try_frame_interval.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

uvc_try_frame_interval.exit.i.for.end.i_crit_edge: ; preds = %uvc_try_frame_interval.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %uvc_try_frame_interval.exit.i
  %sub.i = sub i32 %interval.addr.1.i.i, %call.i
  %55 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %frame29.i = getelementptr inbounds %struct.uvc_format, ptr %30, i32 0, i32 10
  %wWidth37.i = getelementptr inbounds %struct.uvc_frame, ptr %32, i32 0, i32 2
  %wHeight45.i = getelementptr inbounds %struct.uvc_frame, ptr %32, i32 0, i32 3
  %bFrameIndex70.i = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0194.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %maxd.0193.i = phi i32 [ %55, %for.body.lr.ph.i ], [ %maxd.1.i, %cleanup.i.for.body.i_crit_edge ]
  %frame.0192.i = phi ptr [ %32, %for.body.lr.ph.i ], [ %frame.1.i, %cleanup.i.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %frame29.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %frame29.i, align 4
  %arrayidx.i = getelementptr %struct.uvc_frame, ptr %57, i32 %i.0194.i
  %cmp31.i = icmp eq ptr %arrayidx.i, %32
  br i1 %cmp31.i, label %for.body.i.cleanup.i_crit_edge, label %if.end33.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end33.i:                                       ; preds = %for.body.i
  %wWidth.i = getelementptr %struct.uvc_frame, ptr %57, i32 %i.0194.i, i32 2
  %58 = ptrtoint ptr %wWidth.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %wWidth.i, align 2
  %60 = ptrtoint ptr %wWidth37.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %wWidth37.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %cmp39.not.i = icmp eq i16 %59, %61
  br i1 %cmp39.not.i, label %lor.lhs.false.i, label %if.end33.i.cleanup.i_crit_edge

if.end33.i.cleanup.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.end33.i
  %wHeight.i = getelementptr %struct.uvc_frame, ptr %57, i32 %i.0194.i, i32 3
  %62 = ptrtoint ptr %wHeight.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %wHeight.i, align 4
  %64 = ptrtoint ptr %wHeight45.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %wHeight45.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp47.not.i = icmp eq i16 %63, %65
  br i1 %cmp47.not.i, label %if.end50.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end50.i:                                       ; preds = %lor.lhs.false.i
  %bFrameIntervalType.i157.i = getelementptr %struct.uvc_frame, ptr %57, i32 %i.0194.i, i32 7
  %66 = ptrtoint ptr %bFrameIntervalType.i157.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bFrameIntervalType.i157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i158.i = icmp eq i8 %67, 0
  %dwFrameInterval16.i159.i = getelementptr %struct.uvc_frame, ptr %57, i32 %i.0194.i, i32 9
  br i1 %tobool.not.i158.i, label %if.else.i185.i, label %for.cond.preheader.i161.i

for.cond.preheader.i161.i:                        ; preds = %if.end50.i
  %conv.i160.i = zext i8 %67 to i32
  %68 = ptrtoint ptr %dwFrameInterval16.i159.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dwFrameInterval16.i159.i, align 4
  br label %for.body.i170.i

for.body.i170.i:                                  ; preds = %if.end.i173.i.for.body.i170.i_crit_edge, %for.cond.preheader.i161.i
  %i.056.i162.i = phi i32 [ 0, %for.cond.preheader.i161.i ], [ %inc.i171.i, %if.end.i173.i.for.body.i170.i_crit_edge ]
  %best.055.i163.i = phi i32 [ -1, %for.cond.preheader.i161.i ], [ %cond.i168.i, %if.end.i173.i.for.body.i170.i_crit_edge ]
  %arrayidx.i164.i = getelementptr i32, ptr %69, i32 %i.056.i162.i
  %70 = ptrtoint ptr %arrayidx.i164.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i164.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %call.i)
  %cmp3.i165.i = icmp ult i32 %71, %call.i
  %sub.i166.i = sub i32 %call.i, %71
  %sub9.i167.i = sub i32 %71, %call.i
  %cond.i168.i = select i1 %cmp3.i165.i, i32 %sub.i166.i, i32 %sub9.i167.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i168.i, i32 %best.055.i163.i)
  %cmp10.i169.i = icmp ugt i32 %cond.i168.i, %best.055.i163.i
  br i1 %cmp10.i169.i, label %for.body.i170.i.for.end.i177.i_crit_edge, label %if.end.i173.i

for.body.i170.i.for.end.i177.i_crit_edge:         ; preds = %for.body.i170.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i177.i

if.end.i173.i:                                    ; preds = %for.body.i170.i
  %inc.i171.i = add nuw nsw i32 %i.056.i162.i, 1
  %exitcond.not.i172.i = icmp eq i32 %inc.i171.i, %conv.i160.i
  br i1 %exitcond.not.i172.i, label %if.end.i173.i.for.end.i177.i_crit_edge, label %if.end.i173.i.for.body.i170.i_crit_edge

if.end.i173.i.for.body.i170.i_crit_edge:          ; preds = %if.end.i173.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i170.i

if.end.i173.i.for.end.i177.i_crit_edge:           ; preds = %if.end.i173.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i177.i

for.end.i177.i:                                   ; preds = %if.end.i173.i.for.end.i177.i_crit_edge, %for.body.i170.i.for.end.i177.i_crit_edge
  %i.0.lcssa.i174.i = phi i32 [ %i.056.i162.i, %for.body.i170.i.for.end.i177.i_crit_edge ], [ %conv.i160.i, %if.end.i173.i.for.end.i177.i_crit_edge ]
  %sub14.i175.i = add nsw i32 %i.0.lcssa.i174.i, -1
  %arrayidx15.i176.i = getelementptr i32, ptr %69, i32 %sub14.i175.i
  %72 = ptrtoint ptr %arrayidx15.i176.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx15.i176.i, align 4
  br label %uvc_try_frame_interval.exit187.i

if.else.i185.i:                                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %dwFrameInterval16.i159.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dwFrameInterval16.i159.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %arrayidx19.i178.i = getelementptr i32, ptr %75, i32 1
  %78 = ptrtoint ptr %arrayidx19.i178.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx19.i178.i, align 4
  %arrayidx21.i179.i = getelementptr i32, ptr %75, i32 2
  %80 = ptrtoint ptr %arrayidx21.i179.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx21.i179.i, align 4
  %sub22.i180.i = sub i32 %call.i, %77
  %div54.i181.i = lshr i32 %81, 1
  %add.i182.i = add i32 %div54.i181.i, %sub22.i180.i
  %82 = urem i32 %add.i182.i, %81
  %mul.i183.i = sub i32 %77, %82
  %add24.i184.i = add i32 %mul.i183.i, %add.i182.i
  %83 = tail call i32 @llvm.umin.i32(i32 %add24.i184.i, i32 %79) #9
  br label %uvc_try_frame_interval.exit187.i

uvc_try_frame_interval.exit187.i:                 ; preds = %if.else.i185.i, %for.end.i177.i
  %interval.addr.1.i186.i = phi i32 [ %73, %for.end.i177.i ], [ %83, %if.else.i185.i ]
  %sub55.i = sub i32 %interval.addr.1.i186.i, %call.i
  %84 = tail call i32 @llvm.abs.i32(i32 %sub55.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %maxd.0193.i)
  %cmp64.not.i = icmp ult i32 %84, %maxd.0193.i
  br i1 %cmp64.not.i, label %if.end67.i, label %uvc_try_frame_interval.exit187.i.cleanup.i_crit_edge

uvc_try_frame_interval.exit187.i.cleanup.i_crit_edge: ; preds = %uvc_try_frame_interval.exit187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end67.i:                                       ; preds = %uvc_try_frame_interval.exit187.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i, align 4
  %87 = ptrtoint ptr %bFrameIndex70.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %bFrameIndex70.i, align 1
  %88 = ptrtoint ptr %dwFrameInterval.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %interval.addr.1.i186.i, ptr %dwFrameInterval.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end67.i, %uvc_try_frame_interval.exit187.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %if.end33.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %frame.1.i = phi ptr [ %arrayidx.i, %if.end67.i ], [ %frame.0192.i, %for.body.i.cleanup.i_crit_edge ], [ %frame.0192.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %frame.0192.i, %if.end33.i.cleanup.i_crit_edge ], [ %frame.0192.i, %uvc_try_frame_interval.exit187.i.cleanup.i_crit_edge ]
  %maxd.1.i = phi i32 [ %84, %if.end67.i ], [ %maxd.0193.i, %for.body.i.cleanup.i_crit_edge ], [ %maxd.0193.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %maxd.0193.i, %if.end33.i.cleanup.i_crit_edge ], [ %maxd.0193.i, %uvc_try_frame_interval.exit187.i.cleanup.i_crit_edge ]
  %inc.i = add nuw i32 %i.0194.i, 1
  %89 = ptrtoint ptr %nframes.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nframes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %90)
  %cmp27.i = icmp uge i32 %inc.i, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxd.1.i)
  %cmp28.not.i = icmp eq i32 %maxd.1.i, 0
  %or.cond.i = select i1 %cmp27.i, i1 true, i1 %cmp28.not.i
  br i1 %or.cond.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %uvc_try_frame_interval.exit.i.for.end.i_crit_edge
  %frame.0.lcssa.i = phi ptr [ %32, %uvc_try_frame_interval.exit.i.for.end.i_crit_edge ], [ %frame.1.i, %cleanup.i.for.end.i_crit_edge ]
  %call73.i = call i32 @uvc_probe_video(ptr noundef %1, ptr noundef nonnull %probe.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %if.then76.i, label %if.end78.i

if.then76.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %uvc_v4l2_set_streamparm.exit

if.end78.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = call ptr @memcpy(ptr %ctrl.i, ptr %probe.i, i32 34)
  %92 = ptrtoint ptr %cur_frame.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %frame.0.lcssa.i, ptr %cur_frame.i, align 8
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  %93 = ptrtoint ptr %dwFrameInterval.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %dwFrameInterval.i, align 1
  %95 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %timeperframe.i, align 8
  %96 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 10000000, ptr %9, align 4
  call void @uvc_simplify_fraction(ptr noundef nonnull %timeperframe.i, ptr noundef %9, i32 noundef 8, i32 noundef 333) #9
  %parm91.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %97 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %timeperframe.i, align 8
  %99 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 %98, ptr %storemerge.in.i, align 4
  %100 = ptrtoint ptr %parm91.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4096, ptr %parm91.i, align 4
  br label %uvc_v4l2_set_streamparm.exit

uvc_v4l2_set_streamparm.exit:                     ; preds = %if.end78.i, %if.then76.i, %if.then20.i, %if.end.uvc_v4l2_set_streamparm.exit_crit_edge
  %retval.0.i7 = phi i32 [ -16, %if.then20.i ], [ %call73.i, %if.then76.i ], [ -22, %if.end.uvc_v4l2_set_streamparm.exit_crit_edge ], [ 0, %if.end78.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timeperframe.i) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %probe.i) #9
  br label %cleanup

cleanup:                                          ; preds = %uvc_v4l2_set_streamparm.exit, %uvc_acquire_privileges.exit
  %retval.0 = phi i32 [ %retval.0.i7, %uvc_v4l2_set_streamparm.exit ], [ -16, %uvc_acquire_privileges.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fsize) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %nformats = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp82.not = icmp eq i32 %3, 0
  br i1 %cmp82.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %format2 = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format2, align 8
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_format, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fcc = getelementptr %struct.uvc_format, ptr %5, i32 %i.083, i32 6
  %8 = ptrtoint ptr %fcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fcc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp3 = icmp eq i32 %9, %7
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.uvc_format, ptr %5, i32 %i.083
  %cmp6 = icmp eq ptr %arrayidx, null
  br i1 %cmp6, label %for.end.cleanup_crit_edge, label %for.cond9.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond9.preheader:                              ; preds = %for.end
  %nframes = getelementptr %struct.uvc_format, ptr %5, i32 %i.083, i32 9
  %10 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nframes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1084.not = icmp eq i32 %11, 0
  br i1 %cmp1084.not, label %for.cond9.preheader.for.end38_crit_edge, label %for.body11.lr.ph

for.cond9.preheader.for.end38_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end38

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %frame12 = getelementptr %struct.uvc_format, ptr %5, i32 %i.083, i32 10
  br label %for.body11

for.body11:                                       ; preds = %for.inc36.for.body11_crit_edge, %for.body11.lr.ph
  %i.187 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc37, %for.inc36.for.body11_crit_edge ]
  %index.086 = phi i32 [ 0, %for.body11.lr.ph ], [ %index.1, %for.inc36.for.body11_crit_edge ]
  %frame.085 = phi ptr [ null, %for.body11.lr.ph ], [ %frame.1, %for.inc36.for.body11_crit_edge ]
  %tobool.not = icmp eq ptr %frame.085, null
  br i1 %tobool.not, label %for.body11.if.end27_crit_edge, label %land.lhs.true

for.body11.if.end27_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %for.body11
  %wWidth = getelementptr inbounds %struct.uvc_frame, ptr %frame.085, i32 0, i32 2
  %12 = ptrtoint ptr %wWidth to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wWidth, align 2
  %14 = ptrtoint ptr %frame12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame12, align 4
  %wWidth14 = getelementptr %struct.uvc_frame, ptr %15, i32 %i.187, i32 2
  %16 = ptrtoint ptr %wWidth14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wWidth14, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %17)
  %cmp16 = icmp eq i16 %13, %17
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true18:                                  ; preds = %land.lhs.true
  %wHeight = getelementptr inbounds %struct.uvc_frame, ptr %frame.085, i32 0, i32 3
  %18 = ptrtoint ptr %wHeight to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %wHeight, align 4
  %wHeight22 = getelementptr %struct.uvc_frame, ptr %15, i32 %i.187, i32 3
  %20 = ptrtoint ptr %wHeight22 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %wHeight22, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp24 = icmp eq i16 %19, %21
  br i1 %cmp24, label %land.lhs.true18.for.inc36_crit_edge, label %land.lhs.true18.if.end27_crit_edge

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true18.for.inc36_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc36

if.end27:                                         ; preds = %land.lhs.true18.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %for.body11.if.end27_crit_edge
  %22 = ptrtoint ptr %frame12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %frame12, align 4
  %arrayidx29 = getelementptr %struct.uvc_frame, ptr %23, i32 %i.187
  %24 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.086, i32 %25)
  %cmp31 = icmp eq i32 %index.086, %25
  br i1 %cmp31, label %if.end27.for.end38_crit_edge, label %if.end34

if.end27.for.end38_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end38

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %inc35 = add i32 %index.086, 1
  br label %for.inc36

for.inc36:                                        ; preds = %if.end34, %land.lhs.true18.for.inc36_crit_edge
  %frame.1 = phi ptr [ %frame.085, %land.lhs.true18.for.inc36_crit_edge ], [ %arrayidx29, %if.end34 ]
  %index.1 = phi i32 [ %index.086, %land.lhs.true18.for.inc36_crit_edge ], [ %inc35, %if.end34 ]
  %inc37 = add nuw i32 %i.187, 1
  %exitcond95.not = icmp eq i32 %inc37, %11
  br i1 %exitcond95.not, label %for.inc36.cleanup_crit_edge, label %for.inc36.for.body11_crit_edge

for.inc36.for.body11_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.inc36.cleanup_crit_edge:                      ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end38:                                        ; preds = %if.end27.for.end38_crit_edge, %for.cond9.preheader.for.end38_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond9.preheader.for.end38_crit_edge ], [ %i.187, %if.end27.for.end38_crit_edge ]
  %frame.2 = phi ptr [ null, %for.cond9.preheader.for.end38_crit_edge ], [ %arrayidx29, %if.end27.for.end38_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %11)
  %cmp40 = icmp eq i32 %i.1.lcssa, %11
  br i1 %cmp40, label %for.end38.cleanup_crit_edge, label %if.end43

for.end38.cleanup_crit_edge:                      ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type, align 4
  %wWidth44 = getelementptr inbounds %struct.uvc_frame, ptr %frame.2, i32 0, i32 2
  %27 = ptrtoint ptr %wWidth44 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %wWidth44, align 2
  %conv45 = zext i16 %28 to i32
  %29 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv45, ptr %29, align 4
  %wHeight46 = getelementptr inbounds %struct.uvc_frame, ptr %frame.2, i32 0, i32 3
  %31 = ptrtoint ptr %wHeight46 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %wHeight46, align 4
  %conv47 = zext i16 %32 to i32
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv47, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %for.end38.cleanup_crit_edge, %for.inc36.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.end38.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc36.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_frameintervals(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fival) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 4
  %nformats = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp129.not = icmp eq i32 %3, 0
  br i1 %cmp129.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %format2 = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format2, align 8
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %6 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_format, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fcc = getelementptr %struct.uvc_format, ptr %5, i32 %i.0130, i32 6
  %8 = ptrtoint ptr %fcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fcc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp3 = icmp eq i32 %9, %7
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.uvc_format, ptr %5, i32 %i.0130
  %cmp6 = icmp eq ptr %arrayidx, null
  br i1 %cmp6, label %for.end.cleanup_crit_edge, label %if.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %for.end
  %10 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fival, align 4
  %nframes = getelementptr %struct.uvc_format, ptr %5, i32 %i.0130, i32 9
  %12 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nframes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11131.not = icmp eq i32 %13, 0
  br i1 %cmp11131.not, label %if.end8.for.end33_crit_edge, label %for.body12.lr.ph

if.end8.for.end33_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end33

for.body12.lr.ph:                                 ; preds = %if.end8
  %frame13 = getelementptr %struct.uvc_format, ptr %5, i32 %i.0130, i32 10
  %14 = ptrtoint ptr %frame13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame13, align 4
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  br label %for.body12

for.body12:                                       ; preds = %for.inc31.for.body12_crit_edge, %for.body12.lr.ph
  %i.1134 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc32, %for.inc31.for.body12_crit_edge ]
  %index.0133 = phi i32 [ %11, %for.body12.lr.ph ], [ %index.1, %for.inc31.for.body12_crit_edge ]
  %wWidth = getelementptr %struct.uvc_frame, ptr %15, i32 %i.1134, i32 2
  %18 = ptrtoint ptr %wWidth to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %wWidth, align 2
  %conv = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp15 = icmp eq i32 %17, %conv
  br i1 %cmp15, label %land.lhs.true, label %for.body12.for.inc31_crit_edge

for.body12.for.inc31_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc31

land.lhs.true:                                    ; preds = %for.body12
  %wHeight = getelementptr %struct.uvc_frame, ptr %15, i32 %i.1134, i32 3
  %20 = ptrtoint ptr %wHeight to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %wHeight, align 4
  %conv19 = zext i16 %21 to i32
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv19)
  %cmp20 = icmp eq i32 %23, %conv19
  br i1 %cmp20, label %if.then22, label %land.lhs.true.for.inc31_crit_edge

land.lhs.true.for.inc31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc31

if.then22:                                        ; preds = %land.lhs.true
  %bFrameIntervalType = getelementptr %struct.uvc_frame, ptr %15, i32 %i.1134, i32 7
  %24 = ptrtoint ptr %bFrameIntervalType to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bFrameIntervalType, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  %narrow = select i1 %tobool.not, i8 1, i8 %25
  %conv25. = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0133, i32 %conv25.)
  %cmp26 = icmp ult i32 %index.0133, %conv25.
  br i1 %cmp26, label %for.end33.loopexit, label %if.end29

if.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %index.0133, %conv25.
  br label %for.inc31

for.inc31:                                        ; preds = %if.end29, %land.lhs.true.for.inc31_crit_edge, %for.body12.for.inc31_crit_edge
  %index.1 = phi i32 [ %sub, %if.end29 ], [ %index.0133, %land.lhs.true.for.inc31_crit_edge ], [ %index.0133, %for.body12.for.inc31_crit_edge ]
  %inc32 = add nuw i32 %i.1134, 1
  %exitcond144.not = icmp eq i32 %inc32, %13
  br i1 %exitcond144.not, label %for.inc31.cleanup_crit_edge, label %for.inc31.for.body12_crit_edge

for.inc31.for.body12_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.inc31.cleanup_crit_edge:                      ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end33.loopexit:                               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx14.le = getelementptr %struct.uvc_frame, ptr %15, i32 %i.1134
  br label %for.end33

for.end33:                                        ; preds = %for.end33.loopexit, %if.end8.for.end33_crit_edge
  %index.0.lcssa = phi i32 [ %11, %if.end8.for.end33_crit_edge ], [ %index.0133, %for.end33.loopexit ]
  %i.1.lcssa = phi i32 [ 0, %if.end8.for.end33_crit_edge ], [ %i.1134, %for.end33.loopexit ]
  %frame.2 = phi ptr [ null, %if.end8.for.end33_crit_edge ], [ %arrayidx14.le, %for.end33.loopexit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %13)
  %cmp35 = icmp eq i32 %i.1.lcssa, %13
  br i1 %cmp35, label %for.end33.cleanup_crit_edge, label %if.end38

for.end33.cleanup_crit_edge:                      ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %for.end33
  %bFrameIntervalType39 = getelementptr inbounds %struct.uvc_frame, ptr %frame.2, i32 0, i32 7
  %26 = ptrtoint ptr %bFrameIntervalType39 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bFrameIntervalType39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool40.not = icmp eq i8 %27, 0
  %type45 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type45, align 4
  %dwFrameInterval = getelementptr inbounds %struct.uvc_frame, ptr %frame.2, i32 0, i32 9
  %29 = ptrtoint ptr %dwFrameInterval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dwFrameInterval, align 4
  %arrayidx42 = getelementptr i32, ptr %30, i32 %index.0.lcssa
  %31 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx42, align 4
  %33 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %33, align 4
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10000000, ptr %denominator, align 4
  tail call void @uvc_simplify_fraction(ptr noundef %33, ptr noundef %denominator, i32 noundef 8, i32 noundef 333) #9
  br label %cleanup

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %type45, align 4
  %dwFrameInterval46 = getelementptr inbounds %struct.uvc_frame, ptr %frame.2, i32 0, i32 9
  %37 = ptrtoint ptr %dwFrameInterval46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dwFrameInterval46, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %41 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %41, align 4
  %denominator50 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %denominator50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 10000000, ptr %denominator50, align 4
  %44 = load ptr, ptr %dwFrameInterval46, align 4
  %arrayidx52 = getelementptr i32, ptr %44, i32 1
  %45 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx52, align 4
  %max = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 1
  %47 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %max, align 4
  %denominator55 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %denominator55 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 10000000, ptr %denominator55, align 4
  %49 = load ptr, ptr %dwFrameInterval46, align 4
  %arrayidx57 = getelementptr i32, ptr %49, i32 2
  %50 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx57, align 4
  %step = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 2
  %52 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %step, align 4
  %denominator60 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %denominator60 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 10000000, ptr %denominator60, align 4
  tail call void @uvc_simplify_fraction(ptr noundef %41, ptr noundef %denominator50, i32 noundef 8, i32 noundef 333) #9
  tail call void @uvc_simplify_fraction(ptr noundef %max, ptr noundef %denominator55, i32 noundef 8, i32 noundef 333) #9
  tail call void @uvc_simplify_fraction(ptr noundef %step, ptr noundef %denominator60, i32 noundef 8, i32 noundef 333) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then41, %for.end33.cleanup_crit_edge, %for.inc31.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.end33.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then41 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc31.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cond = icmp eq i32 %1, 3
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 0, ptr noundef nonnull @uvc_ctrl_sub_ev_ops) #9
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_default(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i1 noundef zeroext %valid_prio, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1067944672, label %sw.bb
    i32 -1072925407, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 84) #12
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg, align 4
  %id1.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id1.i, align 8
  %call3.i = tail call ptr @v4l2_ctrl_get_name(i32 noundef %5) #9
  %cmp4.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %arg, i32 0, i32 1
  %call6.i = tail call ptr @kmemdup(ptr noundef %name.i, i32 noundef 32, i32 noundef 3264) #9
  %name7.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6.i, ptr %name7.i, align 4
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.then5.i.free_map.i_crit_edge, label %if.then5.i.if.end11.i_crit_edge

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then5.i.free_map.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_map.i

if.end11.i:                                       ; preds = %if.then5.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %entity.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 4
  %entity13.i = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %arg, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %entity.i, ptr %entity13.i, i32 16)
  %selector.i = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %arg, i32 0, i32 3
  %9 = ptrtoint ptr %selector.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %selector.i, align 4
  %selector15.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %selector15.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %selector15.i, align 8
  %size16.i = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %arg, i32 0, i32 4
  %12 = ptrtoint ptr %size16.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %size16.i, align 1
  %size17.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %size17.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %size17.i, align 1
  %offset.i = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %arg, i32 0, i32 5
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %offset.i, align 2
  %offset18.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %offset18.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %offset18.i, align 2
  %v4l2_type.i = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %arg, i32 0, i32 6
  %18 = ptrtoint ptr %v4l2_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %v4l2_type.i, align 4
  %v4l2_type19.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %v4l2_type19.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %v4l2_type19.i, align 4
  %data_type.i = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %arg, i32 0, i32 7
  %21 = ptrtoint ptr %data_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_type.i, align 4
  %data_type20.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %data_type20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %data_type20.i, align 8
  %24 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %19, label %do.body.i [
    i32 1, label %if.end11.i.sw.epilog.i_crit_edge
    i32 2, label %if.end11.i.sw.epilog.i_crit_edge7
    i32 4, label %if.end11.i.sw.epilog.i_crit_edge8
    i32 3, label %sw.bb22.i
  ]

if.end11.i.sw.epilog.i_crit_edge8:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end11.i.sw.epilog.i_crit_edge7:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end11.i.sw.epilog.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.end11.i
  %menu_count.i = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %arg, i32 0, i32 9
  %25 = ptrtoint ptr %menu_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %menu_count.i, align 4
  %27 = add i32 %26, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %27)
  %28 = icmp ult i32 %27, -32
  br i1 %28, label %sw.bb22.i.free_map.i_crit_edge, label %if.end27.i

sw.bb22.i.free_map.i_crit_edge:                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_map.i

if.end27.i:                                       ; preds = %sw.bb22.i
  %mul.i = mul nuw nsw i32 %26, 36
  %menu_info.i = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %arg, i32 0, i32 8
  %29 = ptrtoint ptr %menu_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %menu_info.i, align 4
  %call29.i = tail call ptr @memdup_user(ptr noundef %30, i32 noundef %mul.i) #9
  %menu_info30.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %menu_info30.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call29.i, ptr %menu_info30.i, align 4
  %cmp.i.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then33.i, label %if.end36.i

if.then33.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %call29.i to i32
  br label %free_map.i

if.end36.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %menu_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %menu_count.i, align 4
  %menu_count38.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %menu_count38.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %menu_count38.i, align 8
  br label %sw.epilog.i

do.body.i:                                        ; preds = %if.end11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %36 = load i32, ptr @uvc_dbg_param, align 4
  %and.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool39.not.i, label %do.body.i.free_map.i_crit_edge, label %do.end.i

do.body.i.free_map.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_map.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %dev42.i = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev42.i, ptr noundef nonnull @.str.21, i32 noundef %19) #13
  br label %free_map.i

sw.epilog.i:                                      ; preds = %if.end36.i, %if.end11.i.sw.epilog.i_crit_edge, %if.end11.i.sw.epilog.i_crit_edge7, %if.end11.i.sw.epilog.i_crit_edge8
  %call47.i = tail call i32 @uvc_ctrl_add_mapping(ptr noundef %1, ptr noundef nonnull %call7.i.i.i) #9
  %menu_info48.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call7.i.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %menu_info48.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %menu_info48.i, align 4
  tail call void @kfree(ptr noundef %42) #9
  br label %free_map.i

free_map.i:                                       ; preds = %sw.epilog.i, %do.end.i, %do.body.i.free_map.i_crit_edge, %if.then33.i, %sw.bb22.i.free_map.i_crit_edge, %if.then5.i.free_map.i_crit_edge
  %ret.0.i = phi i32 [ %32, %if.then33.i ], [ %call47.i, %sw.epilog.i ], [ -12, %if.then5.i.free_map.i_crit_edge ], [ -22, %sw.bb22.i.free_map.i_crit_edge ], [ -25, %do.end.i ], [ -25, %do.body.i.free_map.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @uvc_xu_ctrl_query(ptr noundef %1, ptr noundef %arg) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %free_map.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.bb2 ], [ -25, %entry.cleanup_crit_edge ], [ %ret.0.i, %free_map.i ], [ -12, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_read(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %0 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stream1, align 4
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %4 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev3, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %call = tail call i32 @uvc_queue_poll(ptr noundef %queue, ptr noundef %file, ptr noundef %wait) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %4 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev3, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  %call = tail call i32 @uvc_queue_mmap(ptr noundef %queue, ptr noundef %vma) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %2 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev2, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %dev5 = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev5, align 8
  %intf = getelementptr inbounds %struct.uvc_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 4
  %call6 = tail call i32 @usb_autopm_get_interface(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end8

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 204) #12
  %cmp10 = icmp eq ptr %call7.i.i, null
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 8
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %intf13 = getelementptr inbounds %struct.uvc_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf13, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %15) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %lock = getelementptr inbounds %struct.uvc_device, ptr %13, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 8
  %users = getelementptr inbounds %struct.uvc_device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then18, label %if.end14.if.end28_crit_edge

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then18:                                        ; preds = %if.end14
  %call20 = tail call i32 @uvc_status_start(ptr noundef %17, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.then18.if.end28_crit_edge

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev5, align 8
  %lock24 = getelementptr inbounds %struct.uvc_device, ptr %21, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %lock24) #9
  %22 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev5, align 8
  %intf26 = getelementptr inbounds %struct.uvc_device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %intf26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %intf26, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %25) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end28:                                         ; preds = %if.then18.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  %26 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev5, align 8
  %users30 = getelementptr inbounds %struct.uvc_device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %users30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %users30, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %users30, align 4
  %30 = load ptr, ptr %dev5, align 8
  %lock32 = getelementptr inbounds %struct.uvc_device, ptr %30, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %lock32) #9
  %vdev = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 2
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %vdev) #9
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #9
  %chain = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chain, align 8
  %chain34 = getelementptr inbounds %struct.uvc_fh, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %chain34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %chain34, align 8
  %stream35 = getelementptr inbounds %struct.uvc_fh, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %stream35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %stream35, align 4
  %state = getelementptr inbounds %struct.uvc_fh, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %state, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %36 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then22, %if.then11, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then11 ], [ %call20, %if.then22 ], [ 0, %if.end28 ], [ %call6, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_release(ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream1 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %4 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev3, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.29) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %state.i = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 1
  br i1 %cmp.i.not, label %if.end8, label %do.end5.uvc_dismiss_privileges.exit_crit_edge

do.end5.uvc_dismiss_privileges.exit_crit_edge:    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_dismiss_privileges.exit

if.end8:                                          ; preds = %do.end5
  %queue = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 18
  tail call void @uvc_queue_release(ptr noundef %queue) #9
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i32 = icmp eq i32 %.pr, 1
  br i1 %cmp.i32, label %if.then.i, label %if.end8.uvc_dismiss_privileges.exit_crit_edge

if.end8.uvc_dismiss_privileges.exit_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_dismiss_privileges.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream1, align 4
  %active.i = getelementptr inbounds %struct.uvc_streaming, ptr %13, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #9, !srcloc !76
  br label %uvc_dismiss_privileges.exit

uvc_dismiss_privileges.exit:                      ; preds = %if.then.i, %if.end8.uvc_dismiss_privileges.exit_crit_edge, %do.end5.uvc_dismiss_privileges.exit_crit_edge
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state.i, align 4
  tail call void @v4l2_fh_del(ptr noundef %1) #9
  tail call void @v4l2_fh_exit(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %1) #9
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %private_data, align 4
  %dev11 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev11, align 8
  %lock = getelementptr inbounds %struct.uvc_device, ptr %18, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %19 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev11, align 8
  %users = getelementptr inbounds %struct.uvc_device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %users, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then13, label %uvc_dismiss_privileges.exit.if.end15_crit_edge

uvc_dismiss_privileges.exit.if.end15_crit_edge:   ; preds = %uvc_dismiss_privileges.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %uvc_dismiss_privileges.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev11, align 8
  tail call void @uvc_status_stop(ptr noundef %24) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %uvc_dismiss_privileges.exit.if.end15_crit_edge
  %25 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev11, align 8
  %lock17 = getelementptr inbounds %struct.uvc_device, ptr %26, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %lock17) #9
  %27 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev11, align 8
  %intf = getelementptr inbounds %struct.uvc_device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %30) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_v4l2_get_format(ptr noundef %stream, ptr nocapture noundef %fmt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %type1 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 9
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %cur_format = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 14
  %4 = ptrtoint ptr %cur_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_format, align 4
  %cur_frame = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 15
  %6 = ptrtoint ptr %cur_frame to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_frame, align 8
  %cmp2 = icmp eq ptr %5, null
  %cmp3 = icmp eq ptr %7, null
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.end.done_crit_edge, label %if.end5

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end5:                                          ; preds = %if.end
  %fcc = getelementptr inbounds %struct.uvc_format, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %fcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fcc, align 4
  %fmt6 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  %wWidth = getelementptr inbounds %struct.uvc_frame, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %wWidth to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %wWidth, align 2
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %fmt6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %fmt6, align 4
  %wHeight = getelementptr inbounds %struct.uvc_frame, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %wHeight to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %wHeight, align 4
  %conv8 = zext i16 %15 to i32
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv8, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field, align 4
  %18 = load i32, ptr %fcc, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %18, label %sw.default.i [
    i32 842094158, label %if.end5.sw.bb.i_crit_edge
    i32 842094169, label %if.end5.sw.bb.i_crit_edge44
    i32 842093913, label %if.end5.sw.bb.i_crit_edge45
    i32 808596557, label %if.end5.sw.bb.i_crit_edge46
  ]

if.end5.sw.bb.i_crit_edge46:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.sw.bb.i_crit_edge45:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.sw.bb.i_crit_edge44:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.sw.bb.i_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end5.sw.bb.i_crit_edge, %if.end5.sw.bb.i_crit_edge44, %if.end5.sw.bb.i_crit_edge45, %if.end5.sw.bb.i_crit_edge46
  %20 = ptrtoint ptr %wWidth to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %wWidth, align 2
  %conv.i = zext i16 %21 to i32
  br label %uvc_v4l2_get_bytesperline.exit

sw.default.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %bpp.i = getelementptr inbounds %struct.uvc_format, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bpp.i, align 2
  %conv1.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %wWidth to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %wWidth, align 2
  %conv3.i = zext i16 %25 to i32
  %mul.i = mul nuw nsw i32 %conv3.i, %conv1.i
  %div6.i = lshr i32 %mul.i, 3
  br label %uvc_v4l2_get_bytesperline.exit

uvc_v4l2_get_bytesperline.exit:                   ; preds = %sw.default.i, %sw.bb.i
  %retval.0.i = phi i32 [ %div6.i, %sw.default.i ], [ %conv.i, %sw.bb.i ]
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %bytesperline, align 4
  %dwMaxVideoFrameSize = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12, i32 9
  %27 = ptrtoint ptr %dwMaxVideoFrameSize to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %dwMaxVideoFrameSize, align 2
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %29 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.uvc_format, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %colorspace, align 4
  %colorspace14 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %colorspace14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %colorspace14, align 4
  %xfer_func = getelementptr inbounds %struct.uvc_format, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xfer_func, align 4
  %xfer_func16 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %35 = ptrtoint ptr %xfer_func16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %xfer_func16, align 4
  %ycbcr_enc = getelementptr inbounds %struct.uvc_format, ptr %5, i32 0, i32 5
  %36 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ycbcr_enc, align 4
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %38, align 4
  br label %done

done:                                             ; preds = %uvc_v4l2_get_bytesperline.exit, %if.end.done_crit_edge
  %ret.0 = phi i32 [ 0, %uvc_v4l2_get_bytesperline.exit ], [ -22, %if.end.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_v4l2_try_format(ptr noundef %stream, ptr nocapture noundef %fmt, ptr noundef %probe, ptr noundef writeonly %uvc_format, ptr noundef writeonly %uvc_frame) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %type1 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 9
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup249_crit_edge

entry.cleanup249_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup249

if.end:                                           ; preds = %entry
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %4 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end18_crit_edge, label %do.end

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixelformat, align 4
  %11 = lshr i32 %10, 24
  %12 = lshr i32 %10, 16
  %conv9 = and i32 %12, 255
  %13 = lshr i32 %10, 8
  %conv11 = and i32 %13, 255
  %conv13 = and i32 %10, 255
  %14 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev5, ptr noundef nonnull @.str.2, i32 noundef %10, i32 noundef %11, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %15, i32 noundef %17) #13
  br label %do.end18

do.end18:                                         ; preds = %do.end, %if.end.do.end18_crit_edge
  %nformats = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 10
  %18 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp19382.not = icmp eq i32 %19, 0
  br i1 %cmp19382.not, label %do.end18.for.end_crit_edge, label %for.body.lr.ph

do.end18.for.end_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end18
  %format21 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 11
  %20 = ptrtoint ptr %format21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %format21, align 8
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixelformat, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0383 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fcc23 = getelementptr %struct.uvc_format, ptr %21, i32 %i.0383, i32 6
  %24 = ptrtoint ptr %fcc23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fcc23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp26 = icmp eq i32 %25, %23
  br i1 %cmp26, label %for.body.for.end_crit_edge, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0383, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.inc.if.then33_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.then33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.le390 = getelementptr %struct.uvc_format, ptr %21, i32 %i.0383
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end18.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.0383, %for.body.for.end_crit_edge ], [ 0, %do.end18.for.end_crit_edge ]
  %format.1 = phi ptr [ %arrayidx22.le390, %for.body.for.end_crit_edge ], [ null, %do.end18.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %19)
  %cmp31 = icmp eq i32 %i.0.lcssa, %19
  br i1 %cmp31, label %for.end.if.then33_crit_edge, label %for.end.if.end37_crit_edge

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.end.if.then33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.then33:                                        ; preds = %for.end.if.then33_crit_edge, %for.inc.if.then33_crit_edge
  %def_format = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 13
  %26 = ptrtoint ptr %def_format to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %def_format, align 8
  %fcc34 = getelementptr inbounds %struct.uvc_format, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %fcc34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fcc34, align 4
  %30 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pixelformat, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %for.end.if.end37_crit_edge
  %format.2 = phi ptr [ %27, %if.then33 ], [ %format.1, %for.end.if.end37_crit_edge ]
  %31 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt2, align 4
  %height42 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height42, align 4
  %nframes = getelementptr inbounds %struct.uvc_format, ptr %format.2, i32 0, i32 9
  %35 = ptrtoint ptr %nframes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nframes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp45393.not = icmp eq i32 %36, 0
  br i1 %cmp45393.not, label %if.end37.do.body93_crit_edge, label %for.body47.lr.ph

if.end37.do.body93_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body93

for.body47.lr.ph:                                 ; preds = %if.end37
  %frame48 = getelementptr inbounds %struct.uvc_format, ptr %format.2, i32 0, i32 10
  %37 = ptrtoint ptr %frame48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %frame48, align 4
  %conv53 = and i32 %32, 65535
  %conv60 = and i32 %34, 65535
  %mul74 = mul nuw i32 %conv60, %conv53
  br label %for.body47

for.body47:                                       ; preds = %for.inc87.for.body47_crit_edge, %for.body47.lr.ph
  %i.1396 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc88, %for.inc87.for.body47_crit_edge ]
  %maxd.0395 = phi i32 [ -1, %for.body47.lr.ph ], [ %maxd.1375, %for.inc87.for.body47_crit_edge ]
  %frame.0394 = phi ptr [ null, %for.body47.lr.ph ], [ %frame.1374, %for.inc87.for.body47_crit_edge ]
  %wWidth = getelementptr %struct.uvc_frame, ptr %38, i32 %i.1396, i32 2
  %39 = ptrtoint ptr %wWidth to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %wWidth, align 2
  %wHeight = getelementptr %struct.uvc_frame, ptr %38, i32 %i.1396, i32 3
  %41 = ptrtoint ptr %wHeight to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %wHeight, align 4
  %conv52 = zext i16 %40 to i32
  %43 = tail call i32 @llvm.umin.i32(i32 %conv53, i32 %conv52)
  %conv59 = zext i16 %42 to i32
  %44 = tail call i32 @llvm.umin.i32(i32 %conv60, i32 %conv59)
  %mul71 = mul nuw i32 %conv59, %conv52
  %add = add i32 %mul71, %mul74
  %mul = mul nsw i32 %43, -2
  %mul75.neg = mul i32 %mul, %44
  %sub = add i32 %add, %mul75.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %maxd.0395)
  %cmp76 = icmp ult i32 %sub, %maxd.0395
  br i1 %cmp76, label %if.end81, label %for.body47.for.inc87_crit_edge

for.body47.for.inc87_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc87

if.end81:                                         ; preds = %for.body47
  %arrayidx80 = getelementptr %struct.uvc_frame, ptr %38, i32 %i.1396
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp82 = icmp eq i32 %sub, 0
  br i1 %cmp82, label %if.end81.for.end89_crit_edge, label %if.end81.for.inc87_crit_edge

if.end81.for.inc87_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc87

if.end81.for.end89_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end89

for.inc87:                                        ; preds = %if.end81.for.inc87_crit_edge, %for.body47.for.inc87_crit_edge
  %maxd.1375 = phi i32 [ %sub, %if.end81.for.inc87_crit_edge ], [ %maxd.0395, %for.body47.for.inc87_crit_edge ]
  %frame.1374 = phi ptr [ %arrayidx80, %if.end81.for.inc87_crit_edge ], [ %frame.0394, %for.body47.for.inc87_crit_edge ]
  %inc88 = add nuw i32 %i.1396, 1
  %exitcond414.not = icmp eq i32 %inc88, %36
  br i1 %exitcond414.not, label %for.inc87.for.end89_crit_edge, label %for.inc87.for.body47_crit_edge

for.inc87.for.body47_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47

for.inc87.for.end89_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end89

for.end89:                                        ; preds = %for.inc87.for.end89_crit_edge, %if.end81.for.end89_crit_edge
  %frame.2 = phi ptr [ %frame.1374, %for.inc87.for.end89_crit_edge ], [ %arrayidx80, %if.end81.for.end89_crit_edge ]
  %cmp90 = icmp eq ptr %frame.2, null
  br i1 %cmp90, label %for.end89.do.body93_crit_edge, label %if.end110

for.end89.do.body93_crit_edge:                    ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body93

do.body93:                                        ; preds = %for.end89.do.body93_crit_edge, %if.end37.do.body93_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %45 = load i32, ptr @uvc_dbg_param, align 4
  %and94 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %do.body93.cleanup249_crit_edge, label %do.end99

do.body93.cleanup249_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup249

do.end99:                                         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  %dev100 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %46 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev100, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %dev102 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev102, ptr noundef nonnull @.str.8, i32 noundef %32, i32 noundef %34) #13
  br label %cleanup249

if.end110:                                        ; preds = %for.end89
  %dwDefaultFrameInterval = getelementptr inbounds %struct.uvc_frame, ptr %frame.2, i32 0, i32 8
  %50 = ptrtoint ptr %dwDefaultFrameInterval to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dwDefaultFrameInterval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %52 = load i32, ptr @uvc_dbg_param, align 4
  %and112 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end110.do.end126_crit_edge, label %do.end117

if.end110.do.end126_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

do.end117:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %dev118 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %53 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev118, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %dev120 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  %.frozen = freeze i32 %51
  %div = udiv i32 %.frozen, 10
  %57 = mul i32 %div, 10
  %rem.decomposed = sub i32 %.frozen, %57
  %div121 = udiv i32 10000000, %51
  %div122 = udiv i32 100000000, %51
  %rem123 = urem i32 %div122, 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev120, ptr noundef nonnull @.str.11, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %div121, i32 noundef %rem123) #13
  br label %do.end126

do.end126:                                        ; preds = %do.end117, %if.end110.do.end126_crit_edge
  %58 = getelementptr inbounds i8, ptr %probe, i32 2
  %59 = call ptr @memset(ptr %58, i32 0, i32 32)
  %60 = ptrtoint ptr %probe to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 1, ptr %probe, align 1
  %index = getelementptr inbounds %struct.uvc_format, ptr %format.2, i32 0, i32 1
  %61 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %index, align 1
  %bFormatIndex = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 1
  %63 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %bFormatIndex, align 1
  %64 = ptrtoint ptr %frame.2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %frame.2, align 4
  %bFrameIndex127 = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 2
  %66 = ptrtoint ptr %bFrameIndex127 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %bFrameIndex127, align 1
  %bFrameIntervalType.i = getelementptr inbounds %struct.uvc_frame, ptr %frame.2, i32 0, i32 7
  %67 = ptrtoint ptr %bFrameIntervalType.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bFrameIntervalType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i = icmp eq i8 %68, 0
  %dwFrameInterval16.i = getelementptr inbounds %struct.uvc_frame, ptr %frame.2, i32 0, i32 9
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.end126
  %conv.i = zext i8 %68 to i32
  %69 = ptrtoint ptr %dwFrameInterval16.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dwFrameInterval16.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.056.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %best.055.i = phi i32 [ -1, %for.cond.preheader.i ], [ %cond.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %70, i32 %i.056.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %51)
  %cmp3.i = icmp ult i32 %72, %51
  %sub.i = sub i32 %51, %72
  %sub9.i = sub i32 %72, %51
  %cond.i = select i1 %cmp3.i, i32 %sub.i, i32 %sub9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %best.055.i)
  %cmp10.i = icmp ugt i32 %cond.i, %best.055.i
  br i1 %cmp10.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.056.i, %for.body.i.for.end.i_crit_edge ], [ %conv.i, %if.end.i.for.end.i_crit_edge ]
  %sub14.i = add nsw i32 %i.0.lcssa.i, -1
  %arrayidx15.i = getelementptr i32, ptr %70, i32 %sub14.i
  %73 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx15.i, align 4
  br label %uvc_try_frame_interval.exit

if.else.i:                                        ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %dwFrameInterval16.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dwFrameInterval16.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %arrayidx19.i = getelementptr i32, ptr %76, i32 1
  %79 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx19.i, align 4
  %arrayidx21.i = getelementptr i32, ptr %76, i32 2
  %81 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx21.i, align 4
  %sub22.i = sub i32 %51, %78
  %div54.i = lshr i32 %82, 1
  %add.i = add i32 %div54.i, %sub22.i
  %83 = urem i32 %add.i, %82
  %mul.i = sub i32 %78, %83
  %add24.i = add i32 %mul.i, %add.i
  %84 = tail call i32 @llvm.umin.i32(i32 %add24.i, i32 %80) #9
  br label %uvc_try_frame_interval.exit

uvc_try_frame_interval.exit:                      ; preds = %if.else.i, %for.end.i
  %interval.addr.1.i = phi i32 [ %74, %for.end.i ], [ %84, %if.else.i ]
  %dwFrameInterval = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 3
  %85 = ptrtoint ptr %dwFrameInterval to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %interval.addr.1.i, ptr %dwFrameInterval, align 1
  %mutex = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %dev128 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 1
  %86 = ptrtoint ptr %dev128 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev128, align 8
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %quirks, align 4
  %and129 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %uvc_try_frame_interval.exit.if.end133_crit_edge, label %if.then131

uvc_try_frame_interval.exit.if.end133_crit_edge:  ; preds = %uvc_try_frame_interval.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then131:                                       ; preds = %uvc_try_frame_interval.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dwMaxVideoFrameSize = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 12, i32 9
  %90 = ptrtoint ptr %dwMaxVideoFrameSize to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %dwMaxVideoFrameSize, align 2
  %dwMaxVideoFrameSize132 = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 9
  %92 = ptrtoint ptr %dwMaxVideoFrameSize132 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %dwMaxVideoFrameSize132, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %uvc_try_frame_interval.exit.if.end133_crit_edge
  %call134 = tail call i32 @uvc_probe_video(ptr noundef %stream, ptr noundef %probe) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp136 = icmp slt i32 %call134, 0
  br i1 %cmp136, label %if.end133.cleanup249_crit_edge, label %for.cond140.preheader

if.end133.cleanup249_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup249

for.cond140.preheader:                            ; preds = %if.end133
  %93 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp142400.not = icmp eq i32 %94, 0
  br i1 %cmp142400.not, label %for.cond140.preheader.for.end159_crit_edge, label %for.body144.lr.ph

for.cond140.preheader.for.end159_crit_edge:       ; preds = %for.cond140.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end159

for.body144.lr.ph:                                ; preds = %for.cond140.preheader
  %95 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bFormatIndex, align 1
  %format147 = getelementptr inbounds %struct.uvc_streaming, ptr %stream, i32 0, i32 11
  %97 = ptrtoint ptr %format147 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %format147, align 8
  br label %for.body144

for.body144:                                      ; preds = %for.inc157.for.body144_crit_edge, %for.body144.lr.ph
  %i.2401 = phi i32 [ 0, %for.body144.lr.ph ], [ %inc158, %for.inc157.for.body144_crit_edge ]
  %index149 = getelementptr %struct.uvc_format, ptr %98, i32 %i.2401, i32 1
  %99 = ptrtoint ptr %index149 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %index149, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %100)
  %cmp151 = icmp eq i8 %96, %100
  br i1 %cmp151, label %if.then153, label %for.inc157

if.then153:                                       ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx148 = getelementptr %struct.uvc_format, ptr %98, i32 %i.2401
  br label %for.end159

for.inc157:                                       ; preds = %for.body144
  %inc158 = add nuw i32 %i.2401, 1
  %exitcond415.not = icmp eq i32 %inc158, %94
  br i1 %exitcond415.not, label %for.inc157.do.body164_crit_edge, label %for.inc157.for.body144_crit_edge

for.inc157.for.body144_crit_edge:                 ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body144

for.inc157.do.body164_crit_edge:                  ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body164

for.end159:                                       ; preds = %if.then153, %for.cond140.preheader.for.end159_crit_edge
  %i.2379 = phi i32 [ %i.2401, %if.then153 ], [ 0, %for.cond140.preheader.for.end159_crit_edge ]
  %format.3 = phi ptr [ %arrayidx148, %if.then153 ], [ %format.2, %for.cond140.preheader.for.end159_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2379, i32 %94)
  %cmp161 = icmp eq i32 %i.2379, %94
  br i1 %cmp161, label %for.end159.do.body164_crit_edge, label %for.end159.if.end179_crit_edge

for.end159.if.end179_crit_edge:                   ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

for.end159.do.body164_crit_edge:                  ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body164

do.body164:                                       ; preds = %for.end159.do.body164_crit_edge, %for.inc157.do.body164_crit_edge
  %format.3426 = phi ptr [ %format.3, %for.end159.do.body164_crit_edge ], [ %format.2, %for.inc157.do.body164_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %101 = load i32, ptr @uvc_dbg_param, align 4
  %and165 = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %do.body164.if.end179_crit_edge, label %do.end170

do.body164.if.end179_crit_edge:                   ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

do.end170:                                        ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %dev128 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev128, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %dev173 = getelementptr inbounds %struct.usb_device, ptr %105, i32 0, i32 15
  %106 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bFormatIndex, align 1
  %conv175 = zext i8 %107 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev173, ptr noundef nonnull @.str.14, i32 noundef %conv175) #13
  br label %if.end179

if.end179:                                        ; preds = %do.end170, %do.body164.if.end179_crit_edge, %for.end159.if.end179_crit_edge
  %format.3425 = phi ptr [ %format.3426, %do.body164.if.end179_crit_edge ], [ %format.3426, %do.end170 ], [ %format.3, %for.end159.if.end179_crit_edge ]
  %nframes181 = getelementptr inbounds %struct.uvc_format, ptr %format.3425, i32 0, i32 9
  %108 = ptrtoint ptr %nframes181 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nframes181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp182404.not = icmp eq i32 %109, 0
  br i1 %cmp182404.not, label %if.end179.for.end199_crit_edge, label %for.body184.lr.ph

if.end179.for.end199_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end199

for.body184.lr.ph:                                ; preds = %if.end179
  %110 = ptrtoint ptr %bFrameIndex127 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bFrameIndex127, align 1
  %frame187 = getelementptr inbounds %struct.uvc_format, ptr %format.3425, i32 0, i32 10
  %112 = ptrtoint ptr %frame187 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %frame187, align 4
  br label %for.body184

for.body184:                                      ; preds = %for.inc197.for.body184_crit_edge, %for.body184.lr.ph
  %i.3405 = phi i32 [ 0, %for.body184.lr.ph ], [ %inc198, %for.inc197.for.body184_crit_edge ]
  %arrayidx188 = getelementptr %struct.uvc_frame, ptr %113, i32 %i.3405
  %114 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx188, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %111, i8 %115)
  %cmp191 = icmp eq i8 %111, %115
  br i1 %cmp191, label %for.body184.for.end199_crit_edge, label %for.inc197

for.body184.for.end199_crit_edge:                 ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end199

for.inc197:                                       ; preds = %for.body184
  %inc198 = add nuw i32 %i.3405, 1
  %exitcond416.not = icmp eq i32 %inc198, %109
  br i1 %exitcond416.not, label %for.inc197.do.body204_crit_edge, label %for.inc197.for.body184_crit_edge

for.inc197.for.body184_crit_edge:                 ; preds = %for.inc197
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body184

for.inc197.do.body204_crit_edge:                  ; preds = %for.inc197
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body204

for.end199:                                       ; preds = %for.body184.for.end199_crit_edge, %if.end179.for.end199_crit_edge
  %i.3.lcssa = phi i32 [ 0, %if.end179.for.end199_crit_edge ], [ %i.3405, %for.body184.for.end199_crit_edge ]
  %frame.3 = phi ptr [ %frame.2, %if.end179.for.end199_crit_edge ], [ %arrayidx188, %for.body184.for.end199_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3.lcssa, i32 %109)
  %cmp201 = icmp eq i32 %i.3.lcssa, %109
  br i1 %cmp201, label %for.end199.do.body204_crit_edge, label %for.end199.if.end219_crit_edge

for.end199.if.end219_crit_edge:                   ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

for.end199.do.body204_crit_edge:                  ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body204

do.body204:                                       ; preds = %for.end199.do.body204_crit_edge, %for.inc197.do.body204_crit_edge
  %frame.3435 = phi ptr [ %frame.3, %for.end199.do.body204_crit_edge ], [ %frame.2, %for.inc197.do.body204_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %116 = load i32, ptr @uvc_dbg_param, align 4
  %and205 = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %do.body204.if.end219_crit_edge, label %do.end210

do.body204.if.end219_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

do.end210:                                        ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %dev128 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev128, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 8
  %dev213 = getelementptr inbounds %struct.usb_device, ptr %120, i32 0, i32 15
  %121 = ptrtoint ptr %bFrameIndex127 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bFrameIndex127, align 1
  %conv215 = zext i8 %122 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev213, ptr noundef nonnull @.str.17, i32 noundef %conv215) #13
  br label %if.end219

if.end219:                                        ; preds = %do.end210, %do.body204.if.end219_crit_edge, %for.end199.if.end219_crit_edge
  %frame.3434 = phi ptr [ %frame.3435, %do.body204.if.end219_crit_edge ], [ %frame.3435, %do.end210 ], [ %frame.3, %for.end199.if.end219_crit_edge ]
  %wWidth220 = getelementptr inbounds %struct.uvc_frame, ptr %frame.3434, i32 0, i32 2
  %123 = ptrtoint ptr %wWidth220 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %wWidth220, align 2
  %conv221 = zext i16 %124 to i32
  %125 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv221, ptr %fmt2, align 4
  %wHeight224 = getelementptr inbounds %struct.uvc_frame, ptr %frame.3434, i32 0, i32 3
  %126 = ptrtoint ptr %wHeight224 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %wHeight224, align 4
  %conv225 = zext i16 %127 to i32
  %128 = ptrtoint ptr %height42 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv225, ptr %height42, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %129 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %field, align 4
  %fcc.i = getelementptr inbounds %struct.uvc_format, ptr %format.3425, i32 0, i32 6
  %130 = ptrtoint ptr %fcc.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %fcc.i, align 4
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %131, label %sw.default.i [
    i32 842094158, label %if.end219.sw.bb.i_crit_edge
    i32 842094169, label %if.end219.sw.bb.i_crit_edge452
    i32 842093913, label %if.end219.sw.bb.i_crit_edge453
    i32 808596557, label %if.end219.sw.bb.i_crit_edge454
  ]

if.end219.sw.bb.i_crit_edge454:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end219.sw.bb.i_crit_edge453:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end219.sw.bb.i_crit_edge452:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end219.sw.bb.i_crit_edge:                      ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end219.sw.bb.i_crit_edge, %if.end219.sw.bb.i_crit_edge452, %if.end219.sw.bb.i_crit_edge453, %if.end219.sw.bb.i_crit_edge454
  %133 = ptrtoint ptr %wWidth220 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %wWidth220, align 2
  %conv.i369 = zext i16 %134 to i32
  br label %uvc_v4l2_get_bytesperline.exit

sw.default.i:                                     ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  %bpp.i = getelementptr inbounds %struct.uvc_format, ptr %format.3425, i32 0, i32 2
  %135 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %bpp.i, align 2
  %conv1.i = zext i8 %136 to i32
  %137 = ptrtoint ptr %wWidth220 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %wWidth220, align 2
  %conv3.i = zext i16 %138 to i32
  %mul.i370 = mul nuw nsw i32 %conv3.i, %conv1.i
  %div6.i = lshr i32 %mul.i370, 3
  br label %uvc_v4l2_get_bytesperline.exit

uvc_v4l2_get_bytesperline.exit:                   ; preds = %sw.default.i, %sw.bb.i
  %retval.0.i = phi i32 [ %div6.i, %sw.default.i ], [ %conv.i369, %sw.bb.i ]
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %139 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %retval.0.i, ptr %bytesperline, align 4
  %dwMaxVideoFrameSize231 = getelementptr inbounds %struct.uvc_streaming_control, ptr %probe, i32 0, i32 9
  %140 = ptrtoint ptr %dwMaxVideoFrameSize231 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %dwMaxVideoFrameSize231, align 1
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %142 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %sizeimage, align 4
  %143 = ptrtoint ptr %fcc.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %fcc.i, align 4
  %145 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.uvc_format, ptr %format.3425, i32 0, i32 3
  %146 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %colorspace, align 4
  %colorspace237 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %148 = ptrtoint ptr %colorspace237 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %colorspace237, align 4
  %xfer_func = getelementptr inbounds %struct.uvc_format, ptr %format.3425, i32 0, i32 4
  %149 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %xfer_func, align 4
  %xfer_func239 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %151 = ptrtoint ptr %xfer_func239 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %xfer_func239, align 4
  %ycbcr_enc = getelementptr inbounds %struct.uvc_format, ptr %format.3425, i32 0, i32 5
  %152 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ycbcr_enc, align 4
  %154 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %153, ptr %154, align 4
  %cmp241.not = icmp eq ptr %uvc_format, null
  br i1 %cmp241.not, label %uvc_v4l2_get_bytesperline.exit.if.end244_crit_edge, label %if.then243

uvc_v4l2_get_bytesperline.exit.if.end244_crit_edge: ; preds = %uvc_v4l2_get_bytesperline.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end244

if.then243:                                       ; preds = %uvc_v4l2_get_bytesperline.exit
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %uvc_format to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %format.3425, ptr %uvc_format, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %uvc_v4l2_get_bytesperline.exit.if.end244_crit_edge
  %cmp245.not = icmp eq ptr %uvc_frame, null
  br i1 %cmp245.not, label %if.end244.cleanup249_crit_edge, label %if.then247

if.end244.cleanup249_crit_edge:                   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup249

if.then247:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %uvc_frame to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %frame.3434, ptr %uvc_frame, align 4
  br label %cleanup249

cleanup249:                                       ; preds = %if.then247, %if.end244.cleanup249_crit_edge, %if.end133.cleanup249_crit_edge, %do.end99, %do.body93.cleanup249_crit_edge, %entry.cleanup249_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup249_crit_edge ], [ -22, %do.end99 ], [ -22, %do.body93.cleanup249_crit_edge ], [ %call134, %if.end244.cleanup249_crit_edge ], [ %call134, %if.then247 ], [ %call134, %if.end133.cleanup249_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_allocated(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_probe_video(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_request_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_export_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_dequeue_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_create_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_streamon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_ctrl(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_v4l2_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_is_accessible(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__uvc_ctrl_commit(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ioctl_s_try_ext_ctrls(ptr noundef %handle, ptr noundef %ctrls, i32 noundef %ioctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controls = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 5
  %0 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controls, align 4
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %handle, i32 0, i32 1
  %2 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain1, align 4
  %count.i = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072146873, i32 %ioctl)
  %cmp1.i = icmp eq i32 %ioctl, -1072146873
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ctrl.013.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %ctrl.013.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ctrl.013.i, align 1
  %call.i = tail call i32 @uvc_ctrl_is_accessible(ptr noundef %3, i32 noundef %7, i1 noundef zeroext %cmp1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.v4l2_ext_control, ptr %ctrl.013.i, i32 1
  %inc.i = add nuw i32 %i.014.i, 1
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ], [ %i.014.i, %for.body.i.for.end.i_crit_edge ]
  %ret.1.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ], [ %call.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072146871, i32 %ioctl)
  %cmp2.i = icmp eq i32 %ioctl, -1072146871
  br i1 %cmp2.i, label %for.end.i.uvc_ctrl_check_access.exit_crit_edge, label %cond.false.i

for.end.i.uvc_ctrl_check_access.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uvc_ctrl_check_access.exit

cond.false.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  br label %uvc_ctrl_check_access.exit

uvc_ctrl_check_access.exit:                       ; preds = %cond.false.i, %for.end.i.uvc_ctrl_check_access.exit_crit_edge
  %cond.i = phi i32 [ %11, %cond.false.i ], [ %i.0.lcssa.i, %for.end.i.uvc_ctrl_check_access.exit_crit_edge ]
  %error_idx.i = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 2
  %12 = ptrtoint ptr %error_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i, ptr %error_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp = icmp slt i32 %ret.1.i, 0
  br i1 %cmp, label %uvc_ctrl_check_access.exit.cleanup_crit_edge, label %if.end

uvc_ctrl_check_access.exit.cleanup_crit_edge:     ; preds = %uvc_ctrl_check_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %uvc_ctrl_check_access.exit
  %call2 = tail call i32 @uvc_ctrl_begin(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp647.not = icmp eq i32 %14, 0
  br i1 %cmp647.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ctrl.048 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %for.cond.preheader.for.body_crit_edge ]
  %call7 = tail call i32 @uvc_ctrl_set(ptr noundef %handle, ptr noundef %ctrl.048) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  %call.i43 = tail call i32 @__uvc_ctrl_commit(ptr noundef %handle, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072146872, i32 %ioctl)
  %cmp11 = icmp eq i32 %ioctl, -1072146872
  br i1 %cmp11, label %cond.true, label %if.then9.cond.end_crit_edge

if.then9.cond.end_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then9.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.true ], [ %i.049, %if.then9.cond.end_crit_edge ]
  %17 = ptrtoint ptr %error_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %error_idx.i, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.v4l2_ext_control, ptr %ctrl.048, i32 1
  %inc = add nuw i32 %i.049, 1
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i, align 4
  %cmp6 = icmp ult i32 %inc, %19
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %20 = ptrtoint ptr %error_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %error_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072146872, i32 %ioctl)
  %cmp15 = icmp eq i32 %ioctl, -1072146872
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i44 = tail call i32 @__uvc_ctrl_commit(ptr noundef %handle, i32 noundef 0, ptr noundef %ctrls) #9
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i45 = tail call i32 @__uvc_ctrl_commit(ptr noundef %handle, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %cond.end, %if.end.cleanup_crit_edge, %uvc_ctrl_check_access.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %cond.end ], [ %call.i44, %if.then16 ], [ %call.i45, %if.else ], [ %ret.1.i, %uvc_ctrl_check_access.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_v4l2_menu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_simplify_fraction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_fraction_to_interval(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_xu_ctrl_query(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_add_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_status_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_queue_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_status_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @uvc_ioctl_ops, !1, !"uvc_ioctl_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 1499, i32 29}
!2 = !{ptr @uvc_fops, !3, !"uvc_fops", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 1536, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 632, i32 23}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/usb.h", i32 912, i32 31}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 175, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @uvc_v4l2_try_format._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @uvc_v4l2_try_format._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 218, i32 3}
!18 = !{ptr @uvc_v4l2_try_format._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @uvc_v4l2_try_format._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 225, i32 2}
!22 = !{ptr @uvc_v4l2_try_format._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @uvc_v4l2_try_format._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 272, i32 3}
!26 = !{ptr @uvc_v4l2_try_format._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @uvc_v4l2_try_format._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 284, i32 3}
!30 = !{ptr @uvc_v4l2_try_format._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @uvc_v4l2_try_format._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 428, i32 2}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @uvc_v4l2_set_streamparm._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @uvc_v4l2_set_streamparm._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 86, i32 3}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @uvc_ioctl_ctrl_map._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @uvc_ioctl_ctrl_map._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 1461, i32 2}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @uvc_v4l2_read._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @uvc_v4l2_read._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 1480, i32 2}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @uvc_v4l2_poll._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @uvc_v4l2_poll._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 1470, i32 2}
!54 = !{ptr @uvc_v4l2_mmap._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @uvc_v4l2_mmap._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 561, i32 2}
!58 = !{ptr @uvc_v4l2_open._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @uvc_v4l2_open._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/uvc/uvc_v4l2.c", i32 603, i32 2}
!62 = !{ptr @uvc_v4l2_release._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @uvc_v4l2_release._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148354826}
!74 = !{i64 2148270135, i64 2148270167, i64 2148270196, i64 2148270230, i64 2148270261, i64 2148270284}
!75 = !{i64 2148355055}
!76 = !{i64 2148271880, i64 2148271906, i64 2148271935, i64 2148271969, i64 2148272000, i64 2148272023}
!77 = !{!"auto-init"}
