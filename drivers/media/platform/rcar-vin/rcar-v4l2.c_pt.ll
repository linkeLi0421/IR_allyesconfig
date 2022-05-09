; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rcar-vin/rcar-v4l2.c_pt.bc'
source_filename = "../drivers/media/platform/rcar-vin/rcar-v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rvin_video_format = type { i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rvin_dev = type { ptr, ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_async_notifier, %struct.rvin_parallel_entity, ptr, i32, %struct.media_pad, %struct.mutex, %struct.vb2_queue, ptr, i32, %struct.spinlock, [3 x %struct.anon.115], %struct.list_head, i32, i32, i8, i32, i32, %struct.v4l2_pix_format, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i64, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rvin_parallel_entity = type { ptr, ptr, i32, %struct.v4l2_fwnode_bus_parallel, i32, i32 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.115 = type { ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.96, i32, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rvin_info = type { i32, i8, i8, i8, i32, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rvin_group = type { %struct.kref, %struct.media_device, %struct.mutex, i32, %struct.v4l2_async_notifier, [32 x ptr], ptr, [4 x %struct.anon.114] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.anon.114 = type { ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
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
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings = type { i32, %union.anon.87 }
%union.anon.87 = type { [32 x i32] }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.89 }
%union.anon.89 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }

@rvin_formats = internal constant { [14 x %struct.rvin_video_format], [48 x i8] } { [14 x %struct.rvin_video_format] [%struct.rvin_video_format { i32 842094158, i8 1 }, %struct.rvin_video_format { i32 909203022, i8 1 }, %struct.rvin_video_format { i32 1448695129, i8 2 }, %struct.rvin_video_format { i32 1498831189, i8 2 }, %struct.rvin_video_format { i32 1346520914, i8 2 }, %struct.rvin_video_format { i32 892424792, i8 2 }, %struct.rvin_video_format { i32 875713112, i8 4 }, %struct.rvin_video_format { i32 892424769, i8 2 }, %struct.rvin_video_format { i32 875713089, i8 4 }, %struct.rvin_video_format { i32 825770306, i8 1 }, %struct.rvin_video_format { i32 1196573255, i8 1 }, %struct.rvin_video_format { i32 1195528775, i8 1 }, %struct.rvin_video_format { i32 1111967570, i8 1 }, %struct.rvin_video_format { i32 1497715271, i8 1 }], [48 x i8] zeroinitializer }, align 32
@rvin_v4l2_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Removing %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rvin_v4l2_unregister\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/rcar-vin/rcar-v4l2.c\00", [52 x i8] zeroinitializer }, align 32
@rvin_v4l2_unregister._entry_ptr = internal global ptr @rvin_v4l2_unregister._entry, section ".printk_index", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIN%u output\00", [19 x i8] zeroinitializer }, align 32
@rvin_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @rvin_open, ptr @rvin_release }, [60 x i8] zeroinitializer }, align 32
@rvin_mc_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rvin_querycap, ptr @rvin_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_mc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_mc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@rvin_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rvin_querycap, ptr @rvin_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @rvin_g_std, ptr @rvin_s_std, ptr @rvin_querystd, ptr @rvin_enum_input, ptr @rvin_g_input, ptr @rvin_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_g_pixelaspect, ptr @rvin_g_selection, ptr @rvin_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_g_parm, ptr @rvin_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_s_dv_timings, ptr @rvin_g_dv_timings, ptr @rvin_query_dv_timings, ptr @rvin_enum_dv_timings, ptr @rvin_dv_timings_cap, ptr @rvin_g_edid, ptr @rvin_s_edid, ptr @rvin_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@rvin_v4l2_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1082, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rvin_v4l2_register\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rvin_v4l2_register._entry_ptr = internal global ptr @rvin_v4l2_register._entry, section ".printk_index", align 4
@rvin_v4l2_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Device registered as %s\0A\00", [33 x i8] zeroinitializer }, align 32
@rvin_v4l2_register._entry_ptr.10 = internal global ptr @rvin_v4l2_register._entry.8, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcar_vin\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"R_Car_VIN\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@rvin_s_selection.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rvin_s_selection\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cropped %dx%d@%d:%d of %dx%d\0A\00", [34 x i8] zeroinitializer }, align 32
@rvin_s_selection.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Compose %dx%d@%d:%d in %dx%d\0A\00", [34 x i8] zeroinitializer }, align 32
@rvin_format_align.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rvin_format_align\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Format %ux%u bpl: %u size: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 825770306, i64 842094158, i64 875713089, i64 875713112, i64 892424769, i64 892424792, i64 909203022, i64 1111967570, i64 1195528775, i64 1196573255, i64 1346520914, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 842094158, i64 909203022, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.23 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 4106, i64 8198, i64 8207, i64 8209, i64 8216, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4294966781, i64 4294967277]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"rvin_formats\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 32, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 992, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1056, i32 43 }
@___asan_gen_.45 = private unnamed_addr constant [10 x i8] c"rvin_fops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 977, i32 42 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"rvin_mc_ioctl_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 861, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"rvin_ioctl_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 761, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1082, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1088, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 312, i32 23 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 313, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 314, i32 49 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 591, i32 19 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 498, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 523, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [47 x i8] c"../drivers/media/platform/rcar-vin/rcar-v4l2.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 207, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @rvin_v4l2_register._entry, ptr @rvin_v4l2_register._entry.8, ptr @rvin_v4l2_register._entry_ptr, ptr @rvin_v4l2_register._entry_ptr.10, ptr @rvin_v4l2_unregister._entry, ptr @rvin_v4l2_unregister._entry_ptr, ptr @rvin_formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rvin_fops, ptr @rvin_mc_ioctl_ops, ptr @rvin_ioctl_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_formats to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_v4l2_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_mc_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_v4l2_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_v4l2_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rvin_format_from_pixel(ptr nocapture noundef readonly %vin, i32 noundef %pixelformat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pixelformat to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pixelformat, label %entry.cleanup_crit_edge [
    i32 875713112, label %sw.bb
    i32 842094158, label %sw.bb1
    i32 909203022, label %entry.if.then8_crit_edge
    i32 1448695129, label %if.then8.fold.split
    i32 1498831189, label %if.then8.fold.split26
    i32 1346520914, label %if.then8.fold.split27
    i32 892424792, label %if.then8.fold.split28
    i32 892424769, label %if.then8.fold.split29
    i32 875713089, label %if.then8.fold.split30
    i32 825770306, label %if.then8.fold.split31
    i32 1196573255, label %if.then8.fold.split32
    i32 1195528775, label %if.then8.fold.split33
    i32 1111967570, label %if.then8.fold.split34
    i32 1497715271, label %if.then8.fold.split35
  ]

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %info = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.if.then8_crit_edge

sw.bb.if.then8_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %info2 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %5 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info2, align 8
  %nv12 = getelementptr inbounds %struct.rvin_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %nv12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nv12, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb1.cleanup_crit_edge, label %lor.lhs.false

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb1
  %id = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 9
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %shl = shl nuw i32 1, %10
  %and = and i32 %shl, 13107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split26:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split27:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split28:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split29:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split30:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split31:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split32:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split33:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split34:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split35:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %if.then8.fold.split35, %if.then8.fold.split34, %if.then8.fold.split33, %if.then8.fold.split32, %if.then8.fold.split31, %if.then8.fold.split30, %if.then8.fold.split29, %if.then8.fold.split28, %if.then8.fold.split27, %if.then8.fold.split26, %if.then8.fold.split, %lor.lhs.false.if.then8_crit_edge, %sw.bb.if.then8_crit_edge, %entry.if.then8_crit_edge
  %i.017.lcssa = phi i32 [ 0, %lor.lhs.false.if.then8_crit_edge ], [ 6, %sw.bb.if.then8_crit_edge ], [ 1, %entry.if.then8_crit_edge ], [ 2, %if.then8.fold.split ], [ 3, %if.then8.fold.split26 ], [ 4, %if.then8.fold.split27 ], [ 5, %if.then8.fold.split28 ], [ 7, %if.then8.fold.split29 ], [ 8, %if.then8.fold.split30 ], [ 9, %if.then8.fold.split31 ], [ 10, %if.then8.fold.split32 ], [ 11, %if.then8.fold.split33 ], [ 12, %if.then8.fold.split34 ], [ 13, %if.then8.fold.split35 ]
  %add.ptr = getelementptr %struct.rvin_video_format, ptr @rvin_formats, i32 %i.017.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %lor.lhs.false.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.then8 ], [ null, %sw.bb.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %sw.bb1.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rvin_v4l2_unregister(ptr noundef %vin) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3
  %flags.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 17
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4, i32 4
  %init_name.i.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 5, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %do.end.video_device_node_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %retval.0.i.i) #13
  tail call void @video_unregister_device(ptr noundef %vdev) #10
  br label %return

