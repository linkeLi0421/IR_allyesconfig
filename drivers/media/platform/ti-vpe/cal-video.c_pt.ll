; ModuleID = '/llk/IR_all_yes/drivers/media/platform/ti-vpe/cal-video.c_pt.bc'
source_filename = "../drivers/media/platform/ti-vpe/cal-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cal_format_info = type { i32, i32, i8, i8 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.cal_ctx = type { %struct.v4l2_ctrl_handler, %struct.video_device, %struct.media_pad, ptr, ptr, %struct.mutex, %struct.cal_dmaqueue, ptr, %struct.v4l2_format, ptr, i32, i32, %struct.vb2_queue, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.list_head = type { ptr, ptr }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.84 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.81], %struct.media_entity_enum, i32 }
%struct.anon.81 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cal_dmaqueue = type { %struct.spinlock, %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cal_dev = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [2 x ptr], i32, [8 x ptr], %struct.media_device, %struct.v4l2_device, %struct.v4l2_async_notifier, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.cal_camerarx = type { ptr, ptr, [4 x ptr], ptr, i32, %struct.v4l2_fwnode_endpoint, ptr, ptr, ptr, %struct.media_pipeline, %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.mutex, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.115, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.115 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cal_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.112, [2 x i32] }
%union.anon.112 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@cal_mc_api = external dso_local local_unnamed_addr global i8, align 1
@cal_ctx_v4l2_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 926, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ctx%u: Failed to init formats: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cal_ctx_v4l2_register\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/ti-vpe/cal-video.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_register._entry_ptr = internal global ptr @cal_ctx_v4l2_register._entry, section ".printk_index", align 4
@cal_ctx_v4l2_register._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 933, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ctx%u: Failed to add source ctrl handler\0A\00", [54 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_register._entry_ptr.7 = internal global ptr @cal_ctx_v4l2_register._entry.5, section ".printk_index", align 4
@cal_ctx_v4l2_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 939, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ctx%u: Failed to init format: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_register._entry_ptr.10 = internal global ptr @cal_ctx_v4l2_register._entry.8, section ".printk_index", align 4
@cal_video_nr = external dso_local local_unnamed_addr global i32, align 4
@cal_ctx_v4l2_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 946, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ctx%u: Failed to register video device\0A\00", [56 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_register._entry_ptr.13 = internal global ptr @cal_ctx_v4l2_register._entry.11, section ".printk_index", align 4
@cal_ctx_v4l2_register._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 957, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ctx%u: Failed to create media link for context %u\0A\00", [45 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_register._entry_ptr.16 = internal global ptr @cal_ctx_v4l2_register._entry.14, section ".printk_index", align 4
@cal_ctx_v4l2_register._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 963, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ctx%u: V4L2 device registered as %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_register._entry_ptr.20 = internal global ptr @cal_ctx_v4l2_register._entry.17, section ".printk_index", align 4
@cal_debug = external dso_local local_unnamed_addr global i32, align 4
@cal_ctx_v4l2_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 971, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ctx%u: unregistering %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cal_ctx_v4l2_unregister\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_unregister._entry_ptr = internal global ptr @cal_ctx_v4l2_unregister._entry, section ".printk_index", align 4
@cal_ctx_v4l2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctx->dma.lock\00", [17 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->mutex\00", [20 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctx->dma.wait\00", [17 x i8] zeroinitializer }, align 32
@cal_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @cal_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @cal_buffer_prepare, ptr null, ptr null, ptr @cal_start_streaming, ptr @cal_stop_streaming, ptr @cal_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cal_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAL output %u\00", [18 x i8] zeroinitializer }, align 32
@cal_ioctl_mc_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cal_querycap, ptr @cal_mc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_mc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_mc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @cal_mc_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@cal_ioctl_legacy_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cal_querycap, ptr @cal_legacy_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_legacy_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_legacy_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @cal_legacy_enum_input, ptr @cal_legacy_g_input, ptr @cal_legacy_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cal_legacy_g_parm, ptr @cal_legacy_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @cal_legacy_enum_framesizes, ptr @cal_legacy_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cal_video:1024:(hdl)->_lock\00", [36 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1026, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ctx%u: Failed to init ctrl handler\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cal_ctx_v4l2_init\00", [46 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init._entry_ptr = internal global ptr @cal_ctx_v4l2_init._entry, section ".printk_index", align 4
@cal_num_formats = external dso_local local_unnamed_addr constant i32, align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cal_ctx_v4l2_init_formats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 840, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ctx%u: Error enumerating mbus codes in subdev %s: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cal_ctx_v4l2_init_formats\00", [38 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init_formats._entry_ptr = internal global ptr @cal_ctx_v4l2_init_formats._entry, section ".printk_index", align 4
@cal_ctx_v4l2_init_formats._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 846, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ctx%u: subdev %s: code: %04x idx: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init_formats._entry_ptr.37 = internal global ptr @cal_ctx_v4l2_init_formats._entry.35, section ".printk_index", align 4
@cal_formats = external dso_local constant [0 x %struct.cal_format_info], align 4
@cal_ctx_v4l2_init_formats._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 856, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ctx%u: matched fourcc: %s: code: %04x idx: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init_formats._entry_ptr.40 = internal global ptr @cal_ctx_v4l2_init_formats._entry.38, section ".printk_index", align 4
@cal_ctx_v4l2_init_formats._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ctx%u: No suitable format reported by subdev %s\0A\00", [47 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init_formats._entry_ptr.43 = internal global ptr @cal_ctx_v4l2_init_formats._entry.41, section ".printk_index", align 4
@cal_ctx_v4l2_init_formats._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 875, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ctx%u: mbus code format (0x%08x) not found.\0A\00", [51 x i8] zeroinitializer }, align 32
@cal_ctx_v4l2_init_formats._entry_ptr.46 = internal global ptr @cal_ctx_v4l2_init_formats._entry.44, section ".printk_index", align 4
@fourcc_to_str.code = internal global { [5 x i8], [27 x i8] } zeroinitializer, align 32
@__subdev_get_format._entry = internal constant %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 138, ptr @.str.23, ptr @.str.4 }, align 1
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ctx%u: %s %dx%d code:%04X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__subdev_get_format\00", [44 x i8] zeroinitializer }, align 32
@__subdev_get_format._entry_ptr = internal global ptr @__subdev_get_format._entry, section ".printk_index", align 4
@cal_calc_format_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 189, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ctx%u: %s: fourcc: %s size: %dx%d bpl:%d img_size:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cal_calc_format_size\00", [43 x i8] zeroinitializer }, align 32
@cal_calc_format_size._entry_ptr = internal global ptr @cal_calc_format_size._entry, section ".printk_index", align 4
@cal_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 619, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ctx%u: nbuffers=%d, size=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cal_queue_setup\00", [16 x i8] zeroinitializer }, align 32
@cal_queue_setup._entry_ptr = internal global ptr @cal_queue_setup._entry, section ".printk_index", align 4
@cal_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 635, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ctx%u: data will not fit into plane (%lu < %lu)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cal_buffer_prepare\00", [45 x i8] zeroinitializer }, align 32
@cal_buffer_prepare._entry_ptr = internal global ptr @cal_buffer_prepare._entry, section ".printk_index", align 4
@cal_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 716, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ctx%u: Failed to start media pipeline: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cal_start_streaming\00", [44 x i8] zeroinitializer }, align 32
@cal_start_streaming._entry_ptr = internal global ptr @cal_start_streaming._entry, section ".printk_index", align 4
@cal_start_streaming._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 727, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ctx%u: Format mismatch between CAMERARX and video node\0A\00", [40 x i8] zeroinitializer }, align 32
@cal_start_streaming._entry_ptr.60 = internal global ptr @cal_start_streaming._entry.58, section ".printk_index", align 4
@cal_start_streaming._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 733, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ctx%u: Failed to prepare context: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cal_start_streaming._entry_ptr.63 = internal global ptr @cal_start_streaming._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cal\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@cal_mc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 534, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ctx%u: %s device busy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cal_mc_s_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@cal_mc_s_fmt_vid_cap._entry_ptr = internal global ptr @cal_mc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@cal_mc_try_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 515, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ctx%u: %s: %s %ux%u (bytesperline %u sizeimage %u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cal_mc_try_fmt\00", [17 x i8] zeroinitializer }, align 32
@cal_mc_try_fmt._entry_ptr = internal global ptr @cal_mc_try_fmt._entry, section ".printk_index", align 4
@cal_mc_enum_framesizes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 559, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ctx%u: Invalid pixel format 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cal_mc_enum_framesizes\00", [41 x i8] zeroinitializer }, align 32
@cal_mc_enum_framesizes._entry_ptr = internal global ptr @cal_mc_enum_framesizes._entry, section ".printk_index", align 4
@cal_legacy_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.72, ptr @.str.2, i32 265, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cal_legacy_s_fmt_vid_cap\00", [39 x i8] zeroinitializer }, align 32
@cal_legacy_s_fmt_vid_cap._entry_ptr = internal global ptr @cal_legacy_s_fmt_vid_cap._entry, section ".printk_index", align 4
@cal_legacy_s_fmt_vid_cap._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 285, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ctx%u: %s subdev changed format on us, this should not happen\0A\00", [33 x i8] zeroinitializer }, align 32
@cal_legacy_s_fmt_vid_cap._entry_ptr.75 = internal global ptr @cal_legacy_s_fmt_vid_cap._entry.73, section ".printk_index", align 4
@__subdev_set_format._entry = internal constant %struct.pi_entry { ptr @.str.47, ptr @.str.76, ptr @.str.2, i32 159, ptr @.str.23, ptr @.str.4 }, align 1
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__subdev_set_format\00", [44 x i8] zeroinitializer }, align 32
@__subdev_set_format._entry_ptr = internal global ptr @__subdev_set_format._entry, section ".printk_index", align 4
@cal_legacy_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 203, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ctx%u: Fourcc format (0x%08x) not found.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cal_legacy_try_fmt_vid_cap\00", [37 x i8] zeroinitializer }, align 32
@cal_legacy_try_fmt_vid_cap._entry_ptr = internal global ptr @cal_legacy_try_fmt_vid_cap._entry, section ".printk_index", align 4
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Camera %u\00", [22 x i8] zeroinitializer }, align 32
@cal_legacy_enum_framesizes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 315, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ctx%u: Invalid pixel code: %x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cal_legacy_enum_framesizes\00", [37 x i8] zeroinitializer }, align 32
@cal_legacy_enum_framesizes._entry_ptr = internal global ptr @cal_legacy_enum_framesizes._entry, section ".printk_index", align 4
@cal_legacy_enum_framesizes._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 331, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ctx%u: %s: index: %d code: %x W:[%d,%d] H:[%d,%d]\0A\00", [45 x i8] zeroinitializer }, align 32
@cal_legacy_enum_framesizes._entry_ptr.84 = internal global ptr @cal_legacy_enum_framesizes._entry.82, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 926, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 933, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 939, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 946, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 956, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 962, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 970, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 983, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 984, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 985, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"cal_video_qops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 791, i32 29 }
@___asan_gen_.169 = private unnamed_addr constant [9 x i8] c"cal_fops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 806, i32 42 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1009, i32 41 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"cal_ioctl_mc_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 576, i32 36 }
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"cal_ioctl_legacy_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 405, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1024, i32 9 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1026, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 839, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 844, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 853, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 863, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 874, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 31, i32 14 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 137, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 186, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 619, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 633, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 716, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 726, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 733, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 52, i32 23 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 56, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 534, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 512, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 558, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 265, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 283, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 158, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 202, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 347, i32 21 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 314, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [45 x i8] c"../drivers/media/platform/ti-vpe/cal-video.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 329, i32 2 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__subdev_get_format._entry, ptr @__subdev_get_format._entry_ptr, ptr @__subdev_set_format._entry, ptr @__subdev_set_format._entry_ptr, ptr @cal_buffer_prepare._entry, ptr @cal_buffer_prepare._entry_ptr, ptr @cal_calc_format_size._entry, ptr @cal_calc_format_size._entry_ptr, ptr @cal_ctx_v4l2_init._entry, ptr @cal_ctx_v4l2_init._entry_ptr, ptr @cal_ctx_v4l2_init_formats._entry, ptr @cal_ctx_v4l2_init_formats._entry.35, ptr @cal_ctx_v4l2_init_formats._entry.38, ptr @cal_ctx_v4l2_init_formats._entry.41, ptr @cal_ctx_v4l2_init_formats._entry.44, ptr @cal_ctx_v4l2_init_formats._entry_ptr, ptr @cal_ctx_v4l2_init_formats._entry_ptr.37, ptr @cal_ctx_v4l2_init_formats._entry_ptr.40, ptr @cal_ctx_v4l2_init_formats._entry_ptr.43, ptr @cal_ctx_v4l2_init_formats._entry_ptr.46, ptr @cal_ctx_v4l2_register._entry, ptr @cal_ctx_v4l2_register._entry.11, ptr @cal_ctx_v4l2_register._entry.14, ptr @cal_ctx_v4l2_register._entry.17, ptr @cal_ctx_v4l2_register._entry.5, ptr @cal_ctx_v4l2_register._entry.8, ptr @cal_ctx_v4l2_register._entry_ptr, ptr @cal_ctx_v4l2_register._entry_ptr.10, ptr @cal_ctx_v4l2_register._entry_ptr.13, ptr @cal_ctx_v4l2_register._entry_ptr.16, ptr @cal_ctx_v4l2_register._entry_ptr.20, ptr @cal_ctx_v4l2_register._entry_ptr.7, ptr @cal_ctx_v4l2_unregister._entry, ptr @cal_ctx_v4l2_unregister._entry_ptr, ptr @cal_legacy_enum_framesizes._entry, ptr @cal_legacy_enum_framesizes._entry.82, ptr @cal_legacy_enum_framesizes._entry_ptr, ptr @cal_legacy_enum_framesizes._entry_ptr.84, ptr @cal_legacy_s_fmt_vid_cap._entry, ptr @cal_legacy_s_fmt_vid_cap._entry.73, ptr @cal_legacy_s_fmt_vid_cap._entry_ptr, ptr @cal_legacy_s_fmt_vid_cap._entry_ptr.75, ptr @cal_legacy_try_fmt_vid_cap._entry, ptr @cal_legacy_try_fmt_vid_cap._entry_ptr, ptr @cal_mc_enum_framesizes._entry, ptr @cal_mc_enum_framesizes._entry_ptr, ptr @cal_mc_s_fmt_vid_cap._entry, ptr @cal_mc_s_fmt_vid_cap._entry_ptr, ptr @cal_mc_try_fmt._entry, ptr @cal_mc_try_fmt._entry_ptr, ptr @cal_queue_setup._entry, ptr @cal_queue_setup._entry_ptr, ptr @cal_start_streaming._entry, ptr @cal_start_streaming._entry.58, ptr @cal_start_streaming._entry.61, ptr @cal_start_streaming._entry_ptr, ptr @cal_start_streaming._entry_ptr.60, ptr @cal_start_streaming._entry_ptr.63, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @cal_ctx_v4l2_init.__key, ptr @.str.24, ptr @cal_ctx_v4l2_init.__key.25, ptr @.str.26, ptr @cal_ctx_v4l2_init.__key.27, ptr @.str.28, ptr @cal_video_qops, ptr @cal_fops, ptr @.str.29, ptr @cal_ioctl_mc_ops, ptr @cal_ioctl_legacy_ops, ptr @cal_ctx_v4l2_init._key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @fourcc_to_str.code, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_register._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_register._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_register._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ioctl_mc_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ioctl_legacy_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init_formats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init_formats._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init_formats._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init_formats._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_ctx_v4l2_init_formats._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fourcc_to_str.code to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_calc_format_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_start_streaming._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_start_streaming._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_mc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_mc_try_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_mc_enum_framesizes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_legacy_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_legacy_s_fmt_vid_cap._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_legacy_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_legacy_enum_framesizes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cal_legacy_enum_framesizes._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cal_ctx_v4l2_register(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %sd_fmt.i.i = alloca %struct.v4l2_subdev_format, align 4
  %mbus_code.i = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cal_mc_api to i32))
  %0 = load i8, ptr @cal_mc_api, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mbus_code.i) #11
  %cal.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_num_formats to i32))
  %1 = load i32, ptr @cal_num_formats, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #11
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.then.devm_kcalloc.exit.i_crit_edge, label %if.end.i.i.i, !prof !178