return:                                           ; preds = %video_device_node_name.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rvin_v4l2_register(ptr noundef %vin) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3
  %v4l2_dev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4
  %notify = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rvin_notify, ptr %notify, align 8
  %v4l2_dev3 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %v4l2_dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %v4l2_dev, ptr %v4l2_dev3, align 4
  %queue = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12
  %queue4 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 10
  %2 = ptrtoint ptr %queue4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %queue4, align 8
  %name = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 12
  %id = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %4)
  %release = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 23
  %5 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 11
  %lock5 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 26
  %6 = ptrtoint ptr %lock5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lock, ptr %lock5, align 8
  %fops = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rvin_fops, ptr %fops, align 4
  %device_caps = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 83886081, ptr %device_caps, align 8
  %format = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23
  %pixelformat = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1448695129, ptr %pixelformat, align 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 800, ptr %format, align 4
  %height = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 600, ptr %height, align 4
  %field = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 6
  %13 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %colorspace, align 4
  %info = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 8
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_mc, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 620756993, ptr %device_caps, align 8
  %ioctl_ops = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 24
  %19 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rvin_mc_ioctl_ops, ptr %ioctl_ops, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ioctl_ops11 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 24
  %20 = ptrtoint ptr %ioctl_ops11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rvin_ioctl_ops, ptr %ioctl_ops11, align 4
  %call12 = tail call fastcc i32 @rvin_reset_format(ptr noundef %vin)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @rvin_format_align(ptr noundef %vin, ptr noundef %format)
  %21 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fops, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev1, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vin, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 5, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vin, ptr %driver_data.i.i, align 4
  %name24 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4, i32 4
  %init_name.i.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 5, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end18.video_device_node_name.exit_crit_edge

if.end18.video_device_node_name.exit_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 5
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %if.end18.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %if.end18.video_device_node_name.exit_crit_edge ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name24, ptr noundef %retval.0.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %do.end
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rvin_notify(ptr noundef readonly %sd, i32 noundef %notification, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %info = getelementptr i8, ptr %1, i32 -1360
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_mc, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1082684930, i32 %notification)
  %cond.i = icmp eq i32 %notification, 1082684930
  br i1 %cond.i, label %sw.bb.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %vdev.i = getelementptr i8, ptr %1, i32 -1352
  tail call void @v4l2_event_queue(ptr noundef %vdev.i, ptr noundef %arg) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %group1 = getelementptr i8, ptr %1, i32 388
  %6 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1082684930, i32 %notification)
  %cond.i35 = icmp eq i32 %notification, 1082684930
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.039 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rvin_group, ptr %7, i32 0, i32 5, i32 %i.039
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %pad6 = getelementptr inbounds %struct.rvin_dev, ptr %9, i32 0, i32 10
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %pad6) #10
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end5.for.inc_crit_edge, label %if.end9

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end5
  %entity = getelementptr inbounds %struct.media_pad, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity, align 4
  %cmp15.not = icmp eq ptr %11, %sd
  %or.cond = and i1 %cond.i35, %cmp15.not
  br i1 %or.cond, label %sw.bb.i37, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb.i37:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %vdev.i36 = getelementptr inbounds %struct.rvin_dev, ptr %9, i32 0, i32 3
  tail call void @v4l2_event_queue(ptr noundef %vdev.i36, ptr noundef %arg) #10
  br label %for.inc

for.inc:                                          ; preds = %sw.bb.i37, %if.end9.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_reset_format(ptr noundef %vin) unnamed_addr #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #10
  %0 = getelementptr inbounds i8, ptr %fmt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 80)
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %fmt, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %source_pad = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 4
  %3 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %source_pad, align 4
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pad, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subdev, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %pad2 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pad2, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_fmt, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.else8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.else8.if.else15_crit_edge, label %land.lhs.true10

if.else8.if.else15_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

land.lhs.true10:                                  ; preds = %if.else8
  %get_fmt11 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %get_fmt11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_fmt11, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else15_crit_edge, label %land.lhs.true10.if.end21_crit_edge

land.lhs.true10.if.end21_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true10.if.else15_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true10.if.else15_crit_edge, %if.else8.if.else15_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.else15, %land.lhs.true10.if.end21_crit_edge
  %.sink = phi ptr [ %13, %if.else15 ], [ %16, %land.lhs.true10.if.end21_crit_edge ]
  %call19 = call i32 %.sink(ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %fmt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool22.not = icmp eq i32 %call19, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %format = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23
  %format25 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %17 = ptrtoint ptr %format25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %format25, align 4
  %19 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 1
  %22 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 3
  %25 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 6
  %28 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %colorspace4.i, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 4
  %conv.i = zext i16 %31 to i32
  %32 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 9
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv.i, ptr %32, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %34 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %quantization.i, align 2
  %conv5.i = zext i16 %35 to i32
  %quantization6.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 10
  %36 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv5.i, ptr %quantization6.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %37 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %xfer_func.i, align 4
  %conv7.i = zext i16 %38 to i32
  %xfer_func8.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 11
  %39 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv7.i, ptr %xfer_func8.i, align 4
  %src_rect = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 26
  %top = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 26, i32 1
  %40 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %top, align 4
  %41 = ptrtoint ptr %src_rect to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %src_rect, align 4
  %width29 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 26, i32 2
  %42 = ptrtoint ptr %width29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %18, ptr %width29, align 4
  %height32 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 26, i32 3
  %43 = ptrtoint ptr %height32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %21, ptr %height32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp = icmp eq i32 %24, 7
  br i1 %cmp, label %if.then34, label %if.end24.if.end39_crit_edge

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %field3.i, align 4
  %mul = shl i32 %21, 1
  %45 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %height2.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end24.if.end39_crit_edge
  call fastcc void @rvin_format_align(ptr noundef %vin, ptr noundef %format)
  %crop = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 24
  %46 = call ptr @memcpy(ptr %crop, ptr %src_rect, i32 16)
  %compose = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 25
  %top42 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 25, i32 1
  %47 = ptrtoint ptr %top42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %top42, align 4
  %48 = ptrtoint ptr %compose to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %compose, align 4
  %49 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %format, align 4
  %width48 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 25, i32 2
  %51 = ptrtoint ptr %width48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %width48, align 4
  %52 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height2.i, align 4
  %height52 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 25, i32 3
  %54 = ptrtoint ptr %height52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %height52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %call19, %if.end21.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rvin_format_align(ptr nocapture noundef readonly %vin, ptr noundef %pix) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @rvin_format_from_pixel(ptr noundef %vin, i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1448695129, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 3
  %3 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %field, align 4
  %.off = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch = icmp ult i32 %.off, 9
  br i1 %switch, label %if.end.sw.epilog_crit_edge, label %sw.default

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %field, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %7, label %sw.default6 [
    i32 842094158, label %sw.epilog.sw.epilog7_crit_edge
    i32 909203022, label %sw.epilog.sw.epilog7_crit_edge44
    i32 1448695129, label %sw.epilog.sw.bb5_crit_edge
    i32 1498831189, label %sw.epilog.sw.bb5_crit_edge45
  ]

sw.epilog.sw.bb5_crit_edge45:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.epilog.sw.epilog7_crit_edge44:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog7

sw.epilog.sw.epilog7_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog7

sw.bb5:                                           ; preds = %sw.epilog.sw.bb5_crit_edge, %sw.epilog.sw.bb5_crit_edge45
  br label %sw.epilog7

sw.default6:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.default6, %sw.bb5, %sw.epilog.sw.epilog7_crit_edge, %sw.epilog.sw.epilog7_crit_edge44
  %walign.0 = phi i32 [ 0, %sw.default6 ], [ 1, %sw.bb5 ], [ 5, %sw.epilog.sw.epilog7_crit_edge ], [ 5, %sw.epilog.sw.epilog7_crit_edge44 ]
  %info = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 8
  %max_width = getelementptr inbounds %struct.rvin_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_width, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %max_height = getelementptr inbounds %struct.rvin_info, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_height, align 4
  tail call void @v4l_bound_align_image(ptr noundef %pix, i32 noundef 5, i32 noundef %12, i32 noundef %walign.0, ptr noundef %height, i32 noundef 2, i32 noundef %14, i32 noundef 0, i32 noundef 0) #10
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixelformat, align 4
  %call.i = tail call ptr @rvin_format_from_pixel(ptr noundef %vin, i32 noundef %16) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !56

do.end.i:                                         ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 128, i32 noundef 9, ptr noundef null) #10
  br label %rvin_format_bytesperline.exit

if.end23.i:                                       ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #12
  %17 = add i32 %16, -842094158
  %switch.and.i = and i32 %17, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %18 = select i1 %switch.selectcmp.i, i32 32, i32 16
  %19 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field, align 4
  %.off.i = add i32 %20, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %spec.select.i = select i1 %switch.i, i32 128, i32 %18
  %21 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pix, align 4
  %sub.i = add i32 %22, -1
  %add.i = add i32 %sub.i, %spec.select.i
  %neg.i = sub nsw i32 0, %spec.select.i
  %and.i = and i32 %add.i, %neg.i
  %bpp.i = getelementptr inbounds %struct.rvin_video_format, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bpp.i, align 4
  %conv.i = zext i8 %24 to i32
  %mul.i = mul i32 %and.i, %conv.i
  br label %rvin_format_bytesperline.exit

rvin_format_bytesperline.exit:                    ; preds = %if.end23.i, %do.end.i
  %retval.0.i39 = phi i32 [ -22, %do.end.i ], [ %mul.i, %if.end23.i ]
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i39, ptr %bytesperline, align 4
  %26 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixelformat, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %27, label %sw.default.i [
    i32 842094158, label %sw.bb.i
    i32 909203022, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %rvin_format_bytesperline.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %mul.i41 = mul i32 %retval.0.i39, 3
  %mul1.i = mul i32 %mul.i41, %30
  %div16.i = lshr i32 %mul1.i, 1
  br label %rvin_format_sizeimage.exit

sw.bb2.i:                                         ; preds = %rvin_format_bytesperline.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %mul5.i = shl i32 %retval.0.i39, 1
  %mul6.i = mul i32 %mul5.i, %32
  br label %rvin_format_sizeimage.exit

sw.default.i:                                     ; preds = %rvin_format_bytesperline.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %mul9.i = mul i32 %34, %retval.0.i39
  br label %rvin_format_sizeimage.exit

rvin_format_sizeimage.exit:                       ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i42 = phi i32 [ %mul9.i, %sw.default.i ], [ %mul6.i, %sw.bb2.i ], [ %div16.i, %sw.bb.i ]
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 5
  %35 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i42, ptr %sizeimage, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_format_align.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_format_align, %if.then15)) #10
          to label %do.end [label %if.then15], !srcloc !57

if.then15:                                        ; preds = %rvin_format_sizeimage.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vin, align 8
  %38 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pix, align 4
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %42 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytesperline, align 4
  %44 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sizeimage, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_format_align.__UNIQUE_ID_ddebug311, ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %rvin_format_sizeimage.exit
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i67 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i = icmp slt i32 %call.i67, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !59
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 11
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.err_pm_crit_edge

if.end.err_pm_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm

if.end4:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %private_data, align 4
  %call5 = tail call i32 @v4l2_fh_open(ptr noundef %file) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_unlock_crit_edge

if.end4.err_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock

if.end8:                                          ; preds = %if.end4
  %info = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 8
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_mc, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.else, label %if.end17

if.else:                                          ; preds = %if.end8
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %call.i68 = tail call i32 @v4l2_fh_is_singular(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool13.not = icmp eq i32 %call.i68, 0
  br i1 %tobool13.not, label %if.else.if.end20_crit_edge, label %if.then14

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %if.else
  %subdev.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %subdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subdev.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.then14.if.end20_crit_edge, label %if.else.i

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else.i:                                        ; preds = %if.then14
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %if.else.i.if.end20_crit_edge, label %land.lhs.true.i

if.else.i.if.end20_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_power.i, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end20_crit_edge, label %if.else7.i

land.lhs.true.i.if.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %20 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool8.not.i = icmp eq ptr %20, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else14.i_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14.i

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %s_power10.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_power10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_power10.i, align 4
  %tobool11.not.i = icmp eq ptr %22, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else14.i_crit_edge, label %land.lhs.true9.i.rvin_power_parallel.exit_crit_edge

land.lhs.true9.i.rvin_power_parallel.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rvin_power_parallel.exit

land.lhs.true9.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true9.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %rvin_power_parallel.exit

rvin_power_parallel.exit:                         ; preds = %if.else14.i, %land.lhs.true9.i.rvin_power_parallel.exit_crit_edge
  %.sink.i = phi ptr [ %19, %if.else14.i ], [ %22, %land.lhs.true9.i.rvin_power_parallel.exit_crit_edge ]
  %call18.i = tail call i32 %.sink.i(ptr noundef nonnull %13, i32 noundef 1) #10
  %call18.i.fr = freeze i32 %call18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i.fr)
  %cmp.i69 = icmp sgt i32 %call18.i.fr, -1
  br i1 %cmp.i69, label %rvin_power_parallel.exit.if.end20_crit_edge, label %switch.early.test

rvin_power_parallel.exit.if.end20_crit_edge:      ; preds = %rvin_power_parallel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

switch.early.test:                                ; preds = %rvin_power_parallel.exit
  %23 = zext i32 %call18.i.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call18.i.fr, label %switch.early.test.err_open_crit_edge [
    i32 -19, label %switch.early.test.if.end20_crit_edge
    i32 -515, label %switch.early.test.if.end20_crit_edge87
  ]

switch.early.test.if.end20_crit_edge87:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

switch.early.test.if.end20_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

switch.early.test.err_open_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_open

if.end17:                                         ; preds = %if.end8
  %vdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 3
  %call11 = tail call i32 @v4l2_pipeline_pm_get(ptr noundef %vdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp18 = icmp slt i32 %call11, 0
  br i1 %cmp18, label %if.end17.err_open_crit_edge, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end17.err_open_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_open

if.end20:                                         ; preds = %if.end17.if.end20_crit_edge, %switch.early.test.if.end20_crit_edge, %switch.early.test.if.end20_crit_edge87, %rvin_power_parallel.exit.if.end20_crit_edge, %land.lhs.true.i.if.end20_crit_edge, %if.else.i.if.end20_crit_edge, %if.then14.if.end20_crit_edge, %if.else.if.end20_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 5
  %call21 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %err_power

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

err_power:                                        ; preds = %if.end20
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 8
  %use_mc27 = getelementptr inbounds %struct.rvin_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %use_mc27 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %use_mc27, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool28.not = icmp eq i8 %27, 0
  br i1 %tobool28.not, label %if.else32, label %if.then29

if.then29:                                        ; preds = %err_power
  call void @__sanitizer_cov_trace_pc() #12
  %vdev30 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 3
  tail call void @v4l2_pipeline_pm_put(ptr noundef %vdev30) #10
  br label %err_open

if.else32:                                        ; preds = %err_power
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data, align 4
  %call.i72 = tail call i32 @v4l2_fh_is_singular(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool34.not = icmp eq i32 %call.i72, 0
  br i1 %tobool34.not, label %if.else32.err_open_crit_edge, label %if.then35

if.else32.err_open_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_open

if.then35:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call fastcc i32 @rvin_power_parallel(ptr noundef %1, i1 noundef zeroext false)
  br label %err_open

err_open:                                         ; preds = %if.then35, %if.else32.err_open_crit_edge, %if.then29, %if.end17.err_open_crit_edge, %switch.early.test.err_open_crit_edge
  %ret.1 = phi i32 [ %call11, %if.end17.err_open_crit_edge ], [ %call21, %if.then29 ], [ %call21, %if.then35 ], [ %call21, %if.else32.err_open_crit_edge ], [ %call18.i.fr, %switch.early.test.err_open_crit_edge ]
  %call39 = tail call i32 @v4l2_fh_release(ptr noundef %file) #10
  br label %err_unlock

err_unlock:                                       ; preds = %err_open, %if.end4.err_unlock_crit_edge
  %ret.2 = phi i32 [ %call5, %if.end4.err_unlock_crit_edge ], [ %ret.1, %err_open ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %err_pm

err_pm:                                           ; preds = %err_unlock, %if.end.err_pm_crit_edge
  %ret.3 = phi i32 [ %call2, %if.end.err_pm_crit_edge ], [ %ret.2, %err_unlock ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %call.i73 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 5) #10
  br label %cleanup

cleanup:                                          ; preds = %err_pm, %if.end24, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_pm ], [ 0, %if.end24 ], [ %call.i67, %if.then.i.cleanup_crit_edge ], [ %call.i67, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i17 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #10
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #10
  %info = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_mc, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 3
  tail call void @v4l2_pipeline_pm_put(ptr noundef %vdev) #10
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not = icmp eq i32 %call.i17, 0
  br i1 %tobool.not, label %if.else.if.end7_crit_edge, label %if.then5

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.else
  %subdev.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %subdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subdev.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.then5.if.end7_crit_edge, label %if.else.i

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.else.i:                                        ; preds = %if.then5
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.else.i.if.end7_crit_edge, label %land.lhs.true.i

if.else.i.if.end7_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_power.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end7_crit_edge, label %if.else7.i

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %16 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool8.not.i = icmp eq ptr %16, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else14.i_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14.i

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %s_power10.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_power10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_power10.i, align 4
  %tobool11.not.i = icmp eq ptr %18, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else14.i_crit_edge, label %land.lhs.true9.i.if.end20.sink.split.i_crit_edge

land.lhs.true9.i.if.end20.sink.split.i_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.sink.split.i

land.lhs.true9.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true9.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %if.end20.sink.split.i

if.end20.sink.split.i:                            ; preds = %if.else14.i, %land.lhs.true9.i.if.end20.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %15, %if.else14.i ], [ %18, %land.lhs.true9.i.if.end20.sink.split.i_crit_edge ]
  %call18.i = tail call i32 %.sink.i(ptr noundef nonnull %9, i32 noundef 0) #10
  br label %if.end7

if.end7:                                          ; preds = %if.end20.sink.split.i, %land.lhs.true.i.if.end7_crit_edge, %if.else.i.if.end7_crit_edge, %if.then5.if.end7_crit_edge, %if.else.if.end7_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_pm_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_power_parallel(ptr nocapture noundef readonly %vin, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdev, align 4
  %cond = zext i1 %on to i32
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_power, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.if.end20_crit_edge, label %if.else7

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %8 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.else7.if.else14_crit_edge, label %land.lhs.true9

if.else7.if.else14_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

land.lhs.true9:                                   ; preds = %if.else7
  %s_power10 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %s_power10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_power10, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else14_crit_edge, label %land.lhs.true9.if.end20.sink.split_crit_edge

land.lhs.true9.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.sink.split

land.lhs.true9.if.else14_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true9.if.else14_crit_edge, %if.else7.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true9.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.else14 ], [ %10, %land.lhs.true9.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %1, i32 noundef %cond) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0)
  %cmp = icmp sgt i32 %__result.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0)
  %cmp22.not = icmp eq i32 %__result.0, -515
  %or.cond = or i1 %cmp, %cmp22.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %__result.0)
  %cmp24.not = icmp eq i32 %__result.0, -19
  %or.cond41 = or i1 %cmp24.not, %or.cond
  %retval.0 = select i1 %or.cond41, i32 0, i32 %__result.0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_pipeline_pm_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.11, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.12, i32 noundef 32) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mbus_code = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 5
  %2 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbus_code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.for.body.preheader_crit_edge
    i32 8209, label %entry.for.body.preheader_crit_edge55
    i32 8207, label %entry.for.body.preheader_crit_edge56
    i32 8198, label %entry.for.body.preheader_crit_edge57
    i32 8216, label %entry.for.body.preheader_crit_edge58
    i32 4106, label %entry.for.body.preheader_crit_edge59
    i32 12289, label %sw.bb1
    i32 12307, label %sw.bb2
    i32 12290, label %sw.bb8
    i32 12308, label %sw.bb14
  ]