if.then.devm_kcalloc.exit.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %devm_kcalloc.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cal.i, align 8
  %dev.i = getelementptr inbounds %struct.cal_dev, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %8 = extractvalue { i32, i1 } %2, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %8, i32 noundef 3520) #11
  br label %devm_kcalloc.exit.i

devm_kcalloc.exit.i:                              ; preds = %if.end.i.i.i, %if.then.devm_kcalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call5.i.i.i, %if.end.i.i.i ], [ null, %if.then.devm_kcalloc.exit.i_crit_edge ]
  %active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 9
  %9 = ptrtoint ptr %active_fmt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i.i.i, ptr %active_fmt.i, align 8
  %num_active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 10
  %10 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_active_fmt.i, align 4
  %index.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code.i, i32 0, i32 1
  %which.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code.i, i32 0, i32 3
  %phy.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 4
  %11 = call ptr @memset(ptr %mbus_code.i, i32 0, i32 48)
  %12 = ptrtoint ptr %which.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %which.i, align 4
  %13 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy.i, align 4
  %source220.i = getelementptr inbounds %struct.cal_camerarx, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %source220.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %source220.i, align 4
  %tobool.not221.i = icmp eq ptr %16, null
  br i1 %tobool.not221.i, label %devm_kcalloc.exit.i.do.end.i_crit_edge, label %if.else.lr.ph.i

devm_kcalloc.exit.i.do.end.i_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.else.lr.ph.i:                                  ; preds = %devm_kcalloc.exit.i
  %dma_ctx39.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %code.i = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %mbus_code.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp49217.not.i = icmp eq i32 %1, 0
  br label %if.else.i

if.else.i:                                        ; preds = %for.inc77.i.if.else.i_crit_edge, %if.else.lr.ph.i
  %17 = phi ptr [ %16, %if.else.lr.ph.i ], [ %74, %for.inc77.i.if.else.i_crit_edge ]
  %j.0223.i = phi i32 [ 0, %if.else.lr.ph.i ], [ %inc78.i, %for.inc77.i.if.else.i_crit_edge ]
  %i.0222.i = phi i32 [ 0, %if.else.lr.ph.i ], [ %i.1.lcssa.i, %for.inc77.i.if.else.i_crit_edge ]
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pad.i, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %if.else.i.do.end.i_crit_edge, label %land.lhs.true.i

if.else.i.do.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %enum_mbus_code.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %enum_mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enum_mbus_code.i, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %if.else6.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool7.not.i = icmp eq ptr %24, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else14.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else14.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %enum_mbus_code9.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %enum_mbus_code9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enum_mbus_code9.i, align 4
  %tobool10.not.i = icmp eq ptr %26, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else14.i_crit_edge, label %land.lhs.true8.i.if.end20.i_crit_edge

land.lhs.true8.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.lhs.true8.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true8.i.if.else14.i_crit_edge, %if.else6.i.if.else14.i_crit_edge
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else14.i, %land.lhs.true8.i.if.end20.i_crit_edge
  %.sink.i = phi ptr [ %23, %if.else14.i ], [ %26, %land.lhs.true8.i.if.end20.i_crit_edge ]
  %call18.i = call i32 %.sink.i(ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %mbus_code.i) #11
  %27 = zext i32 %call18.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call18.i, label %if.end20.i.do.end.i_crit_edge [
    i32 -22, label %for.end79.i
    i32 0, label %do.body30.i
  ]

if.end20.i.do.end.i_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc77.i.do.end.i_crit_edge, %if.end20.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.else.i.do.end.i_crit_edge, %devm_kcalloc.exit.i.do.end.i_crit_edge
  %__result.0198.i = phi i32 [ -19, %devm_kcalloc.exit.i.do.end.i_crit_edge ], [ %call18.i, %if.end20.i.do.end.i_crit_edge ], [ -19, %for.inc77.i.do.end.i_crit_edge ], [ -515, %land.lhs.true.i.do.end.i_crit_edge ], [ -515, %if.else.i.do.end.i_crit_edge ]
  %28 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cal.i, align 8
  %dev26.i = getelementptr inbounds %struct.cal_dev, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev26.i, align 8
  %dma_ctx.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %32 = ptrtoint ptr %dma_ctx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dma_ctx.i, align 4
  %conv.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy.i, align 4
  %source28.i = getelementptr inbounds %struct.cal_camerarx, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %source28.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %source28.i, align 4
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %37, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.33, i32 noundef %conv.i, ptr noundef %name.i, i32 noundef %__result.0198.i) #14
  br label %do.end

do.body30.i:                                      ; preds = %if.end20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %38 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp31.i = icmp ugt i32 %38, 1
  br i1 %cmp31.i, label %do.end36.i, label %do.body30.i.do.end47.i_crit_edge

do.body30.i.do.end47.i_crit_edge:                 ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47.i

do.end36.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cal.i, align 8
  %dev38.i = getelementptr inbounds %struct.cal_dev, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev38.i, align 8
  %43 = ptrtoint ptr %dma_ctx39.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dma_ctx39.i, align 4
  %conv40.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy.i, align 4
  %source42.i = getelementptr inbounds %struct.cal_camerarx, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %source42.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %source42.i, align 4
  %name43.i = getelementptr inbounds %struct.v4l2_subdev, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %code.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %42, ptr noundef nonnull @.str.36, i32 noundef %conv40.i, ptr noundef %name43.i, i32 noundef %50, i32 noundef %j.0223.i) #14
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.end36.i, %do.body30.i.do.end47.i_crit_edge
  br i1 %cmp49217.not.i, label %do.end47.i.for.inc77.i_crit_edge, label %do.end47.i.for.body.i_crit_edge

do.end47.i.for.body.i_crit_edge:                  ; preds = %do.end47.i
  br label %for.body.i

do.end47.i.for.inc77.i_crit_edge:                 ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc77.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end47.i.for.body.i_crit_edge
  %k.0219.i = phi i32 [ %inc76.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end47.i.for.body.i_crit_edge ]
  %i.1218.i = phi i32 [ %i.2.i, %for.inc.i.for.body.i_crit_edge ], [ %i.0222.i, %do.end47.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 %k.0219.i
  %51 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %code.i, align 4
  %code52.i = getelementptr [0 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 %k.0219.i, i32 1
  %53 = ptrtoint ptr %code52.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %code52.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp53.i = icmp eq i32 %52, %54
  br i1 %cmp53.i, label %if.then55.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then55.i:                                      ; preds = %for.body.i
  %55 = ptrtoint ptr %active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %active_fmt.i, align 8
  %arrayidx57.i = getelementptr ptr, ptr %56, i32 %i.1218.i
  %57 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx.i, ptr %arrayidx57.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %58 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp59.i = icmp ugt i32 %58, 1
  br i1 %cmp59.i, label %do.end64.i, label %if.then55.i.do.end73.i_crit_edge

if.then55.i.do.end73.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73.i

do.end64.i:                                       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cal.i, align 8
  %dev66.i = getelementptr inbounds %struct.cal_dev, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %dev66.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev66.i, align 8
  %63 = ptrtoint ptr %dma_ctx39.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dma_ctx39.i, align 4
  %conv68.i = zext i8 %64 to i32
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %conv.i.i = trunc i32 %66 to i8
  store i8 %conv.i.i, ptr @fourcc_to_str.code, align 1
  %shr.i.i = lshr i32 %66, 8
  %conv2.i.i = trunc i32 %shr.i.i to i8
  store i8 %conv2.i.i, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 1), align 1
  %shr3.i.i = lshr i32 %66, 16
  %conv5.i.i = trunc i32 %shr3.i.i to i8
  store i8 %conv5.i.i, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 2), align 1
  %shr6.i.i = lshr i32 %66, 24
  %conv8.i.i = trunc i32 %shr6.i.i to i8
  store i8 %conv8.i.i, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 4), align 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %62, ptr noundef nonnull @.str.39, i32 noundef %conv68.i, ptr noundef nonnull @fourcc_to_str.code, i32 noundef %52, i32 noundef %i.1218.i) #14
  br label %do.end73.i

do.end73.i:                                       ; preds = %do.end64.i, %if.then55.i.do.end73.i_crit_edge
  %inc.i = add i32 %i.1218.i, 1
  %67 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %inc.i, ptr %num_active_fmt.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end73.i, %for.body.i.for.inc.i_crit_edge
  %i.2.i = phi i32 [ %inc.i, %do.end73.i ], [ %i.1218.i, %for.body.i.for.inc.i_crit_edge ]
  %inc76.i = add nuw i32 %k.0219.i, 1
  %exitcond.not.i = icmp eq i32 %inc76.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.for.inc77.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.inc77.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc77.i

for.inc77.i:                                      ; preds = %for.inc.i.for.inc77.i_crit_edge, %do.end47.i.for.inc77.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.0222.i, %do.end47.i.for.inc77.i_crit_edge ], [ %i.2.i, %for.inc.i.for.inc77.i_crit_edge ]
  %inc78.i = add i32 %j.0223.i, 1
  %68 = call ptr @memset(ptr %mbus_code.i, i32 0, i32 48)
  %69 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %inc78.i, ptr %index.i, align 4
  %70 = ptrtoint ptr %which.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %which.i, align 4
  %71 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy.i, align 4
  %source.i = getelementptr inbounds %struct.cal_camerarx, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %source.i, align 4
  %tobool.not.i = icmp eq ptr %74, null
  br i1 %tobool.not.i, label %for.inc77.i.do.end.i_crit_edge, label %for.inc77.i.if.else.i_crit_edge

for.inc77.i.if.else.i_crit_edge:                  ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.inc77.i.do.end.i_crit_edge:                   ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.end79.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0222.i)
  %cmp80.i = icmp eq i32 %i.0222.i, 0
  br i1 %cmp80.i, label %do.end85.i, label %if.end94.i

do.end85.i:                                       ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cal.i, align 8
  %dev87.i = getelementptr inbounds %struct.cal_dev, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev87.i, align 8
  %79 = ptrtoint ptr %dma_ctx39.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %dma_ctx39.i, align 4
  %conv89.i = zext i8 %80 to i32
  %81 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %phy.i, align 4
  %source91.i = getelementptr inbounds %struct.cal_camerarx, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %source91.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %source91.i, align 4
  %name92.i = getelementptr inbounds %struct.v4l2_subdev, ptr %84, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.42, i32 noundef %conv89.i, ptr noundef %name92.i) #14
  br label %do.end

if.end94.i:                                       ; preds = %for.end79.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt.i.i) #11
  %85 = getelementptr inbounds i8, ptr %sd_fmt.i.i, i32 8
  %86 = call ptr @memset(ptr %85, i32 255, i32 80)
  %87 = ptrtoint ptr %sd_fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %sd_fmt.i.i, align 4
  %pad.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %pad.i.i, align 4
  %89 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %phy.i, align 4
  %source.i.i = getelementptr inbounds %struct.cal_camerarx, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %source.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %source.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i, label %if.end94.i.__subdev_get_format.exit.thread.i_crit_edge, label %if.else.i.i

if.end94.i.__subdev_get_format.exit.thread.i_crit_edge: ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_get_format.exit.thread.i

if.else.i.i:                                      ; preds = %if.end94.i
  %ops.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i.i, align 4
  %pad1.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %pad1.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pad1.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %96, null
  br i1 %tobool2.not.i.i, label %if.else.i.i.__subdev_get_format.exit.thread.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.__subdev_get_format.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_get_format.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %get_fmt.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %get_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %get_fmt.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %98, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.__subdev_get_format.exit.thread.i_crit_edge, label %if.else7.i.i

land.lhs.true.i.i.__subdev_get_format.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_get_format.exit.thread.i

if.else7.i.i:                                     ; preds = %land.lhs.true.i.i
  br i1 %tobool7.not.i, label %if.else7.i.i.if.else14.i.i_crit_edge, label %land.lhs.true9.i.i

if.else7.i.i.if.else14.i.i_crit_edge:             ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i.i

land.lhs.true9.i.i:                               ; preds = %if.else7.i.i
  %get_fmt10.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %24, i32 0, i32 4
  %99 = ptrtoint ptr %get_fmt10.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %get_fmt10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %100, null
  br i1 %tobool11.not.i.i, label %land.lhs.true9.i.i.if.else14.i.i_crit_edge, label %land.lhs.true9.i.i.if.end20.i.i_crit_edge

land.lhs.true9.i.i.if.end20.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i

land.lhs.true9.i.i.if.else14.i.i_crit_edge:       ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i.i

if.else14.i.i:                                    ; preds = %land.lhs.true9.i.i.if.else14.i.i_crit_edge, %if.else7.i.i.if.else14.i.i_crit_edge
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else14.i.i, %land.lhs.true9.i.i.if.end20.i.i_crit_edge
  %.sink.i.i = phi ptr [ %98, %if.else14.i.i ], [ %100, %land.lhs.true9.i.i.if.end20.i.i_crit_edge ]
  %call18.i.i = call i32 %.sink.i.i(ptr noundef nonnull %92, ptr noundef null, ptr noundef nonnull %sd_fmt.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool21.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.end20.i.i.__subdev_get_format.exit.thread.i_crit_edge

if.end20.i.i.__subdev_get_format.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_get_format.exit.thread.i

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %101 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %101)
  %mbus_fmt.sroa.0.0.copyload.i = load i32, ptr %85, align 4
  %mbus_fmt.sroa.6.0.format.i.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i.i, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %mbus_fmt.sroa.6.0.format.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %mbus_fmt.sroa.6.0.copyload.i = load i32, ptr %mbus_fmt.sroa.6.0.format.i.sroa_idx.i, align 4
  %mbus_fmt.sroa.8.0.format.i.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i.i, i32 0, i32 2, i32 2
  %103 = ptrtoint ptr %mbus_fmt.sroa.8.0.format.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %mbus_fmt.sroa.8.0.copyload.i = load i32, ptr %mbus_fmt.sroa.8.0.format.i.sroa_idx.i, align 4
  %mbus_fmt.sroa.11.0.format.i.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i.i, i32 0, i32 2, i32 3
  %104 = ptrtoint ptr %mbus_fmt.sroa.11.0.format.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %mbus_fmt.sroa.11.0.copyload.i = load i32, ptr %mbus_fmt.sroa.11.0.format.i.sroa_idx.i, align 4
  %mbus_fmt.sroa.12.0.format.i.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i.i, i32 0, i32 2, i32 4
  %105 = ptrtoint ptr %mbus_fmt.sroa.12.0.format.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %mbus_fmt.sroa.12.0.copyload.i = load i32, ptr %mbus_fmt.sroa.12.0.format.i.sroa_idx.i, align 4
  %mbus_fmt.sroa.13.0.format.i.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i.i, i32 0, i32 2, i32 5
  %106 = ptrtoint ptr %mbus_fmt.sroa.13.0.format.i.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %mbus_fmt.sroa.13.0.copyload.i = load i16, ptr %mbus_fmt.sroa.13.0.format.i.sroa_idx.i, align 4
  %mbus_fmt.sroa.14.0.format.i.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i.i, i32 0, i32 2, i32 6
  %107 = ptrtoint ptr %mbus_fmt.sroa.14.0.format.i.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %mbus_fmt.sroa.14.0.copyload.i = load i16, ptr %mbus_fmt.sroa.14.0.format.i.sroa_idx.i, align 2
  %mbus_fmt.sroa.15.0.format.i.sroa_idx.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i.i, i32 0, i32 2, i32 7
  %108 = ptrtoint ptr %mbus_fmt.sroa.15.0.format.i.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %mbus_fmt.sroa.15.0.copyload.i = load i16, ptr %mbus_fmt.sroa.15.0.format.i.sroa_idx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %109 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp.not.i.i = icmp eq i32 %109, 0
  br i1 %cmp.not.i.i, label %if.end23.i.i.if.end98.i_crit_edge, label %do.end.i.i

if.end23.i.i.if.end98.i_crit_edge:                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98.i

do.end.i.i:                                       ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cal.i, align 8
  %dev.i.i = getelementptr inbounds %struct.cal_dev, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i.i, align 8
  %114 = ptrtoint ptr %dma_ctx39.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %dma_ctx39.i, align 4
  %conv.i184.i = zext i8 %115 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %113, ptr noundef nonnull @.str.47, i32 noundef %conv.i184.i, ptr noundef nonnull @.str.48, i32 noundef %mbus_fmt.sroa.0.0.copyload.i, i32 noundef %mbus_fmt.sroa.6.0.copyload.i, i32 noundef %mbus_fmt.sroa.8.0.copyload.i) #14
  br label %if.end98.i

__subdev_get_format.exit.thread.i:                ; preds = %if.end20.i.i.__subdev_get_format.exit.thread.i_crit_edge, %land.lhs.true.i.i.__subdev_get_format.exit.thread.i_crit_edge, %if.else.i.i.__subdev_get_format.exit.thread.i_crit_edge, %if.end94.i.__subdev_get_format.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -19, %if.end94.i.__subdev_get_format.exit.thread.i_crit_edge ], [ -515, %land.lhs.true.i.i.__subdev_get_format.exit.thread.i_crit_edge ], [ -515, %if.else.i.i.__subdev_get_format.exit.thread.i_crit_edge ], [ %call18.i.i, %if.end20.i.i.__subdev_get_format.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt.i.i) #11
  br label %do.end

if.end98.i:                                       ; preds = %do.end.i.i, %if.end23.i.i.if.end98.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt.i.i) #11
  %116 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_active_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp8.not.i.i = icmp eq i32 %117, 0
  br i1 %cmp8.not.i.i, label %if.end98.i.do.body103.i_crit_edge, label %for.body.lr.ph.i.i

if.end98.i.do.body103.i_crit_edge:                ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body103.i

for.body.lr.ph.i.i:                               ; preds = %if.end98.i
  %118 = ptrtoint ptr %active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %active_fmt.i, align 8
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %k.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %117
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.body103.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond.i.i.do.body103.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body103.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %k.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %119, i32 %k.09.i.i
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i, align 4
  %code1.i.i = getelementptr inbounds %struct.cal_format_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %code1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %code1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %mbus_fmt.sroa.8.0.copyload.i)
  %cmp2.i.i = icmp eq i32 %123, %mbus_fmt.sroa.8.0.copyload.i
  br i1 %cmp2.i.i, label %find_format_by_code.exit.i, label %for.cond.i.i

find_format_by_code.exit.i:                       ; preds = %for.body.i.i
  %tobool101.not.i = icmp eq ptr %121, null
  br i1 %tobool101.not.i, label %find_format_by_code.exit.i.do.body103.i_crit_edge, label %if.end

find_format_by_code.exit.i.do.body103.i_crit_edge: ; preds = %find_format_by_code.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body103.i

do.body103.i:                                     ; preds = %find_format_by_code.exit.i.do.body103.i_crit_edge, %for.cond.i.i.do.body103.i_crit_edge, %if.end98.i.do.body103.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %124 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp104.i = icmp ugt i32 %124, 2
  br i1 %cmp104.i, label %do.end109.i, label %do.body103.i.do.end_crit_edge

do.body103.i.do.end_crit_edge:                    ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end109.i:                                      ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cal.i, align 8
  %dev111.i = getelementptr inbounds %struct.cal_dev, ptr %126, i32 0, i32 4
  %127 = ptrtoint ptr %dev111.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev111.i, align 8
  %129 = ptrtoint ptr %dma_ctx39.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %dma_ctx39.i, align 4
  %conv113.i = zext i8 %130 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %128, ptr noundef nonnull @.str.45, i32 noundef %conv113.i, i32 noundef %mbus_fmt.sroa.8.0.copyload.i) #14
  br label %do.end

do.end:                                           ; preds = %do.end109.i, %do.body103.i.do.end_crit_edge, %__subdev_get_format.exit.thread.i, %do.end85.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %__subdev_get_format.exit.thread.i ], [ -22, %do.body103.i.do.end_crit_edge ], [ -22, %do.end109.i ], [ %__result.0198.i, %do.end.i ], [ -22, %do.end85.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbus_code.i) #11
  %131 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cal.i, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %135 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %136 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %retval.0.i.ph) #14
  br label %cleanup62