entry.for.body.preheader_crit_edge59:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

entry.for.body.preheader_crit_edge58:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

entry.for.body.preheader_crit_edge57:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

entry.for.body.preheader_crit_edge56:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

entry.for.body.preheader_crit_edge55:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge55, %entry.for.body.preheader_crit_edge56, %entry.for.body.preheader_crit_edge57, %entry.for.body.preheader_crit_edge58, %entry.for.body.preheader_crit_edge59
  br label %for.body

sw.bb1:                                           ; preds = %entry
  %5 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.bb1.cleanup.sink.split_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %sw.bb2.cleanup.sink.split_crit_edge, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.cleanup.sink.split_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %entry
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %sw.bb8.cleanup.sink.split_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb8.cleanup.sink.split_crit_edge:              ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  %11 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %sw.bb14.cleanup.sink.split_crit_edge, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb14.cleanup.sink.split_crit_edge:             ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.cond:                                         ; preds = %for.body
  %inc31 = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc31, 14
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %matched.049 = phi i32 [ %spec.select, %for.cond.for.body_crit_edge ], [ -1, %for.body.preheader ]
  %i.048 = phi i32 [ %inc31, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [14 x %struct.rvin_video_format], ptr @rvin_formats, i32 0, i32 %i.048
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %call20 = tail call ptr @rvin_format_from_pixel(ptr noundef %1, i32 noundef %14)
  %tobool21.not = icmp ne ptr %call20, null
  %inc = zext i1 %tobool21.not to i32
  %spec.select = add i32 %matched.049, %inc
  %15 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %16)
  %cmp25 = icmp eq i32 %spec.select, %16
  br i1 %cmp25, label %for.body.cleanup.sink.split_crit_edge, label %for.cond

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %sw.bb14.cleanup.sink.split_crit_edge, %sw.bb8.cleanup.sink.split_crit_edge, %sw.bb2.cleanup.sink.split_crit_edge, %sw.bb1.cleanup.sink.split_crit_edge
  %.lcssa.sink = phi i32 [ 825770306, %sw.bb1.cleanup.sink.split_crit_edge ], [ 1196573255, %sw.bb2.cleanup.sink.split_crit_edge ], [ 1195528775, %sw.bb8.cleanup.sink.split_crit_edge ], [ 1111967570, %sw.bb14.cleanup.sink.split_crit_edge ], [ %14, %for.body.cleanup.sink.split_crit_edge ]
  %pixelformat29 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %17 = ptrtoint ptr %pixelformat29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.lcssa.sink, ptr %pixelformat29, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %format = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23
  %2 = call ptr @memcpy(ptr %fmt, ptr %format, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_mc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 12, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %colorspace.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %5 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %xfer_func.i, align 4
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %6, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %quantization.i, align 4
  tail call fastcc void @rvin_format_align(ptr noundef %1, ptr noundef %fmt) #10
  %format = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23
  %9 = call ptr @memcpy(ptr %format, ptr %fmt, i32 48)
  %crop = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24
  %top = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top, align 4
  %11 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %crop, align 4
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format, align 4
  %width6 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24, i32 2
  %14 = ptrtoint ptr %width6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %width6, align 4
  %height = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height9 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24, i32 3
  %17 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height9, align 4
  %compose = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 25
  %18 = call ptr @memcpy(ptr %compose, ptr %crop, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_mc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %colorspace.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %3 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %xfer_func.i, align 4
  %4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %4, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %quantization.i, align 4
  tail call fastcc void @rvin_format_align(ptr noundef %1, ptr noundef %fmt) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_subscribe_event(ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cond = icmp eq i32 %1, 5
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 4, ptr noundef null) #10
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #10
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  %src_rect = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_rect) #10
  %2 = getelementptr inbounds %struct.v4l2_rect, ptr %src_rect, i32 0, i32 1
  %3 = getelementptr inbounds %struct.v4l2_rect, ptr %src_rect, i32 0, i32 2
  %4 = getelementptr inbounds %struct.v4l2_rect, ptr %src_rect, i32 0, i32 3
  %num_buffers.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 12, i32 21
  %5 = call ptr @memset(ptr %src_rect, i32 255, i32 16)
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call2 = call fastcc i32 @rvin_try_format(ptr noundef %1, i32 noundef 1, ptr noundef %fmt, ptr noundef nonnull %src_rect)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %format = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23
  %8 = call ptr @memcpy(ptr %format, ptr %fmt, i32 48)
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %crop = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24
  %width.i.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24, i32 2
  %13 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width.i.i, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i.i = icmp ugt i32 %14, %16
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end4.if.end.i.i_crit_edge

if.end4.if.end.i.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %width.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end4.if.end.i.i_crit_edge
  %height.i.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24, i32 3
  %18 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height.i.i, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp5.i.i = icmp ugt i32 %19, %21
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge

if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height.i.i, align 4
  br label %v4l2_rect_set_max_size.exit.i

v4l2_rect_set_max_size.exit.i:                    ; preds = %if.then6.i.i, %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge
  %23 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %crop, align 4
  %25 = ptrtoint ptr %src_rect to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %src_rect, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i23 = icmp slt i32 %24, %26
  br i1 %cmp.i23, label %if.then.i, label %v4l2_rect_set_max_size.exit.i.if.end.i_crit_edge

v4l2_rect_set_max_size.exit.i.if.end.i_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %crop, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %v4l2_rect_set_max_size.exit.i.if.end.i_crit_edge
  %top.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24, i32 1
  %28 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %top.i, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp5.i = icmp slt i32 %29, %31
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %top.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i.if.end9.i_crit_edge
  %33 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %crop, align 4
  %35 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width.i.i, align 4
  %add.i = add i32 %36, %34
  %add13.i = add i32 %26, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add13.i)
  %cmp14.i = icmp ugt i32 %add.i, %add13.i
  br i1 %cmp14.i, label %if.then15.i, label %if.end9.i.if.end21.i_crit_edge

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %add13.i, %36
  %37 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.i, ptr %crop, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %if.end9.i.if.end21.i_crit_edge
  %38 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %top.i, align 4
  %40 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height.i.i, align 4
  %add23.i = add i32 %41, %39
  %add26.i = add i32 %31, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %add26.i)
  %cmp27.i = icmp ugt i32 %add23.i, %add26.i
  br i1 %cmp27.i, label %if.then28.i, label %if.end21.i.v4l2_rect_map_inside.exit_crit_edge