if.end:                                           ; preds = %find_format_by_code.exit.i
  %v_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8
  %fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %137 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %mbus_fmt.sroa.0.0.copyload.i, ptr %fmt.i, align 4
  %height2.i.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 1
  %138 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %mbus_fmt.sroa.6.0.copyload.i, ptr %height2.i.i, align 4
  %field3.i.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 3
  %139 = ptrtoint ptr %field3.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %mbus_fmt.sroa.11.0.copyload.i, ptr %field3.i.i, align 4
  %colorspace4.i.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 5, i32 0, i32 1
  %140 = ptrtoint ptr %colorspace4.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %mbus_fmt.sroa.12.0.copyload.i, ptr %colorspace4.i.i, align 4
  %conv.i187.i = zext i16 %mbus_fmt.sroa.13.0.copyload.i to i32
  %141 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv.i187.i, ptr %141, align 4
  %conv5.i188.i = zext i16 %mbus_fmt.sroa.14.0.copyload.i to i32
  %quantization6.i.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 5, i32 1
  %143 = ptrtoint ptr %quantization6.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv5.i188.i, ptr %quantization6.i.i, align 4
  %conv7.i.i = zext i16 %mbus_fmt.sroa.15.0.copyload.i to i32
  %xfer_func8.i.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 5, i32 1, i32 1
  %144 = ptrtoint ptr %xfer_func8.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv7.i.i, ptr %xfer_func8.i.i, align 4
  %145 = ptrtoint ptr %v_fmt.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %v_fmt.i, align 4
  %146 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %121, align 4
  %pixelformat.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 2
  %148 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %pixelformat.i, align 4
  call fastcc void @cal_calc_format_size(ptr noundef %ctx, ptr noundef nonnull %121, ptr noundef %v_fmt.i) #11
  %fmtinfo124.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 7
  %149 = ptrtoint ptr %fmtinfo124.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %121, ptr %fmtinfo124.i, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbus_code.i) #11
  %150 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %phy.i, align 4
  %source = getelementptr inbounds %struct.cal_camerarx, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %source, align 4
  %ctrl_handler3 = getelementptr inbounds %struct.v4l2_subdev, ptr %153, i32 0, i32 8
  %154 = ptrtoint ptr %ctrl_handler3 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ctrl_handler3, align 4
  %call4 = call i32 @v4l2_ctrl_add_handler(ptr noundef %ctx, ptr noundef %155, ptr noundef null, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end9, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cal.i, align 8
  %dev11 = getelementptr inbounds %struct.cal_dev, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev11, align 8
  %160 = ptrtoint ptr %dma_ctx39.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %dma_ctx39.i, align 4
  %conv13 = zext i8 %161 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.6, i32 noundef %conv13) #14
  br label %cleanup62

if.else:                                          ; preds = %entry
  %call.i = tail call ptr @cal_format_by_code(i32 noundef 8198) #11
  %tobool.not.i96 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i96, label %do.end20, label %cal_ctx_v4l2_init_mc_format.exit.thread

cal_ctx_v4l2_init_mc_format.exit.thread:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %v_fmt.i97 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8
  %fmt.i98 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %162 = ptrtoint ptr %fmt.i98 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 640, ptr %fmt.i98, align 4
  %height.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 1
  %163 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 480, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 3
  %164 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 5, i32 0, i32 1
  %165 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 8, ptr %colorspace.i, align 4
  %166 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %166, align 4
  %quantization.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 5, i32 1
  %168 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 2, ptr %quantization.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 5, i32 1, i32 1
  %169 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 2, ptr %xfer_func.i, align 4
  %170 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %call.i, align 4
  %pixelformat.i99 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 2
  %172 = ptrtoint ptr %pixelformat.i99 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %pixelformat.i99, align 4
  %173 = ptrtoint ptr %v_fmt.i97 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1, ptr %v_fmt.i97, align 4
  tail call fastcc void @cal_calc_format_size(ptr noundef %ctx, ptr noundef nonnull %call.i, ptr noundef %v_fmt.i97) #11
  %fmtinfo3.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 7
  %174 = ptrtoint ptr %fmtinfo3.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call.i, ptr %fmtinfo3.i, align 8
  br label %if.end26

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %cal21 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %175 = ptrtoint ptr %cal21 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cal21, align 8
  %dev22 = getelementptr inbounds %struct.cal_dev, ptr %176, i32 0, i32 4
  %177 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev22, align 8
  %dma_ctx23 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %179 = ptrtoint ptr %dma_ctx23 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %dma_ctx23, align 4
  %conv24 = zext i8 %180 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.9, i32 noundef %conv24, i32 noundef -22) #14
  br label %cleanup62

if.end26:                                         ; preds = %cal_ctx_v4l2_init_mc_format.exit.thread, %if.end.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_video_nr to i32))
  %181 = load i32, ptr @cal_video_nr, align 4
  %fops.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %182 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %fops.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %call.i101 = call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef %181, i32 noundef 1, ptr noundef %185) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp28 = icmp slt i32 %call.i101, 0
  br i1 %cmp28, label %do.end33, label %if.end38

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %cal34 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %186 = ptrtoint ptr %cal34 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cal34, align 8
  %dev35 = getelementptr inbounds %struct.cal_dev, ptr %187, i32 0, i32 4
  %188 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev35, align 8
  %dma_ctx36 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %190 = ptrtoint ptr %dma_ctx36 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %dma_ctx36, align 4
  %conv37 = zext i8 %191 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.12, i32 noundef %conv37) #14
  br label %cleanup62

if.end38:                                         ; preds = %if.end26
  %phy39 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 4
  %192 = ptrtoint ptr %phy39 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %phy39, align 4
  %subdev = getelementptr inbounds %struct.cal_camerarx, ptr %193, i32 0, i32 10
  %call41 = call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext 1, ptr noundef %vdev, i16 noundef zeroext 0, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  %cal57 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %194 = ptrtoint ptr %cal57 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cal57, align 8
  %dev58 = getelementptr inbounds %struct.cal_dev, ptr %195, i32 0, i32 4
  %196 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev58, align 8
  %dma_ctx59 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %198 = ptrtoint ptr %dma_ctx59 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %dma_ctx59, align 4
  %conv60 = zext i8 %199 to i32
  br i1 %tobool42.not, label %do.end56, label %do.end46

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.15, i32 noundef %conv60, i32 noundef %conv60) #14
  call void @video_unregister_device(ptr noundef %vdev) #11
  br label %cleanup62

do.end56:                                         ; preds = %if.end38
  %init_name.i.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 5, i32 3
  %200 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i102 = icmp eq ptr %201, null
  br i1 %tobool.not.i.i102, label %if.end.i.i, label %do.end56.video_device_node_name.exit_crit_edge

do.end56.video_device_node_name.exit_crit_edge:   ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i103 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %202 = ptrtoint ptr %dev.i103 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i103, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end56.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %203, %if.end.i.i ], [ %201, %do.end56.video_device_node_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %197, ptr noundef nonnull @.str.18, i32 noundef %conv60, ptr noundef %retval.0.i.i) #14
  br label %cleanup62

cleanup62:                                        ; preds = %video_device_node_name.exit, %do.end46, %do.end33, %do.end20, %do.end9, %do.end
  %retval.1 = phi i32 [ -22, %do.end20 ], [ %call.i101, %do.end33 ], [ %call41, %do.end46 ], [ 0, %video_device_node_name.exit ], [ %call4, %do.end9 ], [ %retval.0.i.ph, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_ctx_v4l2_unregister(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %0 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %1 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %5 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %6 to i32
  %init_name.i.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 5, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %do.end.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef %conv, ptr noundef %retval.0.i.i) #14
  br label %do.end2

do.end2:                                          ; preds = %video_device_node_name.exit, %entry.do.end2_crit_edge
  %vdev3 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vdev3) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cal_ctx_v4l2_init(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_vidq = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12
  %dma = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6
  %queue = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queue, ptr %prev.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %dma, ptr noundef nonnull @.str.24, ptr noundef nonnull @cal_ctx_v4l2_init.__key, i16 noundef signext 3) #11
  %mutex = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.26, ptr noundef nonnull @cal_ctx_v4l2_init.__key.25) #11
  %wait = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.28, ptr noundef nonnull @cal_ctx_v4l2_init.__key.27) #11
  %2 = ptrtoint ptr %vb_vidq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %vb_vidq, align 4
  %io_modes = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctx, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cal_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12, i32 8
  %7 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12, i32 13
  %8 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock10 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12, i32 5
  %9 = ptrtoint ptr %lock10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mutex, ptr %lock10, align 4
  %min_buffers_needed = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12, i32 15
  %10 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %min_buffers_needed, align 4
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %11 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %dev11 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev11, align 4
  %call12 = tail call i32 @vb2_queue_init(ptr noundef %vb_vidq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup45_crit_edge

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end:                                           ; preds = %entry
  %vdev = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1
  %fops = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cal_fops, ptr %fops, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cal_mc_api to i32))
  %17 = load i8, ptr @cal_mc_api, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  %or = select i1 %tobool13.not, i32 67108865, i32 603979777
  %device_caps = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %device_caps, align 8
  %19 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cal, align 8
  %v4l2_dev = getelementptr inbounds %struct.cal_dev, ptr %20, i32 0, i32 13
  %v4l2_dev15 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 7
  %21 = ptrtoint ptr %v4l2_dev15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %v4l2_dev, ptr %v4l2_dev15, align 4
  %queue16 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %22 = ptrtoint ptr %queue16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %vb_vidq, ptr %queue16, align 8
  %name = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 12
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %23 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %24 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %conv)
  %release = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 23
  %25 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @video_device_release_empty, ptr %release, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cal_mc_api to i32))
  %26 = load i8, ptr @cal_mc_api, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not = icmp eq i8 %26, 0
  %cond20 = select i1 %tobool18.not, ptr @cal_ioctl_legacy_ops, ptr @cal_ioctl_mc_ops
  %ioctl_ops = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 24
  %27 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cond20, ptr %ioctl_ops, align 4
  %lock22 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 26
  %28 = ptrtoint ptr %lock22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mutex, ptr %lock22, align 8
  %driver_data.i.i = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 5, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ctx, ptr %driver_data.i.i, align 4
  %pad = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 2
  %flags = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %flags, align 4
  %call24 = tail call i32 @media_entity_pads_init(ptr noundef %vdev, i16 noundef zeroext 1, ptr noundef %pad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end.cleanup45_crit_edge, label %if.end27

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end27:                                         ; preds = %if.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cal_mc_api to i32))
  %31 = load i8, ptr @cal_mc_api, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool28.not = icmp eq i8 %31, 0
  br i1 %tobool28.not, label %if.then29, label %if.end27.cleanup45_crit_edge

if.end27.cleanup45_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctx, i32 noundef 11, ptr noundef nonnull @cal_ctx_v4l2_init._key, ptr noundef nonnull @.str.30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %error, label %cleanup

cleanup:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl_handler42 = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 1, i32 9
  %32 = ptrtoint ptr %ctrl_handler42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ctx, ptr %ctrl_handler42, align 4
  br label %cleanup45

error:                                            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cal, align 8
  %dev38 = getelementptr inbounds %struct.cal_dev, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev38, align 8
  %37 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dma_ctx, align 4
  %conv40 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.31, i32 noundef %conv40) #14
  br label %cleanup45

cleanup45:                                        ; preds = %error, %cleanup, %if.end27.cleanup45_crit_edge, %if.end.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.0 = phi i32 [ %call30, %error ], [ %call12, %entry.cleanup45_crit_edge ], [ %call24, %if.end.cleanup45_crit_edge ], [ 0, %cleanup ], [ 0, %if.end27.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cal_ctx_v4l2_cleanup(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cal_mc_api to i32))
  %0 = load i8, ptr @cal_mc_api, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctx) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cal_calc_format_size(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %fmtinfo, ptr noundef %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bpp = getelementptr inbounds %struct.cal_format_info, ptr %fmtinfo, i32 0, i32 2
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bpp, align 4
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 7
  %2 = lshr i32 %add, 3
  %div = udiv i32 65536, %2
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 48, i32 noundef %div, i32 noundef 2, ptr noundef %height, i32 noundef 32, i32 noundef 16383, i32 noundef 0, i32 noundef 0) #11
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmt, align 4
  %5 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bpp, align 4
  %conv5 = zext i8 %6 to i32
  %add6 = add nuw nsw i32 %conv5, 7
  %and7 = and i32 %add6, 504
  %mul = mul i32 %and7, %4
  %shr8 = lshr exact i32 %mul, 3
  %add9 = add nuw nsw i32 %shr8, 15
  %and10 = and i32 %add9, 1073741808
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and10, ptr %bytesperline, align 4
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %mul16 = mul i32 %and10, %9
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul16, ptr %sizeimage, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %11 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp ugt i32 %11, 2
  br i1 %cmp, label %do.end, label %entry.do.end31_crit_edge

entry.do.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %12 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %16 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dma_ctx, align 4
  %conv20 = zext i8 %17 to i32
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat, align 4
  %conv.i = trunc i32 %19 to i8
  store i8 %conv.i, ptr @fourcc_to_str.code, align 1
  %shr.i = lshr i32 %19, 8
  %conv2.i = trunc i32 %shr.i to i8
  store i8 %conv2.i, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 1), align 1
  %shr3.i = lshr i32 %19, 16
  %conv5.i = trunc i32 %shr3.i to i8
  store i8 %conv5.i, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 2), align 1
  %shr6.i = lshr i32 %19, 24
  %conv8.i = trunc i32 %shr6.i to i8
  store i8 %conv8.i, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 4), align 1
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %15, ptr noundef nonnull @.str.49, i32 noundef %conv20, ptr noundef nonnull @.str.50, ptr noundef nonnull @fourcc_to_str.code, i32 noundef %21, i32 noundef %9, i32 noundef %and10, i32 noundef %mul16) #14
  br label %do.end31