if.end21.i.v4l2_rect_map_inside.exit_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_map_inside.exit

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i = sub i32 %add26.i, %41
  %42 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub33.i, ptr %top.i, align 4
  br label %v4l2_rect_map_inside.exit

v4l2_rect_map_inside.exit:                        ; preds = %if.then28.i, %if.end21.i.v4l2_rect_map_inside.exit_crit_edge
  %compose = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 25
  %width.i.i24 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 25, i32 2
  %43 = ptrtoint ptr %width.i.i24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width.i.i24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %10)
  %cmp.i.i26 = icmp ugt i32 %44, %10
  br i1 %cmp.i.i26, label %if.then.i.i27, label %v4l2_rect_map_inside.exit.if.end.i.i31_crit_edge

v4l2_rect_map_inside.exit.if.end.i.i31_crit_edge: ; preds = %v4l2_rect_map_inside.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i31

if.then.i.i27:                                    ; preds = %v4l2_rect_map_inside.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %width.i.i24 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %10, ptr %width.i.i24, align 4
  br label %if.end.i.i31

if.end.i.i31:                                     ; preds = %if.then.i.i27, %v4l2_rect_map_inside.exit.if.end.i.i31_crit_edge
  %height.i.i28 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 25, i32 3
  %46 = ptrtoint ptr %height.i.i28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height.i.i28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %12)
  %cmp5.i.i30 = icmp ugt i32 %47, %12
  br i1 %cmp5.i.i30, label %if.then6.i.i32, label %if.end.i.i31.v4l2_rect_set_max_size.exit.i34_crit_edge

if.end.i.i31.v4l2_rect_set_max_size.exit.i34_crit_edge: ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i34

if.then6.i.i32:                                   ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %height.i.i28 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %12, ptr %height.i.i28, align 4
  br label %v4l2_rect_set_max_size.exit.i34

v4l2_rect_set_max_size.exit.i34:                  ; preds = %if.then6.i.i32, %if.end.i.i31.v4l2_rect_set_max_size.exit.i34_crit_edge
  %49 = ptrtoint ptr %compose to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %compose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i33 = icmp slt i32 %50, 0
  br i1 %cmp.i33, label %if.then.i35, label %v4l2_rect_set_max_size.exit.i34.if.end.i39_crit_edge

v4l2_rect_set_max_size.exit.i34.if.end.i39_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i39

if.then.i35:                                      ; preds = %v4l2_rect_set_max_size.exit.i34
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %compose to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %compose, align 4
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then.i35, %v4l2_rect_set_max_size.exit.i34.if.end.i39_crit_edge
  %top.i36 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 25, i32 1
  %52 = ptrtoint ptr %top.i36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %top.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp5.i38 = icmp slt i32 %53, 0
  br i1 %cmp5.i38, label %if.then6.i40, label %if.end.i39.if.end9.i44_crit_edge

if.end.i39.if.end9.i44_crit_edge:                 ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i44

if.then6.i40:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %top.i36 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %top.i36, align 4
  br label %if.end9.i44

if.end9.i44:                                      ; preds = %if.then6.i40, %if.end.i39.if.end9.i44_crit_edge
  %55 = ptrtoint ptr %compose to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %compose, align 4
  %57 = ptrtoint ptr %width.i.i24 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width.i.i24, align 4
  %add.i41 = add i32 %58, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i41, i32 %10)
  %cmp14.i43 = icmp ugt i32 %add.i41, %10
  br i1 %cmp14.i43, label %if.then15.i46, label %if.end9.i44.if.end21.i50_crit_edge

if.end9.i44.if.end21.i50_crit_edge:               ; preds = %if.end9.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i50

if.then15.i46:                                    ; preds = %if.end9.i44
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i45 = sub i32 %10, %58
  %59 = ptrtoint ptr %compose to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub.i45, ptr %compose, align 4
  br label %if.end21.i50

if.end21.i50:                                     ; preds = %if.then15.i46, %if.end9.i44.if.end21.i50_crit_edge
  %60 = ptrtoint ptr %top.i36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %top.i36, align 4
  %62 = ptrtoint ptr %height.i.i28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %height.i.i28, align 4
  %add23.i47 = add i32 %63, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i47, i32 %12)
  %cmp27.i49 = icmp ugt i32 %add23.i47, %12
  br i1 %cmp27.i49, label %if.then28.i52, label %if.end21.i50.v4l2_rect_map_inside.exit53_crit_edge

if.end21.i50.v4l2_rect_map_inside.exit53_crit_edge: ; preds = %if.end21.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_map_inside.exit53

if.then28.i52:                                    ; preds = %if.end21.i50
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i51 = sub i32 %12, %63
  %64 = ptrtoint ptr %top.i36 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub33.i51, ptr %top.i36, align 4
  br label %v4l2_rect_map_inside.exit53

v4l2_rect_map_inside.exit53:                      ; preds = %if.then28.i52, %if.end21.i50.v4l2_rect_map_inside.exit53_crit_edge
  %src_rect10 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 26
  %65 = call ptr @memcpy(ptr %src_rect10, ptr %src_rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %v4l2_rect_map_inside.exit53, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_rect_map_inside.exit53 ], [ -16, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_rect) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call1 = tail call fastcc i32 @rvin_try_format(ptr noundef %1, i32 noundef 0, ptr noundef %fmt, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pad, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dv_timings_cap = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %dv_timings_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dv_timings_cap, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %std = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %std, align 8
  %12 = ptrtoint ptr %a to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %a, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -515, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_std, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.else6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_std9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %s_std9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_std9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20_crit_edge

land.lhs.true8.if.end20_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %land.lhs.true8.if.end20_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, i64 noundef %a) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %std = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %a, ptr %std, align 8
  %call23 = tail call fastcc i32 @rvin_reset_format(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ %call18, %if.end20.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %querystd, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %querystd9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %querystd9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %querystd9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %a) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end30_crit_edge, label %if.else

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.else.if.end30_crit_edge, label %land.lhs.true

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %if.else
  %g_input_status = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %g_input_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %g_input_status, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.if.end30_crit_edge, label %if.else7

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %g_input_status10 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %g_input_status10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %g_input_status10, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end23_crit_edge

land.lhs.true9.if.end23_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %land.lhs.true9.if.end23_crit_edge
  %.sink = phi ptr [ %11, %if.else15 ], [ %14, %land.lhs.true9.if.end23_crit_edge ]
  %status19 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %call20 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %status19) #10
  %__result.0.fr = freeze i32 %call20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.fr)
  %cmp24 = icmp sgt i32 %__result.0.fr, -1
  br i1 %cmp24, label %if.end23.if.end30_crit_edge, label %switch.early.test

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

switch.early.test:                                ; preds = %if.end23
  %15 = zext i32 %__result.0.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %__result.0.fr, label %switch.early.test.cleanup_crit_edge [
    i32 -19, label %switch.early.test.if.end30_crit_edge
    i32 -515, label %switch.early.test.if.end30_crit_edge74
  ]

switch.early.test.if.end30_crit_edge74:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

switch.early.test.if.end30_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %switch.early.test.if.end30_crit_edge, %switch.early.test.if.end30_crit_edge74, %if.end23.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %type, align 4
  %ops31 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops31, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pad, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %if.end30.if.else38_crit_edge, label %land.lhs.true33

if.end30.if.else38_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

land.lhs.true33:                                  ; preds = %if.end30
  %dv_timings_cap = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %dv_timings_cap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dv_timings_cap, align 4
  %tobool36.not = icmp eq ptr %22, null
  br i1 %tobool36.not, label %land.lhs.true33.if.else38_crit_edge, label %if.then37