do.end31:                                         ; preds = %do.end, %entry.do.end31_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cal_format_by_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %4 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers, align 4
  %6 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbuffers, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp = icmp ult i32 %add, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 3, %5
  %8 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp3 = icmp ult i32 %12, %3
  br i1 %cmp3, label %if.then2.cleanup_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %size.0 = phi i32 [ %3, %if.end.if.end7_crit_edge ], [ %12, %if.then2.if.end7_crit_edge ]
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %nplanes, align 4
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size.0, ptr %sizes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %15 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp9 = icmp ugt i32 %15, 2
  br i1 %cmp9, label %do.end, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %21 to i32
  %22 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbuffers, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %19, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %23, i32 noundef %size.0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_buffer_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.cal_ctx, ptr %3, i32 0, i32 8, i32 1, i32 0, i32 5
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
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit18_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit18_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit18

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp24 = icmp ult i32 %9, %5
  br i1 %cmp24, label %vb2_plane_size.exit.thread.vb2_plane_size.exit18_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit18_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit18

vb2_plane_size.exit18:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit18_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit18_crit_edge
  %retval.0.i17 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit18_crit_edge ], [ %9, %vb2_plane_size.exit.thread.vb2_plane_size.exit18_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.cal_ctx, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 8
  %.in = getelementptr inbounds %struct.cal_dev, ptr %.pn, i32 0, i32 4
  %11 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.in, align 8
  %conv30.in.in = getelementptr inbounds %struct.cal_ctx, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %conv30.in.in to i32
  call void @__asan_load1_noabort(i32 %13)
  %conv30.in = load i8, ptr %conv30.in.in, align 4
  %conv30 = zext i8 %conv30.in to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.53, i32 noundef %conv30, i32 noundef %retval.0.i17, i32 noundef %5) #14
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %14 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit18, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit18 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %vdev = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 1
  %phy = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %pipe = getelementptr inbounds %struct.cal_camerarx, ptr %3, i32 0, i32 9
  %call1 = tail call i32 @media_pipeline_start(ptr noundef %vdev, ptr noundef %pipe) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.56, i32 noundef %conv, i32 noundef %call1) #14
  br label %error_release_buffers

if.end:                                           ; preds = %entry
  %pad.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 2
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.do.body6_crit_edge, label %if.end.i

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index.i, align 4
  %idxprom.i = zext i16 %13 to i32
  %arrayidx.i = getelementptr %struct.cal_camerarx, ptr %11, i32 0, i32 12, i32 %idxprom.i
  %fmtinfo.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %fmtinfo.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fmtinfo.i, align 8
  %code.i = getelementptr inbounds %struct.cal_format_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code.i, align 4
  %code1.i = getelementptr %struct.cal_camerarx, ptr %11, i32 0, i32 12, i32 %idxprom.i, i32 2
  %18 = ptrtoint ptr %code1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not.i = icmp eq i32 %17, %19
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.do.body6_crit_edge

if.end.i.do.body6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

lor.lhs.false.i:                                  ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr %struct.cal_camerarx, ptr %11, i32 0, i32 12, i32 %idxprom.i, i32 1
  %22 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp3.not.i = icmp eq i32 %21, %23
  br i1 %cmp3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.do.body6_crit_edge

lor.lhs.false.i.do.body6_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp8.not.i = icmp eq i32 %25, %27
  br i1 %cmp8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false4.i.do.body6_crit_edge

lor.lhs.false4.i.do.body6_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false4.i
  %field.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %field.i, align 4
  %field12.i = getelementptr %struct.cal_camerarx, ptr %11, i32 0, i32 12, i32 %idxprom.i, i32 3
  %30 = ptrtoint ptr %field12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %field12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp13.not.i = icmp eq i32 %29, %31
  br i1 %cmp13.not.i, label %if.end20, label %lor.lhs.false9.i.do.body6_crit_edge

lor.lhs.false9.i.do.body6_crit_edge:              ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.body6:                                         ; preds = %lor.lhs.false9.i.do.body6_crit_edge, %lor.lhs.false4.i.do.body6_crit_edge, %lor.lhs.false.i.do.body6_crit_edge, %if.end.i.do.body6_crit_edge, %if.end.do.body6_crit_edge
  %retval.0.i.ph = phi i32 [ -32, %lor.lhs.false9.i.do.body6_crit_edge ], [ -32, %if.end.i.do.body6_crit_edge ], [ -32, %lor.lhs.false.i.do.body6_crit_edge ], [ -32, %lor.lhs.false4.i.do.body6_crit_edge ], [ -19, %if.end.do.body6_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %32 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp7 = icmp ugt i32 %32, 2
  br i1 %cmp7, label %do.end12, label %do.body6.error_pipeline_crit_edge

do.body6.error_pipeline_crit_edge:                ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_pipeline

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %cal13 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %cal13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cal13, align 8
  %dev14 = getelementptr inbounds %struct.cal_dev, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev14, align 8
  %dma_ctx15 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %dma_ctx15 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dma_ctx15, align 4
  %conv16 = zext i8 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %36, ptr noundef nonnull @.str.59, i32 noundef %conv16) #14
  br label %error_pipeline

if.end20:                                         ; preds = %lor.lhs.false9.i
  %call21 = tail call i32 @cal_ctx_prepare(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end30, label %do.end25

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %cal26 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %cal26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cal26, align 8
  %dev27 = getelementptr inbounds %struct.cal_dev, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev27, align 8
  %dma_ctx28 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %43 = ptrtoint ptr %dma_ctx28 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dma_ctx28, align 4
  %conv29 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.62, i32 noundef %conv29, i32 noundef %call21) #14
  br label %error_pipeline

if.end30:                                         ; preds = %if.end20
  %dma = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %dma) #11
  %queue = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %queue, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 -736
  %active = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr, ptr %active, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end30.list_del.exit_crit_edge

if.end30.list_del.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %46, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end30.list_del.exit_crit_edge
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %dma) #11
  %call.i123 = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr, i32 noundef 0) #11
  %56 = ptrtoint ptr %call.i123 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call.i123, align 4
  %cal36 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %cal36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cal36, align 8
  %dev37 = getelementptr inbounds %struct.cal_dev, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev37, align 8
  %call.i124 = tail call i32 @__pm_runtime_resume(ptr noundef %61, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i = icmp slt i32 %call.i124, 0
  br i1 %cmp.i, label %if.then.i, label %if.end42

if.then.i:                                        ; preds = %list_del.exit
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !180
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.error_pipeline_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.error_pipeline_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_pipeline

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !181
  br label %error_pipeline

if.end42:                                         ; preds = %list_del.exit
  tail call void @cal_ctx_set_dma_addr(ptr noundef %1, i32 noundef %57) #11
  tail call void @cal_ctx_start(ptr noundef %1) #11
  %63 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy, align 4
  %subdev = getelementptr inbounds %struct.cal_camerarx, ptr %64, i32 0, i32 10
  %tobool44.not = icmp eq ptr %subdev, null
  br i1 %tobool44.not, label %if.end42.error_stop_crit_edge, label %if.else

if.end42.error_stop_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_stop

if.else:                                          ; preds = %if.end42
  %ops = getelementptr inbounds %struct.cal_camerarx, ptr %64, i32 0, i32 10, i32 6
  %65 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %video, align 4
  %tobool46.not = icmp eq ptr %68, null
  br i1 %tobool46.not, label %if.else.error_stop_crit_edge, label %land.lhs.true

if.else.error_stop_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_stop

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_stream, align 4
  %tobool49.not = icmp eq ptr %70, null
  br i1 %tobool49.not, label %land.lhs.true.error_stop_crit_edge, label %if.else51

land.lhs.true.error_stop_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_stop

if.else51:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool52.not = icmp eq ptr %71, null
  br i1 %tobool52.not, label %if.else51.if.else59_crit_edge, label %land.lhs.true53

if.else51.if.else59_crit_edge:                    ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else59

land.lhs.true53:                                  ; preds = %if.else51
  %s_stream54 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %s_stream54 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_stream54, align 4
  %tobool55.not = icmp eq ptr %73, null
  br i1 %tobool55.not, label %land.lhs.true53.if.else59_crit_edge, label %land.lhs.true53.if.end66_crit_edge

land.lhs.true53.if.end66_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

land.lhs.true53.if.else59_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else59

if.else59:                                        ; preds = %land.lhs.true53.if.else59_crit_edge, %if.else51.if.else59_crit_edge
  br label %if.end66

if.end66:                                         ; preds = %if.else59, %land.lhs.true53.if.end66_crit_edge
  %.sink = phi ptr [ %70, %if.else59 ], [ %73, %land.lhs.true53.if.end66_crit_edge ]
  %call63 = tail call i32 %.sink(ptr noundef nonnull %subdev, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool68.not = icmp eq i32 %call63, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.error_stop_crit_edge

if.end66.error_stop_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_stop

if.end70:                                         ; preds = %if.end66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %74 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp71 = icmp ugt i32 %74, 3
  br i1 %cmp71, label %if.then73, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %cal36 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cal36, align 8
  tail call void @cal_quickdump_regs(ptr noundef %76) #11
  br label %cleanup

error_stop:                                       ; preds = %if.end66.error_stop_crit_edge, %land.lhs.true.error_stop_crit_edge, %if.else.error_stop_crit_edge, %if.end42.error_stop_crit_edge
  %__result.0134 = phi i32 [ %call63, %if.end66.error_stop_crit_edge ], [ -515, %if.else.error_stop_crit_edge ], [ -515, %land.lhs.true.error_stop_crit_edge ], [ -19, %if.end42.error_stop_crit_edge ]
  tail call void @cal_ctx_stop(ptr noundef %1) #11
  %77 = ptrtoint ptr %cal36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cal36, align 8
  %dev77 = getelementptr inbounds %struct.cal_dev, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev77, align 8
  %call.i126 = tail call i32 @__pm_runtime_idle(ptr noundef %80, i32 noundef 4) #11
  tail call void @cal_ctx_unprepare(ptr noundef %1) #11
  br label %error_pipeline

error_pipeline:                                   ; preds = %error_stop, %do.end11.i.i.i.i.i, %if.then.i.error_pipeline_crit_edge, %do.end25, %do.end12, %do.body6.error_pipeline_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end12 ], [ %retval.0.i.ph, %do.body6.error_pipeline_crit_edge ], [ %call21, %do.end25 ], [ %__result.0134, %error_stop ], [ %call.i124, %if.then.i.error_pipeline_crit_edge ], [ %call.i124, %do.end11.i.i.i.i.i ]
  tail call void @media_pipeline_stop(ptr noundef %vdev) #11
  br label %error_release_buffers

error_release_buffers:                            ; preds = %error_pipeline, %do.end
  %ret.1 = phi i32 [ %call1, %do.end ], [ %ret.0, %error_pipeline ]
  tail call fastcc void @cal_release_buffers(ptr noundef %1, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %error_release_buffers, %if.then73, %if.end70.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error_release_buffers ], [ 0, %if.then73 ], [ 0, %if.end70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cal_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call void @cal_ctx_stop(ptr noundef %1) #11
  %phy = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %subdev = getelementptr inbounds %struct.cal_camerarx, ptr %3, i32 0, i32 10
  %tobool.not = icmp eq ptr %subdev, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.cal_camerarx, ptr %3, i32 0, i32 10, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_stream, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_stream9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %s_stream9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_stream9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %subdev, i32 noundef 0) #11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 4) #11
  tail call void @cal_ctx_unprepare(ptr noundef %1) #11
  tail call fastcc void @cal_release_buffers(ptr noundef %1, i32 noundef 6)
  %vdev = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 1
  tail call void @media_pipeline_stop(ptr noundef %vdev) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cal_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %dma = getelementptr inbounds %struct.cal_ctx, ptr %3, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma) #11
  %list = getelementptr inbounds %struct.cal_buffer, ptr %vb, i32 0, i32 1
  %queue = getelementptr inbounds %struct.cal_ctx, ptr %3, i32 0, i32 6, i32 1
  %prev.i = getelementptr inbounds %struct.cal_ctx, ptr %3, i32 0, i32 6, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cal_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma, i32 noundef %call4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cal_ctx_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_ctx_set_dma_addr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_ctx_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_quickdump_regs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_ctx_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cal_ctx_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cal_release_buffers(ptr noundef %ctx, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %dma) #11
  %queue = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %cmp.not52 = icmp eq ptr %1, %queue
  br i1 %cmp.not52, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in53 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in53, i32 -736
  %2 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in53, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in53) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in53, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in53, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef %state) #11
  %cmp.not = icmp eq ptr %.pn, %queue
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pending = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pending, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef nonnull %12, i32 noundef %state) #11
  %13 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pending, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %active = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active, align 4
  %tobool24.not = icmp eq ptr %15, null
  br i1 %tobool24.not, label %if.end.if.end32_crit_edge, label %if.then25

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef nonnull %15, i32 noundef %state) #11
  %16 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %active, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end.if.end32_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %dma) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.64, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.64, i32 noundef 32) #11
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_mc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_num_formats to i32))
  %2 = load i32, ptr @cal_num_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp ult i32 %1, %2
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %mbus_code = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 5
  %3 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %idx.026 = phi i32 [ %idx.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.024 = phi i32 [ %inc11, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  br i1 %tobool.not, label %for.body.if.end5_crit_edge, label %land.lhs.true

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %for.body
  %code = getelementptr [0 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 %i.024, i32 1
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp3.not = icmp eq i32 %6, %4
  br i1 %cmp3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %for.body.if.end5_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.026, i32 %1)
  %cmp7 = icmp eq i32 %idx.026, %1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9 = getelementptr [0 x %struct.cal_format_info], ptr @cal_formats, i32 0, i32 %i.024
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pixelformat, align 4
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %idx.026, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %land.lhs.true.for.inc_crit_edge
  %idx.1 = phi i32 [ %idx.026, %land.lhs.true.for.inc_crit_edge ], [ %inc, %if.end10 ]
  %inc11 = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc11, %2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v_fmt = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8
  %2 = call ptr @memcpy(ptr %f, ptr %v_fmt, i32 204)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_mc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  %fmtinfo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmtinfo) #11
  %2 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fmtinfo, align 4, !annotation !182
  %num_buffers.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 12, i32 21
  %3 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %5 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %9, ptr noundef nonnull @.str.66, i32 noundef %conv, ptr noundef nonnull @.str.67) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @cal_mc_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef nonnull %fmtinfo)
  %v_fmt = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8
  %12 = call ptr @memcpy(ptr %v_fmt, ptr %f, i32 204)
  %13 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fmtinfo, align 4
  %fmtinfo7 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %fmtinfo7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %fmtinfo7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmtinfo) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_mc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call fastcc void @cal_mc_try_fmt(ptr noundef %1, ptr noundef %f, ptr noundef null)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_mc_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %call1 = tail call ptr @cal_format_by_fourcc(i32 noundef %5) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %6 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp3 = icmp ugt i32 %6, 2
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixel_format, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %10, ptr noundef nonnull @.str.70, i32 noundef %conv, i32 noundef %14) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bpp11 = getelementptr inbounds %struct.cal_format_info, ptr %call1, i32 0, i32 2
  %15 = ptrtoint ptr %bpp11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bpp11, align 4
  %conv12 = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv12, 7
  %and = and i32 %add, 504
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %type, align 4
  %div.rhs.trunc = trunc i32 %and to i16
  %div30 = udiv i16 128, %div.rhs.trunc
  %div.zext = zext i16 %div30 to i32
  %18 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.zext, ptr %18, align 4
  %div13 = udiv i32 524288, %and
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %20 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div13, ptr %max_width, align 4
  %div1431 = udiv i16 64, %div.rhs.trunc
  %div14.zext = zext i16 %div1431 to i32
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div14.zext, ptr %step_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %22 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %23 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16383, ptr %max_height, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %24 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cal_mc_try_fmt(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %f, ptr noundef writeonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @cal_format_by_fourcc(i32 noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  %spec.store.select = select i1 %tobool.not, ptr @cal_formats, ptr %call
  %bpp2 = getelementptr inbounds %struct.cal_format_info, ptr %spec.store.select, i32 0, i32 2
  %2 = ptrtoint ptr %bpp2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bpp2, align 4
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 7
  %and = and i32 %add, 504
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %div.rhs.trunc = trunc i32 %and to i16
  %div117 = udiv i16 128, %div.rhs.trunc
  %div.zext = zext i16 %div117 to i32
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %div.zext)
  %div4 = udiv i32 524288, %and
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %div4)
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 1)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 16383)
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height, align 4
  %14 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spec.store.select, align 4
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp29 = icmp eq i32 %18, 0
  br i1 %cmp29, label %if.then31, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %entry.if.end33_crit_edge
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesperline, align 4
  %mul = mul nuw nsw i32 %7, %and
  %div35116 = lshr exact i32 %mul, 3
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %div35116)
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 262128)
  %add50 = add nuw nsw i32 %23, 15
  %and51 = and i32 %add50, 524272
  %24 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and51, ptr %bytesperline, align 4
  %mul55 = mul nuw i32 %and51, %12
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul55, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 8, i32 1, i32 0, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace, align 4
  %colorspace57 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %colorspace57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %colorspace57, align 4
  %tobool58.not = icmp eq ptr %info, null
  br i1 %tobool58.not, label %if.end33.do.body_crit_edge, label %if.then59