land.lhs.true33.if.else38_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 7
  %23 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %capabilities, align 4
  br label %if.end41

if.else38:                                        ; preds = %land.lhs.true33.if.else38_crit_edge, %if.end30.if.else38_crit_edge
  %capabilities39 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 7
  %24 = ptrtoint ptr %capabilities39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %capabilities39, align 4
  %tvnorms = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 3, i32 22
  %25 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tvnorms, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then37
  %.sink73 = phi i64 [ %26, %if.else38 ], [ 0, %if.then37 ]
  %std40 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %27 = ptrtoint ptr %std40 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %.sink73, ptr %std40, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call42 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.14, i32 noundef 32) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %switch.early.test.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -22, %entry.cleanup_crit_edge ], [ %__result.0.fr, %switch.early.test.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rvin_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rvin_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %g_pixelaspect = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %g_pixelaspect to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g_pixelaspect, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.else7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %g_pixelaspect10 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %g_pixelaspect10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_pixelaspect10, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.cleanup.sink.split_crit_edge

land.lhs.true9.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else15, %land.lhs.true9.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else15 ], [ %12, %land.lhs.true9.cleanup.sink.split_crit_edge ]
  %call14 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %f) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ %call14, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge39
    i32 0, label %sw.bb7
    i32 258, label %if.end.sw.bb9_crit_edge
    i32 257, label %if.end.sw.bb9_crit_edge40
    i32 256, label %sw.bb21
  ]

if.end.sw.bb9_crit_edge40:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb_crit_edge39:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge39
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %top, align 4
  %8 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %r, align 4
  %width = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 26, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %width3 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width3, align 4
  %height = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 26, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height6, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %r8 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %crop = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24
  %15 = call ptr @memcpy(ptr %r8, ptr %crop, i32 16)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge40
  %r10 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top11 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %top11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %top11, align 4
  %17 = ptrtoint ptr %r10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %r10, align 4
  %format = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 4
  %width16 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %width16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %width16, align 4
  %height18 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 1
  %21 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height18, align 4
  %height20 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height20, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %r22 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %compose = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 25
  %24 = call ptr @memcpy(ptr %r22, ptr %compose, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb21, %sw.bb9, %sw.bb7, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb21 ], [ 0, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_s_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #2 align 64 {
entry:
  %r = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #10
  %2 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %3 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %4 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %r1 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %r, ptr %r1, i32 16)
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.i = icmp ult i32 %9, 6
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %3, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp5.i = icmp ult i32 %12, 2
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.v4l2_rect_set_min_size.exit_crit_edge

if.end.i.v4l2_rect_set_min_size.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_min_size.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %4, align 4
  br label %v4l2_rect_set_min_size.exit

v4l2_rect_set_min_size.exit:                      ; preds = %if.then6.i, %if.end.i.v4l2_rect_set_min_size.exit_crit_edge
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %15, label %v4l2_rect_set_min_size.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 256, label %sw.bb56
  ]

v4l2_rect_set_min_size.exit.cleanup_crit_edge:    ; preds = %v4l2_rect_set_min_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %v4l2_rect_set_min_size.exit
  %width = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 26, i32 2
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 26, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %18)
  %cmp.i.i = icmp ugt i32 %22, %18
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb.if.end.i.i_crit_edge

sw.bb.if.end.i.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %3, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb.if.end.i.i_crit_edge
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %20)
  %cmp5.i.i = icmp ugt i32 %25, %20
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge

if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %4, align 4
  br label %v4l2_rect_set_max_size.exit.i

v4l2_rect_set_max_size.exit.i:                    ; preds = %if.then6.i.i, %if.end.i.i.v4l2_rect_set_max_size.exit.i_crit_edge
  %27 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i144 = icmp slt i32 %28, 0
  br i1 %cmp.i144, label %if.then.i145, label %v4l2_rect_set_max_size.exit.i.if.end.i147_crit_edge

v4l2_rect_set_max_size.exit.i.if.end.i147_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i147

if.then.i145:                                     ; preds = %v4l2_rect_set_max_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %r, align 4
  br label %if.end.i147

if.end.i147:                                      ; preds = %if.then.i145, %v4l2_rect_set_max_size.exit.i.if.end.i147_crit_edge
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp5.i146 = icmp slt i32 %31, 0
  br i1 %cmp5.i146, label %if.then6.i148, label %if.end.i147.if.end9.i_crit_edge

if.end.i147.if.end9.i_crit_edge:                  ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then6.i148:                                    ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %2, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i148, %if.end.i147.if.end9.i_crit_edge
  %33 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %r, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %3, align 4
  %add.i = add i32 %36, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %18)
  %cmp14.i = icmp ugt i32 %add.i, %18
  br i1 %cmp14.i, label %if.then15.i, label %if.end9.i.if.end21.i_crit_edge

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %18, %36
  %37 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.i, ptr %r, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %if.end9.i.if.end21.i_crit_edge
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %2, align 4
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %4, align 4
  %add23.i = add i32 %41, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %20)
  %cmp27.i = icmp ugt i32 %add23.i, %20
  br i1 %cmp27.i, label %if.then28.i, label %if.end21.i.v4l2_rect_map_inside.exit_crit_edge

if.end21.i.v4l2_rect_map_inside.exit_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_map_inside.exit

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i = sub i32 %20, %41
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub33.i, ptr %2, align 4
  br label %v4l2_rect_map_inside.exit

v4l2_rect_map_inside.exit:                        ; preds = %if.then28.i, %if.end21.i.v4l2_rect_map_inside.exit_crit_edge
  %43 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width, align 4
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  call void @v4l_bound_align_image(ptr noundef %3, i32 noundef 6, i32 noundef %44, i32 noundef 0, ptr noundef %4, i32 noundef 2, i32 noundef %46, i32 noundef 0, i32 noundef 0) #10
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %2, align 4
  %49 = call i32 @llvm.smax.i32(i32 %48, i32 0)
  %50 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height, align 4
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %4, align 4
  %sub = sub i32 %51, %53
  %54 = call i32 @llvm.smin.i32(i32 %49, i32 %sub)
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %2, align 4
  %56 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %r, align 4
  %58 = call i32 @llvm.smax.i32(i32 %57, i32 0)
  %59 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %width, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %3, align 4
  %sub33 = sub i32 %60, %62
  %63 = call i32 @llvm.smin.i32(i32 %58, i32 %sub33)
  %64 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %r, align 4
  %crop = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 24
  %65 = call ptr @memcpy(ptr %r1, ptr %r, i32 16)
  %66 = call ptr @memcpy(ptr %crop, ptr %r, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_s_selection.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_s_selection, %if.then46)) #10
          to label %sw.epilog [label %if.then46], !srcloc !57

if.then46:                                        ; preds = %v4l2_rect_map_inside.exit
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %3, align 4
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %4, align 4
  %73 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %r, align 4
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %2, align 4
  %77 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %width, align 4
  %79 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_s_selection.__UNIQUE_ID_ddebug320, ptr noundef %68, ptr noundef nonnull @.str.16, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80) #10
  br label %sw.epilog

sw.bb56:                                          ; preds = %v4l2_rect_set_min_size.exit
  %format = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23
  %81 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %format, align 4
  %height62 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 1
  %83 = ptrtoint ptr %height62 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height62, align 4
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %82)
  %cmp.i.i151 = icmp ugt i32 %86, %82
  br i1 %cmp.i.i151, label %if.then.i.i152, label %sw.bb56.if.end.i.i156_crit_edge

sw.bb56.if.end.i.i156_crit_edge:                  ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i156

if.then.i.i152:                                   ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %82, ptr %3, align 4
  br label %if.end.i.i156

if.end.i.i156:                                    ; preds = %if.then.i.i152, %sw.bb56.if.end.i.i156_crit_edge
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %84)
  %cmp5.i.i155 = icmp ugt i32 %89, %84
  br i1 %cmp5.i.i155, label %if.then6.i.i157, label %if.end.i.i156.v4l2_rect_set_max_size.exit.i159_crit_edge

if.end.i.i156.v4l2_rect_set_max_size.exit.i159_crit_edge: ; preds = %if.end.i.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_set_max_size.exit.i159

if.then6.i.i157:                                  ; preds = %if.end.i.i156
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %84, ptr %4, align 4
  br label %v4l2_rect_set_max_size.exit.i159

v4l2_rect_set_max_size.exit.i159:                 ; preds = %if.then6.i.i157, %if.end.i.i156.v4l2_rect_set_max_size.exit.i159_crit_edge
  %91 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i158 = icmp slt i32 %92, 0
  br i1 %cmp.i158, label %if.then.i160, label %v4l2_rect_set_max_size.exit.i159.if.end.i164_crit_edge

v4l2_rect_set_max_size.exit.i159.if.end.i164_crit_edge: ; preds = %v4l2_rect_set_max_size.exit.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i164

if.then.i160:                                     ; preds = %v4l2_rect_set_max_size.exit.i159
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %r, align 4
  br label %if.end.i164

if.end.i164:                                      ; preds = %if.then.i160, %v4l2_rect_set_max_size.exit.i159.if.end.i164_crit_edge
  %94 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp5.i163 = icmp slt i32 %95, 0
  br i1 %cmp5.i163, label %if.then6.i165, label %if.end.i164.if.end9.i169_crit_edge

if.end.i164.if.end9.i169_crit_edge:               ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i169

if.then6.i165:                                    ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %2, align 4
  br label %if.end9.i169

if.end9.i169:                                     ; preds = %if.then6.i165, %if.end.i164.if.end9.i169_crit_edge
  %97 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %r, align 4
  %99 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %3, align 4
  %add.i166 = add i32 %100, %98
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i166, i32 %82)
  %cmp14.i168 = icmp ugt i32 %add.i166, %82
  br i1 %cmp14.i168, label %if.then15.i171, label %if.end9.i169.if.end21.i175_crit_edge

if.end9.i169.if.end21.i175_crit_edge:             ; preds = %if.end9.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i175

if.then15.i171:                                   ; preds = %if.end9.i169
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i170 = sub i32 %82, %100
  %101 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %sub.i170, ptr %r, align 4
  br label %if.end21.i175

if.end21.i175:                                    ; preds = %if.then15.i171, %if.end9.i169.if.end21.i175_crit_edge
  %102 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %2, align 4
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %4, align 4
  %add23.i172 = add i32 %105, %103
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i172, i32 %84)
  %cmp27.i174 = icmp ugt i32 %add23.i172, %84
  br i1 %cmp27.i174, label %if.then28.i177, label %if.end21.i175.v4l2_rect_map_inside.exit178_crit_edge

if.end21.i175.v4l2_rect_map_inside.exit178_crit_edge: ; preds = %if.end21.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %v4l2_rect_map_inside.exit178

if.then28.i177:                                   ; preds = %if.end21.i175
  call void @__sanitizer_cov_trace_pc() #12
  %sub33.i176 = sub i32 %84, %105
  %106 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %sub33.i176, ptr %2, align 4
  br label %v4l2_rect_map_inside.exit178

v4l2_rect_map_inside.exit178:                     ; preds = %if.then28.i177, %if.end21.i175.v4l2_rect_map_inside.exit178_crit_edge
  %bytesperline = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 4
  %107 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.promoted = load i32, ptr %2, align 4
  %108 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bytesperline, align 4
  %mul194 = mul i32 %109, %.promoted
  %and195 = and i32 %mul194, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool66.not196 = icmp eq i32 %and195, 0
  br i1 %tobool66.not196, label %v4l2_rect_map_inside.exit178.while.end_crit_edge, label %while.body.preheader

v4l2_rect_map_inside.exit178.while.end_crit_edge: ; preds = %v4l2_rect_map_inside.exit178
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %v4l2_rect_map_inside.exit178
  %110 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bytesperline, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dec193197 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %.promoted, %while.body.preheader ]
  %dec = add i32 %dec193197, -1
  %mul = mul i32 %111, %dec
  %and = and i32 %mul, 127
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %dec, ptr %2, align 4
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %v4l2_rect_map_inside.exit178.while.end_crit_edge
  %pixelformat = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 2
  %113 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pixelformat, align 4
  %call69 = tail call ptr @rvin_format_from_pixel(ptr noundef %1, i32 noundef %114)
  %bpp = getelementptr inbounds %struct.rvin_video_format, ptr %call69, i32 0, i32 1
  %115 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %115)
  %r.promoted = load i32, ptr %r, align 4
  %116 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %bpp, align 4
  %conv200 = zext i8 %117 to i32
  %mul72201 = mul i32 %r.promoted, %conv200
  %and73202 = and i32 %mul72201, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73202)
  %tobool74.not203 = icmp eq i32 %and73202, 0
  br i1 %tobool74.not203, label %while.end.while.end78_crit_edge, label %while.body75.preheader

while.end.while.end78_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end78

while.body75.preheader:                           ; preds = %while.end
  %118 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bpp, align 4
  %conv = zext i8 %119 to i32
  br label %while.body75

while.body75:                                     ; preds = %while.body75.while.body75_crit_edge, %while.body75.preheader
  %dec77199204 = phi i32 [ %dec77, %while.body75.while.body75_crit_edge ], [ %r.promoted, %while.body75.preheader ]
  %dec77 = add i32 %dec77199204, -1
  %mul72 = mul i32 %dec77, %conv
  %and73 = and i32 %mul72, 127
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %while.cond70.while.end78_crit_edge, label %while.body75.while.body75_crit_edge

while.body75.while.body75_crit_edge:              ; preds = %while.body75
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body75

while.cond70.while.end78_crit_edge:               ; preds = %while.body75
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %dec77, ptr %r, align 4
  br label %while.end78

while.end78:                                      ; preds = %while.cond70.while.end78_crit_edge, %while.end.while.end78_crit_edge
  %compose = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 25
  %121 = call ptr @memcpy(ptr %r1, ptr %r, i32 16)
  %122 = call ptr @memcpy(ptr %compose, ptr %r, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_s_selection.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_s_selection, %if.then92)) #10
          to label %sw.epilog [label %if.then92], !srcloc !57

if.then92:                                        ; preds = %while.end78
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 8
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %3, align 4
  %127 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %4, align 4
  %129 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %r, align 4
  %131 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %2, align 4
  %133 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %format, align 4
  %135 = ptrtoint ptr %height62 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %height62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_s_selection.__UNIQUE_ID_ddebug321, ptr noundef %124, ptr noundef nonnull @.str.17, i32 noundef %126, i32 noundef %128, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %136) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then92, %while.end78, %if.then46, %v4l2_rect_map_inside.exit
  call void @rvin_crop_scale_comp(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %v4l2_rect_set_min_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %v4l2_rect_set_min_size.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_g_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %vdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @v4l2_g_parm_cap(ptr noundef %vdev, ptr noundef %3, ptr noundef %parm) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_s_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %vdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @v4l2_s_parm_cap(ptr noundef %vdev, ptr noundef %3, ptr noundef %parm) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_s_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %s_dv_timings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_dv_timings, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.else6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_dv_timings9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %s_dv_timings9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_dv_timings9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20_crit_edge

land.lhs.true8.if.end20_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %land.lhs.true8.if.end20_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %timings) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool21.not = icmp eq i32 %call18, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call fastcc i32 @rvin_reset_format(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end23 ], [ %call18, %if.end20.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_g_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %g_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %g_dv_timings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g_dv_timings, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %g_dv_timings9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %g_dv_timings9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_dv_timings9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %timings) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_query_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %query_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %query_dv_timings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %query_dv_timings, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %query_dv_timings9 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %query_dv_timings9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %query_dv_timings9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %timings) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_enum_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sink_pad = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sink_pad, align 8
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pad, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end26_crit_edge, label %if.else

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pad5, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %enum_dv_timings = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %enum_dv_timings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enum_dv_timings, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %land.lhs.true.if.end26_crit_edge, label %if.else11

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %enum_dv_timings14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %enum_dv_timings14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enum_dv_timings14, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26.sink.split_crit_edge