if.end33.do.body_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then59:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.store.select, ptr %info, align 4
  br label %do.body

do.body:                                          ; preds = %if.then59, %if.end33.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %30 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp61 = icmp ugt i32 %30, 2
  br i1 %cmp61, label %do.end, label %do.body.do.end74_crit_edge

do.body.do.end74_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 3
  %31 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %ctx, i32 0, i32 13
  %35 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dma_ctx, align 4
  %conv65 = zext i8 %36 to i32
  %37 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixelformat, align 4
  %conv.i = trunc i32 %38 to i8
  store i8 %conv.i, ptr @fourcc_to_str.code, align 1
  %shr.i = lshr i32 %38, 8
  %conv2.i = trunc i32 %shr.i to i8
  store i8 %conv2.i, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 1), align 1
  %shr3.i = lshr i32 %38, 16
  %conv5.i = trunc i32 %shr3.i to i8
  store i8 %conv5.i, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 2), align 1
  %shr6.i = lshr i32 %38, 24
  %conv8.i = trunc i32 %shr6.i to i8
  store i8 %conv8.i, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @fourcc_to_str.code, i32 0, i32 4), align 1
  %39 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fmt, align 4
  %41 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height, align 4
  %43 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytesperline, align 4
  %45 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sizeimage, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %34, ptr noundef nonnull @.str.68, i32 noundef %conv65, ptr noundef nonnull @.str.69, ptr noundef nonnull @fourcc_to_str.code, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46) #14
  br label %do.end74

do.end74:                                         ; preds = %do.end, %do.body.do.end74_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cal_format_by_fourcc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_legacy_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %num_active_fmt = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %num_active_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_active_fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %active_fmt = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %active_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_fmt, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat, align 4
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_legacy_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  %sd_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %sd_fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt) #11
  %2 = getelementptr inbounds i8, ptr %sd_fmt, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %sd_fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sd_fmt, align 4
  %num_buffers.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 12, i32 21
  %5 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %7 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ugt i32 %7, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %11, ptr noundef nonnull @.str.66, i32 noundef %conv, ptr noundef nonnull @.str.72) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call i32 @cal_legacy_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat, align 4
  %num_active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_active_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.not.i = icmp eq i32 %17, 0
  br i1 %cmp7.not.i, label %if.end6.find_format_by_pix.exit_crit_edge, label %for.body.lr.ph.i

if.end6.find_format_by_pix.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_format_by_pix.exit

for.body.lr.ph.i:                                 ; preds = %if.end6
  %active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_fmt.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.cond.i.find_format_by_pix.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.find_format_by_pix.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_format_by_pix.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %k.08.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %15)
  %cmp1.i = icmp eq i32 %23, %15
  br i1 %cmp1.i, label %for.body.i.find_format_by_pix.exit_crit_edge, label %for.cond.i

for.body.i.find_format_by_pix.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_format_by_pix.exit

find_format_by_pix.exit:                          ; preds = %for.body.i.find_format_by_pix.exit_crit_edge, %for.cond.i.find_format_by_pix.exit_crit_edge, %if.end6.find_format_by_pix.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end6.find_format_by_pix.exit_crit_edge ], [ %21, %for.body.i.find_format_by_pix.exit_crit_edge ], [ null, %for.cond.i.find_format_by_pix.exit_crit_edge ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.cal_format_info, ptr %retval.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %code, align 4
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt, align 4
  %28 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %colorspace4.i, align 4
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %conv.i = trunc i32 %40 to i16
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %41, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %44 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 6
  %45 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %46 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %47 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 7
  %48 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %25, ptr %code9.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sd_fmt.i) #11
  %50 = getelementptr inbounds i8, ptr %sd_fmt.i, i32 56
  %51 = call ptr @memset(ptr %50, i32 255, i32 32)
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 2
  %52 = ptrtoint ptr %sd_fmt.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %sd_fmt.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sd_fmt.i, i32 0, i32 1
  %53 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %pad.i, align 4
  %54 = call ptr @memcpy(ptr %format.i, ptr %format, i32 48)
  %phy.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy.i, align 4
  %source.i = getelementptr inbounds %struct.cal_camerarx, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %source.i, align 4
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %find_format_by_pix.exit.__subdev_set_format.exit.thread_crit_edge, label %if.else.i

find_format_by_pix.exit.__subdev_set_format.exit.thread_crit_edge: ; preds = %find_format_by_pix.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_format.exit.thread

if.else.i:                                        ; preds = %find_format_by_pix.exit
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i, align 4
  %pad1.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %pad1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pad1.i, align 4
  %tobool2.not.i = icmp eq ptr %62, null
  br i1 %tobool2.not.i, label %if.else.i.__subdev_set_format.exit.thread_crit_edge, label %land.lhs.true.i

if.else.i.__subdev_set_format.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_format.exit.thread

land.lhs.true.i:                                  ; preds = %if.else.i
  %set_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %set_fmt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_fmt.i, align 4
  %tobool5.not.i = icmp eq ptr %64, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.__subdev_set_format.exit.thread_crit_edge, label %if.else7.i

land.lhs.true.i.__subdev_set_format.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_format.exit.thread

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool8.not.i = icmp eq ptr %65, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else14.i_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %set_fmt10.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %set_fmt10.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_fmt10.i, align 4
  %tobool11.not.i = icmp eq ptr %67, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else14.i_crit_edge, label %land.lhs.true9.i.if.end20.i_crit_edge

land.lhs.true9.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.lhs.true9.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true9.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else14.i, %land.lhs.true9.i.if.end20.i_crit_edge
  %.sink.i = phi ptr [ %64, %if.else14.i ], [ %67, %land.lhs.true9.i.if.end20.i_crit_edge ]
  %call18.i = call i32 %.sink.i(ptr noundef nonnull %58, ptr noundef null, ptr noundef nonnull %sd_fmt.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool21.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.end20.i.__subdev_set_format.exit.thread_crit_edge

if.end20.i.__subdev_set_format.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__subdev_set_format.exit.thread

do.body.i:                                        ; preds = %if.end20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %68 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.not.i = icmp eq i32 %68, 0
  br i1 %cmp.not.i, label %do.body.i.if.end17_crit_edge, label %do.end.i

do.body.i.if.end17_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %cal.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cal.i, align 8
  %dev.i = getelementptr inbounds %struct.cal_dev, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 8
  %dma_ctx.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %73 = ptrtoint ptr %dma_ctx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dma_ctx.i, align 4
  %conv.i112 = zext i8 %74 to i32
  %75 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %format, align 4
  %77 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %height2.i, align 4
  %79 = ptrtoint ptr %code9.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %code9.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %72, ptr noundef nonnull @.str.47, i32 noundef %conv.i112, ptr noundef nonnull @.str.76, i32 noundef %76, i32 noundef %78, i32 noundef %80) #14
  br label %if.end17

__subdev_set_format.exit.thread:                  ; preds = %if.end20.i.__subdev_set_format.exit.thread_crit_edge, %land.lhs.true.i.__subdev_set_format.exit.thread_crit_edge, %if.else.i.__subdev_set_format.exit.thread_crit_edge, %find_format_by_pix.exit.__subdev_set_format.exit.thread_crit_edge
  %retval.0.i114.ph = phi i32 [ -19, %find_format_by_pix.exit.__subdev_set_format.exit.thread_crit_edge ], [ -515, %land.lhs.true.i.__subdev_set_format.exit.thread_crit_edge ], [ -515, %if.else.i.__subdev_set_format.exit.thread_crit_edge ], [ %call18.i, %if.end20.i.__subdev_set_format.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt.i) #11
  br label %cleanup

if.end17:                                         ; preds = %do.end.i, %do.body.i.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt.i) #11
  %81 = ptrtoint ptr %code9.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %code9.i, align 4
  %83 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp21.not = icmp eq i32 %82, %84
  br i1 %cmp21.not, label %if.end38, label %do.body24

do.body24:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %85 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp25 = icmp ugt i32 %85, 2
  br i1 %cmp25, label %do.end30, label %do.body24.cleanup_crit_edge

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %cal31 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %86 = ptrtoint ptr %cal31 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cal31, align 8
  %dev32 = getelementptr inbounds %struct.cal_dev, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev32, align 8
  %dma_ctx33 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %90 = ptrtoint ptr %dma_ctx33 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %dma_ctx33, align 4
  %conv34 = zext i8 %91 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %89, ptr noundef nonnull @.str.74, i32 noundef %conv34, ptr noundef nonnull @.str.72) #14
  br label %cleanup

if.end38:                                         ; preds = %if.end17
  %v_fmt = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8
  %fmt39 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1
  %92 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %format, align 4
  %94 = ptrtoint ptr %fmt39 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %fmt39, align 4
  %95 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %height2.i, align 4
  %height2.i116 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %height2.i116 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %height2.i116, align 4
  %98 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %field3.i, align 4
  %field3.i118 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 3
  %100 = ptrtoint ptr %field3.i118 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %field3.i118, align 4
  %101 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %colorspace4.i, align 4
  %colorspace4.i120 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 5, i32 0, i32 1
  %103 = ptrtoint ptr %colorspace4.i120 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %colorspace4.i120, align 4
  %104 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %41, align 4
  %conv.i121 = zext i16 %105 to i32
  %106 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv.i121, ptr %106, align 4
  %108 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %quantization6.i, align 2
  %conv5.i123 = zext i16 %109 to i32
  %quantization6.i124 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 5, i32 1
  %110 = ptrtoint ptr %quantization6.i124 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv5.i123, ptr %quantization6.i124, align 4
  %111 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i126 = zext i16 %112 to i32
  %xfer_func8.i127 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 5, i32 1, i32 1
  %113 = ptrtoint ptr %xfer_func8.i127 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv7.i126, ptr %xfer_func8.i127, align 4
  %114 = ptrtoint ptr %v_fmt to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %v_fmt, align 4
  %115 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %retval.0.i, align 4
  %pixelformat44 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 2
  %117 = ptrtoint ptr %pixelformat44 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %pixelformat44, align 4
  store i32 %99, ptr %field3.i118, align 4
  call fastcc void @cal_calc_format_size(ptr noundef %1, ptr noundef %retval.0.i, ptr noundef %v_fmt)
  %118 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %phy.i, align 4
  %subdev = getelementptr inbounds %struct.cal_camerarx, ptr %119, i32 0, i32 10
  %tobool50.not = icmp eq ptr %subdev, null
  br i1 %tobool50.not, label %if.end38.if.end72_crit_edge, label %if.else

if.end38.if.end72_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.else:                                          ; preds = %if.end38
  %ops = getelementptr inbounds %struct.cal_camerarx, ptr %119, i32 0, i32 10, i32 6
  %120 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %121, i32 0, i32 7
  %122 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pad, align 4
  %tobool52.not = icmp eq ptr %123, null
  br i1 %tobool52.not, label %if.else.if.end72_crit_edge, label %land.lhs.true

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %set_fmt, align 4
  %tobool55.not = icmp eq ptr %125, null
  br i1 %tobool55.not, label %land.lhs.true.if.end72_crit_edge, label %if.else57

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.else57:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool58.not = icmp eq ptr %126, null
  br i1 %tobool58.not, label %if.else57.if.else65_crit_edge, label %land.lhs.true59

if.else57.if.else65_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else65

land.lhs.true59:                                  ; preds = %if.else57
  %set_fmt60 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %set_fmt60 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %set_fmt60, align 4
  %tobool61.not = icmp eq ptr %128, null
  br i1 %tobool61.not, label %land.lhs.true59.if.else65_crit_edge, label %land.lhs.true59.if.end72.sink.split_crit_edge

land.lhs.true59.if.end72.sink.split_crit_edge:    ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.sink.split

land.lhs.true59.if.else65_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else65

if.else65:                                        ; preds = %land.lhs.true59.if.else65_crit_edge, %if.else57.if.else65_crit_edge
  br label %if.end72.sink.split

if.end72.sink.split:                              ; preds = %if.else65, %land.lhs.true59.if.end72.sink.split_crit_edge
  %.sink = phi ptr [ %125, %if.else65 ], [ %128, %land.lhs.true59.if.end72.sink.split_crit_edge ]
  %call69 = call i32 %.sink(ptr noundef nonnull %subdev, ptr noundef null, ptr noundef nonnull %sd_fmt) #11
  br label %if.end72

if.end72:                                         ; preds = %if.end72.sink.split, %land.lhs.true.if.end72_crit_edge, %if.else.if.end72_crit_edge, %if.end38.if.end72_crit_edge
  %fmtinfo73 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 7
  %129 = ptrtoint ptr %fmtinfo73 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %retval.0.i, ptr %fmtinfo73, align 8
  %130 = call ptr @memcpy(ptr %f, ptr %v_fmt, i32 204)
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end30, %do.body24.cleanup_crit_edge, %__subdev_set_format.exit.thread, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -22, %do.end30 ], [ -22, %do.body24.cleanup_crit_edge ], [ %retval.0.i114.ph, %__subdev_set_format.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sd_fmt) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_legacy_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #11
  %2 = getelementptr inbounds i8, ptr %fse, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %num_active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_active_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 0
  br i1 %cmp7.not.i, label %entry.do.body_crit_edge, label %for.body.lr.ph.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph.i:                                 ; preds = %entry
  %active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_fmt.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.do.body_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %k.08.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp1.i = icmp eq i32 %13, %5
  br i1 %cmp1.i, label %find_format_by_pix.exit, label %for.cond.i

find_format_by_pix.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %find_format_by_pix.exit.do.body_crit_edge, label %find_format_by_pix.exit.if.end10_crit_edge

find_format_by_pix.exit.if.end10_crit_edge:       ; preds = %find_format_by_pix.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

find_format_by_pix.exit.do.body_crit_edge:        ; preds = %find_format_by_pix.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %find_format_by_pix.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %14 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp ugt i32 %14, 2
  br i1 %cmp, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %18, ptr noundef nonnull @.str.77, i32 noundef %conv, i32 noundef %5) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %active_fmt = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %active_fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_fmt, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pixelformat, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %find_format_by_pix.exit.if.end10_crit_edge
  %fmtinfo.0 = phi ptr [ %11, %find_format_by_pix.exit.if.end10_crit_edge ], [ %24, %do.end7 ]
  %fmt11 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1
  %field = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %field, align 4
  %field13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %field13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %field13, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %31 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %pad, align 4
  %code = getelementptr inbounds %struct.cal_format_info, ptr %fmtinfo.0, i32 0, i32 1
  %32 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %code, align 4
  %code14 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %34 = ptrtoint ptr %code14 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %code14, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %35 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %which, align 4
  %phy = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %fse, align 4
  %37 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy, align 4
  %source134 = getelementptr inbounds %struct.cal_camerarx, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %source134 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %source134, align 4
  %tobool15.not135 = icmp eq ptr %40, null
  br i1 %tobool15.not135, label %if.end10.if.then77.critedge_crit_edge, label %if.else.lr.ph

if.end10.if.then77.critedge_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77.critedge

if.else.lr.ph:                                    ; preds = %if.end10
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  br label %if.else

if.else:                                          ; preds = %for.inc.if.else_crit_edge, %if.else.lr.ph
  %41 = phi ptr [ %40, %if.else.lr.ph ], [ %72, %for.inc.if.else_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %pad17 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %pad17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pad17, align 4
  %tobool18.not = icmp eq ptr %45, null
  br i1 %tobool18.not, label %if.else.if.then77.critedge_crit_edge, label %land.lhs.true

if.else.if.then77.critedge_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77.critedge

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %enum_frame_size, align 4
  %tobool21.not = icmp eq ptr %47, null
  br i1 %tobool21.not, label %land.lhs.true.if.then77.critedge_crit_edge, label %if.else23

land.lhs.true.if.then77.critedge_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77.critedge

if.else23:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool24.not = icmp eq ptr %48, null
  br i1 %tobool24.not, label %if.else23.if.else31_crit_edge, label %land.lhs.true25

if.else23.if.else31_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else31

land.lhs.true25:                                  ; preds = %if.else23
  %enum_frame_size26 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %enum_frame_size26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %enum_frame_size26, align 4
  %tobool27.not = icmp eq ptr %50, null
  br i1 %tobool27.not, label %land.lhs.true25.if.else31_crit_edge, label %land.lhs.true25.if.end38_crit_edge

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true25.if.else31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true25.if.else31_crit_edge, %if.else23.if.else31_crit_edge
  br label %if.end38

if.end38:                                         ; preds = %if.else31, %land.lhs.true25.if.end38_crit_edge
  %.sink = phi ptr [ %47, %if.else31 ], [ %50, %land.lhs.true25.if.end38_crit_edge ]
  %call35 = call i32 %.sink(ptr noundef nonnull %41, ptr noundef null, ptr noundef nonnull %fse) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool39.not = icmp eq i32 %call35, 0
  br i1 %tobool39.not, label %if.end41, label %if.end38.if.then77.critedge_crit_edge

if.end38.if.then77.critedge_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77.critedge

if.end41:                                         ; preds = %if.end38
  %51 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fmt, align 4
  %53 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp43 = icmp eq i32 %52, %54
  br i1 %cmp43, label %land.lhs.true45, label %if.end41.if.else50_crit_edge

if.end41.if.else50_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else50

land.lhs.true45:                                  ; preds = %if.end41
  %55 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height, align 4
  %57 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp47 = icmp eq i32 %56, %58
  br i1 %cmp47, label %land.lhs.true45.if.end88_crit_edge, label %land.lhs.true45.if.else50_crit_edge

land.lhs.true45.if.else50_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else50

land.lhs.true45.if.end88_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.else50:                                        ; preds = %land.lhs.true45.if.else50_crit_edge, %if.end41.if.else50_crit_edge
  %59 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %min_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %60)
  %cmp53.not = icmp ult i32 %52, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp59.not = icmp ugt i32 %52, %54
  %or.cond = select i1 %cmp53.not, i1 true, i1 %cmp59.not
  br i1 %or.cond, label %if.else50.for.inc_crit_edge, label %land.lhs.true61

if.else50.for.inc_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true61:                                  ; preds = %if.else50
  %61 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height, align 4
  %63 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp64.not = icmp ult i32 %62, %64
  br i1 %cmp64.not, label %land.lhs.true61.for.inc_crit_edge, label %land.lhs.true66

land.lhs.true61.for.inc_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true66:                                  ; preds = %land.lhs.true61
  %65 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %66)
  %cmp70.not = icmp ugt i32 %62, %66
  br i1 %cmp70.not, label %land.lhs.true66.for.inc_crit_edge, label %land.lhs.true66.if.end88_crit_edge

land.lhs.true66.if.end88_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

land.lhs.true66.for.inc_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true66.for.inc_crit_edge, %land.lhs.true61.for.inc_crit_edge, %if.else50.for.inc_crit_edge
  %67 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fse, align 4
  %inc = add i32 %68, 1
  store i32 %inc, ptr %fse, align 4
  %69 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy, align 4
  %source = getelementptr inbounds %struct.cal_camerarx, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %source, align 4
  %tobool15.not = icmp eq ptr %72, null
  br i1 %tobool15.not, label %for.inc.if.then77.critedge_crit_edge, label %for.inc.if.else_crit_edge

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

for.inc.if.then77.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77.critedge