land.lhs.true13.if.end26.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end26.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.else19 ], [ %17, %land.lhs.true13.if.end26.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %timings) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %__result.0 = phi i32 [ -19, %if.end.if.end26_crit_edge ], [ -515, %land.lhs.true.if.end26_crit_edge ], [ -515, %if.else.if.end26_crit_edge ], [ %call23, %if.end26.sink.split ]
  %18 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pad, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %__result.0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_dv_timings_cap(ptr noundef %file, ptr nocapture noundef readnone %priv_fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %pad = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sink_pad = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sink_pad, align 8
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pad, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end26_crit_edge, label %if.else

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pad5, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %dv_timings_cap = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %dv_timings_cap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dv_timings_cap, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %land.lhs.true.if.end26_crit_edge, label %if.else11

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %dv_timings_cap14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %dv_timings_cap14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dv_timings_cap14, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26.sink.split_crit_edge

land.lhs.true13.if.end26.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end26.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.else19 ], [ %17, %land.lhs.true13.if.end26.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %cap) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %__result.0 = phi i32 [ -19, %if.end.if.end26_crit_edge ], [ -515, %land.lhs.true.if.end26_crit_edge ], [ -515, %if.else.if.end26_crit_edge ], [ %call23, %if.end26.sink.split ]
  %18 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pad, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %__result.0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_g_edid(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %edid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %edid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sink_pad = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sink_pad, align 8
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %edid, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end26_crit_edge, label %if.else

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pad5, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %get_edid = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %get_edid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_edid, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %land.lhs.true.if.end26_crit_edge, label %if.else11

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %get_edid14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %get_edid14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_edid14, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26.sink.split_crit_edge

land.lhs.true13.if.end26.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end26.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.else19 ], [ %17, %land.lhs.true13.if.end26.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %edid) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %__result.0 = phi i32 [ -19, %if.end.if.end26_crit_edge ], [ -515, %land.lhs.true.if.end26_crit_edge ], [ -515, %if.else.if.end26_crit_edge ], [ %call23, %if.end26.sink.split ]
  %18 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %edid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %__result.0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_s_edid(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %edid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev, align 4
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %edid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sink_pad = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sink_pad, align 8
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %edid, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end26_crit_edge, label %if.else

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pad5, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %set_edid = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %set_edid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_edid, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %land.lhs.true.if.end26_crit_edge, label %if.else11

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %set_edid14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %set_edid14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_edid14, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26.sink.split_crit_edge

land.lhs.true13.if.end26.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end26.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.else19 ], [ %17, %land.lhs.true13.if.end26.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %edid) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %__result.0 = phi i32 [ -19, %if.end.if.end26_crit_edge ], [ -515, %land.lhs.true.if.end26_crit_edge ], [ -515, %if.else.if.end26_crit_edge ], [ %call23, %if.end26.sink.split ]
  %18 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %edid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %__result.0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_try_format(ptr nocapture noundef readonly %vin, i32 noundef %which, ptr noundef %pix, ptr noundef writeonly %src_rect) unnamed_addr #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdev, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #10
  %2 = getelementptr inbounds i8, ptr %format, i32 32
  %3 = call ptr @memset(ptr %2, i32 0, i32 56)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %which, ptr %format, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %source_pad = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 4
  %5 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %source_pad, align 4
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pad, align 4
  %call = tail call ptr @v4l2_subdev_alloc_state(ptr noundef %1) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixelformat, align 4
  %call6 = tail call ptr @rvin_format_from_pixel(ptr noundef %vin, i32 noundef %10)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1448695129, ptr %pixelformat, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %format10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %mbus_code = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 22
  %12 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbus_code, align 8
  %14 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pix, align 4
  %16 = ptrtoint ptr %format10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %format10, align 4
  %height.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 3
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 6
  %23 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %colorspace4.i, align 4
  %26 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 9
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %conv.i = trunc i32 %28 to i16
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %29, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 10
  %31 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %32 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %33 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 11
  %34 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %35 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %36 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %13, ptr %code9.i, align 4
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.end9.if.end37_crit_edge, label %if.else

if.end9.if.end37_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.else:                                          ; preds = %if.end9
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %pad16 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %pad16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pad16, align 4
  %tobool17.not = icmp eq ptr %41, null
  br i1 %tobool17.not, label %if.else.if.end41_crit_edge, label %land.lhs.true

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_fmt, align 4
  %tobool20.not = icmp eq ptr %43, null
  br i1 %tobool20.not, label %land.lhs.true.if.end41_crit_edge, label %if.else22

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.else22:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool23.not = icmp eq ptr %44, null
  br i1 %tobool23.not, label %if.else22.if.else30_crit_edge, label %land.lhs.true24

if.else22.if.else30_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

land.lhs.true24:                                  ; preds = %if.else22
  %set_fmt25 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %set_fmt25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_fmt25, align 4
  %tobool26.not = icmp eq ptr %46, null
  br i1 %tobool26.not, label %land.lhs.true24.if.else30_crit_edge, label %land.lhs.true24.if.end37.sink.split_crit_edge

land.lhs.true24.if.end37.sink.split_crit_edge:    ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split

land.lhs.true24.if.else30_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

if.else30:                                        ; preds = %land.lhs.true24.if.else30_crit_edge, %if.else22.if.else30_crit_edge
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.else30, %land.lhs.true24.if.end37.sink.split_crit_edge
  %.sink = phi ptr [ %43, %if.else30 ], [ %46, %land.lhs.true24.if.end37.sink.split_crit_edge ]
  %call34 = call i32 %.sink(ptr noundef nonnull %1, ptr noundef %call, ptr noundef nonnull %format) #10
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.end9.if.end37_crit_edge
  %__result.0 = phi i32 [ -19, %if.end9.if.end37_crit_edge ], [ %call34, %if.end37.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0)
  %cmp = icmp sgt i32 %__result.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0)
  %cmp39.not = icmp eq i32 %__result.0, -515
  %or.cond = or i1 %cmp, %cmp39.not
  br i1 %or.cond, label %if.end37.if.end41_crit_edge, label %if.end37.done_crit_edge

if.end37.done_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41:                                         ; preds = %if.end37.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.else.if.end41_crit_edge
  %47 = ptrtoint ptr %format10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %format10, align 4
  %49 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %pix, align 4
  %50 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height2.i, align 4
  %52 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %height.i, align 4
  %53 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %field3.i, align 4
  %55 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %field.i, align 4
  %56 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %colorspace4.i, align 4
  %58 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %colorspace.i, align 4
  %59 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %29, align 4
  %conv.i105 = zext i16 %60 to i32
  %61 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv.i105, ptr %26, align 4
  %62 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %quantization6.i, align 2
  %conv5.i107 = zext i16 %63 to i32
  %64 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv5.i107, ptr %quantization.i, align 4
  %65 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i110 = zext i16 %66 to i32
  %67 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv7.i110, ptr %xfer_func.i, align 4
  %tobool43.not = icmp eq ptr %src_rect, null
  br i1 %tobool43.not, label %if.end41.if.end49_crit_edge, label %if.then44

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %src_rect, i32 0, i32 1
  %68 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %top, align 4
  %69 = ptrtoint ptr %src_rect to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %src_rect, align 4
  %70 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pix, align 4
  %width46 = getelementptr inbounds %struct.v4l2_rect, ptr %src_rect, i32 0, i32 2
  %72 = ptrtoint ptr %width46 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %width46, align 4
  %73 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %height.i, align 4
  %height48 = getelementptr inbounds %struct.v4l2_rect, ptr %src_rect, i32 0, i32 3
  %75 = ptrtoint ptr %height48 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %height48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end41.if.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp50.not = icmp eq i32 %21, 0
  br i1 %cmp50.not, label %if.end49.if.end53_crit_edge, label %if.then51

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %21, ptr %field.i, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge
  %77 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %15, ptr %pix, align 4
  %78 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %18, ptr %height.i, align 4
  call fastcc void @rvin_format_align(ptr noundef %vin, ptr noundef %pix)
  br label %done

done:                                             ; preds = %if.end53, %if.end37.done_crit_edge
  %ret.0 = phi i32 [ 0, %if.end53 ], [ %__result.0, %if.end37.done_crit_edge ]
  call void @v4l2_subdev_free_state(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %ret.0, %done ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_subdev_alloc_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_free_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_crop_scale_comp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 992, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rvin_v4l2_unregister._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rvin_v4l2_unregister._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 1056, i32 43}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 1082, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rvin_v4l2_register._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @rvin_v4l2_register._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 1088, i32 2}
!17 = !{ptr @rvin_v4l2_register._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @rvin_v4l2_register._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @rvin_formats, !20, !"rvin_formats", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 32, i32 39}
!21 = !{ptr @rvin_fops, !22, !"rvin_fops", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 977, i32 42}
!23 = !{ptr @rvin_mc_ioctl_ops, !24, !"rvin_mc_ioctl_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 861, i32 36}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 312, i32 23}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 313, i32 21}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 314, i32 49}
!31 = !{ptr @rvin_ioctl_ops, !32, !"rvin_ioctl_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 761, i32 36}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 591, i32 19}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 498, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rvin_s_selection.__UNIQUE_ID_ddebug320, !36, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 523, i32 3}
!41 = !{ptr @rvin_s_selection.__UNIQUE_ID_ddebug321, !40, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/rcar-vin/rcar-v4l2.c", i32 207, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rvin_format_align.__UNIQUE_ID_ddebug311, !43, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2148321254, i64 2148321259, i64 2148321272, i64 2148321316, i64 2148321350, i64 2148321371}
!58 = !{i64 2148507280}
!59 = !{i64 993880, i64 993905, i64 993927, i64 993943, i64 993955, i64 993975, i64 993999, i64 994015, i64 994027}
!60 = !{i64 2148507468}