if.then77.critedge:                               ; preds = %for.inc.if.then77.critedge_crit_edge, %if.end38.if.then77.critedge_crit_edge, %land.lhs.true.if.then77.critedge_crit_edge, %if.else.if.then77.critedge_crit_edge, %if.end10.if.then77.critedge_crit_edge
  %73 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fmt11, align 4
  %75 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %fmt, align 4
  %height85 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 1
  %76 = ptrtoint ptr %height85 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height85, align 4
  %height87 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %78 = ptrtoint ptr %height87 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %height87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then77.critedge, %land.lhs.true66.if.end88_crit_edge, %land.lhs.true45.if.end88_crit_edge
  %colorspace = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 8, i32 1, i32 0, i32 5, i32 0, i32 1
  %79 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %colorspace, align 4
  %colorspace92 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %81 = ptrtoint ptr %colorspace92 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %colorspace92, align 4
  call fastcc void @cal_calc_format_size(ptr noundef %1, ptr noundef %fmtinfo.0, ptr noundef %f)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #11
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_legacy_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %inp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.79, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cal_legacy_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cal_legacy_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %cond = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_legacy_g_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #11
  %phy = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %source = getelementptr inbounds %struct.cal_camerarx, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %source, align 4
  %call2 = tail call i32 @v4l2_g_parm_cap(ptr noundef %call1, ptr noundef %5, ptr noundef %a) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_legacy_s_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #11
  %phy = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %source = getelementptr inbounds %struct.cal_camerarx, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %source, align 4
  %call2 = tail call i32 @v4l2_s_parm_cap(ptr noundef %call1, ptr noundef %5, ptr noundef %a) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_legacy_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #11
  %2 = getelementptr inbounds i8, ptr %fse, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %num_active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_active_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 0
  br i1 %cmp7.not.i, label %entry.do.body_crit_edge, label %for.body.lr.ph.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph.i:                                 ; preds = %entry
  %active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_fmt.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.do.body_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %k.08.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp1.i = icmp eq i32 %13, %5
  br i1 %cmp1.i, label %find_format_by_pix.exit, label %for.cond.i

find_format_by_pix.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %find_format_by_pix.exit.do.body_crit_edge, label %if.end7

find_format_by_pix.exit.do.body_crit_edge:        ; preds = %find_format_by_pix.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %find_format_by_pix.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %14 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp ugt i32 %14, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cal = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cal, align 8
  %dev = getelementptr inbounds %struct.cal_dev, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dma_ctx = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %dma_ctx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dma_ctx, align 4
  %conv = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %18, ptr noundef nonnull @.str.80, i32 noundef %conv, i32 noundef %5) #14
  br label %cleanup

if.end7:                                          ; preds = %find_format_by_pix.exit
  %21 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fsize, align 4
  %23 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fse, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %24 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %pad, align 4
  %code = getelementptr inbounds %struct.cal_format_info, ptr %11, i32 0, i32 1
  %25 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code, align 4
  %code9 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %27 = ptrtoint ptr %code9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %code9, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %28 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %which, align 4
  %phy = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy, align 4
  %source = getelementptr inbounds %struct.cal_camerarx, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %source, align 4
  %tobool10.not = icmp eq ptr %32, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.else

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %pad12 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %pad12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pad12, align 4
  %tobool13.not = icmp eq ptr %36, null
  br i1 %tobool13.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %enum_frame_size, align 4
  %tobool16.not = icmp eq ptr %38, null
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %if.else18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else18:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool19.not = icmp eq ptr %39, null
  br i1 %tobool19.not, label %if.else18.if.else26_crit_edge, label %land.lhs.true20

if.else18.if.else26_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else26

land.lhs.true20:                                  ; preds = %if.else18
  %enum_frame_size21 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %enum_frame_size21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %enum_frame_size21, align 4
  %tobool22.not = icmp eq ptr %41, null
  br i1 %tobool22.not, label %land.lhs.true20.if.else26_crit_edge, label %land.lhs.true20.if.end33_crit_edge

land.lhs.true20.if.end33_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true20.if.else26_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else26

if.else26:                                        ; preds = %land.lhs.true20.if.else26_crit_edge, %if.else18.if.else26_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.else26, %land.lhs.true20.if.end33_crit_edge
  %.sink = phi ptr [ %38, %if.else26 ], [ %41, %land.lhs.true20.if.end33_crit_edge ]
  %call30 = call i32 %.sink(ptr noundef nonnull %32, ptr noundef null, ptr noundef nonnull %fse) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool34.not = icmp eq i32 %call30, 0
  br i1 %tobool34.not, label %do.body37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body37:                                        ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cal_debug to i32))
  %42 = load i32, ptr @cal_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp38.not = icmp eq i32 %42, 0
  br i1 %cmp38.not, label %do.body37.do.end52_crit_edge, label %do.end43

do.body37.do.end52_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %cal44 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %cal44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cal44, align 8
  %dev45 = getelementptr inbounds %struct.cal_dev, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev45, align 8
  %dma_ctx46 = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 13
  %47 = ptrtoint ptr %dma_ctx46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dma_ctx46, align 4
  %conv47 = zext i8 %48 to i32
  %49 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fse, align 4
  %51 = ptrtoint ptr %code9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %code9, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %53 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %55 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %57 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %59 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_height, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.23, ptr noundef %46, ptr noundef nonnull @.str.83, i32 noundef %conv47, ptr noundef nonnull @.str.81, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #14
  br label %do.end52

do.end52:                                         ; preds = %do.end43, %do.body37.do.end52_crit_edge
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %61 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %type, align 4
  %max_width53 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %62 = ptrtoint ptr %max_width53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_width53, align 4
  %64 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %64, align 4
  %max_height54 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %66 = ptrtoint ptr %max_height54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_height54, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %68 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end33.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end52 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call30, %if.end33.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cal_legacy_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fival) #0 align 64 {
entry:
  %fie = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fie) #11
  %2 = getelementptr inbounds i8, ptr %fie, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fival, align 4
  %6 = ptrtoint ptr %fie to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fie, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %width2 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %7 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width2, align 4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %height3 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %10 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height3, align 4
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 6
  %13 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %which, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %14 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixel_format, align 4
  %num_active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %num_active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_active_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.not.i = icmp eq i32 %17, 0
  br i1 %cmp7.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %active_fmt.i = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %active_fmt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_fmt.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %k.08.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %15)
  %cmp1.i = icmp eq i32 %23, %15
  br i1 %cmp1.i, label %find_format_by_pix.exit, label %for.cond.i

find_format_by_pix.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %find_format_by_pix.exit.cleanup_crit_edge, label %if.end

find_format_by_pix.exit.cleanup_crit_edge:        ; preds = %find_format_by_pix.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %find_format_by_pix.exit
  %code = getelementptr inbounds %struct.cal_format_info, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %code, align 4
  %code5 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %26 = ptrtoint ptr %code5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %code5, align 4
  %phy = getelementptr inbounds %struct.cal_ctx, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 4
  %source = getelementptr inbounds %struct.cal_camerarx, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %source, align 4
  %tobool6.not = icmp eq ptr %30, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pad, align 4
  %tobool8.not = icmp eq ptr %34, null
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_interval = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %enum_frame_interval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enum_frame_interval, align 4
  %tobool11.not = icmp eq ptr %36, null
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %if.else13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else13:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool14.not = icmp eq ptr %37, null
  br i1 %tobool14.not, label %if.else13.if.else21_crit_edge, label %land.lhs.true15

if.else13.if.else21_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

land.lhs.true15:                                  ; preds = %if.else13
  %enum_frame_interval16 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %enum_frame_interval16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enum_frame_interval16, align 4
  %tobool17.not = icmp eq ptr %39, null
  br i1 %tobool17.not, label %land.lhs.true15.if.else21_crit_edge, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true15.if.else21_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true15.if.else21_crit_edge, %if.else13.if.else21_crit_edge
  br label %if.end28

if.end28:                                         ; preds = %if.else21, %land.lhs.true15.if.end28_crit_edge
  %.sink = phi ptr [ %36, %if.else21 ], [ %39, %land.lhs.true15.if.end28_crit_edge ]
  %call25 = call i32 %.sink(ptr noundef nonnull %30, ptr noundef null, ptr noundef nonnull %fie) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type, align 4
  %41 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %42 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %interval, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %find_format_by_pix.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %find_format_by_pix.exit.cleanup_crit_edge ], [ %call25, %if.end28.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fie) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !161, !162, !163, !164, !166, !167}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 926, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cal_ctx_v4l2_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cal_ctx_v4l2_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 933, i32 4}
!10 = !{ptr @cal_ctx_v4l2_register._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cal_ctx_v4l2_register._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 939, i32 4}
!14 = !{ptr @cal_ctx_v4l2_register._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cal_ctx_v4l2_register._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 946, i32 3}
!18 = !{ptr @cal_ctx_v4l2_register._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cal_ctx_v4l2_register._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 956, i32 3}
!22 = !{ptr @cal_ctx_v4l2_register._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cal_ctx_v4l2_register._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 962, i32 2}
!26 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cal_ctx_v4l2_register._entry.17, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @cal_ctx_v4l2_register._entry_ptr.20, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 970, i32 2}
!31 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.23, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cal_ctx_v4l2_unregister._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @cal_ctx_v4l2_unregister._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @cal_ctx_v4l2_init.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 983, i32 2}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cal_ctx_v4l2_init.__key.25, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 984, i32 2}
!40 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cal_ctx_v4l2_init.__key.27, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 985, i32 2}
!43 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 1009, i32 41}
!46 = !{ptr @cal_ctx_v4l2_init._key, !47, !"_key", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 1024, i32 9}
!48 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 1026, i32 4}
!51 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cal_ctx_v4l2_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @cal_ctx_v4l2_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 839, i32 4}
!56 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cal_ctx_v4l2_init_formats._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @cal_ctx_v4l2_init_formats._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 844, i32 3}
!61 = !{ptr @cal_ctx_v4l2_init_formats._entry.35, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cal_ctx_v4l2_init_formats._entry_ptr.37, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 853, i32 5}
!65 = !{ptr @cal_ctx_v4l2_init_formats._entry.38, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cal_ctx_v4l2_init_formats._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 863, i32 3}
!69 = !{ptr @cal_ctx_v4l2_init_formats._entry.41, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cal_ctx_v4l2_init_formats._entry_ptr.43, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 874, i32 3}
!73 = !{ptr @cal_ctx_v4l2_init_formats._entry.44, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @cal_ctx_v4l2_init_formats._entry_ptr.46, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @fourcc_to_str.code, !76, !"code", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 31, i32 14}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 137, i32 2}
!79 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @__subdev_get_format._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @__subdev_get_format._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 186, i32 2}
!84 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cal_calc_format_size._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @cal_calc_format_size._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @cal_video_qops, !88, !"cal_video_qops", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 791, i32 29}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 619, i32 2}
!91 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @cal_queue_setup._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @cal_queue_setup._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 633, i32 3}
!96 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cal_buffer_prepare._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @cal_buffer_prepare._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!101 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 716, i32 3}
!104 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cal_start_streaming._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @cal_start_streaming._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 726, i32 3}
!109 = !{ptr @cal_start_streaming._entry.58, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cal_start_streaming._entry_ptr.60, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 733, i32 3}
!113 = !{ptr @cal_start_streaming._entry.61, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cal_start_streaming._entry_ptr.63, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @cal_fops, !116, !"cal_fops", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 806, i32 42}
!117 = !{ptr @cal_ioctl_mc_ops, !118, !"cal_ioctl_mc_ops", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 576, i32 36}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 52, i32 23}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 56, i32 4}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 534, i32 3}
!125 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @cal_mc_s_fmt_vid_cap._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @cal_mc_s_fmt_vid_cap._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 512, i32 2}
!130 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @cal_mc_try_fmt._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @cal_mc_try_fmt._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 558, i32 3}
!135 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @cal_mc_enum_framesizes._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @cal_mc_enum_framesizes._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @cal_ioctl_legacy_ops, !139, !"cal_ioctl_legacy_ops", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 405, i32 36}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 265, i32 3}
!142 = !{ptr @cal_legacy_s_fmt_vid_cap._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @cal_legacy_s_fmt_vid_cap._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 283, i32 3}
!146 = !{ptr @cal_legacy_s_fmt_vid_cap._entry.73, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @cal_legacy_s_fmt_vid_cap._entry_ptr.75, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 158, i32 2}
!150 = !{ptr @__subdev_set_format._entry, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @__subdev_set_format._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 202, i32 3}
!154 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @cal_legacy_try_fmt_vid_cap._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @cal_legacy_try_fmt_vid_cap._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 347, i32 21}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 314, i32 3}
!161 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @cal_legacy_enum_framesizes._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @cal_legacy_enum_framesizes._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/ti-vpe/cal-video.c", i32 329, i32 2}
!166 = !{ptr @cal_legacy_enum_framesizes._entry.82, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @cal_legacy_enum_framesizes._entry_ptr.84, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i8 0, i8 2}
!178 = !{!"branch_weights", i32 1, i32 2000}
!179 = !{i64 2148512983}
!180 = !{i64 999583, i64 999608, i64 999630, i64 999646, i64 999658, i64 999678, i64 999702, i64 999718, i64 999730}
!181 = !{i64 2148513171}
!182 = !{!"auto-init"}
